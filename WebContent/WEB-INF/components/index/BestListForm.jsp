<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!-- 데이터로 예시 -->
<%-- <section>
  <div class="container">
    <h2>Top Pet Sitters</h2>
    <div class="row">
      Top 5 Pet Sitters Data (Replace this with actual data)
      <c:forEach var="petSitter" items="${topPetSitters}">
        <div class="col-md-2">
          <div class="card">
            <img src="path/to/profile_image.jpg" class="card-img-top" alt="Pet Sitter Image">
            <div class="card-body">
              <h5 class="card-title">${petSitter.name}</h5>
              <p class="card-text">Total Activities: ${petSitter.activities}</p>
              <p class="card-text">Location: ${petSitter.location}</p>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section> --%>


<%-- Dummy data for demonstration purposes --%>
<%-- Replace this with actual data from your application --%>

<style>
@import url('https://fonts.googleapis.com/css?family=Jua:400');

h2,h4 {
  font-family: "Jua";
  font-size: 20pt;
}

h2 span {
  font-weight: lighter;
  font-size: 18pt;
  color: red;
}

.card-rank {
  display: inline-block;
  width: 30px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  background-color: #f00;
  color: #fff;
  border-radius: 50%;
}

.card-rank-1 { background-color: #f00; }
.card-rank-2 { background-color: #ff6600; }
.card-rank-3 { background-color: #ff9900; }

.card-content {
  padding-top: 40px; /* Adjust the value to add space between card title and rank */
}

.card
 {
	background-color: #fff; /* 배경색을 하얀색으로 */
	color: #000; /* 글자색을 검정색으로 */
	padding: 10px; /* 패딩 추가 */
	border: 2px solid #000; /* 테두리 추가 */
	border-radius: 5px; /* 테두리 둥글기 설정 */
	margin-bottom: 20px; /* 아래쪽 여백 추가 */
}
</style>

<!-- 이하 동일한 HTML 코드 -->



  <div class="py-5 bg-light">
 
    <div class="container">
    
     <h2>
     <img alt="" src="images/besticon.png"  style="width: 30px;">
     인기 펫시터 <span>TOP 3</span></h2>
     <hr>
      <div class="row">
        <div class="col-md-4">
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-1">1위</span>
              <h4 class="card-title">[마스터 펫시터] 케어왕기배씨<br></h4>
              <h6 class="card-subtitle text-muted">후기 2,128개<br>예약완료 횟수 3,012건 </h6>
              <p class="card-text p-y-1" style="float: right;"><br>❤️ 5,102<br></p>
              <a href="#" class="card-link"><br>프로필 이동</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
        
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-2">2위</span>
              <h4 class="card-title">섬세하나</h4>
              <h6 class="card-subtitle text-muted">Support card subtitle</h6>
              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
              <a href="#" class="card-link">link</a>
              <a href="#" class="card-link">Second link</a>
            </div>
          </div>
          
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-3">3위</span>
              <h4 class="card-title">노력형집순이</h4>
              <h6 class="card-subtitle text-muted">Support card subtitle</h6>
              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
              <a href="#" class="card-link">link</a>
              <a href="#" class="card-link">Second link</a>
            </div>
          </div>
        </div>
      </div>
      <hr>
      </div><br><br>	
     <div class="container">
     
     <h2>
     <img alt="" src="images/besticon.png" style="width: 30px;">
     인기 대리산책러 <span>TOP 3</span></h2>
     <hr>
      <div class="row">
        <div class="col-md-4">
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-1">1위</span>
              <h4 class="card-title">달려라거북이</h4>
              <h6 class="card-subtitle text-muted">Support card subtitle</h6>
              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
              <a href="#" class="card-link">link</a>
              <a href="#" class="card-link">Second link</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-2">2위</span>
              <h4 class="card-title">전력질주토끼</h4>
              <h6 class="card-subtitle text-muted">Support card subtitle</h6>
              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
              <a href="#" class="card-link">link</a>
              <a href="#" class="card-link">Second link</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-block">
            <span class="card-rank card-rank-3">3위</span>
              <h4 class="card-title">느릿거북이</h4>
              <h6 class="card-subtitle text-muted">Support card subtitle</h6>
              <p class="card-text p-y-1">Some quick example text to build on the card title .</p>
              <a href="#" class="card-link">link</a>
              <a href="#" class="card-link">Second link</a>
            </div>
          </div>
        </div>
      </div>
      <hr>
      </div>
    
  </div>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
  <script src="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.min.js"></script>

