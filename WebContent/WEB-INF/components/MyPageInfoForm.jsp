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
<title>마이페이지_내 정보 및 반려견관리</title>

<style type="text/css">
.myInfo {font-size: 12pt; margin-top: 10px;}


</style>
</head>
<body>
			<h3><span class="badge">내 정보 관리</span></h3> <!-- 첫 요청 시 채워진 상태. 한 마디로 내 정보 관리==업데이트폼 -->
			<div class="row">
			
				<form class="form" action="" method="post">
				
					<span class="badge myInfo">아이디</span>
			        <div class="input-container">
			          <input type="text" name="jmId" id="jmId">
			          <button type="button" id="checkUserIdBtn">중복확인</button>
			        </div>
			        
			        <span class="badge myInfo">닉네임</span>
			        <input type="text" name="jmName" id="jmName" style="width: 100%;">
			        
			        <div class="select-container">
			          <label for="gender"><span class="badge myInfo">성별</span></label>
			          <select id="jmGender" name="jmGender">
			            <option value="1">남자</option>
			            <option value="2">여자</option>
			          </select>
			        </div>
			        
			        <span class="badge myInfo">프로필사진</span>
			        <img alt="기존 프로필사진" src="...">
			        <input type="file" name="jmImage" id="jmImage" accept="image/*" style="display: block;">
			        
			        <span class="badge myInfo">닉네임</span>
			        <div class="input-container">
			          <input type="text" name="jmNickName" id="jmNickName">
			          <button type="button" id="checkUserNickBtn">중복확인</button>
			        </div>
								
			        <span class="badge myInfo">전화번호</span>
			        <div class="input-container">
			         <input type="tel" name="jmTel" id="jmTel">
			         <button type="button" id="telCheck">인증번호</button>
			        </div>
			        
			        <span class="badge myInfo">주소</span>
			        <div class="input-container">
			         <input type="text"name="jmAddr1" id="jmAddr1">
			         <button type="button" id="checkZipcodeBtn">우편번호</button>
			        </div>
			        <input type="text" name="jmZipCode" id="jmZipCode" style="width: 100%;">
			        
			        <span class="badge myInfo">상세주소</span>
			        <input type="text" name="jmAddr2" id="jmAddr2" style="width: 100%;">
			        
			        <br />
			        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
			        <br />
			        
			        <button type="button" id="join-button" class="detailBtn">수정하기</button>
			        <button type="button" id="" class="detailBtn">되돌리기</button>
			        <button type="button" class="detailBtn" style="width: 200px;">비밀번호 재설정</button><!-- 비밀번호재설정페이지로 보내기 -->
		      </form>
			</div>
			
			<div class="row">
				<h3><span class="badge">반려견 관리</span></h3>
				
				
			</div>
</body>
</html>




