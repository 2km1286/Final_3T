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
<script type="text/javascript">
$(function()
		{
			
			// "통계 확인하기" 버튼 클릭 시 모달 창 열기
		    $("#showStatsBtn").click(function() 
		    {
		    	$.ajax(
    			{
    				type : "GET",
    				url : "membercount.action",
    				async : true,
    				success : function(data)
    				{
    					
						var data= data.trim("");
						createChart(data);
						$("#myModal").css("display", "block");
    				},
    				error : function(e)
    				{
    					alert(e.responseText);
    				}
    			});
			});
			
			
		    function createChart(data)
		    {
		    	var arr = data.split(",");
		        var xValues = ["펫시터", "대리산책러", "일반회원"]; // xValues의 종류를 정적으로 설정
		        var yValues = [arr[1], arr[2], arr[3]];
		        var barColors = ["#b91d47", "#00aba9", "#2b5797"];

		        var modalChart = new Chart("memberChartModal", 
		        	{
		            type: "pie",
		            data: {
		                labels: xValues,
		                datasets: [{
		                    backgroundColor: barColors,
		                    data: yValues,
		                }]
		            },
		            options: {
		                title: {
		                    text: "전체 회원 수: " + arr[0],
		                    display:true,
		                }
		            }
		        });
		    }

		    // 모달 창 닫기 버튼
		    $(".close").click(function() 
		    {
		        $("#myModal").css("display", "none");
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
			<input type="text" placeholder="닉네임" id="userNick"> <input
				type="button" value="검색" id="searchMemberBtn"
				style="background-color: #312A25;"> <input type="button"
				value="통계 확인하기" id="showStatsBtn" style="background-color: #312A25;">

		</div>
		<div id="tableMemberList" class="mt-4">
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

			</table>
			<div style="margin-top: 100px; text-align: center;">
				<h2 style="text-align: center; color: gray;">검색 결과 없음</h2>
				<div
					style="display: flex; flex-direction: column; align-items: center;">
					<img src="images/question.png" alt="questionImg" width="150px;">
				</div>
			</div>
		</div>
		<div id="myModal" class="modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<p style="color: #312A25; font-size: large; font-weight: bold;">서비스
					이용 분포</p>
				<canvas id="memberChartModal" style="width: 100%; max-width: 600px"></canvas>
			</div>
		</div>

	</div>
</body>
</html>