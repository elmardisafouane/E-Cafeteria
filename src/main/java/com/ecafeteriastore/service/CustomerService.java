package com.ecafeteriastore.service;

import com.ecafeteriastore.model.Customer;

import java.util.List;

/**
 * Created by Aokiji on 5/28/2016.
 */
public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
