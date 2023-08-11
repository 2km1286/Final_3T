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
<title>로그인</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">

	$(function()
	{	
		 <% if (request.getParameter("error") != null && request.getParameter("error").equals("1")) { %>
	        $("#message").fadeIn().delay(2000).fadeOut();	// 보였다 사라지기

		  <% } %>
		 
		  // 회원가입하고 난 후 로그인으로 이동 시 판단
		<% if ("0".equals((String)request.getAttribute("flag"))) { %>
	        alert("회원 가입을 환영합니다!");	// 로그인 폼 요청 시 flag 확인에 따라 회원가입에서 온건지..
		  <% } %>
		  
		  // 회원가입하고 난 후 로그인으로 이동 시 판단
		<% if ("1".equals((String)request.getAttribute("flag"))) { %>
	        alert("비밀번호가 변경되었습니다.");	// 로그인 폼 요청 시 flag 확인에 따라 회원가입에서 온건지..
		  <% } %>
		  
		  
		$("#join-button").click(function()
		{
			window.location.href = "joinpage.action";
		});
		
		
		// 로그인 버튼 눌렀을 때
		 $(function() {
	            function performLogin() {
	                var jmId = $("#jmId").val();
	                var jmPw = $("#jmPw").val();
	                
	                if (!jmId) {
	                    alert("아이디를 입력해야 합니다.");
	                    $("#jmId").focus();
	                    return false;
	                }
	                
	                if (!jmPw) {
	                    alert("비밀번호를 입력해야 합니다.");
	                    $("#jmPw").focus();
	                    return false;
	                }
	                
	                var isAdminLogin = $("#adminChecked").prop("checked");
	                
	                if (isAdminLogin) {
	                    // 관리자 체크가 되어 있을 때
	                    $(location).attr("href", "managerlogin.action?miId=" + jmId + "&miPw=" + jmPw);
	                    /* window.location.href = "managermain.action?miId="; */
	                	// this.action = "java002";
		                    //$("#loginForm").submit();

	                } else {
	                    // 일반 로그인
	                    $("#loginForm").submit();
	                }
	            }

	            $("#login-button").click(function() {
	                performLogin();
	            });

	            // 엔터 키를 눌렀을 때 로그인 처리
	            $("#jmId, #jmPw").keypress(function(event) {
	                if (event.key === "Enter") {
	                    performLogin();
	                }
	            });
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
  height: 500px;
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

form input
 {
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
  background-color: rgba(255, 255, 255, 0.4);
}
#join-button:hover
{
	 background-color: light;
	 color:white;
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
#message {
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
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>로그인</h1>
      <label style="margin-right: 150px;">
      <input type="checkbox" name="adminChecked" value="admin" id="adminChecked">
      <span style="font-size:x-small;">관리자로 로그인</span>
      </label>
      <form class="form" action="memberlogin.action" id="loginForm">
        <input type="text" placeholder="아이디" name="jmId" id="jmId">
        <input type="password" placeholder="비밀번호" name="jmPw" id="jmPw"><br>
        <h3 id="message" style="text-align: center;">
            로그인 실패!!
        </h3>
        
        
        <button type="button" id="join-button">회원가입</button>
        <button type="button" id="login-button" style="background-color:#53e3a6; color: white;">로그인</button><br>
        
      </form>
      
      <div class="subDiv">
    	<form class="subForm" action="findidpage.action">
    		<button class="subBtn" type="submit" id="findIdBtn">아이디 찾기</button>
    	</form>
    	<form class="subForm" action="findpwpage.action">
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