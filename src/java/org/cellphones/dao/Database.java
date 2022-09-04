/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.cellphones.dao;

import org.cellphones.impl.CategoryDaoImpl;
import org.cellphones.impl.OrderDaoImpl;
import org.cellphones.impl.OrderDetailDaoImpl;
import org.cellphones.impl.ProductDaoImpl;
import org.cellphones.impl.UserDaoImpl;

/**
 *
 * @author toanl
 */
public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        return new UserDaoImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }

}
