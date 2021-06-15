<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.cjc.model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript">
function updateRecord(){
	alert("update")
	document.myform.action="edit";
	document.myform.submit();
}

function deleteRecord(){
	alert("delete")
	document.myform.action="delete";
	document.myform.submit();
}
function addRecord(){
	alert("add")
	document.myform.action="add1";
	document.myform.submit();
}

</script>
<title>Success Page</title>
</head>
<body style="background-color:rgb(247,202,201);">
<form name="myform">
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<h3 align="center" style="color: blue;"><strong><u>Employee Details</u></strong></h3>
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
		
		<c:forEach items="${data}" var="emp">
			<tr>
				<td align="center"><input type="radio" name="id" value="${emp.id}"><c:out value="${emp.id}" /></td>
				<td align="center"><c:out value="${emp.uname}" /></td>
				<td align="center"><c:out value="${emp.pwd}" /></td>
				<td align="center"><c:out value="${emp.name}" /></td>
				<td align="center"><c:out value="${emp.age}" /></td>
				<td align="center"><c:out value="${emp.address}" /></td>
				<td align="center"><c:out value="${emp.mobileno}" /></td>
				<td align="center"><c:out value="${emp.email}" /></td>
				<td align="center"><c:out value="${emp.salary}" /></td>
			</tr>
		</c:forEach>
			<tr>
			<td><input type="button" onclick="updateRecord()" value="Update"></td>
			<td><input type="button" onclick="deleteRecord()" value="Delete"></td>
			<td><input type="button" onclick="addRecord()" value="Add"></td>
			</tr>
	</table>
</form>
</body>
</html>