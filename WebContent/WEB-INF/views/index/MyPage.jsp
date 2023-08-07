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
div.col-md-6 { padding: 20px 20px 20px 20px; }
div.card {margin-bottom: 10px;}
div.card-header {padding: 5px; }
div.cardImage {padding-right: 0;}
div.cardInfo {padding-right: 0; padding-left: 0;}
div.porfilSu{margin-left:20px; width: 300px; }

.nick {font-size: 16pt;}
.oneText {margin-bottom: 3px; border-bottom: 1px solid gray; }
.detailBtn
{
	-webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	  outline: 0;
	  border: 1px solid #53e3a6;
	  background-color: white;
	  padding: 5px 5px 5px 5px;
	  color: #53e3a6;
	  border-radius: 3px;
	  width: 120px;
	  height: 35px;
	  cursor: pointer;
	  font-size: 18px;
	  -webkit-transition-duration: 0.25s;
	  transition-duration: 0.25s;
}

div.profil
{ 
  padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
}

.tagBtn
{
	  border: 1px solid #53e3a6;
	  background-color: white;
	  padding: 2px 2px 2px 2px;
	  color: #53e3a6;
	  border-radius: 3px;
	  height: 35px;
	  font-size: 16pt;
	  font-weight: bold;
	  margin-bottom: 10px;
}
.updatePlace
{
	  border: 1px solid #53e3a6;
	  background-color: #53e3a6;
	  padding: 2px 2px 2px 2px;
	  color: white;
	  border-radius: 3px;
	  height: 35px;
	  font-size: 16pt;
	  font-weight: bold;
	  margin-bottom: 10px;
	  width: 200px;
	  
}
.EndTable { border-collapse: collapse; width: 100%; }
.EndTable tr:hover { background-color: #d6ffee; }
.EndTh, .EndTd { border: 1px solid ##53e3a6; text-align: center; padding: 8px; }
.EndTh { background-color: #53e3a6;}

.reviewCard { margin-bottom: 30px; width: 23rem;  margin-left: 100px; margin-top: 10px;}

</style>
<!-- FONT jua -->
<style>
 @import url('https://fonts.googleapis.com/css?family=Jua:400');
.badge { font-family: "Jua"; }
.mypageSidevar { font-family: "Jua"; font-size: 15pt;}
.card-header { font-family: "Jua"; font-size: 17pt;}
.card {font-family: "Jua";}
.checkBox {font-family: "Jua"; font-size: 15pt;}
.superscript {font-family: "Jua";}
.detailBtn {font-family: "Jua"; }
.updatePlace {font-family: "Jua"; font-weight: normal;}
</style>

</head>
<body>
	<c:import url="/WEB-INF/components/HeaderForm.jsp">
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