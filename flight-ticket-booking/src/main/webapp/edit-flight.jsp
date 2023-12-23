<%@page import="com.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="com.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        * {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        body {
            width: 100vw;
            background-image: linear-gradient(rgba(0, 0, 0, 0.4), rgba(0, 0, 0, 0.6)), url("https://images.hindustantimes.com/img/2023/02/03/1600x900/Indigo-recorded_1675424472908_1675424473122_1675424473122.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            height: 100vh;
        }

        nav {
            background-color: aqua;
            align-items: center;
            width: 100%;
            font-size: 1.7vw;
        }

        ul {
            display: flex;
            justify-content: space-between;
            list-style: none;
            padding: 20px;
            gap: 10px;
            font-weight: bold;
            font-size: 1.5em;
        }

        a[href] {}

        ul:first-child {
            color: red;
        }

        ul a {
            text-decoration: none;
            color: rgb(0, 4, 255);
        }

        .row {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
        }

        input {
            float: right;
            width: 200px;
            height: 25px;
        }

        .a {
            width: 400px;
            color: aliceblue;
            font-weight: bold;
            font-size: 20px;
        }

        input[type='submit'] {
            background-color: red;
            color: aliceblue;
            font-weight: bold;
            border: 1px solid red;
            cursor: pointer;
            border-radius: 15px;
            height: 30px;
        }
        input[type='number']::-webkit-inner-spin-button{
            appearance: none;
        }
    </style>
</head>
<body>
</body>
<%
	int flightNumber = Integer.parseInt(request.getParameter("flightNumber"));
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(flightNumber);
%>
<nav>
    <ul>
        <li>Flight-Ticket-Booking</li>
        <a href="home.jsp">
            <li>Admin-Home</li>
        </a>
        <a href="admin-flight-details.jsp">
            <li>Flight-Details</li>
        </a>
        <a href="adminLogout">
            <li>Logout</li>
        </a>
    </ul>
</nav>
<section class="main">
    <form action="updateFlight" method="post">
        <div class="first">
            <div class="row">
                <div class="a">
                    <label id="">Flight Number</label>
                    <input type="number" name="flightNum" value="<%=addFlight.getFlightNum()%>"><br><br>
                </div>
                <div class="a">
                    <label id="">Flight Name</label>
                    <input type="text" name="flightName" value="<%=addFlight.getFlightName()%>"><br><br>
                </div>
            </div>
            <div class="row">
                <div class="a">
                    <label id="">Source</label>
                    <input type="text" name="source" value="<%=addFlight.getSource()%>"><br><br>
                </div>
                <div class="a">
                    <label id="">Destination</label>
                    <input type="text" name="destination" value="<%=addFlight.getDestination()%>"><br><br>
                </div>
            </div>
        </div>
        <div class="second">
            <div class="row">
                <div class="a">
                    <label id="">Departure time</label>
                    <input type="time" name="departure" value="<%=addFlight.getDepTime()%>"><br><br>
                </div>
                <div class="a">
                    <label id="">Arrival time</label>
                    <input type="time" name="arrTime" value="<%=addFlight.getArrTime()%>"><br><br>
                </div>
            </div>
            <div class="row">
                <div class="a">
                    <label id="">Economy Price</label>
                    <input type="Number" name="economyTicketPrice" value="<%=addFlight.getEcoPrice()%>"><br><br>
                </div>
                <div class="a">
                    <label id="">Business Price</label>
                    <input type="number" name="businessTicketPrice" value="<%=addFlight.getBusiPrice()%>"><br><br>
                </div>
            </div>
            <div class="row">
                <input type="submit" value="Update">
            </div>
          </div>
    </form>
</section>
</html>