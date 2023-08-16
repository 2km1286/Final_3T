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
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>결제창</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    .payment-form {
      background: #f8f9fa;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .form-header {
      text-align: center;
    }

    .form-header h5 {
      margin-bottom: 20px;
    }

    .payment-details {
      background: #fff;
      padding: 15px;
      border-radius: 10px;
    }

    .btn-pay {
      background-color: #007bff;
      border-color: #007bff;
      color: #fff;
      padding: 10px 20px;
      font-size: 18px;
      border-radius: 5px;
    }

    .btn-pay:hover {
      background-color: #0056b3;
    }
  </style>
  <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

</head>

<body>
  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="payment-form">
          <div class="form-header">
            <h5>결제 정보 입력</h5>
          </div>
          <div class="payment-details">
            <form action="sittingpaying.action" id="payingForm">
              <div class="form-group">
                <label for="cardNumber">카드 번호</label>
                <input type="text" class="form-control" id="cardNumber" placeholder="1234-5678-1234-5678">
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="expirationDate">만료일</label>
                  <input type="text" class="form-control" id="expirationDate" placeholder="MM/YY">
                </div>
                <div class="form-group col-md-6">
                  <label for="cvv">CVV</label>
                  <input type="text" class="form-control" id="cvv" placeholder="123">
                </div>
              </div>
              <div class="form-group">
                <label for="name">카드 소유자명</label>
                <input type="text" class="form-control" id="name" placeholder="홍길동">
              </div>
              <button type="button" class="btn btn-pay btn-block" id="payBtn">결제하기</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <script>

	$(function()
	{
		$("#payBtn").click(function()
		{
			$("#payingForm").submit();
		});
	});
</script>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
