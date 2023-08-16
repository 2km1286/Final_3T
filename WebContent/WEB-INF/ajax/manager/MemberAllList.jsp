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
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
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

input[type="button"]:hover {
	background-color: gray;
}

.table td {
	border: none;
	text-align: center;
}
/* 모달 스타일 */
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: white;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 600px;
	position: relative;
}

.close {
	color: #aaa;
	font-size: 24px;
	position: absolute;
	top: 10px;
	right: 10px; /* 오른쪽 상단으로 이동 */
	cursor: pointer;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

</head>
<body>
		
		<div id="tableMemberList" class="mt-4">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th style="color: white;">회원ID</th>
						<th style="color: white;">회원명</th>
						<th style="color: white;">닉네임</th>
						<th style="color: white;">성별</th>
						<th style="color: white;">전화번호</th>
						<th style="color: white;">가입일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${memberAllList }">
						<tr onclick="openSuspensionModal2('${list.memSid}')">
							<td>${list.jmId}</td>
							<td>${list.jmName}</td>
							<td>${list.jmNickName}</td>
							<td>${list.jmGender}</td>
							<td>${list.jmTel}</td>
							<td>${list.memRegitstDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 모달 창 -->
			<div id="suspensionModal" class="modal">
			    <div class="modal-content">
			    	<span class="close" style="float: right; position: absolute;  
			    	top: 10px; right: 10px; font-size: 20px; font-weight: bold;">&times;</span>
			        <label><input type="radio" name="suspensionOption" value="1"> 3일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="2"> 5일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="3"> 7일 정지</label><br>
			        <label><input type="radio" name="suspensionOption" value="4"> 영구정지</label><br><br>
			        <button id="suspensionConfirm">확인</button>
			    </div>
			</div>
		</div>
		

</body>
<script type="text/javascript">
	function openSuspensionModal2(memSid) 
	{	
	    var modal = document.getElementById("suspensionModal");
	    modal.style.display = "block"; // 모달 표시
	    
	    var confirmButton = document.getElementById("suspensionConfirm");
	    confirmButton.onclick = function () {
	        var selectedValue = document.querySelector('input[name="suspensionOption"]:checked');
	        if (selectedValue) 
	        {
	            selectedValue = selectedValue.value;
	            modal.style.display = "none"; // 모달 숨김
	            
	            // 회원 ID와 정지 일수를 서버로 전송
	            DeleteMemberForce(memSid, selectedValue);
	        }
	    };
	}
	function closeSuspensionPopup() {
	    var popup = document.getElementById("suspensionModal");
	    popup.style.display = "none";
	}
	// 모달 닫기 버튼
	$(".close").on("click", function()
	{
	    $("#suspensionModal").css("display", "none");
	});

	// 정지
	function DeleteMemberForce(memSid,ibSid) 
	{
			
		if (confirm("정지 처리하시겠습니까?")) 
		{
	    $.ajax({
	        type: "POST",
	        url: "memberbannedforce.action?memSid="+memSid+"&ibSid="+ibSid
	 		,async: true,
	        success: function(data) 
	        {
	            window.location.href = "managermain.action?flag=5";
	        },
	        error: function(e) 
	        {
	            alert(e.responseText);
	        }
	    	});
		}
	}
	
	

</script>
</html>