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
			
			
		<%-- 	
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
		 --%>	
			<div class="infoOneNoline">
			<h4><span class="smallTitle">주소</span></h4>
			<div class="input-container">
				<label for="jmZipCode">우편번호</label>
					<input type="text" id="jmZipCode" name="jmZipCode" value="${info.spZipCode }"
						placeholder="우편번호" onclick="execDaumPostcode()" style="cursor: pointer;" readonly="readonly">
					<button type="button" onclick="execDaumPostcode()"
						style="font-size: 95%; " >우편번호 찾기</button>
				</div>
				<div class="input-container">
					<label for="jmAddr1">주소</label> 
					<input type="text" id="jmAddr1" name="jmAddr1" placeholder="도로명 주소" value="${info.spAddr1 }"
					onclick="execDaumPostcode()" readonly="readonly" style="cursor: pointer;"><br>
				</div>
				<div class="input-container">
					<label for="jmAddr2">상세주소</label>
					<input type="text" id="jmAddr2" name="jmAddr2"  value="${info.spAddr2 }" placeholder="상세주소">
				</div>
				
				<input type="hidden" id="extraAddress" value="${info.extraAddr }" placeholder="참고항목">

				<div id="layer"
					style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
						id="btnCloseLayer"
						style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
						onclick="closeDaumPostcode()" alt="닫기 버튼">
				</div>
				</div>
				<script
					src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
					// 우편번호 찾기 화면을 넣을 element
					var element_layer = document.getElementById('layer');

					function closeDaumPostcode()
					{
						// iframe을 넣은 element를 안보이게 한다.
						element_layer.style.display = 'none';
					}

					function execDaumPostcode()
					{
						new daum.Postcode(
								{
									oncomplete : function(data)
									{
										// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

										// 각 주소의 노출 규칙에 따라 주소를 조합한다.
										// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										var addr = ''; // 주소 변수
										var extraAddr = ''; // 참고항목 변수

										//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
										if (data.userSelectedType === 'R')
										{ // 사용자가 도로명 주소를 선택했을 경우
											addr = data.roadAddress;
										} else
										{ // 사용자가 지번 주소를 선택했을 경우(J)
											addr = data.jibunAddress;
										}

										// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
										if (data.userSelectedType === 'R')
										{
											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											if (data.bname !== ''
													&& /[동|로|가]$/g
															.test(data.bname))
											{
												extraAddr += data.bname;
											}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											if (data.buildingName !== ''
													&& data.apartment === 'Y')
											{
												extraAddr += (extraAddr !== '' ? ', '
														+ data.buildingName
														: data.buildingName);
											}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											if (extraAddr !== '')
											{
												extraAddr = ' (' + extraAddr
														+ ')';
											}
											// 조합된 참고항목을 해당 필드에 넣는다.
											document
													.getElementById("extraAddress").value = extraAddr;

										} else
										{
											document
													.getElementById("extraAddress").value = '';
										}

										// 우편번호와 주소 정보를 해당 필드에 넣는다.
										document.getElementById('jmZipCode').value = data.zonecode;
										document.getElementById("jmAddr1").value = addr;
										// 커서를 상세주소 필드로 이동한다.
										document.getElementById("jmAddr2")
												.focus();

										// iframe을 넣은 element를 안보이게 한다.
										// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
										element_layer.style.display = 'none';
									},
									width : '100%',
									height : '100%',
									maxSuggestItems : 5
								}).embed(element_layer);

						// iframe을 넣은 element를 보이게 한다.
						element_layer.style.display = 'block';

						// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
						initLayerPosition();
					}

					// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
					// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
					// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
					function initLayerPosition()
					{
						var width = 300; //우편번호서비스가 들어갈 element의 width
						var height = 400; //우편번호서비스가 들어갈 element의 height
						var borderWidth = 5; //샘플에서 사용하는 border의 두께

						// 위에서 선언한 값들을 실제 element에 넣는다.
						element_layer.style.width = width + 'px';
						element_layer.style.height = height + 'px';
						element_layer.style.border = borderWidth + 'px solid';
						// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
						element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
								+ 'px';
						element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
								+ 'px';
					}
				</script>
			
			
			
			
			
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