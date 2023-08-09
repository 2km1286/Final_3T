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
<title>MemberListForm</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

</head>
<body>

			<table class="table table-bordered table-hover">
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
				<tbody>
					<%
						// 임의의 데이터 생성
					String[][] data = { { "kimin", "김기민", "남", "불타는맨발", "010-8341-1286", "2023-09-09"},
							{ "kimin", "강별희", "여", "근면녀", "010-8341-1286", "2023-09-09"},
							{ "kimin", "이기배", "남", "정성담", "010-8341-1286", "2023-09-09"},
							{ "kimin", "최하경", "여", "다와서봐", "010-8341-1286", "2023-09-09"},
							{ "kimin", "최이서", "여", "오늘도달려", "010-8341-1286", "2023-09-09"} };

					// 데이터 출력
					for (String[] row : data)
					{
					%>
					<tr>
						<td><%=row[0]%></td>
						<td><%=row[1]%></td>
						<td><%=row[2]%></td>
						<td><%=row[3]%></td>
						<td><%=row[4]%></td>
						<td><%=row[5]%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		

</body>
</html>