package com.ecafeteriastore.service.impl;

import com.ecafeteriastore.dao.ProductDao;
import com.ecafeteriastore.model.Product;
import com.ecafeteriastore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Aokiji on 5/27/2016.
 */


@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao productDao;

    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }


    public List<Product> getProductList() {
        return productDao.getProductList();
    }


    public void addProduct(Product product) {
        productDao.addProduct(product);
    }


    public void editProduct(Product product) {
        productDao.editProduct(product);
    }


    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }

}
