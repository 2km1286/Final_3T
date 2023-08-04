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
        </div>
        
       <div class="input-container">
        <input type="text" placeholder="주민등록번호를 입력해주세요." name="jmSsn" id="jmSsn" style="width: 40%;">
      </div>

        
       <div class="input-container">
        <input type="tel" placeholder="전화번호를 입력해주세요." name="jmTel" id="jmTel">
        <button type="button" id="telCheck">인증번호</button>
       </div>
        
       <div class="input-container">
        <input type="text" placeholder="주소를 입력해주세요." name="jmAddr1" id="jmAddr1">
        <button type="button" id="checkZipcodeBtn">우편번호</button>
       </div>
        
        <input type="text" placeholder="우편번호" name="jmZipCode" id="jmZipCode" style="width: 100%;">
        
        <input type="text" placeholder="상세주소를 입력해주세요." name="jmAddr2" id="jmAddr2" style="width: 100%;">
        
        
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
							, url:"idDupli.action"
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
								, url:"nickDupli.action"
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