package com.controller;

import java.io.IOException;

import com.model.MessageDAO;
import com.model.MessageData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/sendMessage")
public class MessageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Get form data
        String name =
                request.getParameter("name");

        String email =
                request.getParameter("email");

        String message =
                request.getParameter("message");

        // Set data
        MessageData md =
                new MessageData();

        md.setName(name);
        md.setEmail(email);
        md.setMessage(message);

        // Save to DB
        MessageDAO dao =
                new MessageDAO();

        boolean status =
                dao.saveMessage(md);

        // Redirect
        if (status) {

            response.sendRedirect(
                "index.jsp?msg=success");

        } else {

            response.sendRedirect(
                "index.jsp?msg=fail");
        }
    }
}