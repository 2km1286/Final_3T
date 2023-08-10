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
<title>비밀번호 재설정</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">

		$(function()
		{
			$("#pw-button").click(function()
			{
				if( !$("#jmPw").val() )
				{
					alert("새 비밀번호를 입력해야 합니다.");
					$("#jmPw").focus();
					
					return false;
				}
				
				if( !$("#jmPw2").val() )
				{
					alert("새 비밀번호를 다시 입력해야 합니다.");
					$("#jmPw2").focus();
					
					return false;
				}
				
				if( $("#jmPw").val() != $("#jmPw2").val() )
				{
					alert("입력하신 비밀번호가 일치하지 않습니다.");
					$("#jmPw2").focus();
					
					return false;
				}
				
				alert("비밀번호를 변경했습니다. ");
				
				return true;
			});
			
			$("#back-button").click(function()
					{
						window.location.href = "loginpage.action";
						
					});
		});





</script>


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
	width: 570px;
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
    box-sizing: border-box; /* 내부 여백을 높이에 포함시킴 */
}

form button:hover {
	background-color: #f5f7f9;
}

.container .select-container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 10px 0px 0px;
	
}

.container .select-container label {
	margin-right: 10px;
}

.container .select-container select {
	width: 100px;
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
	text-align: center;
	
}

.container .select-container select option {
	background-color: rgba(80, 163, 162, 0.9);
	color: white;
	font-weight: 300;
}

.container .select-container select:hover {
	background-color: rgba(255, 255, 255, 0.4);
}

.container .select-container select:focus {
	background-color: white;
	color: #53e3a6;
	
}

#idRes
{
	color: white;
    font-weight: bold;
    margin-top: -20px;
    margin-bottom: 10px;
    background-color: rgba(255, 0, 0, 0.7); /* 빨간색 배경 불투명도 설정 */
    border-radius: 5px;
    display: none;
    box-shadow: 0 0 10px rgba(255, 0, 0, 0.5); /* 빨간색 테두리 효과 */
    
}
</style>
<!-- FONT jua -->
<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');


h1, button {
	font-family: "Jua";
	font-weight: Regular;
}

input {
	font-family: "Jua";
	font-weight: normal;
}

.logo {
	max-width: 150px;
	margin-bottom: 20px;
	width: 100px;
}

.container .input-container {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 10px;
}



.container .input-container input {
	flex: 1;
	margin: 0;
}

.container .select-container select {
	flex: 1;
	margin: 0;
	
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

.input-container label {
    width: 150px;
    text-align: center;
    margin-right: 10px;
    font-family: "Jua";
    font-weight: normal;
    font-size: 15pt;
    color: white;
    
  }
  .select-container label {
    width: 150px;
    text-align: center;
    margin-right: 10px;
    font-family: "Jua";
	font-weight: normal;
	font-size: 15pt;
	color: white;

  }



</style>
<!-- FONT jua -->
<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

h1, button {
	font-family: "Jua";
	font-weight: Regular;
}

input {
	font-family: "Jua";
	font-weight: normal;
}

.logo {
	max-width: 150px;
	margin-bottom: 20px;
}

.subDiv {
	width: 200px;
	display: flex;
	margin-left: 20px;
}

.subForm {
	padding: 2px 2px 2px 2px;
	width: 100px;
	margin-right: 5px;
}

.subBtn {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	outline: 0;
	background-color: #53e3a6;
	border: 0;
	color: white;
	border-radius: 10px;
	cursor: pointer;
	font-size: 13px;
	-webkit-transition-duration: 0.25s;
	transition-duration: 0.25s;
	padding: 0px 0px 0px 0px;
	width: 100px;
	margin: 2px 2px 2px 2px;
	font-family: "Jua";
}

#idRes {
	font-weight: bold;
	font-size: 20pt;
}
form button:hover {
  background-color: rgba(255, 255, 255, 0.4);
}
#back-button:hover
{
	 background-color: light;
	 color:white;
}
</style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>비밀번호 재설정</h1>
      <form class="form" action="updatepw.action">
        <div class="input-container">
				<label for="password">패스워드</label> 
					<input type="password" placeholder="비밀번호" name="jmPw"
						id="jmPw" style="width: 100%;">
				</div>

				<div class="input-container">
				<label for="password">패스워드 확인</label> 
					<input type="password" placeholder="비밀번호 재입력"
						name="userPwCheck" id="userPwCheck" style="width: 100%;">
					<!-- 비밀번호 재확인시 위의 입력값과 다르다면 다시 설정하도록 -->
				</div>
        <input type="hidden" name="memSid" id="memSid" value="${memSid }">
        <div style="text-align: right; margin-top: 20px;">
		<button type="button" id="back-button">로그인으로</button>
        <button type="submit" id="pw-button" style="background-color: #53e3a6; color: white;">변경하기</button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
