<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight ticket Booking</title>
<style>
		*{
			margin: 0px;
			padding: 0px;
		}
		body{
            margin:0px;
            padding: 0px;
        }
        .nav {
            display: flex;
            justify-content:space-between;
        }
        img {
            height: 87.7vh;
            width: 50%;
        }
        #cont {
            border: 2px solid blue;
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .contant{
        	padding-left: 10px;
        	background-color: aqua;
        	margin: 10px;
        }
        input[type='button']{
        	margin-top: 30px;
        	color: red;
        	background-color: yellow;
        	font-weight: bold;
        	border-color: red;
        	border-radius: 3px;
        	padding: 4px 2px;
        }
        li{
            list-style: none;
            font-weight: bold;
            font-size: 20px;
        }
        ul{
            display: flex;
            justify-content: space-between;
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
            <a href="admin-add-flight.jsp"><li>Home</li></a>
            <a href="admin-login.jsp"><li>Admin Login</li></a>
            <a href="user-pnr.jsp"><li>PNR</li></a>
            <a href="user-login.jsp"><li>USer Login</li></a>
        </ul>
    </nav>
	<section>
		<article>
			<div class="nav">
				<img alt="flight"
					src="image/AirGo.jpg">
		
				<div id="cont">
					<div class="contant">Lorem ipsum dolor sit amet consectetur adipisicing elit.
					 Doloribus qui quibusdam blanditiis sapiente voluptatem molestias 
					 laboriosam! Id animi officia corrupti cumque facilis, numquam 
					 commodi praesentium?</div>
					<input type="button" name="Book-flight" value="Book ticket">
				</div>
			</div>
		</article>
	</section>
</html>