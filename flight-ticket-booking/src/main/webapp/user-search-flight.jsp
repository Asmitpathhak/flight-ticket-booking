<%@page import="com.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="java.util.List"%>
<%@page import="com.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	margin: 0px;
	padding: 0px;
}
li {
	list-style: none;
	font-weight: bold;
	font-size: 20px;
}

ul {
	display: flex;
	justify-content: space-between;
	padding: 20px;
}

nav {
	background-color: aqua;
}

ul li:first-child {
	color: red;
}

ul a {
	text-decoration: none;
}

a[href] li {
	color: blue;
}
table{
	margin: 30px;
}
</style>
</head>
<body>
	<nav>
		<ul>
			<li>Flight-Ticket-Booking</li>
			<a href="admin-add-flight.jsp"><li>Home</li></a>
			<a href="admin-login.jsp"><li>Admin Login</li></a>
			<a href="user-login.jsp"><li>USer Login</li></a>
		</ul>
	</nav>
	<%
	String source = request.getParameter("source");
	String destination = request.getParameter("destination");
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	List<AdminAddFlight> addFlights = addFlightDao.getFlightBySourceToDestination(source, destination);
	%>
	<div>
		<table border="1">
			<tr>
				<th>LoGo</th>
				<th>Number</th>
				<th>Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure</th>
				<th>Arrival</th>
				<th>EcoPrice</th>
				<th>BusiPrice</th>
				<th>Book Your Ticket</th>
			</tr>
			<%
			for (AdminAddFlight addFlight : addFlights) {
			%>
			<%
			if (addFlight.getFlightName().equalsIgnoreCase("indigo")) {
			%>
			<tr>
				<td><img alt="indigo"
					src="image/IndiGo_Airlines_logo.svg.png"
					width="90px" height="30px"></td>
				<td><%=addFlight.getFlightNum()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getSource()%></td>
				<td><%=addFlight.getDestination()%></td>
				<td><%=addFlight.getDepTime()%></td>
				<td><%=addFlight.getArrTime()%></td>
				<td><%=addFlight.getEcoPrice()%></td>
				<td><%=addFlight.getBusiPrice()%></td>
				<td><a
					href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNum()%>">BookYourTicket</a></td>
			</tr>
			<%
			}}
			%>
			<%
			for (AdminAddFlight addFlight : addFlights) {
			%>
			<%
			if (addFlight.getFlightName().equalsIgnoreCase("AirGo")) {
			%>
			<tr>
				<td><img alt="AirGo"
					src="image/AirGo.jpg"
					width="90px" height="30px"></td>
				<td><%=addFlight.getFlightNum()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getSource()%></td>
				<td><%=addFlight.getDestination()%></td>
				<td><%=addFlight.getDepTime()%></td>
				<td><%=addFlight.getArrTime()%></td>
				<td><%=addFlight.getEcoPrice()%></td>
				<td><%=addFlight.getBusiPrice()%></td>
				<td><a
					href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNum()%>">BookYourTicket</a></td>
			</tr>
			<%
			}}
			%>
			<%
			for (AdminAddFlight addFlight : addFlights) {
			%>
			<%
			if (addFlight.getFlightName().equalsIgnoreCase("AirIndia")) {
			%>
			<tr>
				<td><img alt="AirIndia"
					src="image/Air India.jpg"
					width="90px" height="30px"></td>
				<td><%=addFlight.getFlightNum()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getSource()%></td>
				<td><%=addFlight.getDestination()%></td>
				<td><%=addFlight.getDepTime()%></td>
				<td><%=addFlight.getArrTime()%></td>
				<td><%=addFlight.getEcoPrice()%></td>
				<td><%=addFlight.getBusiPrice()%></td>
				<td><a
					href="user-book-flight.jsp?flightNumber=<%=addFlight.getFlightNum()%>">BookYourTicket</a></td>
			</tr>
			<%
			}}
			%>
		</table>
	</div>
</body>
</html>