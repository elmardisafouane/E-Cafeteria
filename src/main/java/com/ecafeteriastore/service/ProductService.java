package com.ecafeteriastore.service;

import com.ecafeteriastore.model.Product;

import java.util.List;

/**
 * Created by Aokiji on 5/27/2016.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
