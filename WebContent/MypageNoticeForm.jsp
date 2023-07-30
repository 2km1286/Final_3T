<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<div class="row">
<div class="col-md-6"> 
<h3><span class="badge badge-warning mypageNoticBtn">알림</span></h3>
	<div class="row"> <!-- 알림(후기 달렸을 때, 예약이 취소 되었을 때) -->
		<div class="col-md-12 mypageNoAllDiv">
			<!-- Spied element -->
		    <div
		      data-mdb-spy="scroll"
		      data-mdb-target="#scrollspy1"
		      data-mdb-offset="0"
		      class="scrollspy-example mypageNoticeAll"
		    >
		      <section>  <!-- 섹션 하나에 알림내역 1개 -->
				<div class="mypageNoticeAllList">
					[대리산책] 진행중인 예약이 취소되었습니다.
				</div>
			  </section>
			  
			  <section>	
				<div class="mypageNoticeAllList">
					[대리산책] 새로운 후기가 달렸습니다.
				</div>
			  </section>
			  
			  <section>
				<div class="mypageNoticeAllList">
					[펫시팅] 예약이 완료되었습니다.
				</div>
			  </section>
			  
			  <section>
				<div class="mypageNoticeAllList">
					[대리책러] 새로운 예약 요청이 도착했습니다.
				</div>
		      </section>
		      
		      <section>
				<div class="mypageNoticeAllList">
					[대리산책] 예약이 확정되었습니다.
				</div>
		      </section>
		      
		      
		    </div>
		    <!-- Spied element -->
		</div>
	</div> <!-- 알림(후기 달렸을 때, 예약이 취소 되었을 때) 끝 -->
	
	<div class="row"> <!-- 예약내역(펫시터로써) -->
	<h3><span class="badge badge-warning mypageNoticBtn">내가(펫시터) 서비스 할 예약</span></h3>
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
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
				</section>
				
				<section>
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
				</section>
				
				<section>
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
				</section>
				
				<section>
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
				</section>
				
				<section>
					<div class="card mypageListCard">
					  <div class="card-body">
					    <h5 class="card-title mypageListTitle">펫시팅</h5>
					    <p class="card-text">
					    <span class="mypageListSub">[돌봄장소]</span>
					    <span>서울시 도봉구 시루봉로 OO길 OO-OO OO아파트 OOO동 OOO호</span><br>
					    <span class="mypageListSub">[펫시팅시작일시 ~ 펫시팅종료일시]</span>
					    <span> 2023-07-29 14:00 ~ 2023-07-30 10:00</span><br>
					    <span class="mypageListSub">[선택한 반려견]</span>
					    <span>구찌</span><br>
					    <button type="button" class="btn btn-primary mypageNomore">자세히보기</button>
					    </p>
					  </div>
					</div>
				</section>
			</div>	
		</div>
	</div> <!-- 예약내역(펫시터로써) 끝 -->
	
</div>

<div class="col-md-6">
	
	<div class="row"> <!-- 예약내역(견주로써) -->
	<h3><span class="badge badge-warning mypageNoticBtn">내가(견주) 맡긴 예약</span></h3>
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
			
		</div>	
	</div> <!-- 예약내역(견주로써) 끝 -->
	
	<div class="row"> <!-- 예약내역(대리책러로써) -->
	<h3><span class="badge badge-warning mypageNoticBtn">내가(대리산책러) 서비스 할 예약</span></h3>
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
			
		</div>
	</div> <!-- 예약내역(대리책러로써) 끝-->
	</div>
</div>