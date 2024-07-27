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
		
		/* === REVISAMOS SESION === */
		Seller sellerTemp = (Seller) session.getAttribute("sellerInSession"); //Obj User o null
		if(sellerTemp == null) {
			return "redirect:/";
		}
		/* === REVISAMOS SESION === */
		
		//PASAR LOS SELLERS POR MODEL, SI LOS OBTENGO DE KART.PRODUCT.SELLER.NAME NO CARGAN
		
		Kart kart = (Kart) session.getAttribute("kart");
		
		model.addAttribute("kart", kart);
		
		return "buy.jsp";
	}
	
	@PostMapping("/confirmarCompra")
	public String confirmarCompra(HttpSession session) {
		
		//vaciar carrito en sesion
		
		
		return "redirect:/main";
	}
	
	@PostMapping("/agregarAlCarrito")
	public String agregarAlCarrito(@RequestParam("productID")Long productId,
									HttpSession session) {
		
		
		
		
		//Agrego al carro de sesion
		Kart kart = (Kart) session.getAttribute("kart");
		
		//Encuentro al producto que tengo que agregar
		Product foundProduct = prodServ.findProduct(productId);
		
		//Inicializo una lista vacia
		//List<Product> productsEmpty = new ArrayList<>();
		
		//if(kart.getProducts()==null) {
			//kart.setProducts(productsEmpty);
		//}
		
		kart.addProduct(foundProduct);
		System.out.println(kart.getProducts().get(0));
		
		session.setAttribute("kart", kart);
		
		return "redirect:/main";
	}
	
}
