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
<title>마이페이지_대리산책</title>


<style type="text/css">

.noticeAll, .noticePet, .noticeWalk, .noticeSeating
{
	padding: 20px 20px 20px 20px;
}
.noticeCard { margin-bottom: 20px;}
.superscript { font-size: 1.0em; vertical-align: super;}
#totalEarningsLabel { display: inline; }
#totalEarningsValue { display: inline; }
.mypageWalkMonDon {width: 200px; margin-left: 560px;}
.walkCard {width: 350px;}
</style>

<script type="text/javascript">
	$(function()
	{
		// 돌봄장소 변경하기를 누르면

		// 돌봄장소 수정하기를 누르면
		$("#updateSPInfo").click(function()
		{
			
			
			$.ajax(
			{
				type : "POST",
				url : "updatespinfoform.action",
				async : true,
				success : function(data)
				{
					$("#sittingPlaceDiv").html(data);

				},
				error : function(e)
				{
					alert(e.responseText);
				}

			});

		});

		

	});
</script>

</head>
<body>
			<div class="row">
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					
					<h3><span class="badge">내가 올린 대리산책 공고글</span></h3>
					<div><!-- 내가 올린 대리산책 공고글 시작 -->
					
			          <div class="card">
			            <div class="card-body">
			              <h5 class="card-title">[마스터 산책러] 멍멍박사</h5>
			              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6><br>
			              <p>4.2 ⭐ (991개의 후기)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;15,000원</p>
				              <button type="button" class="detailBtn">자세히보러가기</button>
				              <button type="button" class="detailBtn">수정하기</button>
				              <button type="button" class="detailBtn">삭제하기</button>
			            </div>
			          </div>
			          
					</div><!-- 내가 올린 대리산책 공고글 끝-->
					
				</div><!-- 1행1열 끝 -->
				
				
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">당일예약내역</span></h3>
					<div><!-- 당일예약내역 시작 -->
						<div class="card">
							<div class="card-header d-flex justify-content-between"">
								대리산책 <button type="button" class="detailBtn">자세히보러가기</button>
							</div>	
					    	  <div class="row g-0">
					    	    <div class="col-md cardInfo" >
					    	      <div class="card-body">
					    	        <div class="oneText">
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text" style="font-size: 14pt;">2023-08-04 14:00 ~ 2023-08-04 16:00</span>
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
					    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
					    		        <span class="card-text" style="font-size: 14pt;">2023-08-04 17:00 ~ 2023-08-04 18:00</span>
					    	        </div>
					    	      </div>
					    	    </div>
					    	  </div>
					    </div>
					    
					</div><!-- 당일예약내역 끝 -->
				</div><!-- 1행2열 끝 -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;"> 
					<h3><span class="badge">후기</span></h3>
					<div><!-- 나에게 달린 대리산책 후기 시작 -->
						
						<table class="EndTable" style="width: 700px;">
						    <tr>
						      <th class="EndTh">후기 작성자</th>
						      <th class="EndTh">후기 작성일</th>
						      <th class="EndTh">별점</th>
						      <th class="EndTh"></th>
						    </tr>
						    <tr>
						      <td class="EndTd">폴폴이</td>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn">자세히보기</button></td>
						    </tr>
						    <tr>
						      <td class="EndTd">폴폴이</td>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn">자세히보기</button></td>
						    </tr>
						    <tr>
						      <td class="EndTd">폴폴이</td>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn">자세히보기</button></td>
						    </tr>
						    <tr>
						      <td class="EndTd">폴폴이</td>
						      <td class="EndTd">2023-07-29</td>
						      <td class="EndTd">5</td>
						      <td class="EndTd"><button type="button" class="detailBtn">자세히보기</button></td>
						    </tr>
						</table>
						
					</div><!-- 나에게 달린 대리산책 후기 끝 -->	
						
				</div><!-- 2행1열 끝 -->
				
				<div class="col-md-6 container-mypage" style="height: 440px; overflow: auto;">
					<h3><span class="badge">수익내역</span></h3>
					<div><!-- 수익내역 시작 -->
						<div class="money" style="margin-left: 75%;">
							<p id="totalEarningsValue" class="superscript">이번달 총 수익</p>
							<h4><span id="totalEarningsLabel">1,000,000 원</span></h4>
				        </div>
						
						<table class="EndTable" style="width: 700px;">
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
						
					</div><!-- 수익내역 끝 -->
					
				</div><!-- 2행2열 끝 -->		
			</div><!-- 2행 끝 -->
</body>
</html>




