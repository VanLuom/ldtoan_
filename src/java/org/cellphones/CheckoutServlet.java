/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.format.DateTimeFormatter;
import java.util.List;
import org.cellphones.dao.DatabaseDao;
import org.cellphones.dao.OrderDao;
import org.cellphones.dao.OrderDetailDao;
import org.cellphones.entity.OrderDetailSession;
import org.cellphones.model.Order;
import org.cellphones.model.OrderDetail;
import org.cellphones.model.User;
import org.cellphones.until.StringHelper;
import org.cellphones.util.GetDateTime;

/**
 *
 * @author toanl
 */
public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DateTimeFormatter format = DateTimeFormatter
            .ofPattern("YYYY-MM-dd");
        if (isLogged(request, response)) {
            HttpSession session = request.getSession();

            User user = (User) session.getAttribute("user");
            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            String code = StringHelper.randomString(8);
            String currentDateTime = GetDateTime.now.format(format);
            Order order = new Order(code, "Pending", user.getId(), currentDateTime);
            orderDao.insert(order);

            order = orderDao.findByCode(code);

            OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();

            if (session.getAttribute("cart") != null) {
                List<OrderDetailSession> orderDetailSessionList = (List<OrderDetailSession>) session.getAttribute("cart");
                for (OrderDetailSession orderDetailSession : orderDetailSessionList) {
                    OrderDetail orderDetail = new OrderDetail(orderDetailSession.getQuantity(), orderDetailSession.getId(), order.getId());
                    orderDetailDao.insert(orderDetail);
                }

                session.removeAttribute("cart");
            }

            response.sendRedirect("HomeServlet");
        } else {
            response.sendRedirect("LoginServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        isLogged(request, response);
    }

    private boolean isLogged(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        HttpSession session = request.getSession();
        return session.getAttribute("user") != null;
    }
}
