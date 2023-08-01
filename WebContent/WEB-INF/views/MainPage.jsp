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

<script type="text/javascript">

	$().ready(function(){
		
		$("#petSeatingMenu").click(function(){
			
			// json 형식으로 데이터를 전송할 형식 지정
			var params = {
				id : $("#id").val() ,
				pwd : $("#pwd").val(),
				account : $("#account").val()
			}
			
			// ajax 통신
			$.ajax({
				url : "ajaxEx02Pro.jsp",
				type : "post",
				data : params,
				success: function(){
					alert("성공하였습니다.");
					$("#id , #pwd , #account").prop("disabled" , true);
				},
				error : function(){
					alert("통신이 실패하였습니다.");
				}
				
			});
			
		});
		
	});
</script>

</head>
<body>

	<c:import url="/WEB-INF/components/MenuForm_2.jsp">
	</c:import>
	<section>
	<div>
	<c:import url="/WEB-INF/components/DefaultMainForm.jsp"></c:import>
	</div>
	</section>
	<section>
	<div>
	<c:import url="/WEB-INF/components/FooterForm.jsp">
	</c:import>
	</div>
	</section>

</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</html>