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
<title>마이페이지_신고내역</title>

<style type="text/css">

.noticeAll, .noticePet, .noticeWalk, .noticeSeating
{
	padding: 20px 20px 20px 20px;
}

.noticeCard { margin-bottom: 20px;}


</style>
</head>
<body>
	<!-- <div class="row all"> -->
			<div class="row">
				<div class="col-md-6 noticeAll">
					
					<h3><span class="badge">신고내역으로 바꼈나?</span></h3>
					
						<div class="card noticeCard">
						  <div class="card-header">
						    대리산책
						  </div>
						  <div class="card-body">
						    <blockquote class="blockquote mb-0">
						      <p>후기가 달렸습니다. </p>
						    </blockquote>
						  </div>
						</div>
					
					<div class="card noticeCard">
					  <div class="card-header">
					    펫시팅
					  </div>
					  <div class="card-body">
					    <blockquote class="blockquote mb-0">
					      <p>예약이 확정되었습니다. </p>
					    </blockquote>
					  </div>
					</div>
					
					
				</div>
				
				
				<div class="col-md-6 noticePet">
					<h3><span class="badge">예약내역(견주)</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted">뭐넣어야함</small></p>
					      </div>
					    </div>
					  </div>
					</div>
				
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted"></small></p>
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
				
			</div>
			
			<div class="row">
				<div class="col-md-6 noticeWalk">
					<h3><span class="badge">예약내역(대리산책러)</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted">뭐넣어야함</small></p>
					      </div>
					    </div>
					  </div>
					</div>
					
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted">뭐넣어야함</small></p>
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
				<div class="col-md-6 noticeSeating">
					<h3><span class="badge">예약내역(펫시터)</span></h3>
					
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted">뭐넣어야함</small></p>
					      </div>
					    </div>
					  </div>
					</div>
					
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-4">
					      <img src="..." class="img-fluid rounded-start" alt="...">
					    </div>
					    <div class="col-md-8">
					      <div class="card-body">
					        <h5 class="card-title">예약글 제목</h5>
					        <p class="card-text">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</p>
					        <p class="card-text"><small class="text-muted">뭐넣어야함</small></p>
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
			</div>
		<!-- </div> -->
</body>
</html>




