<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 
%>
<%
	String memSid = (String)session.getAttribute("memSid"); // 최초 요청시 "0"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 시험 시작 페이지</title>

<style>

h1, h2, h4, h5 {
	font-family: "Jua";
	font-size: 20pt;
}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$().ready(function()
	{
		$("#agreeButton").click(function()
		{
			window.open.href="sittingteststart.action";
		});
	});
	
</script>



</head>
<body>

<section>
	<c:import url="/WEB-INF/components/index/HeaderForm.jsp">
	</c:import>
</section>
	
	<div class="bg-light">
    <div class="container mt-5" style="margin-bottom: 0px;">
        <h1 class="text-center mb-4">펫시팅 서비스 약관 동의</h1>

        <div class="card mb-4">
            <div class="card-header">
                주의사항
            </div>
            
            <div class="card-body">
                <ul>
                    <li>안전 보장: 모든 펫시팅 활동은 반려동물의 안전을 최우선으로 생각해야 합니다.</li>
                    <li>정시 출근: 약속된 시간에 정시에 도착하여 서비스를 제공해야 합니다.</li>
                    <li>반려동물 이해: 각 반려동물의 특성과 요구사항을 충분히 이해하고 대응해야 합니다.</li>
                    <li>긴급 상황 대응: 비상상황 발생 시 즉시 반려동물 주인과 연락하여 대응해야 합니다.</li>
                    <li>개인정보 보호: 고객의 개인정보와 반려동물에 관한 정보는 철저히 보호해야 합니다.</li>
                </ul>
            </div>
        </div>

        <div class="card mb-4">
            <div class="card-header">
                서비스 이용 약관
            </div>
            <div class="card-body">
                <p>본 서비스의 이용 약관은 아래와 같습니다. 전체 약관을 숙지하신 후 동의해 주세요.</p>
					<textarea class="form-control" rows="5" readonly>
                서비스 이용약관
                제 1 장 총칙
                제 1 조 (목적)
                이 약관은 주식회사 맡겨보개(이하 '회사'라 합니다.)가 운영하는 사이트(www.togaether.kr 이하 사이트)
                에서 회사가 제공하는 맡겨보개 중개 서비스를 회원이 이용함에 있어 회사와 회원간의 권리와 의무, 
                책임사항 및 회사의 서비스 이용절차에 관한 필요사항을 규정함을 목적으로 합니다.
                제 2조(용어의 정의)
                1. 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
                1) 홈페이지 서비스 : 회원이 회사가 운영하는 사이트에 가입하여 이용할 수 있는 인터넷
                웹 페이지 상의 서비스를 의미합니다.
                2) 회원 : 이 약관을 승인하고 회사와 서비스 이용 계약을 체결한 자를 말합니다.
                3) 이용계약 : 서비스 이용과 관련하여 회사와 회원 간에 체결하는 계약을 말합니다.
                4) 아이디(ID) : 맡겨보개 아이디(ID)는 서비스를 사용하기 위하여 필요한 아이디(ID)를 의미합니다. 
                   회원은 아이디를 입력하고 비밀번호를 등록한 후 휴대폰 본인인증을 거치고, 회사가 제시하는 약관에 
                   동의할 경우 회원가입이 이루어집니다.
                5) 비밀번호 : 회원정보의 보호를 위하여 회원이 설정하고 회사가 승인한 문자 또는 문자와 숫자의 조합을 
                   말합니다.
                6) 해제·해지 : 회사 또는 회원이 이용계약의 효력을 소급적으로 혹은 장래를 향해 상실시키는 것을 말합니다.
                7) 맡겨보개 : 반려동물 돌봄 관련 용역을 제공할 의사로 사이트 가입하고 별도로 회사의 승인절차를 거쳐 
                   회사의 맡겨보개 목록에 등록된 회원을 말합니다.
                8) 맡겨보개 서비스: 맡겨보개가 제공하는 반려견 돌봄 관련 서비스를 말합니다.
                9) 의뢰인 : 맡겨보개와 반려동물 돌봄 용역 계약을 체결한 회원을 말합니다.
               10) 개인간 거래 : 회사가 제공하는 서비스를 이용하지 않고 이메일, 연락처, 메신저 아이디 등 교환을 통한 개인간 거래를 말합니다.
               11) 맡겨보개 중개 서비스 : 회사의 서비스(www.togaether.kr)를 통하여 회원들에게 제공하는 중개서비스 및
                   관련 부가서비스 일체를 말합니다.
               12) 용역계약 : 반려동물 돌봄 서비스를 의뢰인이 이용하기 위해 맡겨보개와 의뢰인이 상호간 체결하는 계약을 말합니다.
               13) 용역금액: 의뢰인이 반려동물 돌봄 서비스 이용하는 대가로 지급한 금액
               14) 맡겨보개 등급제 : 맡겨보개는 돌봄 횟수, 평점에 따라 다른 등급을 부여받게 되며 이 등급에 따라 공제되는 수수료율이 달라집니다.
                2. 위 1항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 거래관행에 의합니다.</textarea>
				</div>
        </div>

        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="agreeCheck">
            <label class="form-check-label" for="agreeCheck">본 약관을 읽었으며 이에 동의합니다.</label>
        </div>

        <button type="button" class="btn btn-success btn-block" id="agreeButton" disabled>동의하고 진행하기</button>
    </div>
	</div>

<section>
	<c:import url="/WEB-INF/components/index/FooterForm.jsp">
	</c:import>
</section>

    <script>
        document.getElementById('agreeCheck').addEventListener('change', function () 
        {
            document.getElementById('agreeButton').disabled = !this.checked;
        });
        
    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>