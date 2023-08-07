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
		$("#petInsertCancel").click(function()
		{
			$.ajax(
			{
				type:"POST"
				, url:"petinsertcancel.action"
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
<div>

		<h2><span class="badge">반려견 등록하기</span></h2>
				
		<h3><span class="badge">사진</span></h3>
        <input type="file" accept="image/*" style="display: block;">
	
		<h3><span class="badge">이름</span></h3>
        <input type="text"><br><br>
        
        <h3><span class="badge">특이사항</span></h3>
        <textarea rows="" cols=""></textarea>
        
        <div class="select-container">
          <label for="gender"><h3><span class="badge">성별</span></h3></label>
          <select id="gender" name="gender">
            <option value="1">중성</option>
            <option value="1">남자</option>
            <option value="2">여자</option>
          </select>
        </div>
        
        <h3><span class="badge">무게(kg)</span></h3>
        <input type="text">
        
        <div class="select-container">
          <label for=""><h3><span class="badge">출생년도</span></h3></label>
          <select id="" name="">
            <option value="1">데이트피커인데</option>
            <option value="2">어디서가져오는지까먹</option>
          </select>
        </div>
        
        <div class="select-container">
          <label for=""><h3><span class="badge">종</span></h3></label>
          <select id="" name="">
            <option value="1">범례</option>
            <option value="2">테이블에서</option>
            <option value="2">가져오기</option>
          </select>
        </div>
					
        <br />
        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
        <br />
        
        <button type="button" id="petInsert" class="detailBtn">등록하기</button>
        <button type="reset" id="" class="detailBtn">초기화</button>
        <button type="button" id="petInsertCancel" class="detailBtn">등록취소</button>

</div>
</body>
</html>