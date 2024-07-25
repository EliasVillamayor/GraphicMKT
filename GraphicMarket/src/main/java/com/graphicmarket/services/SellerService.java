package com.graphicmarket.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graphicmarket.models.Product;
import com.graphicmarket.models.Seller;
import com.graphicmarket.repositories.SellerRepo;

@Service
public class SellerService {
	@Autowired
	private SellerRepo sellerRepo;
	
	public void addProduct(Seller seller, Product product) {
		seller.getSellerProducts().add(product);
		sellerRepo.save(seller);
	}
}
