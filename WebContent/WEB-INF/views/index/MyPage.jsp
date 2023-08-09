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
				, url:"mypagenoticeform.action"
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
				, url:"mypagesittingform.action"
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
				, url:"mypagewalkform.action"
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
				, url:"mypageinfoform.action"
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
				, url:"mypageactiveform.action"
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
				, url:"mypagereportform.action"
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
@import url('https://fonts.googleapis.com/css?family=Jua:400');

*{font-family: "Jua"}

.mypageSidevar { font-size: 15pt;}

.all { padding: 10px;}

div.container-mypage {
  margin: 20px 0px 20px 20px;
  padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 1px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
  max-width: 48%;
}
.mypageSidevar
{
	padding: 20px 0px 20px 0px;
	background-color: white;
	border-left: 2px solid;
}
span.badge
{ 
	font-family: "Jua"; font-size: 23px; border-radius: 3px; margin-bottom: 20px;
	background-color: #4caf50; color: white; font-weight: lighter;
}

.detailBtn
{
	 border: 1px solid #4caf50;
	 background-color: white;
	 padding: 5px 5px 5px 5px;
	 color: #4caf50;
	 border-radius: 3px;
	 font-size: 18px;
}

/* 알림카드, 예약내역카드 */
div.card { margin-left: 10%; margin-bottom: 20px; width: 80%; border: 1px solid black;}
div.card-header {padding: 5px; font-size: 14pt; background-color: white; border-bottom: 1px solid black;}
sapn.card-text {font-size: 14pt;}

/* 돌봄공간 사진 버튼 */
.carousel-control-prev, .carousel-control-next
{
	background-color: transparent;
	border: none;
}

/* 돌봄공간 정보 */
.infoOne { padding-bottom: 10px; margin-bottom: 10px; border-bottom: 1px solid gray;}
.infoOneNoline { padding-bottom: 10px; margin-bottom: 20px;}


.smallTitle { color: #4caf50; width: 80%;}
.smallText {font-size: 15pt;}

/* 후기 카드  */
div.reviewCard { margin-left: 25%; margin-bottom: 20px; width: 50%;}

/* 테이블 */
.EndTable { border-collapse: collapse;}
.EndTable tr:hover { background-color: #daf5db; }
.EndTh, .EndTd { border: 1px solid #4caf50; text-align: center; padding: 8px; }
.EndTh { background-color: #4caf50;}

/* 탈퇴하기버튼 */
#withdraw-button {
    position: absolute;
    right: 0;
    font-size: 10pt;
    width: 80px;
    margin-right: 10px;
    border: 0;
    color: black;
}
/* 반려견카드  */
div.petCard {width: 25%;}

/* 반려견 추가 버튼 */
#petInsertBtn {background-color: white; border: 0; font-size: 30pt; color: #4caf50;}

button.list-group-item { margin-bottom: 3px;}

</style>


</head>
<body>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
	<div class="">
	<div class="row all">
		<div class="col-md-10" id="myPageMain"><!-- 마이페이지 메인 -->
			<!-- 마이페이지 첫 요청시 디폴트 알림창 -->
			<c:import url="/WEB-INF/ajax/MyPageNoticeForm.jsp"></c:import>
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
	<c:import url="/WEB-INF/components/index/FooterForm.jsp">
	</c:import>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>