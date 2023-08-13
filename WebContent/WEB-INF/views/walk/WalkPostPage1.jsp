<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String memSid = (String)session.getAttribute("memSid"); // 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png"/>
<meta charset="UTF-8"> 
<title>대리산책공고글올리기</title>

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

</head>
<body>
	<section>
		<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
		</c:import>
	</section>
	
	<form action="<%=application.getContextPath()%>/walkpostinsert.action" id="walkForm" enctype="multipart/form-data" method="post">
	<div class="bg-light">
		<div class="container">
			<br>
			<h1 class="text-center mb-4">대리산책 공고글 작성</h1>
			<div class="card" style="height: 600px; overflow-y: auto; margin-left: 40px;">
				
				<div class="cal-md">
					<div class="mb-3">
						<label for="title" class="form-label">제목</label> 
						<input type="text" class="form-control" id="title" name="wptitle" placeholder="제목을 입력해주세요.">
					</div>

					<div class="mb-3">
						<label for="content" class="form-label">소개글</label>
						<textarea class="form-control" id="content" name="wpcontent"
							placeholder="소개글을 입력해주세요." rows="4" style="height: 200px;"></textarea>
					</div>
					
					<div class="mb-3">
						<label for="max-pet" class="form-label">최대 반려견 수</label> 
						<input type="text" class="form-control" name="wpmaxpet" id="max-pet" placeholder="최대 반려견 수를 입력해주세요.">
					</div>
					
					<div class="mb-3">
						<label for="imageUpload" class="form-label">사진 등록</label><br>
						<input type="file" id="imageUpload" name="file" accept="image/*">
					</div>
					
					<br>
					                           <!-- jmAddr1 extraAddr -->
					<!-- 동 검색 구역 시작 --> <!-- wpaddr1  wpextraaddr -->
            		<input type="button" onclick="DaumPostcode()" value="지역 찾기">
            		<input type="text" id="wpaddr1" name="wpaddr1" placeholder="주소" readonly="readonly">
           			<input type="text" id="wpextraaddr" name="wpextraaddr" placeholder="동" readonly="readonly">

					<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
					<div id="layer" style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
					<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="닫기 버튼">
					</div>			
					<br><br><br>
					<div class="oneText row">
						<div class="col">
							<label for="timeSelect">서비스 가능 시간</label>
							<br>
							<span class="card-text"><small class="text-muted">시간 선택</small></span>
							<select	class="form-control" id="wpstart" name="wpstart">
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
							<label for="timeEndSelect">서비스 종료 시간</label>
							<br>
							<span class="card-text"><small class="text-muted">시간 선택</small></span>
							 <select class="form-control" id="wpend" name="wpend">
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
					<br>

					<!-- 사용자가 어필 태그를 선택 지정 -->
					<label for="selectedTags" class="form-label">어필태그 선택</label>
					<div class="mb-4" style="font-family: Jua; font-size: 25pt;">
						<c:forEach var="dto" items="${IndexTagList }">
							<button type="button" class="btn radio-button" style="margin: 5px; background-color: #4caf50; color: white; padding: 10px 20px;"
							onclick="selectTag(${dto.iwptsid})">${dto.iwptname}</button>
						</c:forEach>
						<input type="hidden" name="selectedTags" id="selectedTags" value="">
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
							

  			               // 우편번호 찾기 화면을 넣을 element
  			               var element_layer = document.getElementById('layer');
  			            
  			               function closeDaumPostcode() {
  			                   // iframe을 넣은 element를 안보이게 한다.
  			                   element_layer.style.display = 'none';
  			                } 
  			               
  			                
  			                function DaumPostcode() {
  			                    new daum.Postcode({
  			                        oncomplete: function(data) {
  			                            // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
  			                            
  			                           // 각 주소의 노출 규칙에 따라 주소를 조합한다.
  			                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
  			                            var addr = ''; // 주소 변수
  			                            var extraAddr = ''; // 참고항목 변수
  			            
  			                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
  			                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
  			                                addr = data.roadAddress;
  			                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
  			                                addr = data.jibunAddress;
  			                            }
  			            
  			                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
  			                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
  			                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
  			                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
  			                                    extraAddr += data.bname;
  			                                }
  			                                // 건물명이 있고, 공동주택일 경우 추가한다.
  			                                if(data.buildingName !== '' && data.apartment === 'Y'){
  			                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
  			                                }
  			                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
  			                                if(extraAddr !== ''){
  			                                    extraAddr = extraAddr;
  			                                }
  			                                // 조합된 참고항목을 해당 필드에 넣는다.
  			                                document.getElementById("wpextraaddr").value = extraAddr;
  			                            
  			            
  			                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
  			                            document.getElementById("wpaddr1").value = addr;
  			            
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
					<button type="button" class="btn btn-success test-btn" style="width: 130px; font-size: 1.2rem;">공고글 등록하기</button>
				</div>
				<br>
			</div>
		</div>
	</div>
	</form>
	
	<script type="text/javascript">
		
	$().ready(function()
		{
			$(".test-btn").click(function()
			{
				$("#walkForm").submit();
				
			});
		});
	</script>
	
	<section>
		<c:import url="/WEB-INF/components/index/FooterForm.jsp">
		</c:import>
	</section>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>