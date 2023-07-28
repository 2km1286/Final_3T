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
<title>MypageLayout</title>

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


</style>
</head>
<body>
	<div class="row all">
		<div class="col-md-10 notice">
			<!-- component 가 들어갈 곳 -->
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




