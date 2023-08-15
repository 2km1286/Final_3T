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
						<tr>
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
			
		</div>
		

</body>
</html>