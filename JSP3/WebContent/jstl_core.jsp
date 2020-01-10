<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Tags</title>
</head>
<body>
<h4>JSTL Core "c:out" Tag</h4> <br>
<c:out value="${'Welcome to javaTpoint'}"/> 
<br><hr><br>

<h4>JSTL Core "c:import" Tag</h4> <br>
<c:import var="data" url="https://www.notion.so/JSP-3-ca92c1085c8e45a0bb5a465715bbd8ce"/>  
<c:out value="${data}"/>  
<br><hr><br>

<h4>JSTL Core "c:set" Tag</h4>
<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>  
<br><hr><br>

<h4>JSTL Core "c:remove" Tag</h4>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>
<br><hr><br>

<h4>JSTL Core "c:catch" Tag</h4>

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
  
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>  
<br><hr><br>

<h4>JSTL Core "c:if" Tag</h4>
<c:set var="income" scope="session" value="${4000*4}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if> 
<br><hr><br>

<h4>JSTL Core "c:choose, c:when, c:otherwise" Tag</h4>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose> 
<br><hr><br>

<h4>Even odd example</h4>
  
<c:set value="10" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
<c:out value="${num} is even number"></c:out>  
</c:when>  
<c:otherwise>  
<c:out value="${num} is odd number"></c:out>  
</c:otherwise>  
</c:choose> 
<br><hr><br>

<h4>JSTL Core "c:forEach" Tag</h4>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>  
<br><hr><br>

<h4>JSTL Core "c:forTokens" Tag</h4>
<c:forTokens items="Susanna-Bitnari-Suhyun" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens> 
<br><hr><br>

<h4>JSTL Core "c:param" Tag</h4>
<c:url value="/index1.jsp" var="completeURL">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Susanna"/>  
</c:url>  
${completeURL}  
<br><hr><br>

<%-- <h4>JSTL Core "c:redirect" Tag</h4>
<c:set var="url" value="0" scope="request"/>  
  <c:if test="${url<1}">  
     <c:redirect url="http://javatpoint.com"/>  
  </c:if>  
  <c:if test="${url>1}">  
     <c:redirect url="http://facebook.com"/>  
  </c:if>  --%> 
  
  <h4>JSTL Core "c:url" Tag</h4>
  <c:url value="/RegisterDao.jsp"/>  
  <br><hr><br>

  
</body>
</html>