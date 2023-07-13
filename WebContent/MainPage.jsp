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
<title>메페이지</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div>
      <c:import url="./WEB-INF/components/MainForm.jsp">
      	<c:param name="userId" value="${userId }"></c:param>
      	<c:param name="userPw" value="${userPw }"></c:param>
      </c:import>
</div>
<div>
</div>

</body>
</html>