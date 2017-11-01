<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>New Dojo</title>
	</head>
	
	<style>
		h1, form {
			text-align:center;
			margin-top: 30px;
		}
		
		#all_dojos {
			text-align: left;
			margin-top: 15px;
		}
		
		.error {
			font-weigth: bold;
			color: red;
		}
	</style>
	
	<body>
		
		<a id="all_dojos" href="/">All Dojos</a>
	
		<h1>New Dojo</h1>
	
		<form:form method="POST" action="/dojos/new" modelAttribute="dojo">
		
			<form:errors class="error" path="name"/><br><br>
			<label>Name: </label>
			<input type="text" name="name" placeholder="Enter a city"><br><br>
			
			<input type="submit" value="Create">
			
		</form:form>
		
	
	</body>

</html>