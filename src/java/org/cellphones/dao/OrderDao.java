/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.cellphones.dao;

import java.util.List;
import org.cellphones.model.Order;

/**
 *
 * @author toanl
 */
public interface OrderDao {

    public boolean insert(Order order);

    public boolean update(Order order);

    public boolean delete(int id);

    public List<Order> all();

    public Order find(int id);

    public Order findByCode(String code);

    public int countOrder();

    public int countPendingOrder();

    public int countShippingOrder();

    public int countDeliveredOrder();

    public int countCanceledOrder();

    public List<Integer> countOrderEachDay();

    public int countOrderByDay(String date);
}
