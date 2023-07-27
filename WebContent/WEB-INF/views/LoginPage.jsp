<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>로그인화면</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<meta charset="UTF-8">
<title>로그인페이지</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="icon" href="./images/logo_transparent.png"/>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	$(function()
	{
		$("#loginBtn").click(function()
		{
			//alert($("#userId").val());
			$(location).attr('href',"main.action?userId="+$("#userId").val()+"?userPw="+$("#userPw").val());
		});
	});
</script>


</head>
<body>
<div>
      <c:import url="/WEB-INF/components/LoginForm.jsp">
      </c:import>

</div>
<div>
</div>

</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>
