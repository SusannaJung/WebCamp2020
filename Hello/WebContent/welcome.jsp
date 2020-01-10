<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<%  
	String name=request.getParameter("uname");  

	out.print("Welcome "+name);  
	out.print("<br>The time is : "+ java.util.Calendar.getInstance().getTime());
	%>  
	<br><hr><br>
	
	<%!   
	int cube(int n){  
	return n*n*n;  
	}  
	%>  
	<%= "Cube of 3 is: "+cube(3) %>  
	<br><hr><br>

	<a href="hello.jsp">Go to google</a>
	<br><hr><br>
	 
	
	  
	<%     
		pageContext.setAttribute("user",name,PageContext.SESSION_SCOPE);  
		  	  
		%>
		
	<a href="second.jsp">second jsp page</a>  
	<br><hr><br>
	
	<%@ page info="composed by Susanna Jung" %>  
Today is: <%= new java.util.Date() %>  
  
  	<br><hr><br>
	
  <%@ page isErrorPage="true" %>  
  
 Sorry an exception occured!<br/>  
The exception is: <%= exception %>  
	
	 
</body>
</html>