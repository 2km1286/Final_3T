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
/* 마이페이지 레이아웃 스타일 */
.all { padding: 20px 20px 20px 20px; height: 1000px; }
.mypageMain
{
	padding: 20px 20px 20px 20px;
	border: 1px solid;
	border-color: #FFE090;
}
.mypagemenu
{
	padding: 20px 0px 20px 0px;
	background-color: white;
	border-bottom: 1px solid;
	border-right: 1px solid;
	border-top: 1px solid;
	border-color: #FFE090;
}

/* 마이페이지 알림화면 스타일 */
.mypageNoAllDiv {border-bottom: 1px solid #FFE090; margin-bottom: 20px;}
.mypageNoticeAllList
{
  background-color: #fcf8de;
  border-radius: 10px;
  padding: 10px;
  margin-bottom: 10px;
  height: 50px;
}
.mypageNoticeAll { position: relative; height: 400px; overflow: auto; }
.mypageNoticBtn { font-weight: bold;}
.mypageNomore
{ 
	background-color: #FFE090; font-size: 15px; font-weight: bold; margin-left: 500px; 
	position: absolute; position: absolute; bottom: 10px; right: 10px;
}
.mypageListCard { background-color: #fcf8de; border-radius: 10px; height: 180px; margin-bottom: 20px; position: relative;}
.mypageListCard .card-body { height: 100%; }
.mypageListTitle { font-size: 20px; font-weight: bold; background-color: white; padding: 5px; }
.mypageListSub {font-size: 18px; font-weight: bold;}

/* 마이페이지 나의 활동 스타일 */
.mypageMyAcBtn { font-weight: bold;}
.wishlist{ height: 470px; border-bottom: 1px solid #FFE090; margin-bottom: 10px; }
.mypageTabLine .mypageWishLink.active { color: #FFE090; border-bottom-color: #FFE090;}
.mypageTabName { height: 50px;} 
.tab-pane { height: 400px;}
#mypageWishTab-1, #mypageWishTab-2  { font-size: 13pt; font-weight: bold;}
.mypageWishSeating, .mypageWishWalk, .mypageReview, .mypageEnd { position: relative; height: 400px; overflow: auto; }
.mypageReview { padding-left: 170px;}
.reviewCard { margin-bottom: 30px; width: 23rem; height: }
.EndTable { border-collapse: collapse; width: 100%; }
.EndTable tr:hover { background-color: #fcf8de; }
.EndTh, .EndTd { border: 1px solid #FFE090; text-align: center; padding: 8px; }
.EndTh { background-color: #FFE090;}

</style>

</head>
<body>
	<div class="row all">
		<div class="col-md-10 mypageMain"> <!-- component 가 들어갈 곳 -->
			
			
								
		</div> <!-- component 가 들어갈 곳 끝 -->
		<div class="col-md-2 mypagemenu"> <!-- 마이페이지 사이드바 -->
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