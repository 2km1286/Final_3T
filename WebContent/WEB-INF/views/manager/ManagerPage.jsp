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
		 
  
  
  <style type="text/css">
  body 
  {
  overflow-x: hidden;
}
h2
{
	color: #312A25;;
}
hr
{
	background-color: #312A25;;
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
    background-color: #312A25;
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

#emergency-report
{
   background-color: #FF0000; /* 붉은색 배경 */
   color: #FFFFFF; /* 흰색 텍스트 */
   font-size: 16px;
   padding: 10px 20px;
   border: none;
   border-radius: 5px;
   box-shadow: 0 2px 6px rgba(0, 0, 0, 0.4); /* 그림자 효과 */
   transition: background-color 0.3s ease; /* 색상 변경 시 부드러운 전환 */
   cursor: pointer;
   animation: vibration 3s infinite; /* 0.5초 간격으로 진동하는 애니메이션 반복 적용 있을 경우에만?? 가능?*/
   
  
}
#emergency-report:hover
{
	background-color: #FF3333; /* 더 진한 붉은색 배경 */
  	transform: scale(1.05); /* 호버 시 약간 커지는 효과 */
}

/* 애니메이션 흔들기 */
@keyframes vibration {
  0% { transform: translateX(0) translateY(0); }
  10% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  20% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  30% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  40% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  50% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  60% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  70% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  80% { transform: translateX(2px) translateY(2px) rotate(-2deg); }
  90% { transform: translateX(-2px) translateY(-2px) rotate(2deg); }
  100% { transform: translateX(0) translateY(0); }
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

<style type="text/css">

.table
{
	border-color: #007BFF;
	
}
.table th
{
	padding: 0px;
	text-align:center;
	font-size: medium;
	background-color: #312A25;;
	
}
.table td
{
	padding: 2px;
	font-size: medium;
	text-align: center;
	color: black;
}
 table.table-hover > tbody > tr:hover {
    background-color: #gray;
    color: white;
    cursor: pointer;
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
					, url:"managercompletereport.action"
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
					, url:"managerreportlist.action"
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
			
			$("#memberList").click(function()
					{
						$.ajax(
						{
							type:"POST"
							, url:"managermemberlist.action"
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
			$("#graph").click(function()
					{
						$.ajax(
						{
							type:"POST"
							, url:"managerchartform.action"
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
			$("#completeAcc").click(function()
					{
						$.ajax(
						{
							type:"POST"
							, url:"managercompleteacc.action"
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
<body style="background-color: white;">
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">
        <!-- 사이드바 -->
        <div class="col-lg-3">
            <div id="sidebar-wrapper" style="background-color: #312A25;">
            <h3 style="margin-left: 10px; color: white; margin-top: 20px;">
            <img alt="adminImg" src="images/adminImg.png" width="50px;" style="margin: 5px;">
            	관리 페이지</h3>
            	
            	<span style="font-size: small; color: blue; margin-left:100px; font-style: italic;">
            	<span style="color:white;">접속된 관리자 : </span>김기민</span>
                <ul class="sidebar-nav" style="margin-left:0; margin-top: 50px;">
                    
                    <li id="reportList">
                            <span style="margin-left:10px;">신고현안 및 비상관리</span>
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

        <!-- 메인 콘텐츠 -->
        <div class="col" id="mainContent" style="margin-left: -200px;">
			<c:import url="/WEB-INF/ajax/manager/ManagerReportListForm.jsp"></c:import>
		</div>
	</div>
</div>

	



<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
</body>

</html>
