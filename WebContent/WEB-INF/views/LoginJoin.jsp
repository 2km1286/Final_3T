<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String memSid = (String)session.getAttribute("memSid");		// 최초요청시 "0", 등록된 정보 없을 시 "-1"
	if( memSid.equals("-1") )
	{
		out.println("<script>alert('등록된 정보가 없습니다. ') </script>");
		session.removeAttribute("memSid");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">

	$(function()
	{	
		// 회원가입 폼 페이지로 가기
		$("#join-button").click(function()
		{
			//window.location.href = "join.action";   어디에요?
		});
		
		
		// 로그인 버튼 눌렀을 때
		$("#login-button").click(function()
		{
			if( !$("#jmId").val() )
			{
				alert("아이디를 입력해야 합니다.");
				$("#jmId").focus();
				
				return false;
			}
			
			if( !$("#jmPw").val() )
			{
				alert("비밀번호를 입력해야 합니다.");
				$("#jmPw").focus();
				
				return false;
			}
			
			// memberlogin.action 요청
			$("#loginForm").submit();
	
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
  max-width: 600px;
  padding: 80px 0;
  text-align: center;
}

.wrapper.form-success .container h1 {
  -webkit-transform: translateY(85px);
  transform: translateY(85px);
}

.container {
  margin: 0 auto;
  height: 430px;
  text-align: center;
  padding: 30px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 2px solid white; /* 폼에 테두리 설정 */
  border-radius: 10px; /* 테두리의 둥근 정도 설정 */
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
  width: 250px;
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
  width: 300px;
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
  width: 250px;
  cursor: pointer;
  font-size: 18px;
  -webkit-transition-duration: 0.25s;
  transition-duration: 0.25s;
  width: 120px;
}

form button:hover {
  background-color: #f5f7f9;
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

  
  </style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>로그인</h1>
      
      <form class="form" action="memberlogin.action" id="loginForm">
        <input type="text" placeholder="아이디" name="jmId" id="jmId">
        <input type="password" placeholder="비밀번호" name="jmPw" id="jmPw"><br>
        
        <button type="button" id="join-button">회원가입</button>
        
        <button type="button" id="login-button">로그인</button><br>
      </form>
      
      <div class="subDiv">
    	<form class="subForm" action="findIdForm.action">
    		<button class="subBtn" type="submit" id="findIdBtn">아이디 찾기</button>
    	</form>
    	<form class="subForm" action="findPwForm.action">
    		<button class="subBtn" type="submit" id="findPwBtn">비밀번호 재설정</button>
    	</form>
    </div>
    </div>
  </div>
   <!-- <script>
    $("#login-button").click(function(event) 
    {
      //event.preventDefault();
      $('form').fadeOut(500, function() 
      {
        // Hide the form and update the h1 content to "로그인 성공"
        $('.container h1').text('로그인 성공');
        // Remove border from the container
        $('.container').css('border', 'none');
      });
      $('.wrapper').addClass('form-success');
    });
  </script> -->
</body>
</html>