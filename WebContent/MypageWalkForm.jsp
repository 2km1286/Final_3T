<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<div class="row">
	<div class="col-md-6"> 
	<h3><span class="badge badge-warning mypageNoticBtn">내가 올린 대리산책 공고글</span></h3>
		<div class="row"> <!-- 내가 올린 대리산책 공고글 -->
			<div class="col-md-12 mypageNoAllDiv">
				<!-- Spied element -->
			    <div
			      data-mdb-spy="scroll"
			      data-mdb-target="#scrollspy1"
			      data-mdb-offset="0"
			      class="scrollspy-example mypageNoticeAll"
			    >
			      <section>  <!-- 섹션 하나에 공고글 1개 -->
					
					<div class="card mypageListCard">
						  <div class="card-body">
						    <h5 class="card-title mypageListTitle">내용 무시하세요. 대리산책 리스트업 페이지에서 보여준 거랑 똑같은 거 가져오기</h5>
						  </div>
						</div>
					
				  </section>
				  
			      
			    </div>
			    <!-- Spied element -->
			</div>
		</div> <!-- 내가 올린 대리산책 공고글 끝 -->
		
		<div class="row"> <!-- 나에게 달린 대리산책 후기 -->
		<h3><span class="badge badge-warning mypageNoticBtn">나에게 달린 대리산책 후기</span></h3>
			<div class="col-md-12 mypageNoAllDiv">
				<div
	               data-mdb-spy="scroll"
	               data-mdb-target="#scrollspy1"
	               data-mdb-offset="0"
	               class="scrollspy-example mypageReview"
	            >
		            <section>
						
						<div class="card reviewCard">
						  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
						  <div class="card-body">
						    <h5 class="card-title">후기 제목</h5>
						    <p class="card-text">후기 내용</p>
						  </div>
						  <ul class="list-group list-group-light list-group-small">
						    <li class="list-group-item px-4">별점</li>
						    <li class="list-group-item px-4">작성자</li>
						    <li class="list-group-item px-4">작성일</li>									  </ul>
						</div>
						
					</section>
					
					<section>
						
						<div class="card reviewCard">
						  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
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
	
					</section>
					
					<section>
						
						<div class="card reviewCard">
						  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
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
						
					</section>
					
				</div>	
			</div>
		</div> <!-- 나에게 달린 대리산책 후기 끝-->
		
	</div>
	
	<div class="col-md-6">
		
		<div class="row"> <!-- 얘약 확정(당일) -->
		<h3><span class="badge badge-warning mypageNoticBtn">얘약 확정(당일 진행)</span></h3>
			<div class="col-md-12 mypageNoAllDiv">
				
				<div
	               data-mdb-spy="scroll"
	               data-mdb-target="#scrollspy1"
	               data-mdb-offset="0"
	               class="scrollspy-example mypageNoticeAll"
	            >
		            <section>
						<div class="card mypageListCard">
						  <div class="card-body">
						    <h5 class="card-title mypageListTitle">대리산책</h5>
						    <p class="card-text">
						    <span class="mypageListSub">[만남장소]</span>
						    <span>서울시 도봉구 시루봉로 OO공원 2번 출구 앞</span><br>
						    <span class="mypageListSub">[산책시작일시 ~ 산책종료일시]</span>
						    <span> 2023-07-29 14:00 ~ 2023-07-29 16:00</span><br>
						    <span class="mypageListSub">[선택한 반려견]</span>
						    <span>까미</span><br>
						    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
						    </p>
						  </div>
						</div>
					</section>
					
					<section>
						<div class="card mypageListCard">
						  <div class="card-body">
						    <h5 class="card-title mypageListTitle">대리산책</h5>
						    <p class="card-text">
						    <span class="mypageListSub">[만남장소]</span>
						    <span>서울시 마포구 월드컵북로 홍대입구역 1번 출구 앞</span><br>
						    <span class="mypageListSub">[산책시작일시 ~ 산책종료일시]</span>
						    <span> 2023-07-29 17:00 ~ 2023-07-29 18:00</span><br>
						    <span class="mypageListSub">[선택한 반려견]</span>
						    <span>구찌</span><br>
						    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
						    </p>
						  </div>
						</div>
					</section>
					
				</div>
				
			</div>	
		</div> <!-- 예약 확정(당일) 끝 -->
		
		<div class="row"> <!-- 대리산책 수익 -->
		<span class="badge badge-warning mypageNoticBtn mypageWalkDon">대리산책 수익</span>
			<div class="mypageWalkMonDon">
				<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
				<h4><span id="totalEarningsLabel">1,000,000 원</span></h4>
	         		</div>
			<div class="col-md-12 mypageNoAllDiv">
				<div
	               data-mdb-spy="scroll"
	               data-mdb-target="#scrollspy1"
	               data-mdb-offset="0"
	               class="scrollspy-example mypageNoticeAll"
	            >
		            <section>
						
						<table class="EndTable">
						    <tr>
						      <th class="EndTh">서비스 완료일</th>
						      <th class="EndTh">매칭상대(닉네임)</th>
						      <th class="EndTh">가격</th>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						   <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						    <tr>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">뭐뭐닉네임</td>
						      <td class="EndTd">30,000원</td>
						    </tr>
						  </table>  
						
					</section>
					
					
				</div>	
				
			</div>
		</div> <!-- 대리산책 수익 끝-->
		</div>
</div>