<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%
	String memSid = (String) session.getAttribute("memSid"); // 최초요청시 null
String memNickName = (String) session.getAttribute("memNickName"); // 최초요청시 null

if (memSid == null)
{
	memSid = "0";
	session.setAttribute("memSid", memSid);
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="./images/logo_transparent.png" />

<meta charset="UTF-8">
<title>Main</title>

<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>



</head>
<body>

	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">

	</c:import>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/DefaultMainForm.jsp"></c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/BestListForm.jsp">
			</c:import>
		</div>
	</section>
	<section>
		<div>
			<c:import url="/WEB-INF/components/index/FooterForm.jsp">
			</c:import>
		</div>
	</section>

	<!-- 기배 Modal 시작 -->
	<div class="modal fade" id="initialModal" tabindex="-1" role="dialog"
		aria-labelledby="initialModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title" id="initialModalLabel">지원해보세요!</h2>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
<div class="modal-body">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="card rec">
                    <img src="./images/welcome-walk.png"
                         class="card-img-top hover-shadow" alt="Los Angeles Skyscrapers" />
                    <div class="card-body">
                        <h3 class="card-title">대리산책러 지원해보기</h3>
                        <p class="card-text">
                            대리산책러가 되어서 다양한 강아지들과 산책해보세요! 귀여운 강아지들과 친구가 될 수 있어요.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card rec">
                    <img src="./images/welcome-petsitter.png"
                         class="card-img-top hover-shadow" alt="Palm Springs Road" />
                    <div class="card-body">
                        <h3 class="card-title">펫시터 지원해보기</h3>
                        <p class="card-text">
                            펫시터가 되어서 다양한 강아지들을 돌봐주세요! <br /> 귀여운 강아지들과 친구가 될 수 있어요.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	<!-- 기배 Modal 끝 -->


</body>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
  // 페이지가 로드되면 초기 모달을 자동으로 열도록 설정
  $(document).ready(function(){
    $('#initialModal').modal('show');
  });
</script>
</html>