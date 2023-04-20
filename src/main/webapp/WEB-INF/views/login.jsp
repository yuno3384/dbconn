<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<style type="text/css">
main{
	margin-top: 20%;
}
#ex1{
	width: 33%;
}
.w-30{
	width: 30%;
}
.w-40{
	width: 40%;
}
#btn{
	width: 30%;
	margin-left: 35%;
}
</style>
<!-- <script type="text/javascript">
$(function(){
	
    var userId = getCookie("Cookie_userid");
    $("#m_email").val(userId);
    
    if($("#userId").val() != "")
        $("#saveId").attr("checked", true);
});
 
function loginProcess(){
    var id = document.getElementById('userId');
    var pw = document.getElementById('userPw');
    var loginForm = document.getElementById('loginForm');
    
    if(id.value==""){
        alert("Enter ID");
        id.focus();
        return false;
    }else if(password.value==""){
        alert("Enter password");
        password.focus();
        return false;
    }else if($("#saveId").is(":checked")){
        var userId = $("#userId").val();
        setCookie("Cookie_userid", userId, 30);
        loginForm.submit();
    }else{
        deleteCookie("Cookie_userid");
        loginForm.submit();
    }
}

</script>-->
</head>
<body class="bg-danger-subtle">
<main>
	<!-- Pills navs -->
<div class="d-flex align-items-center justify-content-center">	
<ul class="nav nav-pills nav-justified mb-3" id="ex1" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="tab-login" data-mdb-toggle="pill" href="login2.do" role="tab"
      aria-controls="pills-login" aria-selected="true">로그인</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="tab-register" data-mdb-toggle="pill" href="Signup.do" role="tab"
      aria-controls="pills-register" aria-selected="false">회원가입</a>
  </li>
</ul>
<!-- Pills navs -->
</div>
<!-- Pills content -->
<div class="tab-content d-flex align-items-center justify-content-center">
  <div class="tab-pane fade show active w-30" id="pills-login" role="tabpanel" aria-labelledby="tab-login">
    <form action="check.do" method="post">
<!--       <div class="text-center mb-3"> -->
<!--         <p>Sign in with:</p> -->
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
      <div class="form-outline">
	        <input type="text" name ="m_email_id" id="m_email_id" class="form-control-inline w-40" /> @
	        <select class="form-control-inline w-50" name="m_email_site">
	<!--         <option>이메일주소</option> -->
	        <option>naver.com</option>
	        <option>gmail.com</option>
	        <option>hanmail.net</option>
	        <option>nate.com</option>
	        </select>
        <br>
        <label class="form-label" for="m_email_id">이메일</label>
       </div>

      <!-- Password input -->
       <div class="form-outline mb-4">
        <input type="password" name="m_pwd" id="m_pwd" class="form-control" />
        <label class="form-label" for="m_pwd">비밀번호</label>
      </div>
      

      <!-- 2 column grid layout -->
      <div class="row mb-4">
        <div class="col-md-6 d-flex justify-content-center">
          <!-- Checkbox -->
          <div class="form-check mb-3 mb-md-0">
            <input class="form-check-input" type="checkbox" value="" id="loginCheck" checked />
            <label class="form-check-label" for="loginCheck"> 자동로그인 </label>
          </div>
        </div>

        <div class="col-md-6 d-flex justify-content-center">
          <!-- Simple link -->
          <a href="#!">비밀번호 찾기</a>
        </div>
      </div>

      <!-- Submit button -->
      <button type="submit" id="btn" class="btn btn-primary btn-block mb-4">로그인</button>

      <!-- Register buttons -->
<!--       <div class="text-center"> -->
<!--         <p>이 사이트를 이용하려면? <a href="SignUp.do">회원가입!</a></p> -->
<!--       </div> -->
    </form>
  </div>
</body>
</html>