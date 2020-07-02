<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <h2>Data Table</h2>
 
    <table border="1">
        <tr>
            <th>구분 </th>
            <th>이름 </th>
            <th>나이 </th>
            <th>주소 </th>
            <th>이미지 </th>
            <th>제거 </th>
        </tr>
        <c:forEach items="${listuser}" var="user">
            <tr>
                <td><c:out value='${i}' /></td>
                <td><c:out value='${user.userName}' /></td>
                <td><c:out value='${user.userAge}' /></td>
                <td><c:out value='${user.userAddress}' /></td>
                <td><img alt="picture" src="./resources/images/${user.userImage}" width="100" height="100"></td>
                <td><button data-pid="${user.userName}">제거 </button></td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>