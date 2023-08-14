<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄장소수정폼</title>

<style type="text/css">

</style>

</head>
<body>

<div class="row" id="sittingPlaceDiv">

	<div class="col container-mypage" style="width: 780px; margin-left: 5%;">
		<div class="row">	
			<div class="col-md">	
				<span class="badge">${info.jmNickName }님의 돌봄장소 수정하기</span>
			</div>
		</div>
			
		<div class="infoOneNoline">
		    <h4><span class="smallTitle">돌봄장소 특이사항</span></h4>
		    
		    <div class="original" style="margin-bottom: 20px;">
		    <span class="" style="font-size: 13pt; font-weight: bold;">기존에 선택된 돌봄장소 특이사항</span><br>
		    <c:forEach items="${tags }" var="tag">
					<button class="btn btn-warning">${tag.isptName}</button>
			</c:forEach>
			</div>
			
			<span class="" style="font-size: 13pt; font-weight: bold;">새로 선택할 돌봄장소 특이사항</span><br>
		    <div class="checkBox">
			  <input type="checkbox" id="homeCam" value="1">
			  <label for="homeCam">홈캠 가능</label>
			</div>
			
			<div  class="checkBox">
			  <input type="checkbox" id="play" value="2">
			  <label for="emergencyTreatment">놀이가능</label>
			</div>
			
			<div  class="checkBox">
			  <input type="checkbox" id="bathing" value="3">
			  <label for="bathing">목욕 가능</label>
			</div>
			
			<div  class="checkBox">
			  <input type="checkbox" id="emergencyTreatment" value="4">
			  <label for="emergencyTreatment">응급처치 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="petOwner" value="5">
			  <label for="petOwner">반려견 있음</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="detailedTimeline" value="6">
			  <label for="detailedTimeline">꼼꼼한 타임라인</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="haircare" value="7">
			  <label for="haircare">모발관리 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="noSmoke" value="8">
			  <label for="haircare">비흡연자</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="disabledCare" value="9">
			  <label for="disabledCare">장애견 케어 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="seniorDog" value="10">
			  <label for="seniorDog">노견 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="smallMediumDog" value="11">
			  <label for="smallMediumDog">소/중형견 가능</label>
			</div>
			
			<div class="checkBox">
			  <input type="checkbox" id="largeDog">
			  <label for="largeDog">대형견 가능</label>
			</div>
		
		</div>	
		<div class="infoOneNoline">	
		    <h4><span class="smallTitle">최대 가능 견수</span></h4>
		    
		    <div class="original" style="margin-bottom: 20px;">
		    <span class="" style="font-size: 13pt; font-weight: bold;">기존에 선택된 최대 가능 견수</span><br>
		    <button class="btn btn-warning">${info.spMaxPet }마리</button>
			</div>
			
			<span class="" style="font-size: 13pt; font-weight: bold;">새로 선택할 최대 가능 견수</span><br>
		   	<select name="max-dog" id="max-dog" class="form-select form-select-lg mb-3" aria-label="Large select example"
		   			style="width: 400px;">
		    		<option value="1">1마리</option>
		    		<option value="2">2마리</option>
		    		<option value="3">3마리</option>
		    		<option value="4">4마리</option>
		    		<option value="5">5마리</option>
		    </select>
		</div>
		    
		<div class="infoOneNoline">   
		    <h4><span class="smallTitle">돌봉장소 사진</span></h4>
		    <input type="file">
		</div>
		
		    
		<div class="infoOneNoline">
		  	<h4><span class="smallTitle">돌봄장소 이름</span></h4>
		    <input type="text" id="" class="" value="${info.sptitle }" style="width: 80%;">
		</div>    
		    
		<div class="infoOneNoline">   
		  	<h4><span class="smallTitle">돌봄장소 소개</span></h4>
		    <textarea rows="5" cols="80">${info.spContent }</textarea>
		</div>
			
		<div class="infoOneNoline">    
	        <h4><span class="smallTitle">주소</span></h4>
		    <div class="input-container">
	        	<input type="text"name="jmAddr1" id="jmAddr1" value="${info.spAddr1 }" readonly="readonly">
	        	<button type="button" id="checkZipcodeBtn">우편번호</button>
	        </div>
	        <input type="text" name="jmZipCode" id="jmZipCode">
	    </div>
	    
	    <div class="infoOneNoline">      
	        <h4><span class="smallTitle">상세주소</span></h4>
	        <input type="text" name="jmAddr2" id="jmAddr2" value="${info.spAddr2 }" readonly="readonly">
	    </div>
			
		<div class="infoOneNoline">
			<h4><span class="smallTitle">돌봄장소 공개/비공개</span></h4>
			<div class="original" style="margin-bottom: 20px;">
		    <span class="" style="font-size: 13pt; font-weight: bold;">기존 설정</span><br>
		    <button class="btn btn-warning">
				<c:choose>
					<c:when test="${info.ipSid eq 1}">공개</c:when>
					<c:otherwise>비공개</c:otherwise>
				</c:choose>
			</button>
			</div>
			
			<span class="" style="font-size: 13pt; font-weight: bold;">새 설정</span><br>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="visibility" id="public" value="public">
			    <label class="form-check-label" for="public">공개</label>
			</div>
			<div class="form-check">
			    <input class="form-check-input" type="radio" name="visibility" id="private" value="private">
			    <label class="form-check-label" for="private">비공개</label>
			</div>
		</div>
		
	</div><!-- 1행 1열 끝 -->

	
	<div class="col container-mypage" style="width: 780px;">
		<h4><span class="smallTitle">휴일 설정</span></h4>
		
		
		<button type="button" class="detailBtn" style="margin-left: 80%;">돌봄장소 수정완료</button>
	
		
		<h4><span class="smallTitle">운영 시간</span></h4>
		<div class="form-group">
		  <label for="open-time"><span class="">시작 시간</span></label>
		  <select class="form-select" id="open-time">
		    <option value="1">1:00</option>
		    <option value="2">2:00</option>
		    <option value="3">3:00</option>
		    <option value="4">4:00</option>
		    <option value="5">5:00</option>
		    <option value="6">6:00</option>
		    <option value="7">7:00</option>
		    <option value="8">8:00</option>
		    <option value="9">9:00</option>
		    <option value="10">10:00</option>
		    <option value="11">11:00</option>
		    <option value="12">12:00</option>
		    <option value="13">13:00</option>
		    <option value="14">14:00</option>
		    <option value="15">15:00</option>
		    <option value="16">16:00</option>
		    <option value="17">17:00</option>
		    <option value="18">18:00</option>
		    <option value="19">19:00</option>
		    <option value="20">20:00</option>
		    <option value="21">21:00</option>
		    <option value="22">22:00</option>
		    <option value="23">23:00</option>
		    <option value="24">24:00</option>
		  </select>
		</div>
		
		<div class="form-group">
		  <label for="close-time"><span class="">종료 시간</span></label>
		  <select class="form-select" id="close-time">
		    <option value="1">1:00</option>
		    <option value="2">2:00</option>
		    <option value="3">3:00</option>
		    <option value="4">4:00</option>
		    <option value="5">5:00</option>
		    <option value="6">6:00</option>
		    <option value="7">7:00</option>
		    <option value="8">8:00</option>
		    <option value="9">9:00</option>
		    <option value="10">10:00</option>
		    <option value="11">11:00</option>
		    <option value="12">12:00</option>
		    <option value="13">13:00</option>
		    <option value="14">14:00</option>
		    <option value="15">15:00</option>
		    <option value="16">16:00</option>
		    <option value="17">17:00</option>
		    <option value="18">18:00</option>
		    <option value="19">19:00</option>
		    <option value="20">20:00</option>
		    <option value="21">21:00</option>
		    <option value="22">22:00</option>
		    <option value="23">23:00</option>
		    <option value="24">24:00</option>
		  </select>
		</div>
		 <button type="button" class="detailBtn" style="margin-left: 80%;">운영시간 수정완료</button><!-- 운영시간 등록완료 -->
		
	</div>	
	
</div>

</body>
</html>