<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Dojo</title>
	</head>
	
	<style>
		h1 {
			text-align: center;
		}
	
		table {
		    width: 100%;
		    border-collapse: collapse;
		}

		th, td {
		    height: 50px;
		    padding-left: 10px;
		}
		
		table, th, td {
	 		border: 1px solid black;
		}
		
	</style>
	<body>
		<a id="all_dojos" href="/">All Dojos</a>
	
		<h1>${dojo.name} Location</h1>
	
		<h2>Ninjas: </h2>
		
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Action</th>
			</tr>
		<c:forEach items="${dojo.ninjas}" var="ninja">
			<tr>
				<td>${ninja.firstName}</td>
				<td>${ninja.lastName}</td>
				<td>${ninja.age}</td>
				<td><a href="/ninja/${ninja.id}">Edit</a> / <a href="/delete/ninja/${ninja.id}">Delete</a></td>
			</tr>
		</c:forEach>
		</table>
	</body>
</html>