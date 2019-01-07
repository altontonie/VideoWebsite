<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Form Handling</title>
</head>
<body>

<% 
String login_name = new String(request.getParameter("username"));
String login_password = new String(request.getParameter("password"));
if((login_name != null && !login_name.isEmpty())&&(login_password != null && !login_password.isEmpty())){
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
	    login_name = login_name.trim();
	    login_password = login_password.trim();

	    String sql="SELECT * FROM user WHERE username = '"+ login_name + "' ";
	    ResultSet result = statement.executeQuery(sql);
	    
	    if(result.next())
	    {
	       if(login_password.equals(result.getString("password")))
	       {
	    		session.setAttribute("username",login_name);
	       		session.setAttribute("password",login_password);
	       		%>  
	       		<jsp:forward page="index.jsp"></jsp:forward>             
	      		<%
	       }else {%> 
				<h1>Login error</h1>
				<p>Incorrect user name or password  entered.  <a href="login.jsp">Please try again</a></p>
	<%}
	    }
		result.close();
		statement.close();
		connection.close();
	    }catch(Exception e){ e.printStackTrace();}
}else {%>
    <jsp:forward page="index.jsp"></jsp:forward> 
<%} %>
</body>
</html>