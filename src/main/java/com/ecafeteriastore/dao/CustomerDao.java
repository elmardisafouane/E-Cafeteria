package com.ecafeteriastore.dao;

import com.ecafeteriastore.model.Customer;

import java.util.List;

/**
 * Created by Aokiji on 5/28/2016.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
