<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Ninja</title>
</head>

<style>
	html {
		text-align: center;
	}
</style>

<body>

	<h1>New Ninja</h1>
	
	<form method="POST">
	
		<label>Dojo: </label>
		<select></select><br><br>
		
		<label>First Name: </label>
		<input type="text" name="first_name"><br><br>
		
		<label>Last Name: </label>
		<input type="text" name="last_name"><br><br>
		
		<label>Age:</label>
		<input type="text" name="age"><br><br>
		
		<input type="submit" value="Create">
		
	</form>

</body>
</html>