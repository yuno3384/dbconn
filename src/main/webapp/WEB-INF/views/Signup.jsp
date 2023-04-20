<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<style type="text/css">
main{
	margin-top: 20%;
}
#ex1{
	width: 30%;
}
#pills-login > form > button{
	width: 30%;
	margin-left: 35%;
}
.ms-13{
	margin-left: 35%;
}
.w-40{
	width: 40%;
}

#btn{
	width: 30%;
	margin-left: 35%;
}
#pills-register{

	width: 30%; 
}
.form-control-inline{
	display: inline;
}
select{
	border: 1px solid #999;
	border-radius: 5%;
	height: 20%;

}

</style>
<script type="text/javascript">
$(function() {
	
	// ajax 주요 키
	// 1. url : 요청할 주소, Controller에 있는 맵핑명
	// 2. data : 요청과 함께 서버에 보낼 문자열, JSON 객체
	// 3. type : form에서 전송하는 method(get/post)
	// 4. success : 요청이 성공이 되면 실행이 되는 함수(callback), function(){}으로 생성
	// 5. dataType : 서버에서 넘어온 데이터의 형식(자료형)
	// 6. error : 요청이 실채하면 실행이 되는 함수(callback), function(){}으로 생성
	
	// JS를 이용해서 채워주기 단,null에 주의 (java에서 이 데이터가 실제로 null인지 확인해야)
	
	var email = $("#m_email_id").val()+"@"+$("#m_email_site").val();
	
	var inputData = {m_email : email}; // json형식
	// 작은 form태그 > 실행이 되면 나오는 결과를 success로 표현
	$('')
	$.ajax({
		url: "checkId.do",
		data : inputData,
		type: "post",
		contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
		success: function(ajaxData) {
			alert(ajaxData);
		},
		error: function() {
			alert('실패');
		}
		
	})
	$("#register").validate({
	     /**
	    * submitHandler : form 양식이 유효한 경우 실질적인 
	    * submit을 하기 위한 콜백 핸들러. 
	    * 유효성이 확인된 후 Ajax를 통해 처리
	    */
// 	    submitHandler: function() {
// 	        console.log("submit!!!!");
// 	    },
	    rules: { // 체크할 항목들의 룰 설정: html상에서 name이랑 매핑된다.
	        m_email_site: {
	        	required : true,
// 	            remote: "/"
	        },
	        m_pwd: {
	        	required : true,
	            rangelength: [8,13]
	        },
	        m_rePwd: {
	            required : true,
	            rangelength: [8,13],
	            equalTo : m_pwd
	        },
	        m_name: {
	            required : true,
	            rangelength: [2,5]
	        },
	        
	    },
	    messages : { //규칙체크 실패시 출력될 메시지
	        m_email_site: {
	            required : "이메일을 입력하세요",
// 	            remote : "존재하는 아이디입니다"
	        },
	        m_pwd: {
	            required : "비밀번호를 입력해주세요",
	            rangelength : "최소 {8}글자에서 {13}글자사이이어야 합니다",
	        },
	        m_rePwd: {
	            required : "비밀번호를 다시 한번 입력해주세요",
	            rangelength : "최소 {8}글자에서 {13}글자사이이어야 합니다",
	            equalTo : "비밀번호가 일치하지 않습니다."
	        },
	        m_name: {
	            required : "이름을 입력하세요",
	            rangelength : "최소 {2}글자에서 {5}글자사이이어야 합니다",
	        },
	        
	    },
	    success: function(label) {
		      label.addClass('valid');
		      label.text('성공'); // 출력은 안되지만 이거 없으면 녹색체크가 화면에 안 뜬다
		    }
// 	    errorPlacement: function(err, element){ // 유효성 에러 발생시 처리하는 로직
// 	        $(element).closest(".box-input").addClass("error");
// 	    },
	});
	
	 $("#m_birthday").datepicker({
		  
         showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
         buttonImage: "/application/db/jquery/images/calendar.gif", // 버튼 이미지
         buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
         changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
         changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
         minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
         nextText: '다음 달', // next 아이콘의 툴팁.
         prevText: '이전 달', // prev 아이콘의 툴팁.
         numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
         stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가. 
         yearRange: 'c-100:c+10', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
         showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다. ( ...으로 표시되는부분이다.) 
         currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
         closeText: '닫기',  // 닫기 버튼 패널
         dateFormat: "yy년mm월dd일", // 텍스트 필드에 입력되는 날짜 형식.
         showAnim: "slide", //애니메이션을 적용한다.  
         showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], // 요일의 한글 형식.
         monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.

    });

});

</script>
</head>

<body class="bg-danger-subtle">
<main>
	<!-- Pills navs -->
<div class="d-flex align-items-center justify-content-center">	
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="tab-login" data-mdb-toggle="pill" href="login.do" role="tab"
      aria-controls="pills-login" aria-selected="true">로그인</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="tab-register" data-mdb-toggle="pill" href="Signup.do" role="tab"
      aria-controls="pills-register" aria-selected="false">회원가입</a>
  </li>
</ul>
<!-- Pills navs -->
</div>
<!-- Pills content -->

  <div class="tab-pane fade show ms-13" id="pills-register" role="tabpanel" aria-labelledby="tab-register">
    <form id="register" action="insert.do" method="post">
<!--       <div class="text-center mb-3"> -->
<!--         <p>Sign up with:</p> -->
<!--         <button type="button" class="btn btn-link btn-floating mx-1"> -->
<!--           <i class="fab fa-facebook-f"></i> -->
<!--         </button> -->

<!--         <button type="button" class="btn btn-link btn-floating mx-1"> -->
<!--           <i class="fab fa-google"></i> -->
<!--         </button> -->

<!--         <button type="button" class="btn btn-link btn-floating mx-1"> -->
<!--           <i class="fab fa-twitter"></i> -->
<!--         </button> -->

<!--         <button type="button" class="btn btn-link btn-floating mx-1"> -->
<!--           <i class="fab fa-github"></i> -->
<!--         </button> -->
<!--       </div> -->

<!--       <p class="text-center">or:</p> -->

      <!-- Email input -->
      <div class="form-outline mb-3">
        <input type="text" name ="m_email_id" id="m_email_id" class="form-control-inline w-40" /> @
        <select class="form-control-inline w-50" name="m_email_site" id="m_email_site">
<!--         <option>이메일주소</option> -->
        <option>naver.com</option>
        <option>gmail.com</option>
        <option>hanmail.net</option>
        <option>nate.com</option>
        </select>
        <br>
        <label class="form-label" for="m_email_id">이메일</label>
      </div>

      <!-- Username input -->
      <div class="form-outline mb-3">
        <input type="text" name="m_name" id="m_name" class="form-control" />
        <label class="form-label" for="m_name">성명</label>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-3">
        <input type="password" name="m_pwd" id="m_pwd" class="form-control" />
        <label class="form-label" for="m_pwd">비밀번호</label>
      </div>

      <!-- Repeat Password input -->
      <div class="form-outline mb-3">
        <input type="password" name="m_rePwd" id="m_rePwd" class="form-control" />
        <label class="form-label" for="m_rePwd">비밀번호 확인</label>
      </div>
      <!-- Birthday input -->
      <div class="form-outline mb-3">
        <input type="text" name="m_birthday" id="m_birthday" class="form-control" readonly="readonly"/>
        <label class="form-label" for="m_birthday">생일</label>
      </div>

      <!-- Checkbox -->
      <div class="form-check d-flex justify-content-center mb-4">
        <input class="form-check-input me-2" type="checkbox" value="" id="registerCheck" checked
          aria-describedby="registerCheckHelpText" />
        <label class="form-check-label" for="registerCheck">
         	 가입에 동의합니다.
        </label>
      </div>

      <!-- Submit button -->
      <input type="submit" id="btn" class="btn btn-primary btn-block mb-3" value="회원 가입" />
    </form>
  </div>

<!-- Pills content -->
</main>
</body>
</html>