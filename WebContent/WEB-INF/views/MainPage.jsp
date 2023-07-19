<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png"/>
<meta charset="UTF-8">
<title>Main</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		$(".userProfile").click(function()
		{
			alert("마이페이지클릭");
		});
	})
</script>
</head>
<body>
	<c:import url="/WEB-INF/components/MenuForm.jsp">
	</c:import>
	<div>
		동적요소<br><br><br><br><br><br>
		<br><br><br><br><br><br>
		<br><br><br><br><br><br>
		<br><br><br><br><br><br>
		<br><br><br><br><br><br>
		
	</div>
	<c:import url="/WEB-INF/components/FooterForm.jsp">
	</c:import>

</body>
</html>