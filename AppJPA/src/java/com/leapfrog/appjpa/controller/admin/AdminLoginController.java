/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.appjpa.controller.admin;

import com.leapfrog.appjpa.system.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zak
 */
@WebServlet(name = "adminLogin", urlPatterns = {"/admin/login"})
public class AdminLoginController extends Controller {

    String path = "/WEB-INF/views/admin/";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(path + "login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
            HttpSession session = request.getSession(true);
            session.setAttribute("admin", username);
            response.sendRedirect(request.getContextPath() + "/admin");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/login?error");
        }
    }

}
