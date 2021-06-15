<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body Style="background-color:rgb(239,192,80); ">
<form action="update">
	<h3 align="center" style="color: rgb(188,36,60);"><strong><u>Update Employee Details</u></strong></h3>
	<table border="1" align="center">
		<tr>
			<th><b>ID</b></th>
			<th><b>Username</b></th>
			<th><b>Password</b></th>
			<th><b>Name</b></th>
			<th><b>Age</b></th>
			<th><b>Address</b></th>
			<th><b>Mobile No</b></th>
			<th><b>Email Id</b></th>
			<th><b>Salary</b></th>
		</tr>
		
	<jsp:useBean id="data" class="com.cjc.model.Employee" scope="request"></jsp:useBean>	
			<tr>
				<td align="center"><input name="id" type="hidden" value="${data.id}"></td>
				<td align="center"><input name="uname" value="${data.uname}"></td>
				<td align="center"><input name="pwd" value="${data.pwd}"></td>
				<td align="center"><input name="name" value="${data.name}"></td>
				<td align="center"><input name="age" value="${data.age}"></td>
				<td align="center"><input name="address" value="${data.address}"></td>
				<td align="center"><input name="mobileno" value="${data.mobileno}"></td>
				<td align="center"><input name="email" value="${data.email}"></td>
				<td align="center"><input name="salary" value="${data.salary}"></td>
			</tr>
	
			<tr>
			<td><input type="submit" value="Update"></td>
			</tr>
			
	</table>
</form>
</body>
</html>