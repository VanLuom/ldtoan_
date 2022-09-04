/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones.admin.order;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import org.cellphones.BaseServlet;
import org.cellphones.dao.DatabaseDao;
import org.cellphones.dao.OrderDao;
import org.cellphones.model.Order;

/**
 *
 * @author toanl
 */
public class IndexOrderServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        List<Order> orderList = orderDao.all();
        List<String> statusList = new ArrayList<>();
        statusList.add("Pending");
        statusList.add("Shipping");
        statusList.add("Delivered");
        statusList.add("Canceled");
        request.setAttribute("statusList", statusList);
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("admin/orders/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
