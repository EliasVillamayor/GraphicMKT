package com.graphicmarket.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graphicmarket.repositories.ProductRepo;

@Service
public class MktService {
	
	@Autowired
	private ProductRepo pr;
	
	
}
