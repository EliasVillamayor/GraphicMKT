package com.graphicmarket.controllers;

import java.util.ArrayList;
import java.util.List;

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

import com.graphicmarket.models.Category;
import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.CategoryService;
import com.graphicmarket.services.ImageService;
import com.graphicmarket.services.ProductService;
import com.graphicmarket.services.SellerService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller 
public class ProductController {
	@Autowired
	private ProductService prodServ;
	
	@Autowired 
	ImageService imgServ;
	
	@Autowired
	CategoryService catServ;
	
	@Autowired
	SellerService sellServ;
	
	@GetMapping("/product/{id}")
	public String Product(@PathVariable("id")Long productId,
			HttpSession session,
			Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		Product product=prodServ.findProduct(productId);
		
		model.addAttribute("product",product);
		return "product.jsp";
	}
	
	
	//CREAR PRODUCTO USA 4 CONTROLLERS
	
	@GetMapping("/product/new")
	public String newProduct(HttpSession session,
							 Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		//Enviamos al jsp la lista de todas las categorias para seleccionar
		List<Category> categories = catServ.allCategories();
		model.addAttribute("categories", categories);
		
		
		
		return "productCreate.jsp";
	}
	
	@PostMapping("/product/new/fill")
	public String newProductFill(@RequestParam("file") MultipartFile file,
								@RequestParam("category") Long categoryId,
								HttpSession session) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		//Guardar los datos en sesion
		
		//-------------------------------------------
		//Primero guardamos la direccion de la imagen
		//-------------------------------------------
		String nombreArchivo = "";
		try {	
			nombreArchivo = imgServ.saveIMG(file, "/productIMG");
			if(nombreArchivo.equals("error")){
				return "redirect:/productCreate";
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		session.setAttribute("nombreArchivo", nombreArchivo);
		
		//-------------------------------------------
		//despues la categoria
		//-------------------------------------------
		Category category = catServ.findCategory(categoryId);
	    session.setAttribute("category", category);

		
		
	    return "redirect:/product/new/price";
		
	}
	
	@GetMapping("/product/new/price")
	public String newProductPrice(@ModelAttribute("product")Product product,
								   Model model,
								   HttpSession session
									) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		
		
		return "fillPrice.jsp";
		
	}
	
	@PostMapping("/product/create")
	public String createProduct(@Valid @ModelAttribute("product")Product product,
								BindingResult result,
								HttpSession session,
								Model model){
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		

		//Obtenemos las categorias
		Category category = (Category) session.getAttribute("category");
		//Obtenemos la ruta de la imagen
		String nombreArchivo = (String) session.getAttribute("nombreArchivo");
		//Obtenemos el autor
		Seller autor = (Seller) session.getAttribute("sellerInSession");
			
		//llenamos el producto
		Product filledProduct = product;
		filledProduct.setCategory(category);
		filledProduct.setProductImage(nombreArchivo);
		filledProduct.setSeller(autor);
			
		//Guardamos el producto con los datos llenados	
		prodServ.saveProduct(filledProduct);
		
		
		//limpiamos la sesion
		session.removeAttribute("nombreArchivo");
		session.removeAttribute("categories");
		
		return "redirect:/seller";
	}
	
	
	
	
	@GetMapping("/product/{id}/edit")
	public String editProduct(@ModelAttribute("product")Product product,
							@PathVariable("id")Long id,
							HttpSession session,
							Model model) {
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
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
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if (sellerTemp == null) {
			return "redirect:/main";
		}
		/* === REVISAMOS SESION === */
		
		
		
		if(result.hasErrors()) {
			return "productEdit.jsp";
		}else {
			prodServ.saveProduct(product);
		}
 		return "redirect:/seller";
		
	}
	
}
