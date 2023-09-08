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
	
	function openPopup()
	{	
		window.open("petinsertpage.action", "petInsertPageWindow", "width=800,height=800");
	}

</script>

<style type="text/css">

.px-4 { height: 53px;}

.input-container, .select-container { margin-bottom: 15px;}

</style>

</head>
<body>
			<!-- 첫 요청 시 채워진 상태. 한 마디로 내 정보 관리==업데이트폼 -->
			<div class="row">
				<!-- 내 정보 시작 -->
				<div class="col-md-6 container-mypage" style="overflow: auto; height: 1000px;">
				<h3><span class="badge">내 정보 관리</span></h3>
				
				<form class="form" id="infoForm" action="" method="post">
				
					<div class="input-container">
					<label for="jmName" class="smallTitle">프로필 사진 </label><br>
					<input type="file" name="jmImage" id="jmImage" accept="image/*"
						style="display: block;">
					</div>
					
					<div class="select-container ">
						<label for="jmGender" class="smallTitle">성별 선택</label><br>
						<select name="jmGen" id="jmGen">
							<option value="-1">--성별 선택--</option>
							<option value="남">남성</option>
						    <option value="여">여성</option>
					    </select>
					</div>
					
					<div class="input-container ">
					<label for="jmName" class="smallTitle">이름 </label><br>
					<input type="text" placeholder="이름" name="jmName" 
						id="jmName" onkeyup="characterCheck(this)" onkeydown="characterCheck(this)"
						>
					</div>
					
					<div class="input-container ">
					<label for="jmSsn" class="smallTitle">주민등록번호</label><br>
						<input type="text" placeholder="주민번호 앞자리" name="jmSsn1"
							id="jmSsn1" style="width: 40%;"maxlength="6" onkeyup="numberCheck(this)" 
							onkeydown="numberCheck(this)">&nbsp;-&nbsp;
							<input type="password" placeholder="주민번호 뒷자리" name="jmSsn2"
							id="jmSsn2" style="width: 40%;"maxlength="7" 
							 onkeyup="numberCheck(this)" 
							onkeydown="numberCheck(this)">
					</div>
					
					<div class="input-container ">
					 <label for="jmId" class="smallTitle">아이디 </label><br>
						<input type="text" placeholder="아이디" name="jmId"
							id="jmId" onkeyup="characterCheck(this)" onkeydown="characterCheck(this)">
						<button type="button" id="checkUserIdBtn" value="0">중복확인</button>
					</div>
					
					<div class="input-container">
					<label for="password" class="smallTitle">패스워드</label><br> 
						<input type="password" placeholder="비밀번호" name="jmPw"
							id="jmPw" style="width: 50%;">
					</div>
	
					<div class="input-container">
					<label for="password" class="smallTitle">패스워드 확인</label><br> 
						<input type="password" placeholder="비밀번호 재입력"
							name="userPwCheck" id="userPwCheck" style="width: 50%;">
						<!-- 비밀번호 재확인시 위의 입력값과 다르다면 다시 설정하도록 -->
						
					</div>
					
					<div class="input-container ">
					<label for="jmNickName" class="smallTitle">닉네임</label><br>
						<input type="text" placeholder="닉네임"
							name="jmNickName" id="jmNickName" onkeyup="characterCheck(this)"
							onkeydown="characterCheck(this)">
						<button type="button" id="checkUserNickBtn" value="0">중복확인</button>
					</div>
	
					<div class="input-container ">
					<label for="jmTel" class="smallTitle">전화번호</label><br>
						<input type="tel" value="010" name="jmTel1"
							id="jmTel1" style="width: 10%;" maxlength="3" 
							onkeyup="numberCheck(this)" onkeydown="numberCheck(this)">&nbsp;-&nbsp;
							<input type="tel" name="jmTel2"
							id="jmTel2" style="width: 10%;" maxlength="4"
							onkeyup="numberCheck(this)" onkeydown="numberCheck(this)">&nbsp;-&nbsp;
							<input type="tel"  name="jmTel3"
							id="jmTel3" style="width: 10%;" maxlength="4"
							onkeyup="numberCheck(this)" onkeydown="numberCheck(this)">
						<button type="button" id="telCheck">인증번호</button>
					</div>
					
					<div class="input-container">
					<label for="jmZipCode" class="smallTitle">우편번호</label><br>
						<input type="text" id="jmZipCode" name="jmZipCode"
							placeholder="우편번호" onclick="execDaumPostcode()" style="cursor: pointer;" readonly="readonly">
						<button type="button" onclick="execDaumPostcode()"
							style="font-size: 95%; " >우편번호 찾기</button>
					</div>
					<div class="input-container">
						<label for="jmAddr1" class="smallTitle">주소</label><br>
						<input type="text" id="jmAddr1" name="jmAddr1" placeholder="도로명 주소"
						onclick="execDaumPostcode()" readonly="readonly" style="cursor: pointer;"><br>
					</div>
					<div class="input-container">
						<label for="jmAddr2" class="smallTitle">상세주소</label><br>
						<input type="text" id="jmAddr2" name="jmAddr2" placeholder="상세주소">
					</div>
					
					<input type="hidden" id="extraAddr" name="jmExtraAddr" placeholder="참고항목">
	
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
													extraAddr = extraAddr;
												}
												// 조합된 참고항목을 해당 필드에 넣는다.
												document
														.getElementById("extraAddr").value = extraAddr;
	
											} else
											{
												document
														.getElementById("extraAddr").value = '';
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
	
					<div style="display: none;"><input name="jmSsn" id="jmSsn" pattern="[0-9-]+"></div>
					<div style="display: none;"><input name="jmTel" id="jmTel" pattern="[0-9-]+"></div>
					
					<div style="text-align: right; margin-top: 20px;">
					<button type="button" id="reset-button">초기화하기</button>
					<button type="button" id="update-button" style="background-color:#53e3a6; color: white;">회원정보 수정</button>
					</div>	
					
			    </form>
			      
		      </div>
		      <!-- 내 정보 끝 -->
			
			<script type="text/javascript">
			$(function()
			{
				// 중복 여부 버튼 텍스트 자체를 바꿈  + 포커스 들어왔을땐 다시 버튼 초기화
				$("#jmId").focus(function()
				{
					$("#checkUserIdBtn").html("중복확인").val("0");
					$("#checkUserIdBtn").css("background-color", "white");
					$("#checkUserIdBtn").css("color", "#53e3a6"); 
					
					
				});
				
				
				
				// 중복 여부 버튼 텍스트 자체를 바꿈 + 포커스 들어왔을땐 다시 버튼 초기화
				$("#jmNickName").focus(function()
				{
					$("#checkUserNickBtn").html("중복확인").val("0");
					$("#checkUserNickBtn").css("background-color", "white");
					$("#checkUserNickBtn").css("color", "#53e3a6"); 
					
					
				});
				
				$("#checkUserIdBtn").click(function()
				{
					if ($("#jmId").val() != "")
					{
						var params = "jmId=" + $("#jmId").val();
	
						/* jQuery로 ajax 처리하기 */
						$.ajax(
						{
	
							type : "POST",
							url : "searchidform.action",
							data : params,
							datayType : "json",
							success : function(jsonObj)
							{
								if (jsonObj == 0)
								{
									$("#checkUserIdBtn").html("사용가능").val("1");	// value 값을 확인해서 중복확인 체크
									$("#checkUserIdBtn").css("background-color", "#007bff");
									$("#checkUserIdBtn").css("color", "white"); // 텍스트 색상 변경
								} else
								{
									$("#checkUserIdBtn").html("사용불가").val("0");
									$("#checkUserIdBtn").css("background-color", "red");
									$("#checkUserIdBtn").css("color", "white"); 
								}
	
							},
							error : function(e)
							{
								alert(e.responseText);
							}
	
						});
					} else
					{
						$("#checkUserIdBtn").html("입력없음").val("0");
						$("#checkUserIdBtn").css("background-color", "red");
						$("#checkUserIdBtn").css("color", "white");
					}
				});
	
				$("#checkUserNickBtn").click(function()
				{
					if ($("#jmNickName").val() != "")
					{
						var params = "jmNickName=" + $("#jmNickName").val();
	
						$.ajax(
						{
	
							type : "POST",
							url : "searchnickform.action",
							data : params,
							datayType : "json",
							success : function(jsonObj)
							{
								if (jsonObj == 0)
								{
									$("#checkUserNickBtn").html("사용가능").val("1");
									$("#checkUserNickBtn").css("background-color", "#007bff");
									$("#checkUserNickBtn").css("color", "white"); // 텍스트 색상 변경
								} else
								{
									$("#checkUserNickBtn").html("사용불가").val("0");
									$("#checkUserNickBtn").css("background-color", "red");
									$("#checkUserNickBtn").css("color", "white"); 
								}
	
							},
							error : function(e)
							{
								alert(e.responseText);
							}
	
						});
	
					} else
					{
						$("#checkUserNickBtn").html("입력없음").val("0");
						$("#checkUserNickBtn").css("background-color", "red");
						$("#checkUserNickBtn").css("color", "white");
					}
	
				});
	
				$("#update-button").click(
						function(event)
						{
							
							if ($("#jmId").val() == "" 
									|| $("#jmPw").val() == ""
									|| $("#userPwCheck").val() == ""
									|| $("#jmName").val() == ""
									|| $("#jmSsn1").val() == ""
									|| $("#jmSsn2").val() == ""
									|| $("#jmGen").val() == ""
									|| $("#jmNickName").val() == ""
									|| $("#jmTel1").val() == ""
									|| $("#jmTel2").val() == ""
									|| $("#jmTel3").val() == ""
									|| $("#jmAddr1").val() == ""
									|| $("#jmAddr2").val() == ""
									|| $("#jmZipCode").val() == "")
							{
								alert("필수 항목들을 모두 입력해 주세요");
								return;
							}
							if ($("#checkUserIdBtn").val() != "1" || $("#checkUserNickBtn").val() != "1")
								{
									alert("중복확인은 필수입니다");
									return;
								}
							
							// ssn1 과 ssn2 / tel1,tel2,tel3 를 합쳐 display none 으로 설정된 input 값을 넘김
							var jmSsn = $("#jmSsn1").val() +"-"+ $("#jmSsn2").val()
							var jmTel = $("#jmTel1").val() +"-"+ $("#jmTel2").val()+"-"+ $("#jmTel3").val()
							$("#jmSsn").val(jmSsn);
							$("#jmTel").val(jmTel);
							$(".form").submit();
						});
				
				
				$("#reset-button").click(function()
				{
					$("#infoForm")[0].reset();
	
				});
	
			});
			
			// 패스워드 input 태그에서 포커싱이 나갔을때 호출
			$("#jmPw").blur(function() 
			{
				
				if ($("#jmPw").val()!="")
				{
					validationPassword();
						
				}
			    
			});
			
			// 패스워드확인 input 태그에서 포커싱이 나갔을때 호출
			$("#userPwCheck").blur(function() 
			{
				
				if ($("#userPwCheck").val()!="")
				{
					checkPwd();
						
				}
			    
			});
			
			function checkPwd()
			{
				var pw1 = $("#jmPw").val();
				var pw2 = $("#userPwCheck").val();
	
				if (pw1 != pw2)
				{
					alert("비밀번호가 일치하지 않습니다");	
					$("#userPwCheck").val("");
					$("#userPwCheck").focus();
				}
	
				//validationPassword();
			}
			
			// 비밀번호 형식 오류시 비우고 다시 포커싱
			function validationPassword()
			{
				var pw1 = $("#jmPw").val();
				var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
	
				if (!re.test(pw1))
				{
					alert("비밀번호는 숫자, 소문자, 대문자를 포함해 8자리 이상이어야 합니다.");		
					$("#jmPw").val("");
					$("#jmPw").focus();
					return false;
				}
	
				return true;
	
			}
		</script>
	<script>
		// 특수문자 입력 방지
		function characterCheck(obj)
		{
			var regExp = /[ \{\}\[\]\/?.,;:|\)*~`!^\-_+┼<>@\#$%&\'\"\\\(\=]/gi; 
			// 허용할 특수문자는 여기서 삭제하면 됨
			// 지금은 띄어쓰기도 특수문자 처리됨 참고하셈
			if( regExp.test(obj.value) )
			{
				alert("특수문자는 입력하실수 없습니다.");
				obj.value = obj.value.substring( 0 , obj.value.length - 1 ); // 입력한 특수문자 한자리 지움
			}
		}
		
		function numberCheck(obj) {
		    var regExp = /[^0-9]/g;
		    if (regExp.test(obj.value)) {
		        alert("숫자만 입력하실 수 있습니다.");
		        obj.value = obj.value.replace(regExp, ""); // 숫자 이외의 문자 제거
		    }
		}
	</script>
			
			<!-- 1행 1열 끝 -->
			
			
			<!-- 1행 2열 시작 --> 
			<div class="col-md-6 container-mypage" style="overflow: auto; height: 1000px;">
			<h3><span class="badge">반려견 관리</span>
			 <button type="button" class="petInsertBtn" id="petInsertBtn" onclick="openPopup()">✚</button></h3>
			
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




