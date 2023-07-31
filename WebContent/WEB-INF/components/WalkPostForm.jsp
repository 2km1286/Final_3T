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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>대리산책 공고글 폼1</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- icon -->
<link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">

<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />

</head>
<body>

<div class="container py-5 mx-auto">
	<h4 class="mb-4" style="margin:40px 20px 40px 225px;">대리산책 공고 올리기</h4>
			<div class="col-lg-6">
				<div class="card" style="width: 50rem; height: 1000px; margin:30px 20px 50px 230px;">
					
					<div class="md-form mb-3">
						<label for="form1">공고 제목</label>
  						<input type="text" id="form1" class="form-control" placeholder="제목을 작성해주세요.">
					</div>
    				
    				<div class="md-form">
    				<label for="form-content">공고글 내용</label>
                	<textarea id="form-content" class="form-control md-textarea" rows="13" placeholder="내용을 작성해주세요."></textarea>
            		</div>
            		<br>
            		
    				<div class="md-form">
    					<label for="form-content">공고 사진 등록</label>
    				</div>
    				<div>
    				<a href="#" class="btn btn-warning btn-md">사진 등록하기</a>
    				</div>
    				<br>
    				
    				<div class="md-form mb-3">
						<label for="form1">지역</label>
						<input type="text" id="form1" class="form-control yellow lighten-4" placeholder="주소를 검색해주세요.">
					</div>
					
					<div class="container mt-5">
				 	<div class="md-form mb-3">
						<label for="form2">가능한 시간</label><br>
							<select class="browser-default custom-select">
			  					<option selected>가능 시간</option>
			  					<option value="1">오전 9시</option>
			  					<option value="2">오전 10시</option>
			 					<option value="3">오전 11시</option>
			 					<option value="4">오후 12시</option>
			 					<option value="5">오후 1시</option>
			 					<option value="6">오후 2시</option>
			 					<option value="7">오후 3시</option>
			 					<option value="8">오후 4시</option>
			 					<option value="9">오후 5시</option>
			 					<option value="10">오후 6시</option>
			 					<option value="11">오후 7시</option>
			 					<option value="12">오후 8시</option>
			 					<option value="13">오후 9시</option>
			 					<option value="14">오후 10시</option>
			 					<option value="15">오후 11시</option>
							</select>&nbsp;
							~
							&nbsp;
					 		<select class="browser-default custom-select">
			  					<option selected>가능 시간</option>
			  					<option value="1">오전 9시</option>
			  					<option value="2">오전 10시</option>
			 					<option value="3">오전 11시</option>
			 					<option value="4">오후 12시</option>
			 					<option value="5">오후 1시</option>
			 					<option value="6">오후 2시</option>
			 					<option value="7">오후 3시</option>
			 					<option value="8">오후 4시</option>
			 					<option value="9">오후 5시</option>
			 					<option value="10">오후 6시</option>
			 					<option value="11">오후 7시</option>
			 					<option value="12">오후 8시</option>
			 					<option value="13">오후 9시</option>
			 					<option value="14">오후 10시</option>
			 					<option value="15">오후 11시</option>
							</select>
				  		</div>
				  	</div>
				  	<br>
						
						<!-- <div class="container mt-5"> -->
				 			<div class="md-form mb-3">
								<label for="form2">최대견수</label><br>
									<select class="browser-default custom-select">
										<option selected>견수</option>
										<option value="1">1마리</option>
										<option value="2">2마리</option>
									</select>	
							</div>
							<br>
							
					<div class="form-check form-switch">
					<label class="form-check-label" for="flexSwitchCheckDefault">공개 비공개</label>
  					<input class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckDefault" />	
					</div>
					
    				</div><!-- close .card -->
    				
    				<!--공고 버튼-->
    				<div class="my-btn">
    					<a href="#" class="btn btn-warning btn-md text-center" style="margin: 5px 30px 30px 360px;">공고 등록하기</a>
  					</div>
	
		</div><!-- close .col-lg-6 -->
</div><!-- close .container py-5 mx-auto  -->


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</body>
</html>