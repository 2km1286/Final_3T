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
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Menu</title>

<script type="text/javascript"
   src="http://code.jquery.com/jquery.min.js"></script>


<script type="text/javascript">
   $().ready(function()
   {

      // 메인로고 버튼
      $("#mainLogo").click(function()
      {

         window.location.href = "mainpage.action";

      });

      // 로그인/회원가입 페이지로 가는 function
      $("#loginPage").click(function()
      {
         //alert("확인");
         window.location.href = "loginpage.action";
      });

      //로그아웃하는 function
      $("#logOut").click(function()
      {
         window.location.href = "logout.action";
      });

      // 대리산책 리스트업 페이지로 가는 function
      $("#walkList").click(function()
      {
         window.location.href = "walklistpage.action";
      })

      // 펫시팅 리스트업 페이지로 가는 function
      $("#sittingList").click(function()
      {
         window.location.href = "sittinglistpage.action";
      })

      // 마이페이지로 가는 function
      

   });
</script>


<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
   href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
   href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap"
   rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<!-- FONT jua -->
<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

li {
   font-family: "Jua";
   font-weight: Regular;
   font-size: large;
}

.login-button {
   margin-top: 4px;
}

.styled-button {
   background-color: #4caf50;
   color: white;
   border: none;
   padding: 8px 16px;
   border-radius: 5px;
   cursor: pointer;
   font-size: 14px;
   transition: background-color 0.3s, color 0.3s;
}

.styled-button:hover {
   background-color: #45a049;
}
</style>
</head>
<!-- header section strats -->
<header class="header_section" style="background-color: white;">
   <div class="container-fluid">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
         <a class="navbar-brand" href="#" id="mainLogo"> <img
            src="./images/logo_main.png" alt="png_logo" style="width: 85px;">

         </a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>

         <div class="modal fade" id="followingModal" tabindex="-1"
            role="dialog" aria-labelledby="followingModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <h2 class="modal-title" id="followingModalLabel">팔로잉 한 펫시터 및
                        대리산책러</h2>
                     <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <!-- 동적으로 생성된 팔로잉 목록 카드들이 여기에 들어갈 것입니다. -->
                     <div class="row">
                        <div class="col-md-6 container-mypage">
                           <h3>
                              <span class="badge">팔로잉 한 펫시터</span>
                           </h3>
                           <div>
                              <!-- 팔로잉 한 돌봄장속 목록 시작 -->

                              <div class="card sittingCard">
                                 <img src="images/sitterroom.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
                                    <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고
                                       행복한 해피 하우스 입니다.</h6>
                                    <br>
                                    <p>4.8 ⭐ (452개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원
                                       / 1박</p>
                                 </div>
                              </div>

                              <div class="card sittingCard">
                                 <img src="images/sitterroom.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
                                    <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고
                                       행복한 해피 하우스 입니다.</h6>
                                    <br>
                                    <p>4.8 ⭐ (452개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원
                                       / 1박</p>
                                 </div>
                              </div>

                              <div class="card sittingCard">
                                 <img src="images/sitterroom.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
                                    <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고
                                       행복한 해피 하우스 입니다.</h6>
                                    <br>
                                    <p>4.8 ⭐ (452개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원
                                       / 1박</p>
                                 </div>
                              </div>


                           </div>
                           <!-- 팔로잉 한 돌봄장속 목록 끝 -->

                        </div>
                        <!-- 1행1열 끝 -->


                        <div class="col-md-6 container-mypage">
                           <h3>
                              <span class="badge">팔로잉 한 대리산책러</span>
                           </h3>

                           <div>
                              <!-- 팔로잉 한 대리산책 목록 시작 -->
                              <div class="card walkCard">
                                 <img src="images/walktestpro.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
                                    <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한
                                       집사입니다!</h6>
                                    <br>
                                    <p>4.2 ⭐ (991개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
                                 </div>
                              </div>

                              <div class="card walkCard">
                                 <img src="images/walktestpro.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
                                    <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한
                                       집사입니다!</h6>
                                    <br>
                                    <p>4.2 ⭐ (991개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
                                 </div>
                              </div>

                              <div class="card walkCard">
                                 <img src="images/walktestpro.jpg" alt="" class="card-img-top"
                                    style="width: 100%;">
                                 <div class="card-body">
                                    <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
                                    <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한
                                       집사입니다!</h6>
                                    <br>
                                    <p>4.2 ⭐ (991개의
                                       후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
                                 </div>
                              </div>

                           </div>
                           <!-- 팔로잉 한 대리산책 목록 끝 -->

                        </div>
                        <!-- 1행2열끝  -->

                     </div>
                     <!-- 1행 끝 -->

                  </div>
               </div>
            </div>
         </div>

         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div
               class="d-flex mx-auto flex-column flex-lg-row align-items-center">
               <ul class="navbar-nav  ">
                  <li class="nav-item"><a class="nav-link" href="#"
                     id="walkList">대리산책</a></li>
                  <li class="nav-item"><a class="nav-link" href="#"
                     id="sittingList">펫시팅</a></li>
                  <li class="nav-item"><a class="nav-link" href="#" id="myPage">마이페이지</a>
                  </li>

                  <script>
                  $().ready(function() {
                      // 마이페이지 버튼 클릭 시 이벤트 처리
                      $("#myPage").click(function() 
                      {
                          // 로그인이 되어 있지 않은 경우
                          if (${memSid eq '0'}) 
                          {
                              // 확인 대화 상자를 표시하고 사용자의 선택 결과를 받아옵니다.
                              var confirmed = confirm("로그인 후 이용 가능합니다! 로그인 페이지로 이동하시겠습니까?");
                              if (confirmed) {
                                  // 사용자가 "확인"을 선택한 경우 로그인 페이지로 이동
                                  window.location.href = "loginpage.action";
                              } else {
                                  // 사용자가 "취소"를 선택한 경우 메인 페이지로 이동
                                 return false;
                              }
                          }
                          else
                          {
                             window.location.href = "mypage.action";
                          }

                      });
                      
                      $("#followingModalButton").click(function() {
                           $("#followingModal").modal("show");
                       });
                  });
                  
                  </script>

                  <li class="nav-item"><a class="nav-link" href="#footer"
                     id="center">고객센터/사고접수</a></li>

                  <c:choose>
                     <c:when test="${memSid eq '0' }">
                        <li class="nav-item dropdown" style="font-size: medium;">
                           <button type="button" id="loginPage"
                              class="login-button styled-button">회원가입/로그인</button>
                        </li>
                     </c:when>
                     <c:otherwise>
                        <li class="nav-item dropdown" style="font-size: medium;"><a
                           class="nav-link dropdown-toggle pl-0" href="#"
                           id="navbarDropdownMenuLink" role="button"
                           data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false"> <img
                              src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/fox.jpg"
                              width="30" height="30" class="rounded-circle"> <span
                              style="font-style: italic; font-weight: lighter; color: orange;">${memNickName }</span>
                        </a>
                           <div class="dropdown-menu"
                              aria-labelledby="navbarDropdownMenuLink">
                              <a class="dropdown-item" href="mypage.action">알림 <span
                                 class="position-absolute top-0 start-100 translate-middle p-1 bg-danger border border-light rounded-circle">
                              </span>
                              </a> <a class="dropdown-item" id="followingModalButton" href="#">팔로잉</a>
                              <a class="dropdown-item" href="mypage.action">마이페이지</a> <a
                                 class="dropdown-item" href="#" id="logOut">로그아웃</a>
                           </div></li>
                     </c:otherwise>
                  </c:choose>
               </ul>

            </div>



         </div>
      </nav>
   </div>
</header>
<!-- end header section -->
