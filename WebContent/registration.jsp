<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<style>
#bar {
	width: 101.5%;
	height: 50px;
	overflow: hidden;
	background-color: #4e545b;
	margin-top: -0.5%;
	margin-left: -1%;
}

body a {
	text-decoration: none;
}

#logo {
	float: left;
}
#loginlogo {
	border: white 1px solid;
	width: 100%;
	padding-left: 40%;
}

#searchBar {
	margin-top: 1%;
	margin-left: 10%;
	float: left;
	width: 45%;
}

#user {
	margin-top: 0.5%;
	width: 15%;
	float: right;
	margin-left: 5%;
}

#user ul {
	list-style: none;
	overflow: hidden;
	padding: 0;
	margin: 0 auto;
	width: 19.5em;
}

#user ul li {
	font-weight: normal;
	text-transform: uppercase;
	float: left;
}

#user ul li a {
	display: block;
	padding: .5em;
}

#user ul a:link {
	color: #fff;
}

#user ul a:visited {
	color: #fff;
}

#user ul a:focus {
	color: #FC6;
}

#user ul a:hover {
	color: #fff;
}

#user ul a:active {
	color: ##F00;
}

#page {
	border: gray 5px solid;
	border-style: groove;
	position: absolute;
	height: 300px;
	width: 300px;
	background-color: #eff3f9;
	z-index: 15;
	top: 45%;
	left: 50%;
	margin: -100px 0 0 -150px;
	padding: .5em;
}
#loginpage {
	border: gray 5px solid;
	border-style: groove;
	position: absolute;
	height: 300px;
	width: 300px;
	background-color: #eff3f9;
	z-index: 15;
	top: 45%;
	left: 50%;
	margin: -100px 0 0 -150px;
	padding: 2em 0 0 3em;
}

#page1 {
	text-align: center;
	margin: 10%;
}

body {
	font-family: Georgia, "Times New Roman", Times, serif;
}

h1, h2 {
	color: #399;
}

h1 {
	font-size: 1.5em;
}

h2 {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 1em;
}

small {
	color: #999;
}
</style>
</head>

<body>

	<div id="bar">
		<div id="loginlogo">
			<a href="index.jsp"><img src="upload/images/1st icon.png" alt="logo" height="50"></a>
		</div>	
	</div>
	<div id="loginpage">
		<form action="registration_form_handler.jsp" method="POST">
			Username: <br /> <input type="text" name="username" style="width: 65%;"><br />
			Password: <br /><input type="password" name="password" style="width: 65%;"/><br />
			Confirm password: <br /><input type="password" name="confirm_password" style="width: 65%;"/><br />
			Email address:<br /> <input type="text" name="email" style="width: 65%;"><br />
			<br/><input type="submit" value="Submit" />
		</form>
		<form action="login.jsp">
			<br/><input type="submit" value="Login" />
		</form>
	</div>

</body>

</html>