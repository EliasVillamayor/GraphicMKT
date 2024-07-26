package com.graphicmarket.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PutMapping;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.ImageService;
import com.graphicmarket.services.SellerService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class SellerController {
	@Autowired
	private SellerService sellServ;
	
	
	@Autowired
	private ImageService imgServ;
	
	
	@GetMapping("/seller")
	public String seller(HttpSession session,
						Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		//sellerTemp.getSellerProducts().size();
		
		Long sellerId = sellerTemp.getId();
		List<Product> sellerProducts =  sellServ.findSeller(sellerId).getSellerProducts();
		model.addAttribute("sellerProducts",sellerProducts);
		
		//Actualizamos sesion para ver los cambios
		Seller userTryingLogin =  sellServ.findSeller(sellerTemp.getId());
		session.setAttribute("sellerInSession", userTryingLogin);
		
		return "profile.jsp";
	}
	
	@GetMapping("/seller/edit")
	public String editSeller(@ModelAttribute("seller")Seller seller,
							HttpSession session,
							Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		Seller myUser = sellServ.findSeller(sellerTemp.getId());
		model.addAttribute("seller",myUser);
		
		return "profileEdit.jsp";
		
		
	}
	@PutMapping("/seller/update")
	public String updateSeller(@Valid @ModelAttribute("seller")Seller seller,
			HttpSession session,
			BindingResult result,
			Model model) {
		System.out.println(seller.toString());
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession");//Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		if(result.hasErrors()) {
			return "profileEdit.jsp";
		}
		else {
			sellServ.saveSeller(seller);
		}
		
		return "redirect:/main";
	}
	
}
