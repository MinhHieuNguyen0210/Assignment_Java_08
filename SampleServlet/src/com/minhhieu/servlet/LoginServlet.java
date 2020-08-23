package com.minhhieu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");

		PrintWriter writer = resp.getWriter();

		writer.print("<form action='" + req.getContextPath() + "/login' method='POST'>");
		writer.print(" <label for=''>Full name</label><br>");
		writer.print("<input type='text' name='fullName' placeholder=''><br>");
		writer.print("<label for=''>Date of birth</label><br>");
		writer.print("<input type='date' name='daOfBirth'><br>");
		writer.print("<label for=''>Gender</label><br>");
		writer.print("<input type='text' name='gender'><br>");
		writer.print("<button type='submit'>Login</button>");

		writer.close();

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		resp.sendRedirect(req.getContextPath()+"/welcome");
		RequestDispatcher dispatcher = req.getRequestDispatcher("/welcome");
		dispatcher.forward(req, resp);

	}  
}
