<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="expression_lang2.jsp">  
Enter Name:<input type="text" name="name" /><br/><br/>  
<input type="submit" value="go"/>  
</form>  

<h3>welcome to index page</h3>  
<%  
session.setAttribute("user","Susanna Jung");  
%>  
  
<a href="expression_lang2.jsp">visit</a>

<h1>First JSP</h1>  
<%  
Cookie ck=new Cookie("name","Handong");  
response.addCookie(ck);  
%>  
<a href="expression_lang2.jsp">click</a>  
</body>
</html>