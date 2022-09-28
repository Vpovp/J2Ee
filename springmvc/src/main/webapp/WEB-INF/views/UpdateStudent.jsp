<%@page import="com.jspiders.springmvc.dto.StudentDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
List<StudentDTO> students = (List<StudentDTO>) request.getAttribute("students");
String msg = (String) request.getAttribute("msg");
StudentDTO student = (StudentDTO) request.getAttribute("student");
%>
<%!int i;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<style type="text/css">
form {
	margin-top: 10px;
}

form table {
	margin: auto;
	width: auto;
}

tr {
	text-align: center;
}

fieldset table {
	margin: auto;
	text-align: left;
}

fieldset {
	margin: 15px 520px;
	text-align: center;
}

legend {
	color: white;
	background-color: #333;
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1487700160041-babef9c3cb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80");
	
		background-size: 100%;
}
</style>
</head>
<body>
	<%
	if (student != null) {
	%>
	<fieldset>
		<legend>:::Update Student:::</legend>
		<form method="post" action="./updateStudentData">
			<table>
				<tr hidden="true">
					<td><input type="text" name="id" value="<%=student.getId()%>"></td>
				</tr>
				<tr>
					<td><label>Name</label></td>
					<td><input type="text" name="name" value="<%=student.getName()%>"></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="text" name="email" value="<%=student.getEmail()%>"></td>
				</tr>
				<tr>
					<td><label>Username</label></td>
					<td><input type="text" name="userName" value="<%=student.getUsername()%>"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input type="text" name="password" value="<%=student.getPassword()%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Update"></td>
				</tr>
			</table>

		</form>
	</fieldset>
	<%
	} else {
	%>
	<fieldset>
		<legend>:::Select Student to Update:::</legend>
		<form method="post" action="./updateStudent">
			<table>
				<tr>
					<td><label>Enter Student ID</label></td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Select"></td>
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (msg != null) {
	%>
	<h3><%=msg%></h3>
	<%
	}
	%>
	<%
	if (students != null) {
	%>
	<table style="width: 100%;">
		<tr>
			<td><h3>ID</h3></td>
			<td><h3>Name</h3></td>
			<td><h3>Email</h3></td>
			<td><h3>Username</h3></td>
			<td><h3>Password</h3></td>
		</tr>
		<%
		for (i = 0; i < students.size(); i++) {
		%>
		<tr>
			<td><%=students.get(i).getId()%></td>
			<td><%=students.get(i).getName()%></td>
			<td><%=students.get(i).getEmail()%></td>
			<td><%=students.get(i).getUsername()%></td>
			<td><%=students.get(i).getPassword()%></td>
		</tr>

		<%
		}
		%>

	</table>

	<%
	}
	%>
	<%
	}
	%>
</body>
</html>