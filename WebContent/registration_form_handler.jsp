<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Handle Registration Form</title>
</head>
<body>
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




String username = new String(request.getParameter("username"));
String password = new String(request.getParameter("password"));
String confirm_password =new String(request.getParameter("confirm_password"));
String email = new String(request.getParameter("email"));
if(username.equals("")|password.equals("")|confirm_password.equals("")|email.equals("")){
	response.sendRedirect("registration.jsp");
 }
else {
	 
		 if(confirm_password.equals(password)) 
		{
		 session.setAttribute("username",username);
		 session.setAttribute("password",password);
		 String sql="insert into user(username,password,email) values('"+username+"','"+password+"','"+email+"')";
		 System.out.print(sql);
		 statement.executeUpdate(sql);
		 statement.close();
		 connection.close();
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
		<%
		} else {%>
		<h1>Account creation error</h1> 
		<p>The passwords you entered do not match!</p><br/><a href="login.jsp">Please try again</a></p>
		<%}
 } 


 }
catch(Exception e){ e.printStackTrace();}%>

</body>
</html>