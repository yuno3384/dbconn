<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name ="google-signin-client_id" content="846205080823-fgmktrjiqgvictpkg36qcrh3isopqd11.apps.googleusercontent.com">
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
.idCheck_off{

	display : inline;
	border : none;
	background-color : #f8d7da;

}
.ui-datepicker-week-end {color:red;}
.ui-datepicker-week-end .ui-state-default {color:red;}

img.ui-datepicker-trigger { width: 16px; height: 16px;}
</style>
<script type="text/javascript" src="resources/js/SignUp.js"></script>
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
 <div class="text-center mb-3">
        <p>Sign up with:</p>
        <button type="button" class="btn btn-link btn-floating mx-1">
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
  <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
</svg>
        </button>

        <button id="GgCustomLogin" type="button" class="btn btn-link btn-floating mx-1">
          <a href="javascript:void(0)">
          <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
  <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
</svg>
		</a>
        </button>

        <button onclick="kakaoLogin();" type="button" class="btn btn-link btn-floating mx-1">
        <a href="javascript:void(0)">
          <img src="resources/kakao_login_medium.png"/>
        </a>
        </button>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
Kakao.init('d5c23c0ed89c9f83428102c4388cc45a'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
        <button type="button" class="btn btn-link btn-floating mx-1">
          <a id="naverIdLogin_loginButton" href="javascript:void(0)">
          <img style="width :35px; height:35px; " src="resources/btnD_아이콘사각.png"/>
      </a>
        </button>
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>

<script>

var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "cVmUE35eT6fcVCL8gV6N", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
			callbackUrl: "http://localhost:8080/japan/index.do", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
			isPopup: false,
			callbackHandle: true
		}
	);	

naverLogin.init();

window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		if (status) {
			var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
    		
			console.log(naverLogin.user); 
    		
            if( email == undefined || email == null) {
				alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
				naverLogin.reprompt();
				return;
			}
		} else {
			console.log("callback 처리에 실패하였습니다.");
		}
	});
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
	openPopUp();
	setTimeout(function() {
		closePopUp();
		}, 1000);
	
	
}
</script>
      
      
      
      
      
      </div>
	
      <p class="text-center">or:</p> 

      <!-- Email input -->
      <div class="form-outline mb-3">
        <label class="form-label" for="m_email_id"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-check-fill" viewBox="0 0 16 16">
  <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.026A2 2 0 0 0 2 14h6.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.606-3.446l-.367-.225L8 9.586l-1.239-.757ZM16 4.697v4.974A4.491 4.491 0 0 0 12.5 8a4.49 4.49 0 0 0-1.965.45l-.338-.207L16 4.697Z"/>
  <path d="M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-1.993-1.679a.5.5 0 0 0-.686.172l-1.17 1.95-.547-.547a.5.5 0 0 0-.708.708l.774.773a.75.75 0 0 0 1.174-.144l1.335-2.226a.5.5 0 0 0-.172-.686Z"/>
</svg></label>
        <input type="text" name ="m_email_id" id="m_email_id" class="form-control-inline w-40" /> @
        <select class="form-control-inline w-40" name="m_email_site" id="m_email_site">
        <option>이메일주소</option>
        <option>naver.com</option>
        <option>gmail.com</option>
        <option>hanmail.net</option>
        <option>nate.com</option>
        </select>
        <button id="checkId">아이디 확인</button>
 
        <input type="text" class="idCheck_off"  id="idCheck"/>
      </div>

      <!-- Username input -->
      <div class="form-outline mb-3">
        <label class="form-label" for="m_name"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
  <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
</svg></label>
        <input type="text" name="m_name" id="m_name" class="form-control" style="display : inline-block; width: 94%; "/>
      </div>

      <!-- Password input -->
      <div class="form-outline mb-3">
        <label class="form-label" for="m_pwd"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pass-fill" viewBox="0 0 16 16">
  <path d="M10 0a2 2 0 1 1-4 0H3.5A1.5 1.5 0 0 0 2 1.5v13A1.5 1.5 0 0 0 3.5 16h9a1.5 1.5 0 0 0 1.5-1.5v-13A1.5 1.5 0 0 0 12.5 0H10ZM4.5 5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1Zm0 2h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1 0-1Z"/>
</svg></label>
        <input type="password" name="m_pwd" id="m_pwd" class="form-control" style="display : inline-block; width: 94%; "/>
      </div>

      <!-- Repeat Password input -->
      <div class="form-outline mb-3">
        <label class="form-label" for="m_rePwd"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-all" viewBox="0 0 16 16">
  <path d="M8.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L2.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093L8.95 4.992a.252.252 0 0 1 .02-.022zm-.92 5.14.92.92a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 1 0-1.091-1.028L9.477 9.417l-.485-.486-.943 1.179z"/>
</svg></label>
        <input type="password" name="m_rePwd" id="m_rePwd" class="form-control" style="display : inline-block; width: 94%; "/>
      </div>
      <!-- Birthday input -->
      <div class="form-outline mb-3">
        <label class="form-label" for="m_birthday"><img alt="생일" src="resources/birthday.png" style="width: 16px; height:16px; "></label>
        <input type="text" name="m_birthday" id="m_birthday" class="form-control" style="display : inline-block; width: 94%; " readonly="readonly"/>
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
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</body>
</html>