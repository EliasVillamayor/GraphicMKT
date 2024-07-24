package com.graphicmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.ProductService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller 
public class ProductController {
	@Autowired
	private ProductService serv;
	
	
	@GetMapping("/product/{id}")
	public String Product(@PathVariable("id")Long productId,
			BindingResult result,
			HttpSession session,
			Model model) {
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		Product product=serv.findProduct(productId);
		
		model.addAttribute("product",product);
		return "product.jsp";
	}
	
	@GetMapping("/product/new")
	public String newProduct(@ModelAttribute("newProduct")Product product,
			BindingResult result,
			HttpSession session,
			Model model) {
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		model.addAttribute("newProduct",new Product());
		
		return "productCreate.jsp";
	}
	
	@PostMapping("/Product/create")
	public String createProduct(@Valid @ModelAttribute("newProduct")Product product,
			BindingResult result,
			HttpSession session,
			Model model) {
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		serv.saveProduct(product);
		return "redirect:/profile";
	}
	
	@GetMapping("/product/{id}/edit")
	public String editProduct(@PathVariable("id")Long id,
			HttpSession session,
			Model model) {
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		Product productToEdit = serv.findProduct(id);
		model.addAttribute("product",productToEdit);
		
		return "productEdit.jsp";
	}
	
	@PutMapping("/Product/update")
	public String updateProduct(@Valid @ModelAttribute("product")Product product,
			HttpSession session,
 			BindingResult result) {
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/main";
		}
		/* === REVISAMOS SESION === */
		
		if(result.hasErrors()) {
			return "productEdit.jsp";
		}else {
			serv.saveProduct(product);
		}
 		return "redirect:/profile";
		
	}
	
}
