<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ManagerMemberList</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<style>
/* 검색창 스타일 */
form {
	display: flex;
	max-width: 300px;
}

input[type="text"] {
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	flex: 1;
	height: 40px;
}

input[type="button"] {
	background-color: #007bff;
	color: white;
	border: none;
	border-radius: 5px;
	padding: 10px;
	height: 40px;
	cursor: pointer;
}

input[type="button"]:hover 
{
	background-color: gray;
	
}
.table td
{
	border:none;
	text-align: center;
}
</style>
<script type="text/javascript">
$(function()
		{
			// 처리완료된 신고
			$("#searchMemberBtn").click(function()
			{
				
				$.ajax(
				{
					type:"POST"
					, url:"memberlistform.action"
					, async:true
					, success:function(data)
					{
						$("#tableMemberList").html(data);
											
					}
					, error:function(e)
					{
						alert(e.responseText);
					}
					
				});	
			});
			
		});
</script>
</head>
<body>
	
<div style="margin-left: -10%; width: 120%;">
		<div>
			<h2 style="margin-top: 20px;">회원관리</h2>
			<hr>
		</div>

		<div>
				<input type="text" placeholder="닉네임" id="userNick"> 
				<input type="button" value="검색" id="searchMemberBtn" style="background-color: #312A25;">
		</div>
		<div id="tableMemberList" class="mt-4">
			<table class="table table-bordered table-hover" >
				<thead>
					<tr>
						<th style="color: white;">회원ID</th>
						<th style="color: white;">회원명</th>
						<th style="color: white;">성별</th>
						<th style="color: white;">닉네임</th>
						<th style="color: white;">전화번호</th>
						<th style="color: white;">가입일자</th>
					</tr>
				</thead>
				
			</table>
			<div style="margin-top: 100px; text-align: center;">
			<h2 style="text-align: center; color: gray;">검색 결과 없음</h2>
			 <div style="display: flex; flex-direction: column; align-items: center;">
                <img src="images/question.png" alt="questionImg" width="150px;">
            </div>
			</div>
		</div>
</div>
</body>
</html>