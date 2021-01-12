package com.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public interface ProductDAO extends CrudRepository<Product, Integer> {

}
