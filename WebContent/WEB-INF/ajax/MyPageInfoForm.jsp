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
		$("#petInsertForm").click(function()
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
	});



</script>



<style type="text/css">
.myInfo {font-size: 12pt; margin-top: 10px;}

#myPageMain {
    position: relative;
}

#withdraw-button {
    position: absolute;
    right: 0;
    font-size: 10pt;
    width: 80px;
    margin-right: 10px;
    border: 0;
    color: black;
}
.button-container {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
    width: 350px;
}
.petCard {width: 300px;}
.px-4 {padding: 2px 5px 2px 5px; width: 350px; }
.petBtn { width: 80px;}
.profil { padding-right: 5px; padding-left: 5px; margin-right: 10px; margin-top: 10px;}
.myInfoDiv { padding-bottom: 20px;}

</style>
</head>
<body>
			<h3><span class="badge">내 정보 관리</span></h3> <!-- 첫 요청 시 채워진 상태. 한 마디로 내 정보 관리==업데이트폼 -->
			<div class="row" style="border-bottom: 2px solid black; margin-bottom: 20px;">
				
				<div class="myInfoDiv"><!-- 내 정보 시작 -->
					<form class="form" action="" method="post">
					
						<span class="badge myInfo">아이디</span>
				        <div class="input-container">
				          <input type="text" name="jmId" id="jmId">
				          <button type="button" id="checkUserIdBtn">중복확인</button>
				        </div>
				        
				        <span class="badge myInfo">닉네임</span>
				        <input type="text" name="jmName" id="jmName" style="width: 100%;">
				        
				        <div class="select-container">
				          <label for="gender"><span class="badge myInfo">성별</span></label>
				          <select id="jmGender" name="jmGender">
				            <option value="1">남자</option>
				            <option value="2">여자</option>
				          </select>
				        </div>
				        
				        <span class="badge myInfo">프로필사진</span>
				        <img alt="기존 프로필사진" src="...">
				        <input type="file" name="jmImage" id="jmImage" accept="image/*" style="display: block;">
				        
				        <span class="badge myInfo">닉네임</span>
				        <div class="input-container">
				          <input type="text" name="jmNickName" id="jmNickName">
				          <button type="button" id="checkUserNickBtn">중복확인</button>
				        </div>
									
				        <span class="badge myInfo">전화번호</span>
				        <div class="input-container">
				         <input type="tel" name="jmTel" id="jmTel">
				         <button type="button" id="telCheck">인증번호</button>
				        </div>
				        
				        <span class="badge myInfo">주소</span>
				        <div class="input-container">
				         <input type="text"name="jmAddr1" id="jmAddr1">
				         <button type="button" id="checkZipcodeBtn">우편번호</button>
				        </div>
				        <input type="text" name="jmZipCode" id="jmZipCode" style="width: 100%;">
				        
				        <span class="badge myInfo">상세주소</span>
				        <input type="text" name="jmAddr2" id="jmAddr2" style="width: 100%;">
				        
				        <br />
				        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
				        <br />
				        
				        <button type="button" id="" class="detailBtn">수정하기</button>
				        <button type="button" id="" class="detailBtn">되돌리기</button>
				        <button type="button" class="detailBtn" style="width: 180px;">비밀번호 재설정</button><!-- 비밀번호재설정페이지로 보내기 -->
			      </form>
		      </div><!-- 내 정보 끝 -->
		      <button type="button" id="withdraw-button" class="detailBtn">탈퇴하기</button>		      
			</div><!-- 1행 끝 -->
			
			 
			<h3><span class="badge">반려견 관리</span></h3>
			<div class="row"> 
			
			<div class="col-md-6"><!-- 2행 1열 시작 -->
				<div><!-- 반려견 카드 목록 시작 -->
				
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
								<button type="button" id="" class="detailBtn petBtn">수정하기</button>
								<button type="button" id="" class="detailBtn petBtn">되돌리기</button>
								<button type="button" id="" class="detailBtn petBtn">삭제하기</button>
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
						</ul>
						<button type="button" id="" class="detailBtn petBtn">수정하기</button>
						<button type="button" id="" class="detailBtn petBtn">되돌리기</button>
						<button type="button" id="" class="detailBtn petBtn">삭제하기</button>
					</div>
				
				</div><!-- 반려견 카드 목록 끝 -->
				
			</div><!-- 2행 1열 끝 -->
			
			<div class="col-md-6" id="petRigthDiv"><!-- 2행 2열 시작 -->
				<button type="button" id="petInsertForm">반려견 등록하기</button>
				
			</div><!-- 2행 2열 끝 -->
		
		      
		</div><!-- 2행 끝 -->
</body>
</html>




