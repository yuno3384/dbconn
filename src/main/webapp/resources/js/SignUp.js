
$(function() {
	
	// ajax 주요 키
	// 1. url : 요청할 주소, Controller에 있는 맵핑명
	// 2. data : 요청과 함께 서버에 보낼 문자열, JSON 객체
	// 3. type : form에서 전송하는 method(get/post)
	// 4. success : 요청이 성공이 되면 실행이 되는 함수(callback), function(){}으로 생성
	// 5. dataType : 서버에서 넘어온 데이터의 형식(자료형)
	// 6. error : 요청이 실채하면 실행이 되는 함수(callback), function(){}으로 생성
	
	// JS를 이용해서 채워주기 단,null에 주의 (java에서 이 데이터가 실제로 null인지 확인해야)
	$('#checkId').click(function() {
	
	var email = $("#m_email_id").val()+"@"+$("#m_email_site").val();
	var inputData = {m_email : email}; // json형식
	if(email == "@이메일주소"){inputData = {m_email : null};}
	// 작은 form태그 > 실행이 되면 나오는 결과를 success로 표현
	$.ajax({
		url: "checkId.do",
		data : inputData,
		type: "post",
		contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
		success: function(ajaxData) {
			if(email == null){alert('아이디를 입력해주세요.');
			$("#m_email_id").focus(); }
			else if(email.match("@이메일주소")){alert('이메일주소를 다시 확인해주세요.');
			$("#m_email_id").focus();
			}
			else{
				$("#idCheck").css({	
				"color" : "red"
				})
				$("#idCheck").val(ajaxData);};
		},
		error : function(err) {
			alert('에러 :'+err)
		}
		
	})
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
		      label.text('성공'); // 출력은 안되지만 이거 없으면 녹색체크가 화면에 안 뜬다=
	    }
// 	    errorPlacement: function(err, element){ // 유효성 에러 발생시 처리하는 로직
// 	        $(element).closest(".box-input").addClass("error");
// 	    },
	});
	
	 $("#m_birthday").datepicker({
		  
         showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
         buttonImage: "resources/calendar.png", // 버튼 이미지
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
/* 소셜 로그인(OAuth)*/

function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		url: 'https://people.googleapis.com/v1/people/me'
        // key에 자신의 API 키를 넣습니다.
		, data: {personFields:'birthdays', key:'AIzaSyDQiDcWmp78Hr1EXwoBzFKOAcp1zvthITI', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
		var profile = googleUser.getBasicProfile();
		console.log(profile)
	})
	.fail(function(e){
		console.log(e);
	})
}
function onSignInFailure(t){		
	console.log(t);
}


