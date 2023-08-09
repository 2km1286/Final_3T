<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 시험</title>


<style>

h1, h2, h4, h5 
{
	font-family: "Jua";
	font-size: 20pt;
}
.card 
{
  margin-bottom: 20px;
}

.vertical-progress {
    height: 200px; /* 원하는 높이로 설정 */
    width: 30px; /* 진행바의 넓이 */
}

.vertical-progress .progress-bar {
    width: 100%;
    height: 0;
    position: absolute;
    bottom: 0;
}


</style>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	function updateProgress(value)
	{
		$('.progress-bar').css('height', value + '%').attr('aria-valuenow', value);
	}

	
	updateProgress(50);
	
	
	
	$().ready(function()
	{
		$.("#testButton").click(function()
		{
			window.location.href= "sittingtestpass.action";
		});
	});
</script>

</head>
<body>

<section>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
</section>


	<div class="bg-light">
		<div class="container mt-5" style="width: 3000px;">
			<h1 class="text-center mb-4">펫시팅 자격검증 테스트</h1>
			<div class="row">
				<div class="col-md-9">
					<div class="card">
						<div class="card-body" style="width: 400px;">
							<h5 class="card-title">문제 1</h5>
							<p class="card-text">강아지는 항상 사람이 좋아하는 냄새를 좋아한다.</p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>

					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 2</h5>
							<p class="card-text">강아지는 젖니가 나올 때 아플 수 있다.</p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 3</h5>
							<p class="card-text">강아지에게 초콜릿을 먹이는 것은 안전하다.</p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 4</h5>
							<p class="card-text">강아지는 더위를 잘 견디지 못한다.</p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 5</h5>
							<p class="card-text">강아지는 매일 산책이 필요하다.</p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 6</h5>
							<p class="card-text">강아지는 항상 사람의 감정을 이해한다. </p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 7</h5>
							<p class="card-text">강아지의 코가 뜨거워도 반드시 아픈 것은 아니다. </p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 8</h5>
							<p class="card-text">강아지는 온순한 품종이라면 아무리 크더라도 어린 아이와 안전하게 지낼 수 있다. </p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 9</h5>
							<p class="card-text">강아지는 모든 종류의 채소를 먹을 수 있다. </p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">문제 10</h5>
							<p class="card-text">강아지는 목줄 없이도 안전하게 산책할 수 있다. </p>
							<button class="btn btn-success">O</button>
							<button class="btn btn-danger">X</button>
						</div>
					</div>
					
				</div>

				<!-- 스크롤바를 만들것 아직 진행중 -->
				<!-- <div class="col-md-3">
					<div class="progress vertical-progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="height: 50%;">
                    </div>
					</div>
				</div> -->
			
			
			</div>
				<div style="text-align: center;">
				<button type="button" class="btn btn-success" id="testButton">제출하기</button>
				</div>
			</div>
			
	</div>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>