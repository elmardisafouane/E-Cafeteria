package com.ecafeteriastore.service;

import com.ecafeteriastore.model.Cart;

/**
 * Created by Aokiji on 5/29/2016.
 */
public interface CartService {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
