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
<title>MypageNoticeForm</title>

<style type="text/css">
.all
{
	padding: 20px 20px 20px 20px;
}
.notice
{
	padding: 20px 20px 20px 20px;
	border: 1px solid;
	border-color: #FFE090;
}
.mypagemenu
{
	padding: 20px 10px 20px 10px;
	background-color: white;
	border-bottom: 1px solid;
	border-right: 1px solid;
	border-top: 1px solid;
	border-color: #FFE090;
}
.noticeAll, .noticePet, .noticeWalk, .noticeSeating
{
	padding: 20px 20px 20px 20px;
}
img
{	
	width: 130px;
	height: 80px;
}
.card
{
	background-color: #FFE090;
	width: 600px;
	height: 80px;
}

</style>
</head>
<body>
	<div class="row all">
		<div class="col-md-10 notice">
			<div class="row">
				<div class="col-md-6 noticeAll">
					
					<h3><span class="badge badge-warning">알림</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md">
					      <div class="card-body">
					        알림내역목록1
					      </div>
					    </div>
					  </div>
					</div>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md">
					      <div class="card-body">
					        알림내역목록2
					      </div>
					    </div>
					  </div>
					</div>
					
										
				</div>
				<div class="col-md-6 noticePet">
					<h3><span class="badge badge-warning">예약내역(견주)</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      <img src="https://mimg.segye.com/content/image/2022/05/23/20220523519355.jpg">
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역1
					      </div>
					    </div>
					  </div>
					</div>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      이미지 넣는 곳
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역2
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 noticeWalk">
					<h3><span class="badge badge-warning">예약내역(대리산책러)</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      <img src="<%=cp %>/images/walkTest.png" class="card-img-top">
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역1
					      </div>
					    </div>
					  </div>
					</div>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      이미지 넣는 곳
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역2
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
				<div class="col-md-6 noticeSeating">
					<h3><span class="badge badge-warning">예약내역(펫시터)</span></h3>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      이미지 넣는 곳
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역1
					      </div>
					    </div>
					  </div>
					</div>
					
					<div class="card mb-3">
					  <div class="row g-0">
					    <div class="col-md-3">
					      이미지 넣는 곳
					    </div>
					    <div class="col-md-9">
					      <div class="card-body">
					        예약내역2
					      </div>
					    </div>
					  </div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="col-md-2 mypagemenu">
			<div class="list-group list-group-light">
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0 active"
			    aria-current="true">
			    알림창
			  </button>
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0">
			    펫시팅
			  </button>
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0">
			    대리산책
			  </button>
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0">
			    내 정보 및 반려견 관리
			  </button>
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0">
			    나의 활동
			  </button>
			  <button type="button" class="list-group-item list-group-item-action px-3 border-0">
			    신고내역
			  </button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>




