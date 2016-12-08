/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.appjpa.controller.admin;

import com.leapfrog.appjpa.dao.UserDAO;
import com.leapfrog.appjpa.dao.impl.UserDAOImpl;
import com.leapfrog.appjpa.entity.User;
import com.leapfrog.appjpa.system.Controller;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zak
 */
@WebServlet(name = "adminDashboard", urlPatterns = {"/admin/*"})
public class AdminDashboardController extends Controller {

    private UserDAO userDAO = new UserDAOImpl();
    String path = "/WEB-INF/views/admin/";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getRequestURI().toLowerCase();
        if (url.contains("export")) {
            export(response);       
        } else {
            request.setAttribute("users", userDAO.getAll());
            request.getRequestDispatcher(path + "index.jsp").forward(request, response);
        }
    }

    private void export(HttpServletResponse response) throws IOException {
        response.setHeader("Content-type", "text/csv");
        response.setHeader("Content-Disposition", "attachment; filename=users.csv");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        PrintWriter out = response.getWriter();
        for (User u : userDAO.getAll()) {
            out.println(u.toCSV());
        }
    }
}
