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
<title>마이페이지_대리산책_일반회원</title>

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
		$("#registerPost").click(function()
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
			<div class="row" style="border-bottom: 2px solid black;">
				<div class="col-md-6 noticeAll" style="border-right: 2px solid black;">
					
					<h3><span class="badge">대리산책러가 되어보세요</span></h3>
					<div><!-- 내가 올린 대리산책 공고글 시작 -->
		               <button type="button" class="detailBtn">대리산책러 지원하러 가기</button>
					</div><!-- 내가 올린 대리산책 공고글 끝-->
					
				</div><!-- 1행1열 끝 -->
				
				
				<div class="col-md-6 noticePet">
					<h3><span class="badge">당일예약내역</span></h3>
					<div><!-- 당일예약내역 시작 -->
						<div class="card">
							<div class="card-body">
								내역이 없습니다.
							</div>
					    </div>
						
					</div><!-- 당일예약내역 끝 -->
				</div><!-- 1행2열 끝 -->
				
			</div><!-- 1행 끝 -->
			
			<div class="row">
				<div class="col-md-6 noticeWalk" style="border-right: 2px solid black;"> 
					<h3><span class="badge">나에게 달린 대리산책 후기</span></h3>
					<div><!-- 나에게 달린 대리산책 후기 시작 -->
						<p>내역이 없습니다.</p>
						
					</div><!-- 나에게 달린 대리산책 후기 끝 -->	
						
				</div><!-- 2행1열 끝 -->
				
				<div class="col-md-6 noticeSeating">
					<h3><span class="badge">수익내역</span></h3>
					<div><!-- 수익내역 시작 -->
						<p>대리산책러가 되어서 수익활동을 해보세요</p>
					</div><!-- 수익내역 끝 -->
					
				</div><!-- 2행2열 끝 -->		
			</div><!-- 2행 끝 -->
</body>
</html>




