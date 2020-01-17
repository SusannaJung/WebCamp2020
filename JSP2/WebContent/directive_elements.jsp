<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP directive elements</title>
</head>
<body>
<h2>Jsp Page Directives</h2>


1)import <br>
	<%@ page import="java.util.Date" %>  
Today is: <%= new Date() %>  

<br><hr><br>

2) contentType <br>
<%-- <%@ page contentType=application/msword %>   --%>
Today is: <%= new java.util.Date() %>  

<br><hr><br>

3)info <br>
<%@ page info="composed by Susanna Jung" %>  
Today is: <%= new java.util.Date() %> 

<br><hr><br>

4) buffer <br>

<%@ page buffer="16kb" %>  
Today is: <%= new java.util.Date() %> 

<br><hr><br>

5)Error <br> 

<%@ page isErrorPage="true" %>  
  
 Sorry an exception occured!<br/>  
The exception is: <%= exception %>

<br><hr><br>

<h2>Jsp Include Directives</h2>

<%@ include file="header.html" %>  
  
Today is: <%= java.util.Calendar.getInstance().getTime() %>  

<br><hr><br>

<%-- <%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %>   --%>


  
</body>
</html>