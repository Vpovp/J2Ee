<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

main {
	width: 100%;
	height: 1000px;
	/* background-image:url(/IMAGES/images2/pexels-min-an-1131458.jpg) ; */
	background-image: url(/IMAGES/images2/pexels-sohail-nachiti-807598.jpg);
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	/* background-color:#B3dee5; */
}

header {
	width: 100%;
	height: 60px;
	/* 	background-color:lightcoral; */
	background-image: linear-gradient(45deg, pink, lightcoral, violet);
	backdrop-filter: blur(5px);
	/* box-shadow:0px 0px 10px rgba(0,0,0,0.2); */
	/* 	border:2px solid black; */
	box-shadow: 0px 0px 10px black;
	z-index: 1;
}

nav {
	width: 100%;
	height: 40px;
	position: relative;
	top: 10px;
	display: flex;
}

#logo {
	background-image: url(/IMAGES/vplogo.png);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	width: 40px;
	height: 40px;
	position: relative;
	left: 50px;
	top: 0px;
	border-radius: 50px;
	/* box-shadow:0px 0px 5px rgba(255,255,255,0.8); */
}

#title {
	width: 200px;
	height: 50px;
	/* background-color:black; */
	position: relative;
	left: 80px;
	top: 0px;
	font-size: 30px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	/* text-shadow:0px 0px 10px rgba(0,0,0,0.5); */
	color: black;
	/* font-family: 'Dancing Script', cursive; */
	/* font-family: 'Pacifico', cursive; */
	/* font-family: 'Satisfy', cursive; */
	/* font-family: 'Sedgwick Ave Display', cursive; */
	/* font-family: 'Lobster', cursive; */
	/* font-family: 'Aboreto', cursive; */
}

#buttondiv {
	position: relative;
	left: 980px;
	width: 200px;
	display: flex;
	justify-content: space-evenly;
}

.buttons {
	/* position:relative;
    top:8px;
    width:50px;
    height:30px;
    outline:none;
    border:none;
    box-shadow:0px 0px 5px rgba(0,0,0,0.2);
    backdrop-filter:blur(10px);
    border-radius: 10px; */
	
}

.buttons a:hover {
	text-decoration: underline;
	text-decoration-thickness: 10px;
}

.buttons a {
	color: black;
	text-decoration: none;
	position: relative;
	top: 6px;
	left: 0px;
	padding: 6px 6px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
}
</style>

</head>
<body>
	<main>
		<header>
			<nav>
				<div id="logo"></div>
				<div id="title">vpArt</div>
				<div id="buttondiv">
					<div class="buttons">
						<a href="">Insert</a>
					</div>
					<div class="buttons">
						<a href="">Update</a>
					</div>
					<div class="buttons">
						<a href="">Remove</a>
					</div>
					<div class="buttons">
						<a href="">Search</a>
					</div>
					<div class="buttons">
						<a href="">Logout</a>
					</div>
				</div>
			</nav>
		</header>
	</main>
</body>
</html>