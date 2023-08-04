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
<title>마이페이지_펫시팅</title>

<style type="text/css">


</style>
</head>
<body>
	<!-- <div class="row all"> -->
			<div class="row">
				<div class="col-md-6">
					
					<h3><span class="badge">펫시팅(돌봄공간) 정보</span></h3>
					
				</div>
				
				
				<div class="col-md-6">
					<h3><span class="badge">내가 서비스 할 예약(펫시터)</span></h3>
					
					<div class="card">
						<div class="card-header d-flex justify-content-between">
							펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
						</div>	
				    	  <div class="row g-0">
				    	    <div class="col-md cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="nick card-text">폴폴이</span>
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span>
				    	      	</div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
				    		        <span class="card-text">2023-08-08 14:00 ~ 2023-08-10 16:00</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
				    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길 어디주택 00동 00호</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">함께할 반려견</small></span><br>
				    		        <span class="card-text">까미</span><br>
				    	        </div>
				    	      </div>
				    	    </div>
				    	  </div>
				    </div>
					
					<div class="card">
						<div class="card-header d-flex justify-content-between">
							펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
						</div>	
				    	  <div class="row g-0">
				    	    <div class="col-md cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="nick card-text">폴폴이</span>
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span>
				    	      	</div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
				    		        <span class="card-text">2023-08-08 14:00 ~ 2023-08-10 16:00</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
				    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길 어디주택 00동 00호</span>
				    	        </div>
				    	        <div class="oneText">
				    		        <span class="card-text"><small class="text-muted">함께할 반려견</small></span><br>
				    		        <span class="card-text">까미</span><br>
				    	        </div>
				    	      </div>
				    	    </div>
				    	  </div>
				    </div>
					
				</div>
				
			</div>
			
			<div class="row">
				<div class="col-md-6"> <!-- 이미지, 닉네임, 등급, 별점, 알람, 후기, 팔로잉 -->
					<h3><span class="badge">내 프로필(펫시터)</span></h3>
					
					<div class="card profil">
				    	  
				    	  <div class="row g-0">
				    	  	<div class="col-md-4">
				    	  		<img src="images/client.jpg" class="img-fluid rounded-start" alt="프로필이미지">
				    	  	</div>
				    	    <div class="col-md-8 cardInfo" >
				    	      <div class="card-body">
				    	      	<div class="oneText">
				    	      		<span class="card-text"><small class="text-muted">프로펫시터</small></span><br>
				    	      		<span class="nick card-text">폴폴이</span>
				    	      	</div>
				    		        <span class="card-text">4.8 ⭐  (40개의 후기)</span>
				    	        </div>
				    	        <div class="porfilSu">
			    		        	<small class="text-muted ">알람</small>&nbsp;&nbsp;
			    		        	<small class="text-muted">후기</small>&nbsp;&nbsp;
			    		        	<small class="text-muted">팔로잉</small><br>
				    		        <span>1건</span>&nbsp;&nbsp;
				    		        <span>30건</span>&nbsp;&nbsp;
				    		        <span>5건</span>
				    		    </div>
				    	      </div>
				    	    </div>
				     </div>
				   </div>
						
				
				<div class="col-md-6">
					<h3><span class="badge">나의 활동비율</span></h3>
					
					
					
				</div>
			</div>
		<!-- </div> -->
</body>
</html>




