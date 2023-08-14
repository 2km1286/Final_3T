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

<script type="text/javascript">
	
	$().ready(function()
	{
		$(".detailBtn").click(function()
		{
			window.location.href = "reservationinfo.action";
		});
		
		// 알림에서 프로필 반려알림이 들어왔을 때 프로필보기버튼
		$("#profilBtn").click(function()
		{
			window.location.href = "mypageinfoform.action";
		});
		
	});
	
</script>
<style type="text/css">

</style>
</head>
<body>
			<div class="row">
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					
					<h3><span class="badge" >알림</span></h3>
					<div><!-- 알림 목록 시작 -->
					
						<c:choose>
						<c:when test="${empty memWalkCancelToday && empty memSittingCancelToday &&
										empty walkReviewToday && empty sittingReviewToday &&
										empty walkCompanionToday && empty sittingCompanionToday &&
										countProfilCompanion==0}">
							<div class="noNotice"><h2><span>오늘 들어온 알림이 없습니다.</span></h2></div>
						</c:when>
						<c:otherwise>
							
							<!--내가 맡긴 대리산책예약이 오늘 취소되었을 때  -->
							<c:forEach items="${memWalkCancelToday }" var="memWalk">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[예약취소] <button type="button" class="detailBtn" value="${memWalk.wbSid }">자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
							    		        <span class="card-text" style="font-size: 14pt;">${memWalk.wbStart } ~ ${memWalk.wbEnd }</span>
							    		        <span class="card-text" style="font-size: 14pt;">내가 맡긴 대리산책 예약이 취소됐습니다. </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!--내가 맡긴 펫시팅예약이 오늘 취소되었을 때  -->
							<c:forEach items="${memSittingCancelToday}" var="memSitting">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[예약취소] <button type="button" class="detailBtn" value="${memSitting.sbSid }">자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
							    		        <span class="card-text" style="font-size: 14pt;">${memSitting.sbStart } ~ ${memSitting.sbEnd }</span>
							    		        <span class="card-text" style="font-size: 14pt;">내가 맡긴 펫시팅 예약이 취소됐습니다. </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!-- 대리산책러로서 오늘 달린 대리산책 후기들 -->
							<c:forEach items="${walkReviewToday}" var="walkReview">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[후기] <button type="button" class="detailBtn" value="${walkReview.wrSid }">자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text"><small class="text-muted">후기작성일</small></span><br>
							    		        <span class="card-text" style="font-size: 14pt;">${walkReview.wrDate }</span>
							    		        <span class="card-text" style="font-size: 14pt;">대리산책 후기가 달렸습니다. </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!-- 펫시터로서 오늘 달린 펫시팅 후기들 -->
							<c:forEach items="${sittingReviewToday}" var="sittingReview">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[후기] <button type="button" class="detailBtn" value="${sittingReview.srwSid }">자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text"><small class="text-muted">후기작성일</small></span><br>
							    		        <span class="card-text" style="font-size: 14pt;">${sittingReview.srwDate }</span>
							    		        <span class="card-text" style="font-size: 14pt;">펫시팅 후기가 달렸습니다. </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!-- 대리산책러로서 오늘 반려당한 대리산책 공고글 -->
							<c:forEach items="${walkCompanionToday}" var="walkComanion">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[반려] <button type="button" class="detailBtn" value="${walkComanion.wpsid }">공고글 자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text" style="font-size: 14pt;">
							    		        대리산책 공고글에 신고가 접수되어 반려조치됐습니다. 
							    		        </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!-- 펫시터로서 오늘 반려당한 돌봄장소글 -->
							<c:forEach items="${sittingCompanionToday}" var="sittingComanion">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[반려] <button type="button" class="detailBtn" value="${sittingComanion.spSid }">돌봄장소 자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text" style="font-size: 14pt;">
							    		        돌봄장소에 신고가 접수되어 반려조치됐습니다. 
							    		        </span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>
							</c:forEach>
							
							<!-- 프로필이 오늘 반려당했을 때 -->
							<c:forEach begin="1" end="${countProfilCompanion}" varStatus="loop">
								<div class="card">
									<div class="card-header d-flex justify-content-between">
										[반려] <button type="button" class="detailBtn" id="profilBtn">프로필 자세히보기</button>
									</div>	
							    	  <div class="row g-0">
							    	    <div class="col-md cardInfo" >
							    	      <div class="card-body">
							    	        <div class="oneText">
							    		        <span class="card-text" style="font-size: 14pt;">
							    		        프로필에 신고가 접수되어 반려조치됐습니다. 
							    		      	</span>
							    	        </div>
							    	      </div>
							    	    </div>
							    	  </div>
							    </div>		
							</c:forEach>
						</c:otherwise>
						
						</c:choose>	
					    
					</div><!-- 알림 목록 끝 -->
				
				</div><!-- 1행1열 끝 -->
				
				<!-- 견주로서 오늘 결제한 예약 -->
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">내가 결제한 예약</span></h3>
					
					<div><!-- 예약내역 시작 -->
					<c:choose>
					<c:when test="${empty memWalkBookToday && empty memSittingBookToday}">
						<div class="noNotice"><h2><span>오늘 결제한 예약이 없습니다.</span></h2></div>
					</c:when>
					
					<c:otherwise>
						
						<c:forEach items="${memWalkBookToday }" var="memWalkBook">
							<div class="card">
								<div class="card-header d-flex justify-content-between">
									대리산책
									<button type="button" class="detailBtn" value="${memWalkBook.wbSid }">
									자세히보러가기
									</button>
								</div>	
						    	  <div class="row g-0">
						    	    <div class="col-md cardInfo" >
						    	      <div class="card-body">
						    	        <div class="oneText">
						    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
						    		        <span class="card-text" style="font-size: 14pt;">
						    		        ${memWalkBook.wbStart } ~ ${memWalkBook.wbEnd }
						    		        </span>
						    	        </div>
						    	      </div>
						    	    </div>
						    	  </div>
						    </div>
						</c:forEach>
						
						<c:forEach items="${memSittingBookToday }" var="memSittingBook">
							<div class="card">
								<div class="card-header d-flex justify-content-between">
									펫시팅
									<button type="button" class="detailBtn" value="${memSittingBook.sbSid }">
									자세히보러가기
									</button>
								</div>	
						    	  <div class="row g-0">
						    	    <div class="col-md cardInfo" >
						    	      <div class="card-body">
						    	        <div class="oneText">
						    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
						    		        <span class="card-text" style="font-size: 14pt;">
						    		        ${memSittingBook.sbStart } ~ ${memSittingBook.sbEnd }
						    		        </span>
						    	        </div>
						    	      </div>
						    	    </div>
						    	  </div>
						    </div>
						</c:forEach>
					</c:otherwise>
					</c:choose>
					
					</div><!-- 예약 내역 끝 -->
					
				</div><!-- 1행 2열 끝 -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<!-- 대리산책러로서 오늘 들어온 예약 -->
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">나에게 들어온 예약/대리산책</span></h3>
					<div><!-- 대리산책러 예약내역 시작 -->
					<c:choose>
					<c:when test="${empty walkBookToday }">
						<div class="noNotice"><h2><span>오늘 들어온 예약이 없습니다.</span></h2></div>				
					</c:when>
					
					<c:otherwise>
						
						<c:forEach items="${walkBookToday }" var="walkBook">
							<div class="card">
								<div class="card-header d-flex justify-content-between"">
									대리산책 <button type="button" class="detailBtn" value="${walkBook.wbSid }">자세히보러가기</button>
								</div>	
						    	  <div class="row g-0">
						    	    <div class="col-md cardInfo" >
						    	      <div class="card-body">
						    	        <div class="oneText">
						    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
						    		        <span class="card-text" style="font-size: 14pt;">
						    		        ${walkBook.wbStart } ~ ${walkBook.wbEnd }
						    		        </span>
						    	        </div>
						    	      </div>
						    	    </div>
						    	  </div>
						    </div>
						</c:forEach>
					
					</c:otherwise>
					</c:choose>
					    
					</div><!-- 대리산책러 예약내역 끝 -->
				</div><!-- 2행1열 끝 -->
				
				<!-- 펫시터로서 오늘 들어온 예약 -->
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">나에게 들어온 예약/펫시팅</span></h3>
					<div><!-- 펫시터 예약내역 시작 -->
					<c:choose>
					<c:when test="${empty sittingBookToday }" >
						<div class="noNotice"><h2><span>오늘 들어온 예약이 없습니다.</span></h2></div>
					</c:when>
					
					<c:otherwise>
						
						<c:forEach items="${sittingBookToday }" var="sittingBook">
						
							<div class="card">
								<div class="card-header d-flex justify-content-between">
									펫시팅 <button type="button" class="detailBtn" value="${sittingBook.sbSid }">자세히보러가기</button>
								</div>	
						    	  <div class="row g-0">
						    	    <div class="col-md cardInfo" >
						    	      <div class="card-body">
						    	        <div class="oneText">
						    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
						    		        <span class="card-text" style="font-size: 14pt;">
						    		        ${sittingBook.sbSStart } ~ ${sittingBook.sbEnd }
						    		        </span>
						    	        </div>
						    	      </div>
						    	    </div>
						    	  </div>
						    </div>
						    
						</c:forEach>
					
					</c:otherwise>
					</c:choose>
					    
					</div><!-- 펫시터 예약내역 끝 -->
				</div><!-- 2행 2열 끝 -->
			</div><!-- 2행 끝 -->
</body>
</html>




