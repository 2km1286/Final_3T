<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>메뉴바</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/mdb.min.css" />

</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Navbar brand -->
      <a class="navbar-brand mt-2 mt-lg-0" href="#">
        <img
          src="./images/home.png"
          width="30" alt="logo"/>
      </a>
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#">대리산책</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">펫시팅</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">서비스 소개</a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->


      <!-- Notifications -->
      <div>
        <a
          class="link-secondary me-3 dropdown-toggle hidden-arrow"
          href="#"
          id="navbarDropdownMenuLink"
          role="button"
          data-mdb-toggle="dropdown"
          aria-expanded="false"
        >
          <img  src="./images/alert.png" height="25">
          <span class="badge rounded-pill badge-notification bg-danger">1</span>
        </a>
        
      </div>
      <!-- Avatar -->
      <div class="dropdown">
        <a
          class="dropdown-toggle d-flex align-items-center hidden-arrow"
          href="#"
          id="navbarDropdownMenuAvatar"
          role="button"
          data-mdb-toggle="dropdown"
          aria-expanded="false"
        >
          <img
            src="./images/profile.png"
            class="rounded-circle"
            height="25"
            alt="Black and White Portrait of a Man"
          />
        </a>
        <div class="profile">
        <ul
          class="dropdown-menu dropdown-menu-end"
          aria-labelledby="navbarDropdownMenuAvatar"
        >
     
          <li>
            <a class="dropdown-item" href="#">마이 페이지</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">찜한 목록</a>
          </li>
          <li>
            <a class="dropdown-item" href="#">로그아웃</a>
          </li>
        </ul>
        </div>
      </div>
    </div>
    <!-- Right elements -->
  
  <!-- Container wrapper -->
</nav>
<!-- Navbar -->

</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>