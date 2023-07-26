<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color:rgba(0, 0, 0, 0.3);">
  <div class="container">
    <img src="./images/logo_transparent.png" alt="logo" style="width: 100px"/>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
       aria-expanded="false" aria-label="Toggle navigation" style="background-color: rgba(0, 0, 0, 0.3);">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        
        <li class="nav-item">
          <a class="nav-link" href="#" style="color:orange; font-weight:900;">서비스 소개</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color:orange; font-weight:900;">대리산책</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" style="color:orange; font-weight:900;">펫시팅</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

