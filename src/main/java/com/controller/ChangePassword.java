package com.controller;

import java.io.IOException;

import com.model.ChangePasswordData;
import com.model.LoginDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		// session check
		if (session == null || session.getAttribute("admin") == null) {

			response.sendRedirect("login.jsp");
			return;
		}

		String username = (String) session.getAttribute("admin");

		String oldPassword = request.getParameter("oldPassword");

		String newPassword = request.getParameter("newPassword");
		String confPassword = request.getParameter("confirmPassword");

		if (newPassword.equals(confPassword)) {
			
			ChangePasswordData cp = new ChangePasswordData();

			cp.setUsername(username);
			cp.setOldPassword(oldPassword);
			cp.setNewPassword(newPassword);

			LoginDao dao = new LoginDao();

			boolean status = dao.changePassword(username, oldPassword, newPassword);

			if (status) {
				response.sendRedirect("changePassword.jsp?msg=success");
				System.out.println("Changed successfully");
			} else {
				response.sendRedirect("changePassword.jsp?msg=fail");
				System.out.println("Change Unsuccessfull");
			}
		}
		else {
			response.sendRedirect("changePassword.jsp?msg=notmatched");
		}
	}
}