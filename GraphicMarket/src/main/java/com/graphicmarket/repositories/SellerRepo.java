package com.graphicmarket.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.graphicmarket.models.Seller;

@Repository
public interface SellerRepo extends CrudRepository<Seller, Long> {
	
	Seller findByEmail(String email);
	
	
	
}