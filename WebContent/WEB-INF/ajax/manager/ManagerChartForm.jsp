<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

</head>
<body>
	<div style="margin-left: -10%; width: 120%;">
		<div>
			<h2 style="margin-top: 20px;">통계</h2>
			<hr />
			<p style="color: white;">서비스 이용 분포</p>
			<canvas id="memberChart" style="width: 100%; max-width: 600px"></canvas>

			<script>
			var xValues = [ "펫시터", "대리산책러", "견주" ];
			var yValues = [ 55, 39, 10, ];
			var barColors = [ "#b91d47", "#00aba9", "#2b5797", "#e8c3b9",
					"#1e7145" ];

			new Chart("memberChart",
			{
				type : "pie",
				data :
				{
					labels : xValues,
					datasets : [
					{
						backgroundColor : barColors,
						data : yValues,
					} ]
				},
				options :
				{
					title :
					{
						display : false,
						
					}
				}
			});
			
			
			
			
		</script>
		</div>

	</div>
</body>
</html>
