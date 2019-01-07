<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Help form</title>
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
		<div id="logo">
			<a href="index.jsp"><img src="upload/images/1st icon.png"
				alt="logo" height="50"></a>
		</div>
		<div id="searchBar">
			<form action="Search_form_handle.jsp" method="POST">
				<input type="text" name="search" style="width: 85%;" /> <input
					type="submit" value="Search" />
			</form>
		</div>
		<% String Username = (String)session.getAttribute("username"); %>
		<% if(Username != null && !Username.isEmpty()) {%>
		<div id="user">
			<ul>
				<li><a href="logout.jsp">Log out</a></li>
			</ul>
		</div>
		<% } else{%>
		<div id="user">
			<ul>
				<li><a href="login.jsp">Log in</a></li>
			</ul>
		</div>
		<%} %>
	</div>
<%
try{


String userName="root";
String userPasswd="12345";

//database name
String dbName="videodatabase";

System.out.print(dbName);

String CLASSFORNAME="com.mysql.jdbc.Driver";
String SERVANDDB="jdbc:mysql://localhost/"+dbName +"?useUnicode=true&characterEncoding=utf8";

Class.forName(CLASSFORNAME);
Connection connection = DriverManager.getConnection(SERVANDDB, userName, userPasswd);
Statement statement=connection.createStatement();
System.out.print("connect successfully!");
//connection.close();




String helpQuery = new String(request.getParameter("helpQuery"));
	String email = new String(request.getParameter("email"));
	

	 String sql="insert into help(email,helpQuery) values('"+email+"','"+helpQuery+"')";
	 System.out.print(sql);
	 statement.executeUpdate(sql);
	 statement.close();
	 connection.close();
		%>
		
		<div id="page">
			<h1>Query Successfully sent</h1>
			<a href="index.jsp">Back to Homepage....</a>
		</div>
		<%

	}

	catch(Exception e){ e.printStackTrace();}
	%>
</body>
</html>