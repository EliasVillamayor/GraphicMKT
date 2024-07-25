package com.graphicmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;

import jakarta.servlet.http.HttpSession;

@Controller
public class SellerController {
	@GetMapping("/seller")
	public String seller(BindingResult result,
						HttpSession session,
						Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		
		
		
		return "profile.jsp";
	}
	
}
