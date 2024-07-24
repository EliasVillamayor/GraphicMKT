package com.graphicmarket.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.graphicmarket.models.Category;
import com.graphicmarket.repositories.CategoryRepo;

@Service
public class CategoryService {
	@Autowired
	CategoryRepo cr;
	
	public List<Category> allCategories() {
		return cr.findAll();
	}
	
	public Category findCategory(Long id) {
		return cr.findById(id).orElse(null);
	}
}
