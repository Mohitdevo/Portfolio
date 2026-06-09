package com.controller;

import java.io.IOException;
import java.util.List;

import com.model.MessageDAO;
import com.model.MessageData;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/viewMessages")
public class ViewMessageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Session protection
        HttpSession session =
                request.getSession(false);

        if (session == null ||
            session.getAttribute("admin") == null) {

            response.sendRedirect("login.jsp");
            return;
        }

        // Get messages from DAO
        MessageDAO dao =
                new MessageDAO();

        List<MessageData> list =
                dao.viewMessages();

        // Send data to JSP
        request.setAttribute("messages",
                              list);

        request.getRequestDispatcher(
                "view.jsp")
                .forward(request, response);
        System.out.println("forward to view");
    }
}