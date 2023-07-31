<%@ page contentType="text/html; charset=UTF-8"%>
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
  p
  {
  	font-family: "Jua";
  	font-weight: Regular;
  }
  .btn-box
  {
  	font-family: "Jua";
  }
  </style>
</head>
<div>
 <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-2">
                  <div class="slider_detail-box">
                    <h1>
                      신뢰,행복,안전
                      <span style="font-style: inherit;">
                        펫시팅 서비스
                      </span>
                    </h1>
                    <p>
                      당신의 사랑하는 강아지를 편안하게 맡겨주세요!<br>
                       펫시팅 서비스로 항상 당신의 반려견을 사랑과 책임으로 돌봐드립니다.<br>
                       바쁜 일상 속에서 아이가 행복하게 미소 짓는 모습을 상상해보세요!
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn-1">
                        펫시터 찾기
                      </a>
                      <a href="" class="btn-2">
                        펫시터 지원
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="slider_img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-2">
                  <div class="slider_detail-box">
                    <h1>
                      건강,행복,일상
                      <span style="font-style: inherit;">
                        대리산책 서비스
                      </span>
                    </h1>
                    <p>
                      반려견 대리산책 서비스, 강아지를 사랑하는 전문 산책러들이<br>
                      여러분의 소중한 아이를 책임 있게 돌봐드립니다. 
                      행복한 산책 시간을 선물하고 싶은 당신을 위해 기다리고 있습니다!
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn-1">
                        대리산책러 찾기
                      </a>
                      <a href="" class="btn-2">
                        대리산책러 지원
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="slider_img-box">
                    <img src="images/main_walkgirl.png" alt="walk_girlImg" style="width: 300px; margin-left: 180px;">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-2">
                  <div class="slider_detail-box">
                    <h1>
                      Professional
                      <span>
                        Care Your Pet
                      </span>
                    </h1>
                    <p>
                      Lorem Ipsum is simply dummy text of the printing and
                      typesetting industry.
                      Lorem Ipsum has been the industry's standard dummy text ever
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn-1">
                        Buy now
                      </a>
                      <a href="" class="btn-2">
                        Contact
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="slider_img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container-fluid">
              <div class="row">
                <div class="col-md-4 offset-md-2">
                  <div class="slider_detail-box">
                    <h1>
                      Professional
                      <span>
                        Care Your Pet
                      </span>
                    </h1>
                    <p>
                      Lorem Ipsum is simply dummy text of the printing and
                      typesetting industry.
                      Lorem Ipsum has been the industry's standard dummy text ever
                    </p>
                    <div class="btn-box">
                      <a href="" class="btn-1">
                        Buy now
                      </a>
                      <a href="" class="btn-2">
                        Contact
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="slider_img-box">
                    <img src="images/slider-img.png" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      

    </section>
    </div>
    <!-- end slider section -->
