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
<title>WalkTestMainForm.jsp</title>

<style type="text/css">

	
	.card
	{
		text-align: center;
		width: 500px;
		height: 500px;
		margin: 200px 200px 200px 500px;
	}
	.btn btn-primary
	{
		text-align: center;
	}

</style>
</head>
<body>

<div class="card">
  <img src="<%=cp %>/images/walkTest.png" class="card-img-top" />
  <div class="card-body">
    <h5 class="card-title">대리산책러 자격검증 테스트</h5>
    <p class="card-text">60점 이상의 점수를 얻어 대리산책러가 되어보세요!</p>
    <a href="#!" class="btn btn-primary">테스트 시작</a>
  </div>
</div>


</body>
</html>