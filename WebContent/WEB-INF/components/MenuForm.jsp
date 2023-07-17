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
<title>메뉴바</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" href="css/mdb.min.css" />

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-secondary" style="background-color: white;">
  <div class="container-fluid">
    <a class="navbar-brand me-5" href="#">맡겨보개</a>
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarNav"
      aria-controls="navbarNav"
      aria-expanded="false"
      aria-label="Toggle navigation">
      <i class="fas fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item" style="margin-left: 500px;">
          <a class="nav-link active" aria-current="page" href="#">대리산책</a>
        </li>
        <li class="nav-item"  style="margin-left: 100px;">
          <a class="nav-link" href="#">펫시팅</a>
        </li>
        <li class="nav-item"  style="margin-left: 100px;">
          <a class="nav-link" href="#">서비스 소개</a>
        </li>
        <li class="nav-item" style="margin-left: 200px;">
        	<a class="nav-link userProfile" href="#" >프로필</a>
      </ul>
    </div>
  </div>
</nav>

</body>
<script type="text/javascript" src="js/mdb.min.js"></script>
</html>