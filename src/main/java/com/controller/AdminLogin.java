package com.controller;

import java.io.IOException;

import com.model.LoginDao;
import com.model.LoginData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        LoginData ld = new LoginData();

        ld.setUsername(username);
        ld.setPassword(password);

        LoginDao dao = new LoginDao();

        boolean status =dao.checkLogin(ld);
                
        System.out.println(status);

        if (status) {

            // Create session
            HttpSession session =
                    request.getSession();

            // Store admin data
            session.setAttribute(
                    "admin", username);

            // Session timeout
            session.setMaxInactiveInterval(300);

            response.sendRedirect( "admin.jsp");
                   

        } else {
            response.sendRedirect("login.jsp?msg=fail");
                    
        }
    }
}