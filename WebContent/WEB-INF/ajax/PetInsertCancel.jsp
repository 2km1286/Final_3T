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
<title>반려견등록폼</title>

<script type="text/javascript">
	
	$(function()
	{
		$("#petInsertBtn").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"petinsertform.action"
				, async:true
				, success:function(data)
				{
					$("#petRigthDiv").html(data);
										
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

<button type="button" class="petInsertBtn" id="petInsertBtn">✚</button>

</body>
</html>