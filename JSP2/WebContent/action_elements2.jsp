<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forwarded Page</title>
</head>
<body>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  
<br>

Name received is : <%= request.getParameter("name") %>  

<br><hr><br>

<h2>this is index page</h2>  
  
<jsp:include page="header.html" />  
  
<h2>end section of index page</h2>  

<br><hr><br>

<jsp:useBean id="obj" class="com.javatpoint.Calculator"/>  
  
<%  
int m=obj.cube(5);  
out.print("cube of 5 is "+m);  
%>  

<br><hr><br>

<form action="process.jsp" method="post">  
Name:<input type="text" name="name"><br>  
Password:<input type="password" name="password"><br>  
Email:<input type="text" name="email"><br>  
<input type="submit" value="register">  
</form> 

<br><hr><br>


</body>
</html>