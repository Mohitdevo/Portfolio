package com.controller;

import java.io.IOException;

import com.model.MessageDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/deleteMessage")
public class DeleteMessageServlet extends HttpServlet {
        
    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException,
            IOException {

        // Session security
        HttpSession session =
                request.getSession(false);

        if (session == null ||
            session.getAttribute("admin") == null) {

            response.sendRedirect(
                    "login.jsp");
            return;
        }

        int sno = Integer.parseInt(
                request.getParameter("sno"));

        MessageDAO dao =
                new MessageDAO();

        boolean status =
                dao.deleteMessage(sno);

        if (status) {
            response.sendRedirect(
                "viewMessages");
        } else {
            response.sendRedirect(
                "viewMessages?msg=fail");
        }
    }
}