package com.ecafeteriastore.dao.impl;

import com.ecafeteriastore.dao.CustomerOrderDao;
import com.ecafeteriastore.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by Aokiji on 5/29/2016.
 */

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }


}
