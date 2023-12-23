<%@page import="com.flight_ticket_booking.service.UserService"%>
<%@page import="com.flight_ticket_booking.dto.User"%>
<%@page import="com.flight_ticket_booking.dto.AdminAddFlight"%>
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

li {
	list-style: none;
	font-weight: bold;
	font-size: 20px;
}

ul {
	display: flex;
	justify-content: space-around;
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

input[type='radio'] {
	color: white;
}
</style>
</head>
<body>
	<%
	HttpSession httpSession = request.getSession();
	String FlightNumber = request.getParameter("flightNumber");
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	String email = (String)httpSession.getAttribute("email");
	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(Integer.parseInt(FlightNumber));
	%>
	<nav>
		<ul>
			<li>Flight-Ticket-Booking</li>
			<a href="home.jsp"><li>Admin Home</li></a>
			<a href="admin-flight-details.jsp"><li>Flight Details</li></a>
			<a href="adminlogout"><li>Logout</li></a>
		</ul>
	</nav>
	<div class="">
		<form action="flightBooking" method="post">

			<input type="number" name="number" value="<%=addFlight.getFlightNum()%>" hidden="true"><br>
			
			<input type="decimal" placeholder="enter-flight-economy-ticket-price" name="price" hidden="true" class="common" value="<%=addFlight.getEcoPrice()%>"><br>
			
			<!-- passenger details -->

			<label id="PassengerName">PassengerName</label><br> <input
				type="text" placeholder="enter passenger name" name="name"><br>

			<label id="PassengerEmail">PassengerEmail</label><br> <input
				type="email" placeholder="enter passenger email" name="email"><br>

			<label id="PassengerPhone">PassengerPhone</label><br> <input
				type="number" placeholder="enter passenger phone" name="phone"><br>

			<label id="PassengerAge">PassengerAge</label><br> <input
				type="number" placeholder="enter passenger age" name="age"><br>
				
			<label id="UserEmail" hidden="true">UserEmail</label><br> <input
				type="email" value="<%=email%>" name="userEmail" hidden="true"><br>

			<label id="PassengerGender">Gender</label><br> <input
				type="radio" name="gender" value="Male">Male&nbsp; <input
				type="radio" name="gender" value="Female">Female&nbsp; <input
				type="radio" name="gender" value="Other">Other<br>

			<button type="submit">BookYourTicket</button>
			<input type="submit" value="<%=addFlight.getEcoPrice()%>">
		</form>

	</div>
</html>