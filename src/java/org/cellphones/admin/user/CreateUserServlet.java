/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones.admin.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.cellphones.BaseServlet;
import org.cellphones.dao.DatabaseDao;
import org.cellphones.dao.UserDao;
import org.cellphones.model.User;
import org.cellphones.until.MD5Hashing;

/**
 *
 * @author toanl
 */
public class CreateUserServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("admin/users/create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = MD5Hashing.getMD5(request.getParameter("password"));
        String role = request.getParameter("role");
        User user = new User(email, password, role);
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        userDao.insert(user);
        response.sendRedirect("IndexUserServlet");
    }
}
