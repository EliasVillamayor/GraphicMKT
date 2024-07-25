package com.graphicmarket.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.SellerService;

import jakarta.servlet.http.HttpSession;

@Controller
public class SellerController {
	@Autowired
	SellerService sellServ;
	
	@GetMapping("/seller")
	public String seller(HttpSession session,
						Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		
		Long sellerId = sellerTemp.getId();
		List<Product> sellerProducts =  sellServ.findSeller(sellerId).getSellerProducts();
		model.addAttribute("sellerProducts",sellerProducts);
		
		
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
		
		model.addAttribute(sellerTemp);
		
		return "profileEdit.jsp";
		
		
	}
	
}
