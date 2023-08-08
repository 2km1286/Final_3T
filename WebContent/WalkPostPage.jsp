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
<title>대리산책공고글올리기</title>

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

<script type="text/javascript">


</script>


<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Jua:400');

*{font-family: "Jua"}

</style>

</head>
<body>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
	
	<div class="mb-3">
	  <label for="formGroupExampleInput" class="form-label">Example label</label>
	  <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Example input placeholder">
	</div>
	<div class="mb-3">
	  <label for="formGroupExampleInput2" class="form-label">Another label</label>
	  <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Another input placeholder">
	</div>
	
	
	
	
	<c:import url="/WEB-INF/components/index/FooterForm.jsp">
	</c:import>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>