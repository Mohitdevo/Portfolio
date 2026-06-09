package com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/logout")
public class AdminLogout extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Get session (do not create new one)
        HttpSession session =request.getSession(false);
               

        if (session != null) {
            session.invalidate(); // destroy session
        }

        // redirect to login page
        response.sendRedirect("login.jsp");
    }
}