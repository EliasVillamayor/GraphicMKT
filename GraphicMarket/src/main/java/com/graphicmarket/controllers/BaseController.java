package com.graphicmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.graphicmarket.models.Kart;
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
		
		Kart kart = new Kart();
		session.setAttribute("kart", kart);
		
		
		
		return "mainPage.jsp";
	}
	
	@GetMapping("/finalizarCompra")
	public String confirmarCompra() {
		return "buy.jsp";
	}
	
	@PostMapping("/confirmarCompra")
	public String finalizarCompra(HttpSession session) {
		return "redirect:/main";
	}
	
	@PostMapping("/agregarAlCarrito")
	public String agregarAlCarrito(@RequestParam("productID")Long productId,
									HttpSession session) {
		
		Kart kart = (Kart) session.getAttribute("kart");
		
		Product foundProduct = prodServ.findProduct(productId);
		
		List<Product> productsEmpty = new ArrayList<>();
		
		if(kart.getProducts()==null) {
			kart.setProducts(productsEmpty);
		}
		
		kart.getProducts().add(foundProduct);
		session.setAttribute("kart", kart);
		
		return "redirect:/main";
	}
	
}
