<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h3>Login Page</h3>

	<form method="POST" action="${pageContext.request.contextPath}/login">
		<input type="hidden" name="redirectId" value="${param.redirectId}" />
		<table border="0">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="userName" value="${user.userName}" />
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"
					value="${user.password}" /></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="Submit" /> <a
					href="${pageContext.request.contextPath}/">Cancel</a></td>
			</tr>
		</table>
	</form>
</body>
</html>