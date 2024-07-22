package com.graphicmarket.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.graphicmarket.models.Category;

@Repository
public interface CategoryRepo extends CrudRepository<Category, Long> {

}