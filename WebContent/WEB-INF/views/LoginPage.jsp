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
<title>로그인페이지</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div>
<<<<<<<< HEAD:WebContent/LoginPage.jsp
      <c:import url="./WEB-INF/components/LoginForm.jsp">
      </c:import>
========
     <c:import url="/WEB-INF/components/LoginForm.jsp"></c:import>
>>>>>>>> 074a1e4e1c22925359a05447d406275d93e88f9f:WebContent/WEB-INF/views/LoginPage.jsp
</div>
<div>
</div>

</body>
</html>