package com.ecafeteriastore.service.impl;


import com.ecafeteriastore.dao.CartDao;
import com.ecafeteriastore.model.Cart;
import com.ecafeteriastore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Aokiji on 5/29/2016.
 */


@Service
public class CartServiceImpl implements  CartService{

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId){
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart){
        cartDao.update(cart);
    }
}
