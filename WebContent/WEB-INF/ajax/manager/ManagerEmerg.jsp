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
<title>비상상황</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>

<script type="text/javascript">
//페이지 로딩 시에 실행되는 코드
	$(document).ready(function()
	{
		 var count = <%=request.getAttribute("count")%>
		 if (count < 1) 
	 {
		 $("#emergency-report").css("animation", "none");
	 }
		 
	});
	
	// 펫시터 신고내역 클릭시
	$("#pet-sitting-report").click(function()
	{
		PetSittingReport();
	});
	
	// 대리산책 신고내역 클릭시
	$("#dog-walking-report").click(function()
	{
		DogWalkReport();
	});
	
	// 프로필 신고내역 클릭시
	$("#profile-report").click(function()
	{
		ProfileReport();
	});
	
	// 펫시터 신고내역 버튼 클릭스 호출
	function PetSittingReport()
	{
		$.ajax(
		{
			type : "POST",
			url : "sittingreportlist.action",
			async : true,
			success : function(data)
			{
				$("#subContent").html(data);

			},
			error : function(e)
			{
				alert(e.responseText);
			}

		});
	}
	
	
	// 대리산책 신고내역 버튼 클릭시 호출
	function DogWalkReport()
	{
		$.ajax(
		{
			type : "POST",
			url : "walkreportlist.action",
			async : true,
			success : function(data)
			{
				$("#subContent").html(data);

			},
			error : function(e)
			{
				alert(e.responseText);
			}

		});
	}
	
	// 프로필 신고내역 버튼 클릭시 호출
	function ProfileReport()
	{
		$.ajax(
		{
			type : "POST",
			url : "profilereportlist.action",
			async : true,
			success : function(data)
			{
				$("#subContent").html(data);

			},
			error : function(e)
			{
				alert(e.responseText);
			}

		});
	}
	
	// 펫시팅 비상접수 처리하기
	function DeleteSittingEmerg(serSid) 
	{
    if (confirm("처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "deletesittingemerg.action?serSid="+ serSid+"&miSid="+${miSid} ,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=4";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}
	
	// 대리산책 비상접수 처리하기
	function DeleteWalkEmerg(werSid) 
	{
    if (confirm("처리하시겠습니까?")) {
        $.ajax({
            type: "POST",
            url: "deletewalkemerg.action?werSid="+ werSid+"&miSid="+${miSid} ,
            async: true,
            success: function(data) 
            {
                window.location.href = "managermain.action?flag=4";
            },
            error: function(e) 
            {
                alert(e.responseText);
            }
        	});
   	 	}
	}
	
</script>


</head>
<body>

	<div style="margin-left: -10%; margin-bottom:50px; width: 120%;" id="subContent" >
		<div>
			<h2 style="margin-top: 20px;">신고현안 및 비상관리</h2>
			<hr />
			<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
			<button class="report-button" id="dog-walking-report">대리산책
				신고</button>
			<button class="report-button" id="profile-report">프로필 신고</button>
			<button class="report-button" id="emergency-report"
			style="background-color: gray;">비상 상황</button>
		</div>
		
		<div class="legend-section" style="background-color: #F5F5F5; padding: 20px; 
											border: 2px solid #333; margin-top: 20px;">
		    <h2>펫시팅 비상접수내역</h2>
		    <div id="completeTable" class="mt-4">
		        <table class="table table-bordered table-hover" id="tableComplete">
		            <thead>
		                <tr>
		                    <th style="color: white;">비상번호</th>
		                    <th style="color: white;">예약번호</th>
		                    <th style="color: white;">비상접수일자</th>
		                    <th style="color: white;">처리</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="list" items="${sittingEmergList }">
		                    <tr>
		                        <td>${list.serSid}</td>
		                        <td>${list.sbSid }</td>
		                        <td>${list.serDate }</td>
		                        <td><input class="report-button" type="button" value="처리하기"
		                        onclick="DeleteSittingEmerg(${list.serSid})"></td>
		                    </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		    </div>
		</div>
		
		<div class="legend-section" style="background-color: #F5F5F5; padding: 20px; 
											border: 2px solid #333; margin-top: 20px;">
		    <h2>펫시팅 비상완료내역</h2>
		    <div id="completeTable" class="mt-4">
		        <table class="table table-bordered table-hover" id="tableComplete">
		            <thead>
		                <tr>
		                    <th style="color: white;">비상번호</th>
		                    <th style="color: white;">예약번호</th>
		                    <th style="color: white;">비상접수일자</th>
		                    <th style="color: white;">처리자(관리자)</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="list2" items="${sittingEmergComplete }">
		                    <tr>
		                        <td>${list2.secSid}</td>
		                        <td>${list2.serSid }</td>
		                        <td>${list2.secDate }</td>
		                        <td>${list2.miName }</td>
		                    </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		    </div>
		</div>
		<div class="legend-section" style="background-color: #F5F5F5; padding: 20px; 
											border: 2px solid #333; margin-top: 20px;">
		    <h2>대리산책 비상접수내역</h2>
		    <div id="completeTable" class="mt-4">
		        <table class="table table-bordered table-hover" id="tableComplete">
		            <thead>
		                <tr>
		                    <th style="color: white;">비상번호</th>
		                    <th style="color: white;">예약번호</th>
		                    <th style="color: white;">비상접수일자</th>
		                    <th style="color: white;">처리</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="list3" items="${walkEmergList }">
		                    <tr>
		                        <td>${list3.werSid }</td>
		                        <td>${list3.wbSid }</td>
		                        <td>${list3.werDate }</td>
								<td><input class="report-button" type="button" value="처리하기"
								onclick="DeleteWalkEmerg(${list.werSid})"></td>
					        </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		    </div>
		</div>
		<div class="legend-section" style="background-color: #F5F5F5; padding: 20px; 
											border: 2px solid #333; margin-top: 20px;">
		    <h2>대리산책 비상완료내역</h2>
		    <div id="completeTable" class="mt-4">
		        <table class="table table-bordered table-hover" id="tableComplete">
		            <thead>
		                <tr>
		                    <th style="color: white;">비상번호</th>
		                    <th style="color: white;">예약번호</th>
		                    <th style="color: white;">비상접수일자</th>
		                    <th style="color: white;">처리자(관리자)</th>
		                </tr>
		            </thead>
		            <tbody>
		                <c:forEach var="list4" items="${walkEmergComplete }">
		                    <tr>
		                        <td>${list4.wecSid}</td>
		                        <td>${list4.werSid }</td>
		                        <td>${list4.wecDate }</td>
		                        <td>${list4.miName }</td>
		                    </tr>
		                </c:forEach>
		            </tbody>
		        </table>
		    </div>
		</div>
	</div>
</body>
</html>