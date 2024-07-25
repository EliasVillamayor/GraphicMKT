
package com.graphicmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.graphicmarket.models.Kart;
import com.graphicmarket.models.Seller;
import com.graphicmarket.services.SessionService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller 
public class SessionController {
	@Autowired
	private SessionService serv;
	
	@GetMapping("/")
	public String index(@ModelAttribute("newUser") Seller newSeller) {
		return "loginRegister.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") Seller newSeller,
						   BindingResult result,
						   HttpSession session,
						   Model model) {
		
		serv.register(newSeller, result);
		
		
		
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			//Guardo al nuevo usuario en sesión
			session.setAttribute("sellerInSession", newSeller);
			return "redirect:/main";
		}
		
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("email") String email,
						@RequestParam("password") String password,
						RedirectAttributes redirectAttributes, /*usar mensajes de Flash*/   
						HttpSession session){
		
		Seller sellerTryingLogin = serv.login(email, password); //Obj User o null
		
		if(sellerTryingLogin == null) {
			//Tiene algo mal
			redirectAttributes.addFlashAttribute("errorLogin", "Wrong email/password");
			return "loginRegister.jsp";
		} else {
			session.setAttribute("sellerInSession", sellerTryingLogin); //Guardando en sesión el objeto de User
			return "redirect:/main";
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sellerInSession");
		return "redirect:/";
	}
	
}

