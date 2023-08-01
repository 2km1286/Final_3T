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
  
  </style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>회원가입</h1>
      <form action="join.action" method="post" id="joinForm">
        <input type="text" placeholder="이름" name="jmName" id="jmName">
        <input type="text" placeholder="아이디" name="jmId" id="jmId">
        <input type="text" placeholder="성별" name="jmGender" id="jmGender">
        <input type="password" placeholder="비밀번호" name="jmPw" id="jmPw">
        <input type="password" placeholder="비밀번호 확인" name="jmPwCheck" id="jmPwCheck">
        <input type="text" placeholder="닉네임" name="jmNickName" id="jmNickName">
        <input type="text" placeholder="주민등록번호" name="jmSsn" id="jmSsn">
        <input type="tel" placeholder="전화번호" name="jmTel" id="jmTel">
        <input type="text" placeholder="주소" name="jmAddr1" id="jmAddr1">
        <input type="text" placeholder="상세주소" name="jmAddr2" id="jmAddr2">
        <input type="text" placeholder="우편번호" name="jmZipCode" id="jmZipCode">
        <input type="text" placeholder="이미지" name="jmImage" id="jmImage">
        <br />
        <span id="err" style="color: blue; font-weight: bold; display: none;"></span>
        <br />
        <button type="reset" >취소</button>
        <button type="button" id="join-button">회원가입</button>
      </form>
    </div>
  </div>
   <script>
   $(function()
	{
	   $("#join-button").click(function() 
	    {
	      if($("#jmId").val()=="" || $("#jmPw").val()=="" || $("#jmPwCheck").val()=="" || $("#jmName").val()=="" || 
	    		  $("#jmSsn").val()=="" || $("#jmGender").val()=="" || $("#jmNickName").val()=="" || $("#jmTel").val()=="" || 
	    		  $("#jmAddr1").val()=="" || $("#jmAddr2").val()=="" || $("#jmZipCode").val()=="")
	      {
	    	  $("#err").html("모두 입력해주세요").css("display", "inline");
	    	  return;
	      }
	      
	      $("#joinForm").submit();
	      /* 
	      $('form').fadeOut(500, function() 
	      {
	        // Hide the form and update the h1 content to "로그인 성공"
	        $('.container h1').text('회원가입 완료');
	        // Remove border from the container
	        $('.container').css('border', 'none');
	      });
	      $('.wrapper').addClass('form-success');
	       */
	    });	
	});
    
  </script>
</body>
</html>