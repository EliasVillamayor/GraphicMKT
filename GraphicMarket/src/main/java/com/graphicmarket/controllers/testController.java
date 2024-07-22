package com.graphicmarket.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testController{
	
	//Usen este controller para probar las vistas
	
	@GetMapping("/prueba")
	public String pruebas() {
		return "buy.jsp";
	}
}
