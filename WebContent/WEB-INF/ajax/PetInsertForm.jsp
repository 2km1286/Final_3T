<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!-- 벼리언니 이거 지우면 안대 화이팅해 언니 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript">

	$(function()
	{
		$("#petInsert").click(function()
		{
			//alert("dd");
		});
	});


</script>


</head>
<body>

<form class="form" action="" method="post">
			
		<span class="badge myInfo">사진</span>
        <input type="file" accept="image/*" style="display: block;">
	
		<span class="badge myInfo">이름</span>
        <input type="text"><br><br>
        
        <span class="badge myInfo">특이사항</span>
        <textarea rows="" cols=""></textarea>
        
        <div class="select-container">
          <label for="gender"><span class="badge myInfo">성별</span></label>
          <select id="jmGender" name="jmGender">
            <option value="1">중성</option>
            <option value="1">남자</option>
            <option value="2">여자</option>
          </select>
        </div>
        
        <span class="badge myInfo">무게(kg)</span>
        <input type="text">
        
        <div class="select-container">
          <label for=""><span class="badge myInfo">출생년도</span></label>
          <select id="" name="">
            <option value="1">데이트피커인데</option>
            <option value="2">어디서가져오는지까먹</option>
          </select>
        </div>
        
        <div class="select-container">
          <label for=""><span class="badge myInfo">종</span></label>
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
</form>



</body>
</html>