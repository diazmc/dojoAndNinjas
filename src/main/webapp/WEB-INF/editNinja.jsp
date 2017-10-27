<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ninja</title>
</head>
<body>

	<form>
		<label>First Name:</label>
		<input type="text" name="firstName" value="${ninja.firstName }"><br><br>
		
		<label>Last Name:</label>
		<input type="text" name="lastName" value="${ninja.lastName }"><br><br>
		
		<label>Age:</label>
		<input type="text" name="age" value="${ninja.age }"><br><br>
		
		<input type="submit" value="Update">
	
	</form>

</body>
</html>