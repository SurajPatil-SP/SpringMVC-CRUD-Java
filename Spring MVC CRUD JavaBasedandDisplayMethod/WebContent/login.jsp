<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body style="background-color: aqua;">
<form action="log" method="post">

		<% String s=(String)request.getAttribute("msg");
			if(s!=null)
			{
				out.print(s);
			}
		%>

		<marquee>
			<h2 align="center" style="color: Red">Welcome to Login Page</h2>
		</marquee>
		<center><img src="D:\Java Material\download.png" width="50" height="50"></center>

		<table border="1" align="center">

			<tr>
				<td>UserName:</td>
				<td><input type="text" name="uname"></input></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="pwd"></input></td>
			</tr>

			<tr>
				<td><input type="submit" value="login"></input>
				<input type="checkbox" name="cbox">Keep me logged in</input></td>
				
				<td><p>For New Employee</p> 
				<a href="register">Click here to Register</a></td>
			</tr>

		</table>

	</form>
</body>
</html>