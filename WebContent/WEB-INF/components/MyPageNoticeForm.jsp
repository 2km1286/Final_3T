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
<title>마이페이지_알림창</title>

<style type="text/css">

.noticeCard { margin-bottom: 20px;}

</style>
</head>
<body>
			<div class="row">
				<div class="col-md-6">
					
					<h3><span class="badge">알림</span></h3>
					<div><!-- 알림 목록 시작 -->
					
						<div class="card noticeCard">
						  <div class="card-header">
						    대리산책
						  </div>
						  <div class="card-body">
						    <blockquote class="blockquote mb-0">
						      <p>후기가 달렸습니다. 대리산책에서 확인해보세요.</p>
						    </blockquote>
						  </div>
						</div>
					
						<div class="card noticeCard">
						  <div class="card-header">
						    펫시팅
						  </div>
						  <div class="card-body">
						    <blockquote class="blockquote mb-0">
						      <p>예약이 확정되었습니다. 펫시팅에서 확인해보세요.</p>
						    </blockquote>
						  </div>
						</div>
						
					</div><!-- 알림 목록 끝 -->
				
				</div><!-- 1행1열 끝 -->
				
				
				<div class="col-md-6">
					<h3><span class="badge">견주 예약내역</span></h3>
					
					<div><!-- 예약내역 시작 -->
						<div class="card">
							<div class="card-header d-flex justify-content-between"">
								대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	      	<div class="oneText">
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
					    	      	</div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text">2023-08-04 14:00 ~ 2023-08-04 16:00</span>
					    	        </div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
					    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길</span>
					    	        </div>
					    	         <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">만남장소</small></span><br>
					    		        <span class="card-text">홍대입구역 2번 출구 앞</span>
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
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
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
					
					</div><!-- 예약 내역 끝 -->
					
				</div><!-- 1행 2열 끝 -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<div class="col-md-6">
					<h3><span class="badge">대리산책러 예약내역</span></h3>
					<div><!-- 대리산책러 예약내역 시작 -->
						<div class="card">
							<div class="card-header d-flex justify-content-between"">
								대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	      	<div class="oneText">
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
					    	      	</div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text">2023-08-04 14:00 ~ 2023-08-04 16:00</span>
					    	        </div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
					    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길</span>
					    	        </div>
					    	         <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">만남장소</small></span><br>
					    		        <span class="card-text">홍대입구역 2번 출구 앞</span>
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
							<div class="card-header d-flex justify-content-between"">
								대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	      	<div class="oneText">
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
					    	      	</div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text">2023-08-04 14:00 ~ 2023-08-04 16:00</span>
					    	        </div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">지역(상세주소)</small></span><br>
					    		        <span class="card-text">서울시 마포구 어디동 어디로 어디길</span>
					    	        </div>
					    	         <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">만남장소</small></span><br>
					    		        <span class="card-text">홍대입구역 2번 출구 앞</span>
					    	        </div>
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">함께할 반려견</small></span><br>
					    		        <span class="card-text">까미</span><br>
					    	        </div>
					    	      </div>
					    	    </div>
					    	  </div>
					    </div>
					
					</div><!-- 대리산책러 예약내역 시작 -->
				</div><!-- 2행1열 끝 -->
				
				<div class="col-md-6">
					<h3><span class="badge">펫시터 예약내역</span></h3>
					<div><!-- 펫시터 예약내역 시작 -->
						<div class="card">
							<div class="card-header d-flex justify-content-between">
								펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	      	<div class="oneText">
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
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
					    	      		<span class="nick card-text">상대방닉네임</span>
					    	      		<span class="card-text"><small class="text-muted">상대방등급</small></span>
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
					</div><!-- 펫시터 예약내역 끝 -->
				</div><!-- 2행 2열 끝 -->
			</div><!-- 2행 끝 -->
</body>
</html>




