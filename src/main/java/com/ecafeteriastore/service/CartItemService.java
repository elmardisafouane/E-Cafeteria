package com.ecafeteriastore.service;

import com.ecafeteriastore.model.Cart;
import com.ecafeteriastore.model.CartItem;

/**
 * Created by Aokiji on 5/29/2016.
 */
public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
