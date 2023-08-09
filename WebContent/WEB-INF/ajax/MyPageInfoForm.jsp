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
<title>마이페이지_내 정보 및 반려견관리</title>

<script type="text/javascript">
	
	$(function()
	{
		$("#petInsertBtn").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"petinsertform.action"
				, async:true
				, success:function(data)
				{
					$("#petRigthDiv").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});
		});
		
		/* 에이잭스말고 모달할까 */
		/* 나중에 데이터 받아오면 여기도 #petUpdateBtn${petSid} 이런식? */
		$("#petUpdateBtn123").click(function()
		{
			/* $.ajax(
			{
				type:"POST"
				, url:"petupdateform.action"
				, async:true
				, success:function(data)
				{
					$("#petRigthDiv").html(data);
										
				}
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			}); */
			
			
		});
		
		
	});



</script>

<style type="text/css">

.px-4 { height: 53px;}

</style>

</head>
<body>
			<!-- 첫 요청 시 채워진 상태. 한 마디로 내 정보 관리==업데이트폼 -->
			<div class="row">
				<!-- 내 정보 시작 -->
				<div class="col-md-6 container-mypage" style="overflow: auto; height: 1000px;">
				<h3><span class="badge">내 정보 관리</span></h3>
				
					<form class="form" action="" method="post">
					
					<div class="infoOneNoline">    
				        <h4><span class="smallTitle">프로필사진</span></h4>
				        <img alt="기존 프로필사진" src="...">
				        <input type="file" name="jmImage" id="jmImage" accept="image/*" style="display: block;">
				    </div>
				    
					<div class=infoOneNoline>
						<h4><span class="smallTitle">아이디</span></h4>
				        <div class="input-container">
				        	<input type="text" name="jmId" id="jmId">
				        	<button type="button" id="checkUserIdBtn">중복확인</button>
				        </div>
				    </div>
				        
				   	<div class="infoOneNoline">
						<h4><span class="smallTitle">이름</span></h4>
				        <input type="text" name="jmName" id="jmName">
				    </div>
				    
				    <div class="infoOneNoline">
				    	 <h4><span class="smallTitle">성별</span></h4>
				    	<div class="form-check">
						    <input class="form-check-input" type="radio" name="gender" id="" value="">
						    <label class="form-check-label" for="public">남성</label>
						</div>
						<div class="form-check">
						    <input class="form-check-input" type="radio" name="gender" id="" value="">
						    <label class="form-check-label" for="private">여성</label>
						</div>
				    </div>
				    
				    <div class="infoOneNoline">    
				        <h4><span class="smallTitle">닉네임</span></h4>
				        <div class="input-container">
				        	<input type="text" name="jmNickName" id="jmNickName">
				        	<button type="button" id="checkUserNickBtn">중복확인</button>
				        </div>
					</div>				
					
					<div class="infoOneNoline">
				        <h4><span class="smallTitle">전화번호</span></h4>
				        <div class="input-container">
				        	<input type="tel" name="jmTel" id="jmTel">
				        	<button type="button" id="telCheck">인증번호</button>
				        </div>
				    </div>
				    
				    <div class="infoOneNoline">    
				        <h4><span class="smallTitle">주소</span></h4>
					        <div class="input-container">
				        	<input type="text"name="jmAddr1" id="jmAddr1">
				        	<button type="button" id="checkZipcodeBtn">우편번호</button>
				        </div>
				        <input type="text" name="jmZipCode" id="jmZipCode">
				    </div>
				    
				    <div class="infoOneNoline">      
				        <h4><span class="smallTitle">상세주소</span></h4>
				        <input type="text" name="jmAddr2" id="jmAddr2">
				    </div>
				        <br />
				        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
				        <br />
				   	<div class="" style="margin-left:40%;">     
				        <button type="button" id="" class="detailBtn">수정하기</button>
				        <button type="button" id="" class="detailBtn">되돌리기</button>
				        <button type="button" class="detailBtn">비밀번호 재설정</button><!-- 비밀번호재설정페이지로 보내기 -->
				        <button type="button" class="detailBtn" style="margin-left: 50px;">탈퇴하기</button>
			      	</div>
			      </form>
			      
		      </div>
		      <!-- 내 정보 끝 -->
			
			<!-- 1행 1열 끝 -->
			
			
			<!-- 1행 2열 시작 --> 
			<div class="col-md-6 container-mypage" style="overflow: auto; height: 1000px;">
			<h3><span class="badge">반려견 관리</span> <button type="button" class="petInsertBtn" id="petInsertBtn">✚</button></h3>
			
			<!-- 반려견 카드 목록 시작 -->
			<div class="col-md-12">
					<div class="card petCard">
						<img src="images/cute.png" class="card-img-top" style="width: 100%;">
						<div class="card-body">
						<h5 class="card-title">인절미</h5>
						<p class="card-text">특이사항이 적혀있어요. 우리 절미는 뛰는걸 싫어해요. 걷기만 해주세요</p>
					</div>
						<ul class="list-group list-group-light list-group-small">
							<li class="list-group-item px-4">성별 : <span>남</span> </li>
							<li class="list-group-item px-4">무게(kg) : <span>15</span> </li>
							<li class="list-group-item px-4">출생년도 : <span>2020</span> </li>
							<li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
							<li class="list-group-item px-4">
								<button type="button" id="petUpdateBtn123" class="detailBtn">수정하기</button>
								<button type="button" id="petDeleteBrn${petSid }" class="detailBtn">삭제하기</button>
							</li>
						</ul>
					</div>
					
					
					<div class="card petCard">
						<img src="images/cute.png" class="card-img-top" style="width: 100%;">
						<div class="card-body">
						<h5 class="card-title">인절미</h5>
						<p class="card-text">특이사항이 적혀있어요. 우리 절미는 뛰는걸 싫어해요. 걷기만 해주세요</p>
					</div>
						<ul class="list-group list-group-light list-group-small">
							<li class="list-group-item px-4">성별 : <span>남</span> </li>
							<li class="list-group-item px-4">무게(kg) : <span>15</span> </li>
							<li class="list-group-item px-4">출생년도 : <span>2020</span> </li>
							<li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
							<li class="list-group-item px-4">
								<button type="button" id="petUpdateBtn123" class="detailBtn">수정하기</button>
								<button type="button" id="" class="detailBtn">삭제하기</button>
							</li>
						</ul>
					</div>
					
					<div class="card petCard">
						<img src="images/cute.png" class="card-img-top" style="width: 100%;">
						<div class="card-body">
						<h5 class="card-title">인절미</h5>
						<p class="card-text">특이사항이 적혀있어요. 우리 절미는 뛰는걸 싫어해요. 걷기만 해주세요</p>
					</div>
						<ul class="list-group list-group-light list-group-small">
							<li class="list-group-item px-4">성별 : <span>남</span> </li>
							<li class="list-group-item px-4">무게(kg) : <span>15</span> </li>
							<li class="list-group-item px-4">출생년도 : <span>2020</span> </li>
							<li class="list-group-item px-4">종 : <span>시고르브잡종</span> </li>
							<li class="list-group-item px-4">
								<button type="button" id="" class="detailBtn petUpdateBtn">수정하기</button>
								<button type="button" id="" class="detailBtn petDeleteBtn">삭제하기</button>
							</li>
						</ul>
					</div>
				
				</div>
				<!-- 반려견 카드 목록 끝 -->
		</div>
		<!-- 1행 2얄 끝 -->
	</div>
	<!-- 1행 끝 -->
</body>
</html>




