package com.graphicmarket.models;

import java.util.List;

public class Kart {
	private List<Product> products;
	
	private double total = getTotalPrice();
	
	

	public Kart() {
		
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
	public double getTotalPrice() {
		double temp = 0.0;
		
		if (this.products == null) {
	        return 0.0; 
	    }
		
		for (Product product : this.products) {
	        temp += product.getPrice();
	    }
		
		return temp;
	}
	
	
}
