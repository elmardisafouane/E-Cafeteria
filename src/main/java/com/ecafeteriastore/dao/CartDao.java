package com.ecafeteriastore.dao;

import com.ecafeteriastore.model.Cart;

import java.io.IOException;


/**
 * Created by Aokiji on 5/26/2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
