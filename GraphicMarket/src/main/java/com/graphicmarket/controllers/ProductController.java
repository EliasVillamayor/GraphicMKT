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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.ImageService;
import com.graphicmarket.services.ProductService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller 
public class ProductController {
	@Autowired
	private ProductService prodServ;
	
	@Autowired ImageService imgServ;
	
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
		Product product=prodServ.findProduct(productId);
		
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
	
	@PostMapping("/product/create")
	public String createProduct(@Valid @ModelAttribute("newProduct")Product product,
								BindingResult result,
								HttpSession session,
								Model model,
								@RequestParam("file")MultipartFile file) {
		
		
		Product productTemp = product;
		String nombreArchivo;
		
		try {
			
			nombreArchivo = imgServ.saveIMG(file, "/productIMG");
			productTemp.setProductImage(nombreArchivo);
			
			if(nombreArchivo.equals("error")){
				return "productCreate.jsp";
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		/* === REVISAMOS SESION === */
		Seller userTemp = (Seller) session.getAttribute("userInSession"); //Obj User o null
		if(userTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		
		prodServ.saveProduct(product);
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
		
		Product productToEdit = prodServ.findProduct(id);
		model.addAttribute("product",productToEdit);
		
		return "productEdit.jsp";
	}
	
	@PutMapping("/product/update")
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
			prodServ.saveProduct(product);
		}
 		return "redirect:/profile";
		
	}
	
}
