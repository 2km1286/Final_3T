<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
  <!-- Mobile Specific Meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- bootstrap core css -->
 
  <!-- Custom styles for this template -->
  <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
		 
<!-- FONT jua -->
  <style>
  @import url('https://fonts.googleapis.com/css?family=Jua:400');
  
  </style>
  
  
  <style type="text/css">
  body 
  {
  overflow-x: hidden;
}

#sidebar-wrapper 
{
  z-index: 1000;
  position: fixed;
  left: 0;
  width: 250px;
  height: 100%;
  overflow-y: auto;
  background-color: #312A25;
}

#page-content-wrapper 
{
  margin-left: 0px; /* 사이드 바 너비 만큼 여백을 둡니다. */
  padding: 10px;
}

/* Sidebar Styles */

.sidebar-nav 
{
  margin: 0;
  padding: 0;
  list-style: none;
}

.sidebar-nav li 
{
  margin-top:20px;
  text-indent: 20px;
  line-height: 40px;
  color: #999999;
}
.container
{
	margin-right: 0;
	margin-left: 10%;
}
.sidebar-nav li :hover
 {
  text-decoration: none;
  color: #fff;
  background: #312A25;
  cursor: pointer;
}

.sidebar-nav li :active,
.sidebar-nav li :focus 
{
  text-decoration: none;
}

.sidebar-nav > .sidebar-brand 
{
  height: 65px;
  font-size: 18px;
  line-height: 60px;
}

.sidebar-nav > .sidebar-brand a
 {
  color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover 
{
  color: #fff;
  background: none;
}
.report-button {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    margin-right: 10px;
    cursor: pointer;
}
.report-button:hover {
    background-color: #0056b3;
}
.card-buttons {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: -20px;
        
    }
.card-buttons button {
        padding: 5px 10px; /* Adjust padding to change button size */
        font-size: small; /* Adjust font size of the button text */
    }
    
  </style>
  
<script type="text/javascript">
$(function()
		{
			// 처리완료된 신고
			$("#completeReport").click(function()
			{
				$.ajax(
				{
					type:"POST"
					, url:"completereport.action"
					, async:true
					, success:function(data)
					{
						$("#mainContent").html(data);
											
					}
					, error:function(e)
					{
						alert(e.responseText);
					}
					
				});	
			});
			
			// 신고 현안 및 비상관리
			$("#reportList").click(function()
			{
				$.ajax(
				{
					type:"POST"
					, url:"reportlist.action"
					, async:true
					, success:function(data)
					{
						$("#mainContent").html(data);
											
					}
					, error:function(e)
					{
						alert(e.responseText);
					}
					
				});	
			});
		});
</script>



</head>
<body>
<!------ Include the above in your HEAD tag ---------->


<div class="container" >
    <div class="row">
        <!-- Sidebar -->
        <div class="col-lg-3" >
            <div id="sidebar-wrapper">
            	<h2 style="margin-left: 20px; color: white; margin-top: 20px;">관리 페이지</h2>
            	
            	<span style="font-size: small; color: blue; margin-left:100px; font-style: italic;">
            	<span style="color:white;">접속된 관리자 : </span>김기민</span>
                <ul class="sidebar-nav" style="margin-left:0;">
                    
                    <li id="reportList">
                            <span style="margin-left:10px;">	신고 현안 및 비상관리</span>
                    </li>
                    <li id="graph">
                            <span style="margin-left:10px;">통계</span>
                    </li>
                    <li id="completeReport">
                            <span style="margin-left:10px;">처리완료된 신고</span>
                    </li>
                    <li id="completeAcc">
                            <span style="margin-left:10px;">사고처리 내역</span>
                    </li>
                    <li id="memberList">
                            <span style="margin-left:10px;">회원관리</span>
                    </li>
                </ul>
            </div>
            <!-- /#sidebar-wrapper -->
        </div>

        <!-- Main Content -->
        <div class="mainArea" id="mainContent" >
			<c:import url="/WEB-INF/components/ManagerReportList.jsp"></c:import>
		  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>
		  </div>
		  </div>

</body>

</html>
