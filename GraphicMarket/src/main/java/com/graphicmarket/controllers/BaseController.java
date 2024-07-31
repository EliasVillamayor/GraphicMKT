package com.graphicmarket.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
		
	
		
		List<Product> todosProductos = prodServ.allProducts();
		model.addAttribute("todosProductos", todosProductos);
		
		Kart kart = (Kart) session.getAttribute("kart");
		
		if(kart == null) {
			 kart = new Kart();
		}
		
		session.setAttribute("kart", kart);
			
		return "mainPage.jsp";
	}
	
	@GetMapping("/finalizarCompra")
	public String finalizarCompra(HttpSession session,
									Model model) {
		
		
		
		
		
		Kart kart = (Kart) session.getAttribute("kart");
			
		model.addAttribute("kart", kart);
		
		return "buy.jsp";
	}
	
	@GetMapping("/confirmarCompra")
	public String confirmarCompra(HttpSession session) {
		
		//vaciar carrito en sesion
		Kart kart = new Kart();
		
		session.setAttribute("kart", kart);
		
		
		return "redirect:/main";
	}
	
	@PostMapping("/agregarAlCarrito")
	public String agregarAlCarrito(@RequestParam("productID")Long productId,
									HttpSession session) {
		
		
		
		
		//Agrego al carro de sesion
		Kart kart = (Kart) session.getAttribute("kart");
		
		//Encuentro al producto que tengo que agregar
		Product foundProduct = prodServ.findProduct(productId);
		
	
		
		
		kart.addProduct(foundProduct);
	
		
		session.setAttribute("kart", kart);
		
		return "redirect:/main";
	}
	
	@GetMapping("/kart/delete/{id}")
	public String quitarDelCarrito(@PathVariable("id")Long productoId,
									HttpSession session,
									Model model) {
		
		//Agrego al carro de sesion
		Kart kart = (Kart) session.getAttribute("kart");
		
		//lo agrego al modelo para enviarlo al jsp
		model.addAttribute("kart", kart);
		
		kart.removeProduct(productoId);
		session.setAttribute("kart", kart);
		
		return "redirect:/finalizarCompra";
		
		
		
	}
	
}
