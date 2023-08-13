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
<title>SittingCompleteList</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
</head>
<body>
	<div style="margin-left: -10%; width: 120%;" id="subContent">
		<div>
			<h2 style="margin-top: 20px;">처리완료된 신고</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report">대리산책 신고</button>
			<button class="report-button" id="profile-report">프로필 신고</button>
		</div>
		<div id="completeTable" class="mt-4">
			<table class="table table-bordered table-hover" id="tableComplete">
				<thead>
					<tr>
						<th style="color: white;">처리번호</th>
						<th style="color: white;">신고번호</th>
						<th style="color: white;">신고사유</th>
						<th style="color: white;">상세사유</th>
						<th style="color: white;">처리내용</th>
						<th style="color: white;">처리자(관리자)</th>
						<th style="color: white;">처리일자</th>
					</tr>
				</thead>
				<tbody>
					<%-- <c:forEach var="list" items="${sittingReportList }">
						<tr>
							<td>${list.srrSid}</td>
							<td>${list.jmNickName}</td>
							<td>${list.spSid}</td>
							<td>${list.irName}</td>
							<td><input class="report-button" type="button" value="확인하기"
								onclick="showDetail('${list.srrDetail}')"></td>
							<td>${list.srrDate}</td>
							<td id="actionBtn"><input class="report-button"
								type="button" value="정지" onclick="BannedSittingReport(${list.srrSid},5)"> 
								<input class="report-button"
								type="button" value="반려" onclick="DeleteSittingReport(${list.srrSid},4)"> 
								<input class="report-button"
								type="button" value="수정요청" onclick="ChangeSittingReport(${list.srrSid},3)"> 
								<!-- 분기처리 시작 --> 
								<c:if
									test="${list.ipSid == '1'}">
									<input class="report-button" type="button" value="블라인드하기"
										onclick="updateSittingPublic(${list.ipSid},${list.spSid})">
								</c:if> <c:if test="${list.ipSid == '2'}">
									<input class="report-button" type="button" value="블라인드해제"
										style="background-color: gray;"
										onclick="updateSittingPublic(${list.ipSid},${list.spSid})">
								</c:if></td>
						</tr>
					</c:forEach> --%>
					<td>처리완료된 곳</td>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>