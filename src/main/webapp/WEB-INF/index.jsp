<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>All Dojos</title>
	</head>
	
	<style>
		h1 {
			text-align: center;
			margin-top: 30px;
		}
		
		#add_dojo {
			float: left;
		}
		
		#add_ninja {
			float: right;
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
		
		.links {

		}
	
	</style>
	
	<body>
	
		<div class="links">
			<a id="add_dojo" href="/dojos/new">Add a Dojo</a>
			<a id="add_ninja" href="/ninjas/new">Add a Ninja</a>
		</div><br>
	
		<h1>All Dojos</h1>
		
		<table>
			<tr>
				<th>Location</th>
				<th>Number of Ninjas</th>
				
			</tr>
			
			<c:forEach items="${dojos}" var="dojo">
				<tr>
					<td><a href="/dojos/${dojo.id}">${dojo.name}</a></td>
					<td>${dojo.ninjas.size()}</td>
				</tr>
			</c:forEach>
			
			
		</table>

		
		
	</body>
</html>