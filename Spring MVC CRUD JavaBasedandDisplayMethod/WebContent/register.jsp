<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body style="background-color:rgb(214,80,118);">
<form action="reg" method="post">
		<strong style="color:yellow;"><% String s=(String)request.getAttribute("msg1");
			if(s!=null)
			{
				out.print(s);
			}
		%></strong>
		<marquee scrollamount="12">
			<h2 align="center" style="color: lime;"><b>!!!Register Here!!!</b></h2>
		</marquee>
		<p align="center"><strong>Please fill this Form to Create an Account</strong></p>

		<table border="1" align="center">

			<tr>
				<td><b>Employee ID:</b></td>
				<td><input type="text" name="id"
					placeholder="Enter Employee ID" required="required"></input></td>
					
			<tr>
				<td><b>User Name:</b></td>
				<td><input type="text" name="uname"
					placeholder="Enter username" required="required"></input></td>
					
			<tr>
				<td><b>Password:</b></td>
				<td><input type="password" name="pwd"
					placeholder="Enter password" required="required"></input></td>

			<tr>
				<td><b>Employee Name:</b></td>
				<td><input type="text" name="name"
					placeholder="Enter Name" required="required"></input></td>
			<tr>
				<td><b>Age:</b></td>
				<td><input type="text" name="age"
					placeholder="Enter Age" required="required"></input></td>

			<tr>
				<td><b>Address:</b></td>
				<td><input type="text" name="address"
					placeholder="Enter address" required="required"></input></td>
			<tr>
				<td><b>Mobile Number:</b></td>
				<td><input type="number" name="mobileno" placeholder="+91" required="required"></input></td>
			<tr>
				<td><b>Email Id:</b></td>
				<td><input type="email" name="email"
					placeholder="Enter email Id" required="required"></input></td>
			<tr>
				<td><b>Salary:</b></td>
				<td><input type="text" name="salary"
					placeholder="Enter salary" required="required"></input></td>
					
			<tr>
				<td><input type="submit" name="" value="Submit"></input></td>		
				
				</table>
	</form>
</body>
</html>