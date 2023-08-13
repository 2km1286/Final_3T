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
<title>반려견등록페이지</title>

<!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		
		
	});


</script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Jua:400');

*{font-family: "Jua"}

span.badge
{ 
	font-family: "Jua"; font-size: 23px; border-radius: 3px; margin-bottom: 20px;
	background-color: #4caf50; color: white; font-weight: lighter;
}

.detailBtn
{
	 border: 1px solid #4caf50;
	 background-color: white;
	 padding: 5px 5px 5px 5px;
	 color: #4caf50;
	 border-radius: 3px;
	 font-size: 18px;
}
.detailBtn:hover
{
	 border: 1px solid #4caf50;
	 background-color: #4caf50;
	 padding: 5px 5px 5px 5px;
	 color: white;
	 border-radius: 3px;
	 font-size: 18px;
}

.smallTitle { color: #4caf50; width: 80%;}

.infoOneNoline { padding-bottom: 10px; margin-bottom: 20px;}

.container {padding: 20px; /* 테두리와 요소들 사이의 간격 조정 */
  border: 1px solid black; /* 폼에 테두리 설정 */
  border-radius: 10px;}
</style>

</head>



<body>
<div class="container">

		<h3><span class="badge">반려견 등록하기</span></h3>
		
		<div class="infoOneNoline">		
		<h4><span class="smallTitle">사진</span></h4>
        <input type="file" accept="image/*" style="display: block;">
		</div>
		
		<div class="infoOneNoline">	
		<h4><span class="smallTitle">이름</span></h4>
        <input type="text"><br><br>
        </div>
        
        <div class="infoOneNoline">	
        <h4><span class="smallTitle">특이사항</span></h4>
        <textarea rows="" cols=""></textarea>
        </div>
        
        <div class="infoOneNoline">	
        <div class="select-container">
          <label for="gender"><h4><span class="smallTitle">성별</span></h4></label>
          <select id="gender" name="gender">
            <option value="1">중성</option>
            <option value="1">남자</option>
            <option value="2">여자</option>
          </select>
        </div>
        </div>
        
        <div class="infoOneNoline">	
       <h4><span class="smallTitle">무게(kg)</span></h4>
        <input type="text">
        </div>
        
        <div class="infoOneNoline">	
        <div class="select-container">
          <label for=""><h4><span class="smallTitle">출생년도</span></h4></label>
          <select id="" name="">
            <option value="1">데이트피커인데</option>
            <option value="2">어디서가져오는지까먹</option>
          </select>
        </div>
        </div>
        
        <div class="infoOneNoline">	
        <div class="select-container">
          <label for=""><h4><span class="smallTitle">종</span></h4></label>
          <select id="" name="">
            <option value="1">범례</option>
            <option value="2">테이블에서</option>
            <option value="2">가져오기</option>
          </select>
        </div>
		</div>
					
        <br />
        <span id="err" style="display: none;">* 필수 항목들을 모두 입력해주세요.</span>
        <br />
        
        <div class="infoOneNoline">	
        <button type="button" id="petInsert" class="detailBtn">등록하기</button>
        <button type="reset" id="" class="detailBtn">초기화</button>
        </div>
</div>
</body>
</html>