<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<h3><span class="badge badge-warning mypageMyAcBtn">팔로잉</span></h3><!-- 팔로잉 영역 시작 -->
<div class="row wishlist">
	<!-- Tabs navs -->
	<ul class="nav nav-tabs mb-3 mypageTabName" id="tabName" role="tablist"> <!-- 탭 이름 -->
	  <li class="nav-item mypageTabLine" role="presentation">
	    <a
	      class="nav-link mypageWishLink active"
	      id="mypageWishTab-1"
	      data-mdb-toggle="tab"
	      href="#ex1-tabs-1"
	      role="tab"
	      aria-controls="ex1-tabs-1"
	      aria-selected="true"
	      >펫시터</a
	    >
	  </li>
	  <li class="nav-item mypageTabLine" role="presentation">
	    <a
	      class="nav-link mypageWishLink"
	      id="mypageWishTab-2"
	      data-mdb-toggle="tab"
	      href="#ex1-tabs-2"
	      role="tab"
	      aria-controls="ex1-tabs-2"
	      aria-selected="false"
	      >대리산책러</a
	    >
	  </li>
	</ul>
	<!-- Tabs navs --> <!-- 탭 이름 끝-->
	
	<!-- Tabs content --> <!-- 탭 내용 시작 -->
	<div class="tab-content" id="ex1-content">
		
	<!-- 펫시터 탭 내용 시작 -->
	  <div
	    class="tab-pane fade show active"
	    id="ex1-tabs-1"
	    role="tabpanel"
	    aria-labelledby="mypageWishTab-1"
	  >
		  <div class="col-md"> <!-- 팔로잉 한 펫시터의 돌봄장소를 보여줄 영역 -->
		    <!-- Spied element -->
		    <div
		      data-mdb-spy="scroll"
		      data-mdb-target="#scrollspy1"
		      data-mdb-offset="0"
		      class="scrollspy-example mypageWishSeating"
		    >
		      <section>  <!-- 섹션 안에 돌봄장소 하나. 섹션이 반복됨 -->
		      	<div>
		        	리스트업할 때 보여주는카드 그대로 보여주기
				</div>
		      </section>
		      
		      <section>
		      
		        <div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">예시입니다.내용무시</h5>
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
					    <h5 class="card-title mypageListTitle">예시입니다.내용무시</h5>
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
					    <h5 class="card-title mypageListTitle">예시입니다.내용무시</h5>
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
		      
		    </div>
		    <!-- Spied element -->
		  </div> <!-- 팔로잉 한 펫시터의 돌봄장소를 보여줄 영역 끝 -->
	  </div> <!-- 펫시터 탭 내용 끝 -->
	  
	  <!-- 대리산책 탭 내용 시작 -->
	  <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="mypageWishTab-2"> 
	  	<div class="col-md"> <!-- 팔로잉한 대리산책러의 공고글을 보여줄 영역 -->
		    <!-- Spied element -->
		    <div
		      data-mdb-spy="scroll"
		      data-mdb-target="#scrollspy1"
		      data-mdb-offset="0"
		      class="scrollspy-example mypageWishWalk"
		    >
		      
		      <section>  <!-- 섹션 안에 공고글 하나. 섹션이 반복됨 -->
		      	<div>
		        	리스트업할 때 보여주는카드 그대로 보여주기
				</div>
		      </section>
		      
		      <section>
		      
		        <div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">예시입니다.내용무시</h5>
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
		      
		    </div>
		    <!-- Spied element -->
		  </div> <!-- 팔로잉한 대리산책러의 공고글을 보여줄 영역 끝-->
	  </div> <!-- 대리산책 탭 내용 끝 -->
	</div> <!-- Tabs content --> <!--탭 내용 끝 -->
</div> <!-- 팔로잉 영역 끝 -->

<div class="row activity">
	<div class="col-md-6 noReview"> <!-- 후기 영역 시작 --> 
		<h3><span class="badge badge-warning mypageMyAcBtn">내가 쓴 후기</span></h3>
		    <!-- Spied element -->
		    <div
		      data-mdb-spy="scroll"
		      data-mdb-target="#scrollspy1"
		      data-mdb-offset="0"
		      class="scrollspy-example mypageReview"
		    >
		      <section>  <!-- 섹션 안에 후기 하나. 섹션이 반복됨 -->
		      
		        <div class="card reviewCard">
				  <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/062.webp" class="card-img-top" alt="Chicago Skyscrapers"/>
				  <div class="card-body">
				    <h5 class="card-title">후기 제목</h5>
				    <p class="card-text">후기 내용</p>
				  </div>
				  <ul class="list-group list-group-light list-group-small">
				    <li class="list-group-item px-4">별점 / 작성일</li>
				    <li class="list-group-item px-4"><a href="#" class="card-link">후기주인으로연결?</a></li>
				  </ul>
				  <div class="card-body">
				   <button type="button" class="btn btn-info">수정하기</button>
				   <button type="button" class="btn btn-info">삭제하기</button>
				  </div>
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
				    <li class="list-group-item px-4">작성일</li>
				    <li class="list-group-item px-4"><a href="#" class="card-link">후기 달린 사람의 현재 공고/돌봄장소글</a></li>
				  </ul>
				  <div class="card-body">
				   <button type="button" class="btn btn-info">수정하기</button>
				   <button type="button" class="btn btn-info">삭제하기</button>
				  </div>
				</div>
				
		      </section>
		      
		    </div>
		    <!-- Spied element -->
    </div> <!-- 후기 영역 끝 --> 

    <div class="col-md-6 noResult"> <!-- 서비스 완료 영역 시작  -->
		<h3><span class="badge badge-warning mypageMyAcBtn">완료된 서비스</span></h3>
		<!-- Spied element -->
		    <div
		      data-mdb-spy="scroll"
		      data-mdb-target="#scrollspy1"
		      data-mdb-offset="0"
		      class="scrollspy-example mypageEnd"
		    >
		      <section>  <!-- 섹션 안에 표 하나 -->
		      
		        <!-- 1번째 테이블 -->
				  <table class="EndTable">
				    <tr>
				      <th class="EndTh">이용날짜</th>
				      <th class="EndTh">이용서비스</th>
				      <th class="EndTh">상태</th>
				      <th class="EndTh">내용</th>
				    </tr>
				    <tr>
				      <td class="EndTd">2023-07-29</td>
				      <td class="EndTd">펫시팅</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와 신나는 펫시팅~!!!</td>
				    </tr>
				    <!-- 2번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-01</td>
				      <td class="EndTd">대리산책</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와의 즐거운 산책~!!!</td>
				    </tr>
				    <!-- 3번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-05</td>
				      <td class="EndTd">펫시팅</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와 신나는 펫시팅~!!!</td>
				    </tr>
				    <!-- 4번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-09</td>
				      <td class="EndTd">대리산책</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와의 즐거운 산책~!!!</td>
				    </tr>
				    <!-- 5번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-13</td>
				      <td class="EndTd">펫시팅</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와 신나는 펫시팅~!!!</td>
				    </tr>
				    <!-- 6번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-17</td>
				      <td class="EndTd">대리산책</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와의 즐거운 산책~!!!</td>
				    </tr>
				    <!-- 7번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-21</td>
				      <td class="EndTd">펫시팅</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와 신나는 펫시팅~!!!</td>
				    </tr>
				    <!-- 8번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-25</td>
				      <td class="EndTd">대리산책</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와의 즐거운 산책~!!!</td>
				    </tr>
				    <!-- 9번째 행 -->
				    <tr>
				      <td class="EndTd">2023-08-29</td>
				      <td class="EndTd">펫시팅</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와 신나는 펫시팅~!!!</td>
				    </tr>
				    <!-- 10번째 행 -->
				    <tr>
				      <td class="EndTd">2023-09-02</td>
				      <td class="EndTd">대리산책</td>
				      <td class="EndTd">완료</td>
				      <td class="EndTd">폴짝이와의 즐거운 산책~!!!</td>
				    </tr>
				  </table>
				
		      </section>
		      
		    </div>
		    <!-- Spied element -->
		
		
    </div>
</div> <!-- 서비스 완료 영역 끝  -->