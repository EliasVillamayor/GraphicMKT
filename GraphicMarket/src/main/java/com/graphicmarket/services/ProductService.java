package com.graphicmarket.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graphicmarket.models.Product;
import com.graphicmarket.repositories.ProductRepo;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepo pr;

	public Product saveProduct(Product productId) {
		return pr.save(productId);
	}

	public Product findProduct(Long productId) {
		return pr.findById(productId).orElse(null);
	}
	
	public List<Product> allProducts(){
		return pr.findAll();
	}
	
	
}
