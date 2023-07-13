<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainForm.jsp</title>
</head>
<body>
	아이디 : <c:out value="${param.userId }"></c:out><br>
	비밀번호 : <c:out value="${param.userPw}"></c:out>
</body>
</html>