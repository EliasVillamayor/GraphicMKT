package com.graphicmarket.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.graphicmarket.models.Product;

@Repository
public interface ProductRepo extends CrudRepository<Product, Long> {

}