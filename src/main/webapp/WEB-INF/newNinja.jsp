<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>New Ninja</title>
	</head>
	
	<style>
		h1, form {
			text-align: center;
		}
		
		#all_dojos {
			text-align: left;
		}
		
		form {
			width: 320px;
		}
		input, select {
			float: right;
		}
		label {
			float: left;
			margin-left: 20px;
		}
	</style>
	
	<body>
	
		<a id="all_dojos" href="/">All Dojos</a>
	
		<h1>New Ninja</h1>
		
		<form:form method="POST" action="/ninjas/new">
		
			<label>Dojo: </label>
			<select name="dojo">
				<c:forEach items="${dojos}" var="dojo">
					<option value="${dojo.id}">${dojo.name}</option>			
				</c:forEach>
			</select><br><br>

			<label>First Name: </label>
			<input type="text" name="firstName"><br><br>
		
			<label>Last Name: </label>
			<input type="text" name="lastName"><br><br>
	
			<label>Age:</label>
			<input type="text" name="age"><br><br>
			
			<input type="submit" value="Create">
			
		</form:form>
		
	
	</body>
</html>