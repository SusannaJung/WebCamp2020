<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL functions</title>
</head>
<body>
<h4>contains()</h4>
<c:set var="String" value="Welcome to javatpoint"/>  
  
<c:if test="${fn:contains(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:contains(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if> 
<br><hr><br>

<h4>containsIgnoreCase()</h4>
  
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if> 
<br><hr><br>

<h4>endsWith()</h4>
<c:set var="String" value="Welcome to JSP programming"/>  
  
<c:if test="${fn:endsWith(String, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>  
  
<c:if test="${fn:endsWith(String, 'JSP')}">  
   <p>String ends with JSP<p>  
</c:if> 
<br><hr><br>
 
 <h4>escapeXML()</h4>
 <c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>
 <br><hr><br>
 
  
 <h4>length()</h4>
 <c:set var="str1" value="Welcome to JSP        programming         "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p>  
 <br><hr><br>
 
   
 <h4>startsWith()</h4>
 <c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  
 
 <br><hr><br>
 
  <h4>split()</h4>
 <c:set var="s1" value="Welcome-to-JSP-Programming."/>  
<c:set var="s2" value="${fn:split(s1, '-')}" />  
<c:set var="s3" value="${fn:join(s2, ' ')}" />  
  
<p>String-3 : ${s3}</p>  
<c:set var="s4" value="${fn:split(s3, ' ')}" />  
<c:set var="s5" value="${fn:join(s4, '-')}" />  
  
<p>String-5 : ${s5}</p>  
 <br><hr><br>
 
  <h4>toLowerCase() toUpperCase()</h4>
  
  <c:set var="string" value="Welcome to JSP Programming"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string)}  

<c:set var="site" value="javatpoint.com"/>  
  <c:set var="author" value="Susanna Jung"/>  
  Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.
   <br><hr><br>
 
  <h4>substring()</h4>
  
  <c:set var="string" value="This is the first string."/>  
${fn:substring(string, 5, 17)}  

   <br><hr><br>
 
  <h4>replace()</h4>
<c:set var="writer" value="Ramesh Kumar"/>  
<c:set var="sentence" value="pqr xyz abc PQR"/>  
${fn:replace(writer, "Ramesh", "Suresh")}  
${fn:replace(sentence, "pqr", "hello")}  

 
</body>
</html>