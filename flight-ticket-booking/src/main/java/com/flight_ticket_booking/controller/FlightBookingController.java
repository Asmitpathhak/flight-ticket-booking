package com.flight_ticket_booking.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.flight_ticket_booking.dao.FlightBookingDetailsDao;
import com.flight_ticket_booking.dto.FlightBookingDetails;

@SuppressWarnings("serial")
@WebServlet(value="/flightBooking")
public class FlightBookingController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		FlightBookingDetails bookingDetails = new FlightBookingDetails();
		FlightBookingDetailsDao bookingDetailsDao = new FlightBookingDetailsDao();

		long pnr = (long) (Math.floor(Math.random()*9000000000L) + 1000000000L);
		long phone = (long) Math.floor(Long.parseLong(req.getParameter("phone")));
		
		bookingDetails.setPnr(pnr);
		bookingDetails.setName(req.getParameter("name"));
		bookingDetails.setEmail(req.getParameter("email"));
		
		bookingDetails.setPhone(phone);
		bookingDetails.setAge(Integer.parseInt(req.getParameter("age")));
		bookingDetails.setGender(req.getParameter("gender"));
		bookingDetails.setPrice(Double.parseDouble(req.getParameter("price")));
		bookingDetails.setFlightNumber(Integer.parseInt(req.getParameter("number")));
		bookingDetails.setUserEmail(req.getParameter("userEmail"));
		req.setAttribute("pnr", pnr);
		/* req.setAttribute("passengerEmail", req.getParameter("email")); */
		FlightBookingDetails details = bookingDetailsDao.saveBookingDetails(bookingDetails);
		if(details!=null)
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-book-details.jsp"); 
			dispatcher.forward(req, resp);
		}
		 
	}
}
