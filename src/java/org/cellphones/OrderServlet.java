/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.cellphones.entity.OrderDetailSession;

/**
 *
 * @author toanl
 */
public class OrderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "creat":
                create(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            default:
                throw new AssertionError();
        }
        response.sendRedirect("CartServlet");
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price").trim());
        String img = request.getParameter("img");;
        OrderDetailSession orderDetailSession = new OrderDetailSession(id, name, price, quantity, img);
        HttpSession session = request.getSession();
        List<OrderDetailSession> cart = null;
        boolean productExist = false;
        if (session.getAttribute("cart") == null) {
            //Lan dau tien dua vao gio hang
            cart = new ArrayList<OrderDetailSession>();
        } else {
            cart = (List<OrderDetailSession>) session.getAttribute("cart");
            for (OrderDetailSession ods : cart) {
                if (ods.getId() == orderDetailSession.getId()) {
                    ods.setQuantity(ods.getQuantity() + quantity);
                    productExist = true;
                    break;
                }
            }
        }
        if (!productExist) {
            cart.add(orderDetailSession);
        }
        session.setAttribute("cart", cart);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        List<OrderDetailSession> cart = null;
        if (session.getAttribute("cart") != null) {
            cart = (List<OrderDetailSession>) session.getAttribute("cart");
            for (OrderDetailSession ods : cart) {
                if (ods.getId() == id) {
                    cart.remove(ods);
                    break;
                }
            }
        }
        session.setAttribute("cart", cart);
    }
}
