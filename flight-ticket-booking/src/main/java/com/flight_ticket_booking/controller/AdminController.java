package com.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.flight_ticket_booking.dto.Admin;
import com.flight_ticket_booking.service.AdminService;

@WebServlet("/loginAdmin")
public class AdminController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		HttpSession httpSession = req.getSession();
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		AdminService adminService = new AdminService();
		Admin admin = adminService.getAdminByEmail(email);
		
		if(admin!=null)
		{
			if(admin.getPassword().equals(password))
			{
				httpSession.setAttribute("adminEmail", admin.getEmail());
				RequestDispatcher dispatcher = req.getRequestDispatcher("admin-add-flight.jsp");
				dispatcher.forward(req, resp);
			}
			else
			{
				req.setAttribute("pass", "invalid password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
				dispatcher.forward(req, resp);
			}
		}
		else
		{
			req.setAttribute("email", "invalid email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
