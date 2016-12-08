/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.appjpa.controller.user;

import com.leapfrog.appjpa.system.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author zak
 */
@WebServlet(name = "userDashboard", urlPatterns = {"/user/*"})
public class UserDashboardController extends Controller{
    String path = "/WEB-INF/views/users/";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(path + "index.jsp").forward(request, response);
    }
    
}
