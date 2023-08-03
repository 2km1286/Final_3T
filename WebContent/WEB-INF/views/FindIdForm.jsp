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
<title>아이디찾기</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">

	$(function()
	{
		
		$("#find-button").click(function()
		{
			//alert("확인");
			
			var params = "jmName=" + $("#jmName").val() + "&jmSsn=" + $("#jmSsn").val();
			
			$.ajax(
			{
				type:"POST"
				, url:"findId.action"
				, data:params
				, async:true
				, success:function(data)
				{
					// "아이디가 존재하지 않습니다." or "등록된 아이디는 [" + result + "] 입니다."
					$("#idRes").html(data);
										
				}
				, beforeSend:showRequest
				, error:function(e)
				{
					alert(e.responseText);
				}
				
			});		
	
		});
	
		
		function showRequest()
		{
			if( !$("#jmName").val() )
			{
				alert("이름을 입력해야 합니다.");
				$("#jmName").focus();
				
				return false;
			}
			
			if( !$("#jmSsn").val() )
			{
				alert("주민번호를 입력해야 합니다.");
				$("#jmSsn").focus();
				
				return false;
			}
			
			return true;
		}
		
		
		$("#loginJoin").click(function()
		{
		      window.location.href = "loginJoin.action";
		  
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

#idRes { font-weight: bold; font-size: 20pt;}

  </style>
</head>
<body>
  <div class="wrapper">
    <div class="container">
    <img src="images/logo_main-removebg.png" alt="로고" class="logo"> <!-- 로고 이미지 추가 -->
      <h1>아이디찾기</h1>
      <form class="form" id="idForm">
        <input type="text" placeholder="이름" name="jmName" id="jmName">
        <input type="password" placeholder="주민번호" name="jmSsn" id="jmSsn">
        <button type="button" id="loginJoin" onclick="loginPage()" >로그인</button>
        <button type="button" id="find-button">아이디찾기</button><br>
      </form>
		<div id="idRes"></div>
    </div>
    </div>
</body>
</html>
