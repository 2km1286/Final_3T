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
<title>관리자 현안</title>

</head>
<body>
        <div class="col-lg-9" style="margin-left: 100px; width: 1200px;">
            <h2 style="margin-top: 20px;">신고 현안 및 비상관리</h2>
            <hr/>
             	<button class="report-button" id="pet-sitting-report">펫시팅 신고</button>
    			<button class="report-button" id="dog-walking-report">대리산책 신고</button>
   				<button class="report-button" id="profile-report">프로필 신고</button>
        </div>
        
        <div id="cardContainer" class="col-lg-9 mt-4"style="margin-left: 100px;">
		      <!-- 카드 데이터를 미리 선언 -->
		      <c:set var="cards">
		        <div class="col-md-4">
		          <div class="card" >
		            <img src="images/walktestpro.jpg" alt="" class="card-img-top" >
		            <div class="card-body">
		              <h5 class="card-title"style="font-size: medium;">[마스터 산책러] 멍멍박사</h5>
		              <h6 class="card-subtitle text-muted">시간 약속을 잘 지키는 성실한 집사입니다!</h6><br>
		              
		            </div>
		            <div class="card-buttons">
                    <button class="btn btn-danger mr-1" onclick="openPenaltyModal()">징계</button>
                    <button class="btn btn-warning mr-1" onclick="alertReturn()">반려</button>
                    <button class="btn btn-info mr-1">수정요청</button>
                </div>
                <div class="card-buttons mt-2 mb-2">
                    <button class="btn btn-secondary mr-1">블라인드처리</button>
                    <button class="btn btn-secondary">블라인드해제</button>
                </div>
		          </div>
		        </div>
		      </c:set>
		
		      <!-- 기본 카드 9개 표시 -->
		      <c:forEach var="i" begin="1" end="9">
		        <c:if test="${i % 3 == 1}">
		          <div class="row">
		        </c:if>
		        <c:out value="${cards}" escapeXml="false" />
		        <c:if test="${i % 3 == 0 || i == 9}">
		          </div>
		          <br>
		        </c:if>
		      </c:forEach>
		    
		     <!-- 징계 선택 모달 창 -->
    <div class="modal fade" id="penaltyModal" tabindex="-1" role="dialog" aria-labelledby="penaltyModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="penaltyModalLabel">징계 선택</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p>정지 기간을 선택해주세요:</p>
                    <div class="btn-group" role="group" aria-label="정지 기간 선택">
                        <button type="button" class="btn btn-secondary" onclick="penaltySelected(3)">3일정지</button>
                        <button type="button" class="btn btn-secondary" onclick="penaltySelected(5)">5일정지</button>
                        <button type="button" class="btn btn-secondary" onclick="penaltySelected(7)">7일정지</button>
                        <button type="button" class="btn btn-secondary" onclick="penaltySelected(-1)">영구정지</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // 모달 창 열기
        function openPenaltyModal() {
            $("#penaltyModal").modal("show");
        }

        // 선택된 징계 옵션을 처리하는 JavaScript 함수
        function penaltySelected(days) {
            if (days === -1) {
                // 영구정지일 경우, 처리하는 로직 추가
                console.log("영구정지");
            } else {
                // 정지일 경우, 처리하는 로직 추가 (예: 서버로 요청을 보내 정지 기간 등록)
                console.log(days + "일정지");
            }

            // 모달 창 닫기
            $("#penaltyModal").modal("hide");
        }
        
        function alertReturn(){
        	if (confirm("정말 반려시키겠습니까?")) {
        	    // 사용자가 확인 버튼을 누른 경우
        	    alert("반려되었습니다.");
        	}
        }
    </script>
		     <script>
		    // 무한 스크롤 함수
		    function infiniteScroll() {
		      // 현재 스크롤 위치
		      var scrollTop = $(window).scrollTop();
		      // 화면의 높이
		      var windowHeight = $(window).height();
		      // 문서 전체 높이
		      var documentHeight = $(document).height();
		
		      // 스크롤이 문서 맨 아래에 도달하면 새로운 카드를 추가
		      if (scrollTop + windowHeight >= documentHeight) {
		        // 새로운 카드를 추가하는 작업을 여기에 작성합니다.
		        // 예시로 9개의 기존 카드를 복사하여 추가하는 코드를 작성합니다.
		        var cards = `<c:out value="${cards}" escapeXml="false" />`;
		        for (var i = 0; i < 9; i++) {
		          $("#cardContainer").append(cards);
		        }
		      }
		    }
		
		    // 스크롤 이벤트를 감지하여 무한 스크롤 함수 호출
		    $(window).on("scroll", infiniteScroll);
		
		    // 초기에 한번 스크롤 이벤트를 발생시키기 위해 호출
		    infiniteScroll();
		  </script>
		  </body>
</html>