<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
String name = request.getParameter("name");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>:::Insert Student Details:::</legend>
		<form method="post" action="./addStudent">
			<table>
				<tr>
					<td><label>Name</label></td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td><label>UserName</label></td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add Student" /></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (name != null) {
	%>
	<h3>
		Successfully Added
		<%=name%>
		to the database
	</h3>
	<%
	}
	%>
</body>
</html>