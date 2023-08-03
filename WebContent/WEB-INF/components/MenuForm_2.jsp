<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Menu</title>
	
  <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
  
  <script type="text/javascript">

	 $().ready(function()
	{
		 
		 // 메인로고 버튼
		 $("#mainLogo").click(function()
		{
			 window.location.href = "main.action";
		});
		 
		// 로그인/회원가입 페이지로 가는 function
		$("#loginJoin").click(function()
		{
			//alert("확인");
			window.location.href = "loginJoin.action";
		});
		
		//로그아웃하는 function
		$("#logOut").click(function()
		{
			window.location.href = "logOut.action";
		});
		
		// 대리산책 리스트업 페이지로 가는 function
		$("#walkList").click(function()
		{
			window.location.href = "walkList.action";
		})
		
		// 펫시팅 리스트업 페이지로 가는 function
		$("#sittingList").click(function()
		{
			window.location.href = "sittingList.action";
		})
		
		// 마이페이지로 가는 function
		$("#myPage").click(function()
		{
			window.location.href = "mypage.action";
		});
		
		
		
	}); 
</script>
  

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
  
  <!-- FONT jua -->
  <style>
  @import url('https://fonts.googleapis.com/css?family=Jua:400');
  li
  {
  	font-family: "Jua";
  	font-weight: Regular;
  	font-size: large;
  }
  </style>
</head>
    <!-- header section strats -->
    <header class="header_section" style="background-color: white; ">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="#" id="mainLogo">
            <img src="./images/logo_main.png" alt="png_logo" style="width: 85px;">
           
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex mx-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item">
                  <a class="nav-link" href="#" id="walkList">대리산책</a>
                </li> 
                <li class="nav-item">
                  <a class="nav-link" href="#" id="sittingList">펫시팅</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" id="myPage">마이페이지</a>
                </li>
				<li class="nav-item">
                  <a class="nav-link" href="#" id="center">고객센터/사고접수</a>
                </li>
				
				<c:choose>
				<c:when test="${memSid eq '0' }">
					<li class="nav-item dropdown" style="font-size: medium;">
				  	<button type="button" id="loginJoin" >회원가입/로그인</button>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item dropdown" style="font-size: medium;">
				  <a class="nav-link dropdown-toggle pl-0" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg" width="30" height="30" class="rounded-circle">
				   
				    <span style="font-style: italic; font-weight: lighter; color: orange;">${memSid }</span>
				  </a>
				  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
				    <a class="dropdown-item" href="#">알림  
				    <span class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
  					</span>
  					</a>
				    <a class="dropdown-item" href="#">찜한 목록</a>
				    <a class="dropdown-item" href="#">마이페이지</a>
				    <a class="dropdown-item" href="#" id="logOut">로그아웃</a>
				  </div>
				</li>
				</c:otherwise>
				</c:choose>
				  </ul>
				 
            </div>
            
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

