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
<title>메인화면 컴포넌트</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div>
		<h1>로그인 된 회원 정보</h1>
		<hr>
	</div>
	
	<div>
		<table border= 1>
			<tr>
				<th>회원 아이디</th>
				<th>회원 패스워드</th>
				
			</tr>
			<tr>
				<td><c:out value="${param.userId }"></c:out> </td>
				<td><c:out value="${param.userPw }"></c:out> </td>
			</tr>
		</table>
	</div>
</body>
</html>