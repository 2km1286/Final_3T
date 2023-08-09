<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png"/>
<meta charset="UTF-8"> 
<title>마이페이지_신고내역</title>

<style type="text/css">

</style>
</head>
<body>
			<div class="row container-mypage" style="max-width: 100%;">
				<h3><span class="badge">내가 한 신고</span></h3>
				<!-- 신고일자, 상태(접수완료/처리결과), 대상 유형, 사유 -->
				<div class="col-md-12">
					<table class="EndTable" style="margin-left: 20%; width: 800px;">
					<tr>
						<th class="EndTh">신고일자</th>
						<th class="EndTh">상태</th>
						<th class="EndTh">대상 유형</th>
						<th class="EndTh">사유</th>
					</tr>
					<tr>
						<td class="EndTd">2023-07-29</td>
						<td class="EndTd">접수완료</td>
						<td class="EndTd">프로필</td>
						<td class="EndTd">부적절한 프로필</td>
					</tr>
					<tr>
						<td class="EndTd">2023-07-30</td>
						<td class="EndTd">영구정지</td>
						<td class="EndTd">대리산책공고글</td>
						<td class="EndTd">광고/도배</td>
					</tr>
					<tr>
						<td class="EndTd">2023-07-31</td>
						<td class="EndTd">반려</td>
						<td class="EndTd">펫시팅글</td>
						<td class="EndTd">욕설</td>
					</tr>
					<tr>
						<td class="EndTd">2023-07-29</td>
						<td class="EndTd">접수완료</td>
						<td class="EndTd">프로필</td>
						<td class="EndTd">부적절한 프로필</td>
					</tr>
					<tr>
						<td class="EndTd">2023-07-30</td>
						<td class="EndTd">영구정지</td>
						<td class="EndTd">대리산책공고글</td>
						<td class="EndTd">광고/도배</td>
					</tr>
					<tr>
						<td class="EndTd">2023-07-31</td>
						<td class="EndTd">반려</td>
						<td class="EndTd">펫시팅글</td>
						<td class="EndTd">욕설</td>
					</tr>
					</table>
				
				</div>
			</div><!--1행 끝  -->
			
			<div class="row container-mypage" style="max-width: 100%;">
			<h3><span class="badge">내가 받은 신고</span></h3>
				<!-- 정지시작일, 정지종료일, 처분내용, 대상 유형, 사유 -->
				<div class="col-md-12">
					<table class="EndTable" style="margin-left: 20%; width: 800px;">
						    <tr>
								<th class="EndTh">정지시작일</th>
								<th class="EndTh">정지종료일</th>
								<th class="EndTh">처분내용</th>
								<th class="EndTh">대상 유형</th>
								<th class="EndTh">사유</th>
						    </tr>
						    <tr>
				                <td class="EndTd">2023-08-01</td>
				                <td class="EndTd">2023-08-15</td>
				                <td class="EndTd">영구정지</td>
				                <td class="EndTd">프로필</td>
				                <td class="EndTd">욕설</td>
				            </tr>
				            <tr>
				                <td class="EndTd">2023-08-02</td>
				                <td class="EndTd">2023-08-07</td>
				                <td class="EndTd">경고</td>
				                <td class="EndTd">대리산책 공고글</td>
				                <td class="EndTd">불쾌감 조성</td>
				            </tr>
					</table>
				
				</div>
			</div><!-- 2행 끝 -->
</body>
</html>




