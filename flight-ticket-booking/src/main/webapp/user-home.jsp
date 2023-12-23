<%@page import="java.time.LocalDate"%>
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
            box-sizing: border-box;
        }

        body {
            width: 100vw;
            height: 100vh;
            background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url("https://images.hindustantimes.com/img/2023/02/03/1600x900/Indigo-recorded_1675424472908_1675424473122_1675424473122.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
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

        ul:first-child {
            color: red;
        }

        ul a {
            text-decoration: none;
            color: rgb(0, 4, 255);
        }
        .container{
            display: flex;
            justify-content: center;
            margin-top: 13vh;
            
        }
        form{
            border: 2px solid white;
            border-radius: 10px;
            border-color: blue;
            width: auto;
            height: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 10px;
            padding-top: 30px;
            padding-left: 30px;
            padding-right: 30px;
        }
        input{
            width: 330px;
            height: 33px;
            font-size: 20px;
        }
        input[type='Submit']{
            background-color: red;
            color: white;
            font-size: 20px;
            border-radius: 20px;
            cursor: pointer;
        }
        ::placeholder{
            font-size: 20px;
            
        }
        input[type='date']{
            font-size: 20px;
        }
</style>
</head>
<body>
	 <nav>
        <ul>
            <li>Book Your Ticket</li>
            <a href="">
                <li>Home</li>
            </a>
            <a href="">
                <li>MyTicket</li>
            </a>
        </ul>
    </nav>
    <div class="container">
        <form action="searchUser" method="Get">
            <input type="text" name="source" placeholder="Source" required><br><br>
            <input type="text" name="destination" placeholder="Destination" required><br><br>
            <input type="date" name="date" value="<%=LocalDate.now().plusDays(1)%>" required><br><br>
            <input type="Submit" value="Search"><br><br>
        </form>
    </div>
</body>
</body>
</html>