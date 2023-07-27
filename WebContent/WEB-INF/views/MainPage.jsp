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
<link rel="stylesheet" href="css/mdb.min.css" />
<meta charset="UTF-8"> 
<title>Main</title>

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

<style type="text/css">

.navbar-light .navbar-brand {
  color: #fff;
  font-size: 25px;
  text-transform: uppercase;
  font-weight: bold;
  letter-spacing: 2px;
}



.navbar-light .navbar-nav .nav-link {
  color: #fff;
}

.navbar-toggler {
  background: #fff;
}

.navbar-nav {
  text-align: center;
}

.nav-link {
  padding: .2rem 1rem;
}

.nav-link.active,.nav-link:focus{
  color: #fff;
}

.navbar-toggler {
  padding: 1px 5px;
  font-size: 18px;
  line-height: 0.3;
}

.navbar-light .navbar-nav .nav-link:focus, .navbar-light .navbar-nav .nav-link:hover {
  color: orange;
}

</style>
</head>
<body>
	<section>
	<div>
	<c:import url="/WEB-INF/components/MenuForm_2.jsp">
	</c:import>
	</div>
	</section>
	<section>
	<div>
	<c:import url="/WEB-INF/components/DefaultMainForm.jsp">
	</c:import>
	</div>
	</section>
	<section>
	<div>
	<c:import url="/WEB-INF/components/FooterForm.jsp">
	</c:import>
	</div>
	</section>

</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>