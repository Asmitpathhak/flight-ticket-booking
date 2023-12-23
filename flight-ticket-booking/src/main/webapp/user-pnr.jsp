<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get flight by PNR</title>
<style type="text/css">
	*{
		margin: 0px;
		padding: 0px;
		box-sizing: border-box;
	}
	body{
		margin: 0px;
		padding: 0px;
	}
	.main{
		border: 2px solid red;
		height: 100px;
		width: 250px;
		align-self: center;
		position: relative;
		top: 150px;
		left: 100px;
	}
	form{
		padding: 10px 10px;
	}
	input[type='number']::-webkit-inner-spin-button{
            appearance: none;
        }
     input[type='number']{
        	float: right;
        }
        input[type='Submit']{
        	position: relative;
        	top: 30px;
        	left: 90px;
        	cursor: pointer;
        }
</style>
</head>
<body>
<%
	String msg = (String)request.getAttribute("pnrmsg");
%>
	<div class="main">
		<form action="flightByPnr" method="post">
		<%if(msg!=null){ %>
			<h4 style="color: red"><%=msg %></h4>
		<%} %>
			<label>PNR : </label>
			<input type="number" name="pnr" required="required" >
			<input type="Submit" name="Submit" value="Search">
		</form>
	</div>
</body>
</html>