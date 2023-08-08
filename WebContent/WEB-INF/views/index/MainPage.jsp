<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String memSid = (String)session.getAttribute("memSid");		// 최초요청시 null
	String memNickName = (String)session.getAttribute("memNickName");   // 최초요청시 null
	
	if(memSid == null)
	{
		memSid = "0";
		 session.setAttribute("memSid", memSid);
	}

	
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png"/>

<meta charset="UTF-8"> 
<title>Main</title>

<!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>



</head>
<body>

	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">

	</c:import>
	<section>
	<div>
	<c:import url="/WEB-INF/components/index/DefaultMainForm.jsp"></c:import>
	</div>
	</section>
	<section>
	<div>
	<c:import url="/WEB-INF/components/index/BestListForm.jsp">
	</c:import>
	</div>
	</section>
	<section>
	<div>
	<c:import url="/WEB-INF/components/index/FooterForm.jsp">
	</c:import>
	</div>
	</section>

</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</html>