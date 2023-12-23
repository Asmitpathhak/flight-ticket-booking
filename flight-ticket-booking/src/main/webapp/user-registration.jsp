<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
		*{
			margin: 0px;
			padding: 0px;
		}
		body {
            margin: 0px;
            padding: 0px;
            background-image: linear-gradient(rgba(0, 0, 0, 0.02),rgba(0, 0, 0, 0.2)),url("https://images.hindustantimes.com/img/2023/02/03/1600x900/Indigo-recorded_1675424472908_1675424473122_1675424473122.jpg");
			background-position: center;
			background-size: cover;
			background-repeat: no-repeat;
        }
        .myLogin {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 99vh;
        }
        form{
            border: 3px solid blue;
            padding: 25px;
            width: 350px;
            /* background-color: rgb(246, 195, 255); */
            box-shadow: 1px 1px 15px 4px red;
        }
        input[name] {
            float: right;
        }

        input[value] {
            margin-left: 120px;
            margin-top: 38px;
            font-size: 20px;
            color: red;
            background-color: aqua;
            border-color: aqua;
            cursor: pointer;
            font-weight: bold;
        }
        label{
            font-size: 20px;
            color: rgb(211, 0, 0);
            font-weight: bold;
        }
        li{
            list-style: none;
            font-weight: bold;
            font-size: 20px;
        }
        ul{
            display: flex;
            justify-content: space-around;
            padding: 20px ;
        }
        nav{
            background-color: aqua;
        }
        ul li:first-child{
            color: red;
        }
        ul a{
            text-decoration: none;
        }
        a[href] li{
            color: blue;
        }
	</style>
</head>
<body>
 <nav>
        <ul>
            <li>Flight-Ticket-Booking</li>
            <a href="home.jsp"><li>Admin Home</li></a>
            <a href="admin-flight-details.jsp"><li>Flight Details</li></a>
            <a href="adminlogout"><li>Logout</li></a>
        </ul>
    </nav>
	<div class="myLogin">
		<form action="userRegister" method="post">
		<label>Name</label>
		<input type="text" name="name"><br><br>
		<label>Email</label>
		<input type="email" name="email"><br><br>
		<label>Password</label>
		<input type="password" name="password"><br><br>
		<label>Confirm-Password</label>
		<input type="password" name="confirmpassword"><br><br>
		<input type="Submit" value="register">
	</form>
	</div>
</body>
</html>