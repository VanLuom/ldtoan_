/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.cellphones.admin.product;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.cellphones.BaseServlet;
import org.cellphones.dao.DatabaseDao;
import org.cellphones.dao.ProductDao;
import org.cellphones.model.Product;

/**
 *
 * @author toanl
 */
public class IndexProductServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.all();
        request.setAttribute("productList", productList);
        
        request.getRequestDispatcher("admin/products/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
