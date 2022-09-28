<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.jspiders.springmvc.dto.StudentDTO"%>
<%StudentDTO student = (StudentDTO) request.getAttribute("student");%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend>Search Student</legend>
		<%
		if (msg != null) {
		%>
		<%=msg%>
		<%
		}
		%>
		<form method="post" action="./searchStudent">
			<table>
				<tr>
					<label>Enter the studentId</label>
					<input type="text" name="id" />
				</tr>
				<tr>
					<input type="submit" value="Submit" />
				</tr>
			</table>
		</form>
	</fieldset>
	<%
	if (student != null) {
	%>
	<table>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>Username</th>
		<th>Password</th>
		<tr>
			<td><%=student.getId()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getEmail()%></td>
			<td><%=student.getUsername()%></td>
			<td><%=student.getPassword()%></td>
		</tr>
	</table>
	<%
	}
	%>


</body>
</html>