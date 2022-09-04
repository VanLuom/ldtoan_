/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.cellphones.dao.DatabaseDao;
import org.cellphones.dao.UserDao;
import org.cellphones.model.User;
import org.cellphones.util.Flash;

/**
 *
 * @author toanl
 */
public class RegisterServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Flash.init((HttpSession) request.getSession());
        request.setAttribute("error", Flash.getError());
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        User findUser = userDao.findByEmail(email);
        if (findUser != null) {
            Flash.init((HttpSession) request.getSession());
            Flash.pushError("Email is existed!");
            response.sendRedirect("RegisterServlet");
        } else {
            User user = new User(email, password, "user");
            userDao.insert(user);
            response.sendRedirect("LoginServlet");
        }
    }
}
