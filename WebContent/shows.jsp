<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TV Shows</title>
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

#menu {
	width: 17%;
	margin-left: -0.5%;
	float: left;
	background-color: #eff3f9;
}

#menu a {
	text-decoration: none;
}

#top {
	margin: 6%;
	margin-left: -2%;
	padding: .5em;
	border-bottom: black 1px solid;
}

#top ul {
	list-style: none;
	padding: 0;
	margin: 0 auto;
	width: 19.5em;
}

#top ul li {
	font-weight: normal;
}

#top ul li a {
	display: block;
	padding: .5em;
	width: 65%;
}

#top ul li img {
	margin-bottom: -3%;
	margin-right: 10%;
}

#top ul li img.exp {
	margin-bottom: -5%;
	margin-right: 7%;
}

#top ul a:link {
	color: #000;
}

#top ul a:visited {
	color: #000;
}

#top ul a:focus {
	color: #FC6;
}

#top ul a:hover {
	color: #fc6;
	background-color: #efeded;
}

#top ul a:active {
	color: #F00;
}

#middle {
	margin-left: -2%;
	padding: .5em;
	border-bottom: black 1px solid;
}

#middle ul {
	list-style: none;
	padding: 0;
	margin: 0 auto;
	width: 19.5em;
}

#middle ul li {
	font-weight: normal;
}

#middle ul li p {
	text-align: center;
	text-transform: uppercase;
	width: 60%;
}

#middle ul li a {
	display: block;
	padding: .5em;
	width: 65%;
}

#middle ul li img {
	margin-bottom: -3%;
	margin-right: 10%;
}

#middle ul a:link {
	color: #000;
}

#middle ul a:visited {
	color: #000;
}

#middle ul a:focus {
	color: #FC6;
}

#middle ul a:hover {
	color: #fc6;
	background-color: #efeded;
}

#middle ul a:active {
	color: #F00;
}

#bottom {
	margin-left: -2%;
	padding: .5em;
	border-bottom: black 1px solid;
}

#bottom ul {
	list-style: none;
	padding: 0;
	margin: 0 auto;
	width: 19.5em;
}

#bottom ul li {
	font-weight: normal;
}

#bottom ul li p {
	text-transform: uppercase;
	width: 63%;
}

#bottom ul li a {
	display: block;
	padding: .5em;
	width: 65%;
}

#bottom ul li img {
	margin-bottom: -3%;
	margin-right: 10%;
}

#bottom ul a:link {
	color: #000000;
}

#bottom ul a:visited {
	color: #000;
}

#bottom ul a:focus {
	color: #FC6;
}

#bottom ul a:hover {
	color: #fc6;
	background-color: #efeded;
}

#bottom ul a:active {
	color: #F00;
}

#main {
	width: 76%;
	float: left;
	margin-top: 2%;
	margin-left: 7%;
	height: 100%;
}

#main a:link {
	color: #000;
}

#main a:visited {
	color: #000;
}

#nfl {
	height: 205px;
	overflow: auto;
	clear: both;
	margin-right: -3.5%;
}

#nfl ul {
	list-style: none;
	padding: 0;
	margin: 0 auto;
}

#nfl ul li {
	font-weight: normal;
}

#nfl ul li p1 {
	text-transform: uppercase
}

#nfl ul li a {
	display: block;
	width: 250px;
	height: 200px;
	margin: 5px;
	float: left; 
}

#footer {
	width: 17%;
	margin-left: -0.5%;
	background-color: #eff3f9;
	height: 100%;
}

#footer ul {
	list-style: none;
	padding: 0;
	margin: 0 auto;
	width: 19.5em;
}

#footer ul li {
	font-weight: normal;
}

#footer ul li p {
	text-transform: uppercase;
	text-align: center;
	width: 57%;
}

#footer ul li a {
	float: left;
	margin: 5%;
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
#test{
	height: 150px;
	margin: 5px;
}
#test img{
	margin-right: 10px;
}
#test ul li{
	margin-top: -15px;
}
ul {
  list-style-type: none;
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
	<div id="page">
		<div id="menu">
			<div id="top">
				<ul>
					<li><a href="index.jsp"><img
							src="upload/images/homeIcon2.png" alt="icon" height="30">Home</a></li>
					<li><a href="explore.jsp"><img class="exp"
							src="upload/images/exploreIcon.png" alt="icon" height="35">Explore</a></li>
				</ul>
			</div>
			<div id="middle">
				<ul>
					<li><p>Best of VideoHub</p></li>
					<li><a href="movies.jsp"><img
							src="upload/images/moviesIcon3.png" alt="icon" height="30">Movies</a></li>
					<li><a href="shows.jsp"><img
							src="upload/images/moviesIcon.png" alt="icon" height="30">TV
							Shows</a></li>
					<li><a href="music.jsp"><img
							src="upload/images/musicIcon3.png" alt="icon" height="30">Music</a></li>
					<li><a href="gaming.jsp"><img
							src="upload/images/gamingIcon.png" alt="icon" height="30">Gaming</a></li>
					<li><a href="sports.jsp"><img
							src="upload/images/sportsIcon2.png" alt="icon" height="30">Sports</a></li>
					<li><a href="news.jsp"><img
							src="upload/images/newsIcon3.png" alt="icon" height="30">News</a></li>
				</ul>
			</div>
			<div id="bottom">
				<ul>
					<li><p>Best of VideoHub</p></li>
					<li><a href="movies.jsp"><img
							src="upload/images/moviesIcon3.png" alt="icon" height="30">Movies</a></li>
					<li><a href="shows.jsp"><img
							src="upload/images/moviesIcon.png" alt="icon" height="30">TV
							Shows</a></li>
					<li><a href="music.jsp"><img
							src="upload/images/musicIcon3.png" alt="icon" height="30">Music</a></li>
					<li><a href="gaming.jsp"><img
							src="upload/images/gamingIcon.png" alt="icon" height="30">Gaming</a></li>
					<li><a href="sports.jsp"><img
							src="upload/images/sportsIcon2.png" alt="icon" height="30">Sports</a></li>
					<li><a href="news.jsp"><img
							src="upload/images/newsIcon3.png" alt="icon" height="30">News</a></li>
				</ul>
			</div>
			<div id="bottom">
				<ul>
					<li><p>More from VideoHub</p></li>
					<li><a href="help.jsp"><img
							src="upload/images/helpIcon1.png" alt="icon" height="30">Help</a></li>
					<li><a href="feedback.jsp"><img
							src="upload/images/feedbackIcon1.png" alt="icon" height="30">Send
							Feedback</a></li>
				</ul>
			</div>
			<div id="footer">
		<ul>
			<li><p>Keep Intouch</p></li>
			<li><a href="https://www.facebook.com/"><img
					src="upload/images/facebookIcon2.png" alt="icon" height="30"></a></li>
			<li><a href="https://www.instagram.com/"><img
					src="upload/images/instaIcon.png" alt="icon" height="30"></a></li>
			<li><a href="https://twitter.com/"><img
					src="upload/images/twitterIcon.png" alt="icon" height="30"></a></li>
		</ul>
		<br>
		<p>
			<small>Copyright 2018, Alton Nyamutamba</small>
		</p>
	</div>
		</div>
		<div id="main">
			<h2>Marvel</h2>
			<div id="nfl">
				<ul>
					<%
					String user_keyword = "marvel"; 
				 			
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
					String sql="SELECT * FROM videos where category like '%"+user_keyword+"%' ";
					ResultSet rs=statement.executeQuery(sql);
					ResultSetMetaData rmeta=rs.getMetaData();
					int numColumns=rmeta.getColumnCount();
					
					while(rs.next())
					{%>
						<li><a href="player.jsp?id=<%= rs.getString("id")%>">
						<video height="140" width="250" poster="<%=rs.getString("thumbnailPath") %>">
						<source src="<%=rs.getString("videoPath") %>" type="video/mp4"></video>
						<strong><%=rs.getString("videoName") %></strong><br/><%=rs.getString("author") %></a></li>
					<% }
					
					rs.close();
					statement.close();
					connection.close();}
					catch(Exception e){ e.printStackTrace();}
				 	%>
				</ul>
			</div>
			<h2>DC</h2>
			<div id="nfl">
				<ul>
					<%
					String user_keyword1 = "dc"; 
				 			
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
					String sql="SELECT * FROM videos where category like '%"+user_keyword1+"%' ";
					ResultSet rs=statement.executeQuery(sql);
					ResultSetMetaData rmeta=rs.getMetaData();
					int numColumns=rmeta.getColumnCount();
					
					while(rs.next())
					{%>
						<li><a href="player.jsp?id=<%= rs.getString("id")%>">
						<video height="140" width="250" poster="<%=rs.getString("thumbnailPath") %>">
						<source src="<%=rs.getString("videoPath") %>" type="video/mp4"></video>
						<strong><%=rs.getString("videoName") %></strong><br/><%=rs.getString("author") %></a></li>
					<% }
					
					rs.close();
					statement.close();
					connection.close();}
					catch(Exception e){ e.printStackTrace();}
				 	%>
				</ul>
			</div>
			<h2>Best TV Shows</h2>
			<div id="nfl">
				<ul>
					<%
					String user_keyword2 = "series"; 
				 			
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
					String sql="SELECT * FROM videos where category like '%"+user_keyword2+"%' ";
					ResultSet rs=statement.executeQuery(sql);
					ResultSetMetaData rmeta=rs.getMetaData();
					int numColumns=rmeta.getColumnCount();
					
					while(rs.next())
					{%>
						<li><a href="player.jsp?id=<%= rs.getString("id")%>">
						<video height="140" width="250" poster="<%=rs.getString("thumbnailPath") %>">
						<source src="<%=rs.getString("videoPath") %>" type="video/mp4"></video>
						<strong><%=rs.getString("videoName") %></strong><br/><%=rs.getString("author") %></a></li>
					<% }
					
					rs.close();
					statement.close();
					connection.close();}
					catch(Exception e){ e.printStackTrace();}
				 	%>
				</ul>
			</div>

		</div>
	</div>
	
</body>

</html>