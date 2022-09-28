<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Aboreto&family=Lobster&family=Sedgwick+Ave+Display&display=swap"
	rel="stylesheet">
<style>
@import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&display=swap");
* {
	margin: 0;
	padding: 0;
/* 	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', */
/* 		'Lucida Sans', Arial, sans-serif; */
	font-family: "Montserrat", sans-serif;
	font-weight:bolder;
}
body{
/* background-image:linear-gradient(45deg,pink,hotpink); */
background-image:url("https://images.unsplash.com/photo-1487700160041-babef9c3cb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1152&q=80");
background-repeat:no-repeat;
height:100vh;
background-position:center;
background-size:cover;


}
nav {
	width: 100vw;
	height: 9vh;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	align-content: center;
/* 	background-color:pink;  */
 	background-image: linear-gradient(45deg, pink, hotpink, darkviolet);
/* 	background-image: linear-gradient(45deg, pink, lightcoral, violet); */
	box-shadow: 0px 0px 10px black;
}

ul {
	width: 30vw;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-evenly;
	align-content: center;
}

ul li {
	list-style-type: none;
}

ul li a {
	text-decoration: none;
	color: black;
}

ul li a:hover {
	text-decoration: underline;
	text-decoration-thickness: 8px;
	color: black;
}

nav div {
	font-size: 2rem;
	font-weight: 500;
	color: black;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<nav>
		<div>vpArt</div>
		<ul>
			<li><a href="./addStudent">Insert</a></li>
			<li><a href="./updateStudent">Update</a></li>
			<li><a href="./removeStudent">Remove</a></li>
			<li><a href="./searchStudent">Search</a></li>
			<li><a href="./logout">Logout</a></li>
		</ul>
	</nav>


</body>
</html>