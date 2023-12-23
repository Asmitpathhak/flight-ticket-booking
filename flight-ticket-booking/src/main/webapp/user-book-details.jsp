<%@page import="com.flight_ticket_booking.dao.FlightBookingDetailsDao"%>
<%@page import="com.flight_ticket_booking.dto.FlightBookingDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		Long pnr = (Long)request.getAttribute("pnr");
		FlightBookingDetailsDao dao = new FlightBookingDetailsDao();
		FlightBookingDetails details = dao.getBookedFlightByPnr(pnr);
	%>
	<table border="1">
		<tr>
			<th>PNR</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Price</th>
			<th>FlightNumber</th>
		</tr>
		<tr>
			<td><%=details.getPnr()%></td>
			<td><%=details.getName()%></td>
			<td><%=details.getEmail()%></td>
			<td><%=details.getPhone()%></td>
			<td><%=details.getAge()%></td>
			<td><%=details.getGender()%></td>
			<td><%=details.getPrice()%></td>
			<td><%=details.getFlightNumber()%></td>
		</tr>
	</table>
</body>
</html>