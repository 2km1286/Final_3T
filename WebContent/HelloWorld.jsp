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
<title>로그인폼</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div>
      <c:import url="./WEB-INF/components/login.jsp"></c:import>
</div>
<div>
</div>

</body>
</html>