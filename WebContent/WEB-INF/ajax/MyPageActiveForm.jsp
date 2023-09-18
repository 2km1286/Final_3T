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
div.porfilCard{margin-left: 20%; width: 360px;}

</style>

</head>
<body>
			<div class="row">

				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">팔로잉 한 대리산책러</span></h3>
					<div><!-- 팔로잉 한 대리산책러 시작 -->
					
						<div class="card porfilCard">
				            <div class="card-block">
				              <h4 class="card-title">[마스터 산책러] 우사인볼트이서<br></h4>
				              <h6 class="card-subtitle text-muted">후기 10개<br>산책완료 횟수 10건 </h6>
				              <p class="card-text p-y-1" style="float: right;"><br>❤️ 8<br></p>
				              <a href="#" class="card-link"><br>공고글 보기</a>
				            </div>
				         </div>
					
					
					</div><!-- 팔로잉 한 대리산책러 끝 -->
					
				</div><!-- 1행1열 끝 -->
				
				

				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">팔로잉 한 펫시터</span></h3>

					
					<div><!-- 팔로잉 한 펫시터 시작 -->
				          
					          <!-- <div class="card porfilCard">
					            <div class="card-block">
					              <h4 class="card-title">[마스터 펫시터] 멍뭉스토리기민 <br></h4>
					              <h6 class="card-subtitle text-muted">후기 2,001개<br>예약완료 횟수 2,812건 </h6>
					              <p class="card-text p-y-1" style="float: right;"><br>❤️ 3,021<br></p>
					              <a href="#" class="card-link"><br>공고글 보기</a>
					            </div>
					          </div> -->
					          <div class="noNotice"><h2><span>팔로잉 한 펫시터가 없습니다.</span></h2></div>
				          
					</div><!-- 팔로잉 한 펫시터 끝 -->
					
				</div><!-- 1행2열끝  -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">내가 쓴 후기</span></h3>
					<div><!-- 내가 쓴 후기 시작  -->
					
						<table class="EndTable" style="width: 700px;">
						    <tr>
						      <th class="EndTh">예약 유형</th>
						      <th class="EndTh">후기 작성일</th>
						      <th class="EndTh">별점</th>
						      <th class="EndTh"></th>
						    </tr>
						    <tr>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">2023-07-26</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn" onclick="openPopup()">자세히보기</button></td>
						    </tr>
						    <tr>
						      <td class="EndTd">펫시팅</td>
						      <td class="EndTd">2023-07-30</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn" onclick="openPopup()">자세히보기</button></td>
						    </tr>
						</table>
					
					</div><!-- 내가 쓴 후기 끝  -->
					
					
				</div><!-- 2행 1열 끝 -->
				
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">서비스 완료 내역</span></h3>
					<div><!-- 서비스 완료 내역 시작 -->
					
						<table class="EndTable" style="width: 720px;">
						    <tr>
						      <th class="EndTh">예약 접수일</th>
						      <th class="EndTh">예약 유형</th>
						      <th class="EndTh">진행상태</th>
						      <th class="EndTh">예약 상대</th>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-25</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">폴폴이</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">대리산책</td>
						      <td class="EndTd">진행완료</td>
						      <td class="EndTd">귀요미</td>
						    </tr>
						</table>
					
					
					</div><!-- 서비스 완료 내역 끝 -->
					
					
				</div><!-- 2행 2열 끝 -->
			</div><!-- 2행 끝  -->
</body>
</html>




