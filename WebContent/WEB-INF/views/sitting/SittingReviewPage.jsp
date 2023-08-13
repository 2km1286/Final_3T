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
<title>펫시팅후기</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<script>
    
		
	    
</script>

</head>
<body>

<div>
<div class="row">
	<div class="col-3">
		<img src="images/cute.png" alt="" class="card-img-top"
			style="width: 100px; height: 100px; border-radius: 50%;">
	</div>
	<div class="col-5">
		<h5 class="card-title">별점 : 
		<c:forEach begin="1" end="${review.srwRate}" varStatus="loop">
		⭐
		</c:forEach>
		</h5>
		<h5 class="card-title">
		<c:forEach items="${reviewers}" var="reviewr">
			<c:if test="${reviewr.pMemSid eq review.pMemSid}">
			작성자 : ${reviewr.pJmNickName }
			</c:if>
		</c:forEach>
		</h5>
		<h5>제목 : ${review.srwTitle }</h5>
		<h6 class="card-subtitle text-muted">작성일 : ${review.srwDate}</h6>
		<br>
		<h6 class="card-subtitle">
		${review.srwContent }</h6>
	</div>
</div><br>

<div class="row">
	<div class="col text-center" style="margin-right: 35px;">
		<img src="images/cute.png" alt="" class="card-img-top" style="width: 100px; height: 100px;">
		<img src="images/cute.png" alt="" class="card-img-top" style="width: 100px; height: 100px;">
		<img src="images/cute.png" alt="" class="card-img-top" style="width: 100px; height: 100px;">
	</div>
</div>
</div>

</body>
</html>