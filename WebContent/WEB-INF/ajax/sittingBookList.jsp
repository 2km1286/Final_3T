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
<title>돌봄장소예약내역</title>
</head>
<body>

<div><!-- 예약내역 눌렀을 때 -->
   		<div>휴일이 표시된 달력이 있고</div>
   		
   		<h3><span class="badge">예약 내역</span></h3><!-- 그 달의 예약 내역이 보인다-->
   		<div>
   		
   			<div class="card">
				<div class="card-header d-flex justify-content-between"">
					펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
				</div>	
		    	  <div class="row g-0">
		    	    <div class="col-md cardInfo" >
		    	      <div class="card-body">
		    	        <div class="oneText">
		    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
		    		        <span class="card-text" style="font-size: 14pt;">2023-08-04 14:00 ~ 2023-08-05 16:00</span>
		    	        </div>
		    	      </div>
		    	    </div>
		    	  </div>
		    </div>
		    
		    <div class="card">
				<div class="card-header d-flex justify-content-between"">
					펫시팅 <button type="button" class="detailBtn">자세히보러가기</button>
				</div>	
		    	  <div class="row g-0">
		    	    <div class="col-md cardInfo" >
		    	      <div class="card-body">
		    	        <div class="oneText">
		    		        <span class="card-text"><small class="text-muted">시작일~종료일</small></span><br>
		    		        <span class="card-text" style="font-size: 14pt;">2023-08-06 14:00 ~ 2023-08-06 22:00</span>
		    	        </div>
		    	      </div>
		    	    </div>
		    	  </div>
		    </div>
   		
   		</div>
    		
   	</div><!-- 예약내역 눌렀을 때 끝 -->



</body>
</html>