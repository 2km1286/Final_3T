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

#myPageMain {
    position: relative;
}

#withdraw-button {
    position: absolute;
    right: 0;
    font-size: 10pt;
    width: 80px;
    margin-right: 10px;
    border: 0;
    color: black;
}
.button-container {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
    width: 350px;
}
.petBtn { width: 100px;}
.profil { padding-right: 5px; padding-left: 5px; margin-right: 10px; }
</style>
</head>
<body>
			<h3><span class="badge">내 정보 관리</span></h3> <!-- 첫 요청 시 채워진 상태. 한 마디로 내 정보 관리==업데이트폼 -->
			<div class="row">
				
				<form class="form" action="" method="post"><!-- 내 정보 시작 -->
				
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
			        
			        <button type="button" id="" class="detailBtn">수정하기</button>
			        <button type="button" id="" class="detailBtn">되돌리기</button>
			        <button type="button" class="detailBtn" style="width: 180px;">비밀번호 재설정</button><!-- 비밀번호재설정페이지로 보내기 -->
		      </form><!-- 내 정보 끝 -->
		      
			</div><!-- 1행 끝 -->
			<button type="button" id="withdraw-button" class="detailBtn">탈퇴하기</button>
			<br><br>
			 
			<span class="badge" style="font-size: 17pt;">반려견 관리</span>
			<button type="button" id="" class="detailBtn" style="width: 150px;">반려견 등록하기</button>
			 <!--  사진, 이름, 특이사항, 성별, 반려견 무게, 출생년도, 종 -->
			<div class="row"> 
			
			<div><!-- 반려견 카드 목록 시작 -->
			
				 <div class="card profil">
					    	  
			    	  <div class="row g-0">
			    	  	<div class="col-md-4">
			    	  		<img src="images/client.jpg" class="img-fluid rounded-start" alt="반려견이미지">
			    	  	</div>
			    	    <div class="col-md-8 cardInfo" >
			    	      <div class="card-body">
			    	      	<div class="oneText">
			    	      		<span class="nick card-text">인절미</span>
			    	      	</div>
			    	      	<small class="text-muted ">특이사항</small>
			    	      	<span class="card-text">특이사항이 적혀있음</span>
			    	      </div>
			    	        <div class="porfilSu" style="width: 350px;">
		    		        	<small class="text-muted ">성별</small>&nbsp;
		    		        	<small class="text-muted">반려견 무게</small>&nbsp;&nbsp;
		    		        	<small class="text-muted">출생년도</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		        	<small class="text-muted">종</small><br>
			    		        <span>남</span>&nbsp;&nbsp;
			    		        <span>15kg</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		        <span>2023.08.06</span>
			    		        <span>시고르브잡종이에요</span>
			    		    </div>
			    		    <div class="button-container">
				                <button type="button" id="join-button" class="detailBtn petBtn">수정하기</button>
				                <button type="button" id="" class="detailBtn petBtn">되돌리기</button>
				                <button type="button" id="" class="detailBtn petBtn">삭제하기</button>
				            </div>
			    	      </div>
			    	    </div>
			     </div><!-- 반려견카드 하나 끝 -->
			     
			     <div class="card profil">
					    	  
			    	  <div class="row g-0">
			    	  	<div class="col-md-4">
			    	  		<img src="images/client.jpg" class="img-fluid rounded-start" alt="반려견이미지">
			    	  	</div>
			    	    <div class="col-md-8 cardInfo" >
			    	      <div class="card-body">
			    	      	<div class="oneText">
			    	      		<span class="nick card-text">깜돌이</span>
			    	      	</div>
			    	      	<small class="text-muted ">특이사항</small>
			    	      	<span class="card-text">특이사항이 적혀있음</span>
			    	      </div>
			    	        <div class="porfilSu" style="width: 350px;">
		    		        	<small class="text-muted ">성별</small>&nbsp;
		    		        	<small class="text-muted">반려견 무게</small>&nbsp;&nbsp;
		    		        	<small class="text-muted">출생년도</small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		        	<small class="text-muted">종</small><br>
			    		        <span>남</span>&nbsp;&nbsp;
			    		        <span>15kg</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    		        <span>2023.08.06</span>
			    		        <span>시고르브잡종이에요</span>
			    		    </div>
			    		    <div class="button-container">
				                <button type="button" id="join-button" class="detailBtn petBtn">수정하기</button>
				                <button type="button" id="" class="detailBtn petBtn">되돌리기</button>
				                <button type="button" id="" class="detailBtn petBtn">삭제하기</button>
				            </div>
			    	      </div>
			    	    </div>
			     </div><!-- 반려견카드 하나 끝 -->
		     
			</div><!-- 반려견 카드 목록 끝 -->
			
		
			반려견 등록하기/수정하기 누르면 나올 폼 일단은 여기에 작성<br>
			<form class="form" action="" method="post">
			
					<span class="badge myInfo">사진</span>
			        <input type="file" accept="image/*" style="display: block;">
				
					<span class="badge myInfo">이름</span>
			        <input type="text"><br><br>
			        
			        <span class="badge myInfo">특이사항</span>
			        <textarea rows="" cols=""></textarea>
			        
			        <div class="select-container">
			          <label for="gender"><span class="badge myInfo">성별</span></label>
			          <select id="jmGender" name="jmGender">
			            <option value="1">중성</option>
			            <option value="1">남자</option>
			            <option value="2">여자</option>
			          </select>
			        </div>
			        
			        <span class="badge myInfo">무게</span>
			        <input type="text">
			        
			        <div class="select-container">
			          <label for=""><span class="badge myInfo">출생년도</span></label>
			          <select id="" name="">
			            <option value="1">데이트피커인데</option>
			            <option value="2">어디서가져오는지까먹</option>
			          </select>
			        </div>
			        
			        <div class="select-container">
			          <label for=""><span class="badge myInfo">종</span></label>
			          <select id="" name="">
			            <option value="1">범례</option>
			            <option value="2">테이블에서</option>
			            <option value="2">가져오기</option>
			          </select>
			        </div>
								
			        <br />
			        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
			        <br />
			        
			        <button type="button" id="" class="detailBtn">등록하기</button>
			        <button type="reset" id="" class="detailBtn">초기화</button>
		      </form>
		      
		</div><!-- 2행 끝 -->
</body>
</html>




