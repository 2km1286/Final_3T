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
<title>RecommendForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mdb.min.css">
<style type="text/css">
	
	.rec
	{
	}

</style>
</head>
<body>
<div class="all">
<div class="card">
<h2 class="card-header text-center">어서오세요! '맡겨보개'에 오신걸 환영합니다!</h2>
<div class="card-body recc">
	<div class="row row-cols-1 row-cols-md-3 g-4">
	  <div class="col rec">
	    <div class="card h-100" style="width: 25rem; height: 550px;">
	      <img src="./images/welcome-registerpet.png" class="card-img-top hover-shadow" alt="welcome-registerpet"/>
	      <div class="card-body">
	        <h5 class="card-title">반려견 등록하기</h5>
	        <p class="card-text">
	          저희 '맡겨보개'의 서비스를 이용하기 위해서 <br />
	          ooo님의 반려견을 등록해주세요!
	        </p>
	      </div> 
	      <div class="card-footer">
	        <small class="text-muted">맡겨보개의 서비스 소개(링크)</small>
	      </div>
	    </div>
	  </div>
	  <div class="col rec">
	    <div class="card h-100" style="width: 25rem; height: 550px;">
	      <img src="./images/welcome-walk.png" class="card-img-top hover-shadow" alt="Los Angeles Skyscrapers"/>
	      <div class="card-body">
	        <h5 class="card-title">대리산책러 되러가기</h5>
	        <p class="card-text">
				대리산책러가 되어서 수익활동을 해보세요! <br />
				귀여운 강아지들과 친구가 될 수 있어요
			</p>
	      </div>
	      <div class="card-footer">
	        <small class="text-muted">대리산책러 란?(링크)</small>
	      </div>
	    </div>
	  </div>
	  <div class="col rec">
	    <div class="card h-100" style="width: 25rem; height: 550px;">
	      <img src="./images/welcome-petsitter.png" class="card-img-top hover-shadow" alt="Palm Springs Road"/>
	      <div class="card-body"> 
	        <h5 class="card-title">펫시터 되러가기</h5>
	        <p class="card-text">
	          펫시터가 되어서 수익활동을 해보세요! <br />
	          쏼라쏼라
	        </p>
	      </div>
	      <div class="card-footer">
	        <small class="text-muted">펫시터 란?(링크)</small>
	      </div>
	    </div>
	  </div>
	</div>
</div>
</div>
</div>

</body>
</html>