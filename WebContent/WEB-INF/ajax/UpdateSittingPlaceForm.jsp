<%@page import="org.springframework.ui.Model"%>
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
<link rel="icon" href="./images/logo_transparent.png" />
<meta charset="UTF-8">

<title>마이페이지_펫시팅_돌봄장소_수정</title>

<!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

<style type="text/css">

@import url('https://fonts.googleapis.com/css?family=Jua:400');

*{font-family: "Jua";}

.container .input-container {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
}

.container .input-container input {
  flex: 1;
}

.container .input-container button {

  background-color: white;
  border: 0;
  padding: 5px 10px;
  color: #53e3a6;
  border-radius: 3px;
  cursor: pointer;
  font-size: 14px;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
  margin-left: 10px;
}

.container .input-container button {
  /* Updated style for the buttons */
  background-color: white;
  border: 0;
  padding: 10px 15px; /* Changed the padding to match the text boxes */
  color: #53e3a6;
  border-radius: 3px;
  cursor: pointer;
  font-size: 18px; /* Changed the font size to match the text boxes */
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
  margin-left: 10px;
}

.button-container {
  display: flex;
  justify-content: center;
}

</style>

<script type="text/javascript">
	
	
	$(function()
	{
		// 돌봄장소 수정하기를 누르면
		$("#updatePlace").click(function()
		{
			$("#updatePlaceForm").submit();

		});

	});
	
	 
</script>

</head>
<body>	
<form action="<%=cp%>/updatePlace.action" id="updatePlaceForm" enctype="multipart/form-data" method="post">
	<div class="bg-light">
		<div class="container">
			<div class="row">	
				<div class="col-md"><span class="badge">돌봄장소 수정하기</span></div>
				<input type="hidden" id="spSid" name="spSid" value="${info.spSid }">
				<input type="hidden" id="sphSid" name="sphSid" value="${info.sphSid }">
			</div>
				
				<div class="cal-md">
				<div class="infoOne" style="margin-top: 10px;">	
					<h4><span class="smallTitle">운영시간 설정</span></h4>
					
					<label for="myTime" class="form-label">기존 운영시간</label>
					<span class="smallText" id ="myTime">${info.sphStart } ~ ${info.sphEnd }</span>
					
					<div class="oneText row">
						<div class="col">
							<label for="timeSelect">시작 시간</label>
							<select	class="form-control" id=sphStart name="sphStart" style="width: 250px;">
								<option value="00:00">00:00</option>
								<option value="01:00">01:00</option>
								<option value="02:00">02:00</option>
								<option value="03:00">03:00</option>
								<option value="04:00">04:00</option>
								<option value="05:00">05:00</option>
								<option value="06:00">06:00</option>
								<option value="07:00">07:00</option>
								<option value="08:00">08:00</option>
								<option value="09:00">09:00</option>
								<option value="10:00">10:00</option>
								<option value="11:00">11:00</option>
								<option value="12:00">12:00</option>
								<option value="13:00">13:00</option>
								<option value="14:00">14:00</option>
								<option value="15:00">15:00</option>
								<option value="16:00">16:00</option>
								<option value="17:00">17:00</option>
								<option value="18:00">18:00</option>
								<option value="19:00">19:00</option>
								<option value="20:00">20:00</option>
								<option value="21:00">21:00</option>
								<option value="22:00">22:00</option>
								<option value="23:00">23:00</option>
							</select>
						</div>

						<div class="col">
							<label for="timeEndSelect">종료 시간</label>
							 <select class="form-control" id="sphEnd" name="sphEnd" style="width: 250px;">
								<option value="00:00">00:00</option>
								<option value="01:00">01:00</option>
								<option value="02:00">02:00</option>
								<option value="03:00">03:00</option>
								<option value="04:00">04:00</option>
								<option value="05:00">05:00</option>
								<option value="06:00">06:00</option>
								<option value="07:00">07:00</option>
								<option value="08:00">08:00</option>
								<option value="09:00">09:00</option>
								<option value="10:00">10:00</option>
								<option value="11:00">11:00</option>
								<option value="12:00">12:00</option>
								<option value="13:00">13:00</option>
								<option value="14:00">14:00</option>
								<option value="15:00">15:00</option>
								<option value="16:00">16:00</option>
								<option value="17:00">17:00</option>
								<option value="18:00">18:00</option>
								<option value="19:00">19:00</option>
								<option value="20:00">20:00</option>
								<option value="21:00">21:00</option>
								<option value="22:00">22:00</option>
								<option value="23:00">23:00</option>
							</select>
						</div>
						
					</div>
					</div>
					
					
					<h4><span class="smallTitle">돌봄장소 설정</span></h4>
					
					<div class="infoOne" style="margin-top: 10px;">
						<div class="mb-3">
							<label for="title" class="form-label">제목</label> 
							<input type="text" class="form-control" id="title" name="sptitle" value="${info.sptitle }"
							style="width: 700px;">
						</div>
					</div>
					
					<div class="infoOne" style="margin-top: 10px;">
						<div class="mb-3">
							<label for="content" class="form-label">소개글</label>
							<textarea class="form-control" id="content" name="spContent"
							rows="4" style="height: 200px;">${info.spContent }</textarea>
						</div>
					</div>
					
					<div class="infoOne" style="margin-top: 10px;">
						<label for="myMaxPet" class="form-label">기존 최대 반려견 수</label>
						<span class="smallText" id="myMaxPet">${info.spMaxPet }마리</span>
					
						<div class="mb-3">
							<label for="max-pet" class="form-label">최대 반려견 수</label> 
							<input type="text" class="form-control" name="spMaxPet" id="max-pet" placeholder="최대 반려견 수를 입력해주세요."
							style="width: 250px;">
						</div>
					</div>
					
					<div class="infoOne" style="margin-top: 10px;">
						<div class="mb-3">
							<label for="imageUpload" class="form-label">사진 등록</label><br>
							<input type="file" id="imageUpload" name="file" accept="image/*">
						</div>
					</div>
					
					
					<div class="infoOne" style="margin-top: 10px;">
					<span class="no" style="color: red; font-size: small;" >주소는 수정이 불가합니다. </span>
						<div class="">
						<label for="spZipCode">우편번호</label><br>
							<input type="text" id="spZipCode" name="spZipCode"
								placeholder="우편번호" style="cursor: pointer;" readonly="readonly"
								value="${info.spZipCode }">
						</div><br>
						<div class="">
							<label for="spAddr1">주소</label><br>
							<input type="text" id="spAddr1" name="spAddr1" placeholder="도로명 주소"
							readonly="readonly" style="width:300px; cursor: pointer;"
							value="${info.spAddr1 }"><br>
							<input type="text" id="extraAddr" name="extraAddr" placeholder="지역검색태그" readonly="readonly"
							value="${info.extraAddr }">
						</div><br>
						<div class="">
							<label for="spAddr2">상세주소</label><br>
							<input type="text" id="spAddr2" name="spAddr2" placeholder="상세주소" style="width:500px;" readonly="readonly"
							value="${info.spAddr2 }">
						</div>
					</div>
					
					<div id="layer"
						style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
						<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
							id="btnCloseLayer"
							style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
							onclick="closeDaumPostcode()" alt="닫기 버튼">
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
													extraAddr =  extraAddr;
															
												}
												// 조합된 참고항목을 해당 필드에 넣는다.
												document.getElementById("extraAddr").value = extraAddr;
	
											} else
											{
												document.getElementById("extraAddr").value = extraAddr;
											}
	
											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementById('spZipCode').value = data.zonecode;
											document.getElementById("spAddr1").value = addr;
											// 커서를 상세주소 필드로 이동한다.
											document.getElementById("spAddr2")
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
					
					<div class="infoOne" style="margin-top: 10px;">
						<label for="myTagLists" class="form-label">기존 돌봄장소 특이사항</label>
						<div class="mb-4" style="font-family: Jua; font-size: 25pt;">
							<c:forEach items="${myTags }" var="myTag">
								<button class="btn" style="margin: 5px; background-color: #4ceda7; color: white; padding: 10px 20px;"
								disabled="disabled">
								${myTag.isptName}</button>
							</c:forEach>
						</div>
	
						<!-- 사용자가 어필 태그를 선택 지정 -->
						<label for="selectedTags" class="form-label">돌봄장소 특이사항 선택</label>
						<div class="mb-4" style="font-family: Jua; font-size: 25pt;">
					
							<c:forEach var="tag" items="${tagList }">
								<button type="button" class="btn radio-button" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;"
								onclick="selectTag(${tag.isptSid})">${tag.isptName}</button>
							</c:forEach>
							
							<input type="hidden" name="selectedTags" id="selectedTags" value="">
						</div>
					</div>
					
					<div class="infoOne" style="margin-top: 10px;">
						<label for="myPublic" class="form-label">기존 돌봄장소 공개/비공개</label><br>
						<button class="btn" style="margin: 5px; background-color: #4ceda7; color: white; padding: 10px 20px;"
						disabled="disabled">
						<c:choose>
							<c:when test="${info.ipSid eq 1}">공개</c:when>
							<c:otherwise>비공개</c:otherwise>
						</c:choose>
						</button>
						
						<div class="mb-4">
							<label for="ipSidDiv" class="form-label">돌봄장소 공개/비공개</label>
							<span class="card-text"><small class="text-muted">비공개를 선택하면 펫시팅 페이지에서 노출되지 않습니다. </small></span>
							<div id="ipSidDiv">
								<div class="form-check">
								    <input class="form-check-input" type="radio" name="ipSid" id="public" value="1">
								    <label class="form-check-label" for="public">공개</label>
								</div>
								<div class="form-check">
								    <input class="form-check-input" type="radio" name="ipSid" id="private" value="2">
								    <label class="form-check-label" for="private">비공개</label>
								</div>
							</div>
						</div>
					</div>
					
					<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
					<script>
						
						$().ready(function()
						{							
							// 클릭한 버튼에 selected 클래스 추가 및 제거
							$('.radio-button').click(function()
							{
								$(this).toggleClass('selected');
								if ($(this).hasClass('selected'))
								{
									$(this).css('background-color', '#367539'); // 선택된 스타일로 변경
								} else
								{
									$(this).css('background-color', '#4caf50'); // 원래 스타일로 변경
								}
							});
						});
							
						
							/* 사용자가 선택한 어필태그 */
  							var selectedTags = [];

  							function selectTag(tagId) 
  							{
    							
  								var index = selectedTags.indexOf(tagId);
    							
    							if (index > -1)
      								selectedTags.splice(index, 1); // 태그를 해제
    							else
      								selectedTags.push(tagId); // 태그를 선택
   
    							document.getElementById('selectedTags').value = selectedTags.join(',');
  							}
  			            
  			                // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
  			                // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
  			                // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
  			                function initLayerPosition(){
  			                    var width = 300; //우편번호서비스가 들어갈 element의 width
  			                    var height = 300; //우편번호서비스가 들어갈 element의 height
  			                    var borderWidth = 5; //샘플에서 사용하는 border의 두께
  			            
  			                    // 위에서 선언한 값들을 실제 element에 넣는다.
  			                    element_layer.style.width = width + 'px';
  			                    element_layer.style.height = height + 'px';
  			                    element_layer.style.border = borderWidth + 'px solid';
  			                    // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
  			                    //element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
  			                    //element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
  			                    element_layer.style.left = 150 + 'px';
  			                    element_layer.style.top = 180 + 'px';
  			                }
  			              </script>
						<br>
					<br>
				</div>
				<div class="button-container">
					<button type="button" class="detailBtn" id="updatePlace">돌봄장소 수정하기</button>
				</div>
				<br>
			</div>
		</div>
	</div>
</form>

</body>
</html>




