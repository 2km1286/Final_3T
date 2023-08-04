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
<title>MyPage</title>

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

	$(function()
	{
		// 알림창
		$("#myPageNotice").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageNotice.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
		
		// 펫시팅
		$("#myPageSitting").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageSitting.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
		
		// 대리산책
		$("#myPageWalk").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageWalk.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
		
		// 내 정보 및 반려견 관리
		$("#myPageInfo").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageInfo.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
		// 나의 활동
		$("#myPageActive").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageActive.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
		// 신고내역
		$("#myPageReport").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"myPageReport.action"
				, async:true
				, success:function(data)
				{
					$("#myPageMain").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});	
		});
		
	});

</script>

<style type="text/css">
/* 마이페이지 레이아웃 스타일 */
.container-mypage {
  margin: 20px;;
  padding: 30px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
}
.myPageMain
{
	padding: 20px 20px 20px 20px;
}

.mypageSidevar
{
	padding: 20px 10px 20px 10px;
	background-color: white;
	border-left: 2px solid;
	
}
.badge	
{-webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  outline: 0;
  border: 0;
  padding: 10px 15px;
  border-radius: 3px;
  cursor: pointer;
  font-size: 18px;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
}



/* 마이페이지 알림화면 스타일 */
/* .mypageNoAllDiv {border-bottom: 1px solid #FFE090; margin-bottom: 20px;}
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
.mypageListSub {font-size: 18px; font-weight: bold;} */

/* 마이페이지 나의 활동 스타일 */
/* .mypageMyAcBtn { font-weight: bold;}
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
.EndTh { background-color: #FFE090;} */

</style>
<!-- FONT jua -->
<style>
 @import url('https://fonts.googleapis.com/css?family=Jua:400');
.badge { font-family: "Jua"; }
.mypageSidevar { font-family: "Jua"; font-size: 15pt;}
.card-header { font-family: "Jua"; font-size: 13pt;}

</style>

</head>
<body>
	<c:import url="/WEB-INF/components/MenuForm_2.jsp">
	</c:import>
	<div class="container-mypage">
	<div class="row all">
		<div class="col-md-10 myPageMain" id="myPageMain"><!-- 마이페이지 메인 -->
			<!-- 마이페이지 첫 요청시 디폴트 알림창 -->
			<c:import url="/WEB-INF/components/MyPageNoticeForm.jsp"></c:import>
		</div>
		<div class="col-md-2 mypageSidevar"> <!-- 마이페이지 사이드바 -->
			<div class="list-group list-group-light">
			  <button type="button" id="myPageNotice" class="list-group-item list-group-item-action px-3 border-0">
			    알림창
			  </button>
			  <button type="button" id="myPageSitting" class="list-group-item list-group-item-action px-3 border-0" >
			    펫시팅
			  </button>
			  <button type="button" id="myPageWalk" class="list-group-item list-group-item-action px-3 border-0">
			    대리산책
			  </button>
			  <button type="button" id="myPageInfo" class="list-group-item list-group-item-action px-3 border-0">
			    내 정보 및 반려견 관리
			  </button>
			  <button type="button" id="myPageActive" class="list-group-item list-group-item-action px-3 border-0">
			    나의 활동
			  </button>
			  <button type="button" id="myPageReport"class="list-group-item list-group-item-action px-3 border-0">
			    신고내역
			  </button>
			</div>
		</div>
	</div>
	</div>
	<c:import url="/WEB-INF/components/FooterForm.jsp">
	</c:import>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>