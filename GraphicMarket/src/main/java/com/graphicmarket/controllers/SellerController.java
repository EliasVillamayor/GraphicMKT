package com.graphicmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.graphicmarket.models.Seller;

import jakarta.servlet.http.HttpSession;

@Controller
public class SellerController {
	@GetMapping("/seller")
	public String seller(HttpSession session,
						Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		
		
		
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
