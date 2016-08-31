package com.ecafeteriastore.service;

import com.ecafeteriastore.model.CustomerOrder;

/**
 * Created by Aokiji on 5/29/2016.
 */
public interface CustomerOrderService {
    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

}
