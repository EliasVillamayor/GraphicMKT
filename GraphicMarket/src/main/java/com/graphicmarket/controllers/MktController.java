package com.graphicmarket.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.graphicmarket.services.MktService;
import com.graphicmarket.services.SessionService;

@Controller 
public class MktController {
	
	@Autowired
	private SessionService serv;
	
	@Autowired
	private MktService mktServ;
	
	
}
