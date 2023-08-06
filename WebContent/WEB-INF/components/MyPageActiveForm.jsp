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
<title>마이페이지_나의 활동</title>

<style type="text/css">

.noticeAll, .noticePet, .noticeWalk, .noticeSeating
{
	padding: 20px 20px 20px 20px;
}

.noticeCard { margin-bottom: 20px;}
.walkCard{width: 350px;}
.sittingCard{width: 400px;}
.reviewCard { margin-bottom: 30px; width: 23rem;  margin-left: 100px; margin-top: 10px;}
.EndTable { border-collapse: collapse; width: 100%; }
.EndTable tr:hover { background-color: #d6ffee; }
.EndTh, .EndTd { border: 1px solid ##53e3a6; text-align: center; padding: 8px; }
.EndTh { background-color: #53e3a6;}
</style>
</head>
<body>
			<div class="row">
				<div class="col-md-6 noticeAll">
					<h3><span class="badge">팔로잉 한 돌봄장소</span></h3>
					<div><!-- 팔로잉 한 돌봄장속 목록 시작 -->
					
					<div class="card sittingCard">
			            <img src="images/sitterroom.jpg" alt="" class="card-img-top" style="width: 100%;">
			            <div class="card-body">
			              <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
			              <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고 행복한 해피 하우스 입니다.</h6><br>
			              <p>4.8 ⭐ (452개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원 / 1박 </p>
			            </div>
			         </div>
			         
			         <div class="card sittingCard">
			            <img src="images/sitterroom.jpg" alt="" class="card-img-top" style="width: 100%;">
			            <div class="card-body">
			              <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
			              <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고 행복한 해피 하우스 입니다.</h6><br>
			              <p>4.8 ⭐ (452개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원 / 1박 </p>
			            </div>
			         </div>
			         
			         <div class="card sittingCard">
			            <img src="images/sitterroom.jpg" alt="" class="card-img-top" style="width: 100%;">
			            <div class="card-body">
			              <h5 class="card-title">[마스터 펫시터] 까미의 하우스</h5>
			              <h6 class="card-subtitle text-muted">강아지들이 좋아하는 따뜻하고 행복한 해피 하우스 입니다.</h6><br>
			              <p>4.8 ⭐ (452개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45,000원 / 1박 </p>
			            </div>
			         </div>
					
					
					</div><!-- 팔로잉 한 돌봄장속 목록 끝 -->
					
				</div><!-- 1행1열 끝 -->
				
				
				<div class="col-md-6 noticePet">
					<h3><span class="badge">팔로잉 한 대리산책 공고글</span></h3>
					
					<div><!-- 팔로잉 한 대리산책 목록 시작 -->
						<div class="card walkCard">
				            <img src="images/walktestpro.jpg" alt="" class="card-img-top" style="width: 100%;">
				            <div class="card-body">
				              <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
				              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6><br>
				              <p>4.2 ⭐ (991개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
				            </div>
				          </div>
				          
				          <div class="card walkCard">
				            <img src="images/walktestpro.jpg" alt="" class="card-img-top" style="width: 100%;">
				            <div class="card-body">
				              <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
				              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6><br>
				              <p>4.2 ⭐ (991개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
				            </div>
				          </div>	
				          
				          <div class="card walkCard">
				            <img src="images/walktestpro.jpg" alt="" class="card-img-top" style="width: 100%;">
				            <div class="card-body">
				              <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
				              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6><br>
				              <p>4.2 ⭐ (991개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
				            </div>
				          </div>
				          
					</div><!-- 팔로잉 한 대리산책 목록 끝 -->
					
				</div><!-- 1행2열끝  -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<div class="col-md-6 noticeWalk">
					<h3><span class="badge">내가 쓴 후기</span></h3>
					<div><!-- 내가 쓴 후기 시작  -->
					
						<div class="card reviewCard">
						  <img src="..." class="card-img-top"/>
						  <div class="card-body">
						    <h5 class="card-title">후기 제목 입니다아아아</h5>
						    <p class="card-text">후기 내용 어쩌고 저쩌고 </p>
						  </div>
						  <ul class="list-group list-group-light list-group-small">
						    <li class="list-group-item px-4">별점 : ⭐ </li>
						    <li class="list-group-item px-4">작성자 : 견주닉네임</li>
						    <li class="list-group-item px-4">작성일 : 2023-08-05 </li>
						  </ul>
						</div>
						
						
						<div class="card reviewCard">
						  <img src="..." class="card-img-top"/>
						  <div class="card-body">
						    <h5 class="card-title">후기 제목</h5>
						    <p class="card-text">후기 내용</p>
						  </div>
						  <ul class="list-group list-group-light list-group-small">
						    <li class="list-group-item px-4">별점</li>
						    <li class="list-group-item px-4">작성자</li>
						    <li class="list-group-item px-4">작성일</li>
						  </ul>
						</div>
					
					</div><!-- 내가 쓴 후기 끝  -->
					
					
				</div><!-- 2행 1열 끝 -->
				
				<div class="col-md-6 noticeSeating">
					<h3><span class="badge">서비스 완료 내역</span></h3>
					<div><!-- 서비스 완료 내역 시작 -->
					
						<table class="EndTable">
						    <tr>
						      <th class="EndTh">이용날짜</th>
						      <th class="EndTh">이용서비스</th>
						      <th class="EndTh">진행상태</th>
						      <th class="EndTh">서비스제목</th>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">폴폴이와 함꼐하는 산책~!!!</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">폴폴이와 함꼐하는 산책~!!!</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">폴폴이와 함꼐하는 산책~!!!</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">폴폴이와 함꼐하는 산책~!!!</td>
						    </tr>
						</table>
					
					
					</div><!-- 서비스 완료 내역 끝 -->
					
					
				</div><!-- 2행 2열 끝 -->
			</div><!-- 2행 끝  -->
</body>
</html>




