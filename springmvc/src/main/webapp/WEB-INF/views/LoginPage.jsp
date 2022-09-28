<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String msg = (String) request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&display=swap")
	;

* {
	font-family: "Montserrat", sans-serif;
	margin: 0px;
	padding: 0px;
	font-weight: bolder;
	/* color:white; */
}

body {
	/* background-image:linear-gradient(45deg,pink,hotpink); */
	/* background-image:url('https://images.unsplash.com/photo-1540821924489-7690c70c4eac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1101&q=80'); */
	/* background-image:url('https://images.unsplash.com/photo-1517059224940-d4af9eec41b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1305&q=80'); */
	/* background-image:url('https://images.unsplash.com/photo-1528297506728-9533d2ac3fa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'); */
	/* background-image:url('https://images.unsplash.com/photo-1518665750801-883c188a660d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'); */
	background-image:
		url('https://images.unsplash.com/photo-1531256379416-9f000e90aacc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80');
	/* background-image:url('https://images.unsplash.com/photo-1512486130939-2c4f79935e4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'); */
	/* background-image:url('https://images.unsplash.com/photo-1501676491272-7bbd3e71f7e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1138&q=80'); */
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	width: 100vw;
	height: 100vh;
}

fieldset {
	border: none;
	box-shadow: 0px 0px 10px black;
	width: 30vw;
	margin: auto;
	margin-top: 10%;
	min-height: 45vh;
	min-width: 20vw;
	/* background-image:linear-gradient(45deg,pink,hotpink); */
	background-color: transparent;
	backdrop-filter: blur(10px);
	border-radius: 10px;
	transition:transform 1s;
}
fieldset:hover{
transform:scale(1.2);

}
#login td {
	position: relative;
	left: 38%;
	top: 10%;
}

form {
	margin-top: 8vh;
	margin-left: 6vw;
}

h1 {
	text-align: center;
	margin-top: 4vh;
	text-shadow: 2px 2px 0px gray;
}

.input {
	background-color: transparent;
	border: none;
	box-shadow: 0px 0px 5px black;
	border-radius: 5px;
	padding: 2px 5px;
	outline: none;
	margin: 10px;
}

.input:hover {
	transform: scale(1.1);
}

input[type=submit] {
	background-color: transparent;
	box-shadow: 0px 0px 4px black;
	border-radius: 10px;
	border: none;
	outline: none;
	/* border-width:1px; */
	margin-top: 15px;
	padding: 5px 10px;
}

input[type=submit]:hover {
	cursor:pointer;
	background-image:linear-gradient(45deg,pink,hotpink,darkviolet);
/* 	background-color: pink; */
	transform: scale(1.3);
}
h6{
margin-left:35%;
margin-top:2%;

}
</style>
</head>
<body>
	<fieldset>
		<h1>Login</h1>

		<%
		if (msg != null) {
		%>
		<h6>
		<%=msg%>
		</h6>
		<%
		}
		%>
		<form method="post" action="./login">
			<table>

				<tr>
					<td><label>UserName</label></td>
					<td><input class="input"  type="text" name="username" placeholder="Enter your username"></td>
				</tr>
				<tr>
					<td><label>Password</label></td>
					<td><input class="input"  type="text" name="password" placeholder="Enter your password"></td>
				</tr>
				<tr id="login">
					<td><input type="submit" value="Login"></td>
				</tr>

			</table>
		</form>

	</fieldset>
</body>
</html>