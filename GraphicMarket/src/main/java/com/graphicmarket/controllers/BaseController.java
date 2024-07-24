package com.graphicmarket.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class BaseController {
	
	@Autowired
	ProductService prodServ;
	
	@GetMapping("/main")
	public String main(HttpSession session,
						Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		List<Product> todosProductos = prodServ.allProducts();
		model.addAttribute("todosProductos", todosProductos);
		
		
		
		return "mainPage.jsp";
	}
}
