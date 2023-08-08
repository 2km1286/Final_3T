<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>로그인폼</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  font-weight: 300;
}

body {
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh; /* 뷰포트 높이에 맞춤 */
  
  background: #50a3a2;
  background-image: url("images/login_bg.png");
  background-size: cover;
  
  
}
body ::-ms-input-placeholder {
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}

body ::-webkit-input-placeholder {
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}


.wrapper {
  max-width: 800px;
  padding: 80px 0;
  text-align: center;
}

.wrapper.form-success .container h1 {
  -webkit-transform: translateY(85px);
  transform: translateY(85px);
}

.container {
  margin: 0 auto;
  height: auto;
  text-align: center;
  padding: 30px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid white; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
  width: 600px;

  
}



.container h1 {
  font-size: 40px;
  -webkit-transition-duration: 1s;
  transition-duration: 1s;
  -webkit-transition-timing-function: ease-in-out;
  transition-timing-function: ease-in-out;
  font-weight: 200;
}

form {
  padding: 20px 0;
  position: relative;
  z-index: 2;
}

form input {

  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  outline: 0;
  border: 1px solid rgba(255, 255, 255, 0.4);
  background-color: rgba(255, 255, 255, 0.2);
  width: 450px;
  border-radius: 3px;
  padding: 10px 15px;
  margin: 0 auto 10px auto;
  display: block;
  text-align: center;
  font-size: 18px;
  color: white;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
  font-weight: 300;
}

form input:hover {
  background-color: rgba(255, 255, 255, 0.4);
}

form input:focus {
  background-color: white;
  width: 500px;
  color: #53e3a6;
}

form button {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  outline: 0;
  background-color: white;
  border: 0;
  padding: 10px 15px;
  color: #53e3a6;
  border-radius: 3px;
  height: auto;

  cursor: pointer;
  font-size: 18px;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
  width: 120px;
}

form button:hover 
{
  background-color: #f5f7f9;
}

.container .select-container {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
}

.container .select-container label {
  margin-right: 10px;
}

.container .select-container select 
{
  width: 200px;
  padding: 5px;
  background-color: rgba(255, 255, 255, 0.2); 
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.4);
  border-radius: 3px;
  font-size: 16px;
  font-weight: 300;
  outline: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.container .select-container select option 
{
  background-color: rgba(80, 163, 162, 0.9); 
  color: white;
  font-weight: 300;
}

.container .select-container select:hover 
{
  background-color: rgba(255, 255, 255, 0.4);
}

.container .select-container select:focus 
{
  background-color: white;
  color: #53e3a6;
}


</style>
<!-- FONT jua -->
  <style>
  @import url('https://fonts.googleapis.com/css?family=Jua:400');
  h1,button
  {
     font-family: "Jua";
     font-weight: Regular;
  }
  input
  {
     font-family: "Jua";
     font-weight: normal;
  }
  
  .logo {
  max-width: 150px;
  margin-bottom: 20px;
}

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

form input[name="userId"] {
  width: 350px; /* Reduced the width to 350px */
}

form input[name="userNick"] {
  width: 350px; /* Reduced the width to 350px */
}





  
</style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>회원가입</h1>
      
      <form class="form" action="join.action" method="post">
         <div class="input-container">
          <input type="text" placeholder="사용하실 아이디를 입력해주세요." name="jmId" id="jmId">
          <button type="button" id="checkUserIdBtn">중복확인</button>
          <span id="result"></span>
        </div>
        <input type="text" placeholder="이름을 입력해주세요." name="jmName" id="jmName" style="width: 100%;">
        
        
        <div class="select-container">
          <label for="gender">성별 선택</label>
          <select id="jmGender" name="jmGender">
            <option value="1">남자</option>
            <option value="2">여자</option>
          </select>
        </div>
        
        
        <input type="file" name="jmImage" id="jmImage" accept="image/*" style="display: block;">
        
   
        <div class="input-container">
        <input type="password" placeholder="사용하실 비밀번호를 입력해주세요." name="jmPw" id="jmPw" style="width: 100%;">
        </div>
        
        <div class="input-container">
        <input type="password" placeholder="비밀번호를 한번 더 입력해주세요."name="userPwCheck" id="userPwCheck" style="width: 100%;" onkeyup="checkPwd()">
        <span id="pwdConfirm"></span> <!-- 비밀번호 재확인시 위의 입력값과 다르다면 다시 설정하도록 -->
        </div>
        
        <div class="input-container">
          <input type="text" placeholder="사용하실 닉네임을 입력해주세요." name="jmNickName" id="jmNickName">
          <button type="button" id="checkUserNickBtn">중복확인</button>
          <span id="resultNick"></span>
        </div>
        
       <div class="input-container">
        <input type="text" placeholder="주민등록번호를 입력해주세요." name="jmSsn" id="jmSsn" style="width: 40%;">
      </div>

        
       <div class="input-container">
        <input type="tel" placeholder="전화번호를 입력해주세요." name="jmTel" id="jmTel">
        <button type="button" id="telCheck">인증번호</button>
       </div>
        
       <!-- <div class="input-container">
        <input type="text" placeholder="주소를 입력해주세요." name="jmAddr1" id="jmAddr1">
        <button type="button" id="checkZipcodeBtn">우편번호</button>
       </div>
        
        <input type="text" placeholder="우편번호" name="jmZipCode" id="jmZipCode" style="width: 100%;">
        
        <input type="text" placeholder="상세주소를 입력해주세요." name="jmAddr2" id="jmAddr2" style="width: 100%;"> -->
        
        <input type="text" id="jmZipCode" placeholder="우편번호">
		<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="jmAddr1" placeholder="주소"><br>
		<input type="text" id="jmAddr2" placeholder="상세주소">
		<input type="text" id="extraAddress" placeholder="참고항목">
        
        <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
		<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer"
		 style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
		</div>
        
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
		    // 우편번호 찾기 화면을 넣을 element
		    var element_layer = document.getElementById('layer');
		
		    function closeDaumPostcode() {
		        // iframe을 넣은 element를 안보이게 한다.
		        element_layer.style.display = 'none';
		    }
		
		    function sample2_execDaumPostcode() {
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
		                if(data.userSelectedType === 'R'){
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
		                        extraAddr = ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		                    document.getElementById("extraAddress").value = extraAddr;
		                
		                } else {
		                    document.getElementById("extraAddress").value = '';
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('jmZipCode').value = data.zonecode;
		                document.getElementById("jmAddr1").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("jmAddr2").focus();
		
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
		        var height = 400; //우편번호서비스가 들어갈 element의 height
		        var borderWidth = 5; //샘플에서 사용하는 border의 두께
		
		        // 위에서 선언한 값들을 실제 element에 넣는다.
		        element_layer.style.width = width + 'px';
		        element_layer.style.height = height + 'px';
		        element_layer.style.border = borderWidth + 'px solid';
		        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
		        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
		        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
		    }
		    
		    let delay = 300;
		    let timer = null;

		    // Javascript
		    window.addEventListener('resize', function(){
		    	clearTimeout(timer);
		    	timer = setTimeout(function(){
		            
		            if (window.innerWidth <= 800) {
		          		alert('현재 브라우저 크기가 <= 800px');
		       		}
		    	}, delay);
		    });

		</script>
        
        <br />
        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
        <br />
        
        <button type="button" id="join-button">회원가입</button>
        <button type="reset" id="reset-button">초기화</button>
      </form>
    </div>
  </div>
   <script type="text/javascript">
	
	$(function()
			{
				
				$("#checkUserIdBtn").click(function()
				{
					if ( $("#jmId").val() != "") 
					{
						var params = "jmId=" + $("#jmId").val();
						
						
						/* jQuery로 ajax 처리하기 */
						$.ajax({
							
							type:"POST"
							, url:"searchidform.action"
							, data:params
							, datayType : "json"
							, success : function(jsonObj)
							{
								if(jsonObj == 0) 
								{
									$("#result").html("사용 가능한 아이디입니다.");	
								}
								else
								{
									$("#result").html("이미 사용중인 아이디입니다.");	
								}
								
								
							}, error : function(e)
								{
									alert(e.responseText);
								}
							
							});
						}
						else 
						{
							$("#result").html("아이디를 입력해주세요.");	
						}
					});
				
					
					$("#checkUserNickBtn").click(function()
					{
						if ( $("#jmNickName").val() != "") 
						{
							var params = "jmNickName=" + $("#jmNickName").val();
							
							$.ajax({
								
								type:"POST"
								, url:"searchnickform.action"
								, data:params
								, datayType : "json"
								, success : function(jsonObj)
								{
									if(jsonObj == 0) 
									{
										$("#resultNick").html("사용 가능한 닉네임입니다.");	
									}
									else
									{
										$("#resultNick").html("이미 사용중인 닉네임입니다.");	
									}
									
									
								}, error : function(e)
								{
										alert(e.responseText);
								}
								
								});
						
						} else 
						{
							$("#resultNick").html("닉네임을 입력해주세요.");	
						}
						
					});
					
					
				    $("#login-button").click(function(event) 
				    {
				        if($("#jmId").val()=="" || $("#jmPw").val()=="" || $("#userPwCheck").val()=="" || $("#jmName").val()=="" || 
				               $("#jmSsn").val()=="" || $("#jmGen").val()=="" || $("#jmNickName").val()=="" || $("#jmTel").val()=="" || 
				               $("#jmAddr1").val()=="" || $("#jmAddr2").val()=="" || $("#jmZipCode").val()=="")
				         {
				            $("#err").html("모두 입력해주세요").css("display", "inline");
				            return;
				         }
				         
				         $(".form").submit();
				    });
				 
					
				});
	
			function checkPwd()
			{
				var pw1 = $("#jmPw").val();
				var pw2 = $("#userPwCheck").val();
				
				
				if(pw1 != "" && pw1 == pw2)
				{
					$("#pwdConfirm").html("비밀번호가 일치합니다.");	
				}
				else
				{
					$("#pwdConfirm").html("비밀번호가 일치하지 않습니다.");		
				}
				
				validationPassword();
			}
			
			function validationPassword()
			{
				var pw1 = $("#jmPw").val();
				var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
				
				if(!re.test(pw1))
				{
					alert("비밀번호는 숫자, 소문자, 대문자를 포함해 8자리 이상이어야 합니다.");
					return false;
				}
				
				return true;
				
			}

</script>

</body>
</html>