package com.ecafeteriastore.service.impl;

import com.ecafeteriastore.dao.CustomerOrderDao;
import com.ecafeteriastore.model.Cart;
import com.ecafeteriastore.model.CartItem;
import com.ecafeteriastore.model.CustomerOrder;
import com.ecafeteriastore.service.CartService;
import com.ecafeteriastore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Aokiji on 5/29/2016.
 */


@Service
public class CustomerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder){
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId){
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }
}
