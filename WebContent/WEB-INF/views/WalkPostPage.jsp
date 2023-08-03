<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WalkPostPage.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<section>
	<div>
		<c:import url="/WEB-INF/components/MenuForm.jsp"></c:import>
	</div>
</section>

<section>
	<div>
		<c:import url="/WEB-INF/components/WalkPostForm.jsp"></c:import>
	</div>
</section>

<section>
	<div>
		<c:import url="/WEB-INF/components/FooterForm.jsp"></c:import>
	</div>
</section>



</body>
</html>