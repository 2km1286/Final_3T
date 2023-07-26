<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DogWalkerTest.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<style type="text/css">

	.div1
	{
		 border: 3px solid #FFE090;
		 border-radius: 10px;
		 padding: 100px;
	}
	.div2
	{
		border-radius: 40px;
		background-color: #FFE090;
		padding: 50px;
		text-align: center;
	}
	
	.div3
	{
		border-radius: 40px;
		background-color: white;
		text-align: center;
	}
	
	.div4
	{
		padding-top: 30px;
		padding-bottom: 100px;
		padding-left: 500px;
		padding-right: 500px;
	}
	
	.btn-check
	{
		background-color: #FFE090;
	}
	
	.select
	{
		border-radius: 30px;
		background-color: #FFE090;
	}
	
	.select:hover 
	{
		border: 1px solid gray;
		background-color: white;
	}
	
}

</style>
</head>
<body>


<div class="div1">
	<h4>시험지</h4>
	
	<div class="div2">
		
		
		<span style="text-align: left;">이전문제</span>
		<span>1/10</span>
		<div class="div3">
			<div class="d-flex flex-column p-2 div4">
			1. 산책 도중 강아지가 보인 이 행동이 의미하는 것은 무엇인가요?
			</div>
		
			<br /><br />
			
			<div class="d-flex flex-column mb-3 div4">
				<div class="d-flex justify-content-center select">쏼라쏼라쏼라쏼라</div>
				<div class="d-flex justify-content-center select">쏼라쏼라쏼라쏼라</div>
				<div class="d-flex justify-content-center select">쏼라쏼라쏼라쏼라</div>
				<div class="d-flex justify-content-center select">쏼라쏼라쏼라쏼라</div>
				<div class="d-flex justify-content-center select">쏼라쏼라쏼라쏼라</div>
			</div>
			
		</div>
		
	</div>
	
</div>

</body>
</html>