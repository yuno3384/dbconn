<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuestion</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.5/index.global.min.js"></script>
<style type="text/css">
#div4{
	background: rgb(2,0,36);
	background: linear-gradient(90deg, rgba(2,0,36,0) 0%, rgba(117,121,9,1) 34%, rgba(64,163,121,1) 64%, rgba(48,175,154,1) 73%, rgba(23,194,206,1) 87%, rgba(14,201,225,1) 92%, rgba(5,208,244,1) 97%, rgba(0,212,255,1) 100%);
}
#div8{
	background: rgb(5,208,244);
background: linear-gradient(90deg, rgba(5,208,244,0.22172619047619047) 0%, rgba(0,212,255,1) 100%);
}
#calendar{
	width: 30%;
	height: 32rem;
}
.em-5{
	height: 5em;
}
.mt-65{
	margin-top: 4.5em !important;
}
</style>
</head>
<body>
<header>
<nav class="navbar navbar-expand-lg bg-danger-subtle">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">jQuestion</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.do"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
</svg></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu bg-danger-subtle">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <ul class="navbar-nav justify-content-end mb-2 mb-lg-0">
        <c:choose>
        <c:when test="${empty userId }">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login.do">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Signup.do">SignUp</a>
        </li>
        </c:when>
        <c:otherwise>
        <li class="nav-item">
          ${userName}님 환영합니다.
        </li>
        </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>
</header>


	<div class="container text-center" style="margin-left: 0px;">
		<div class="row">
	<!------------------ calendar ----------------->	
	
			<div id="calendar" class="positon-fixed top-0 start-0 mt-3 ms-3 bg-secondary bg-gradient"></div>
	<script>
      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth',
          themeSystem: 'bootStrap5',
          locale: "ko",
        });
        calendar.render();
//         $(".fc-daygrid-day-number").each(function(){

//         	var day = $(this).text();

//         	day = day.replace(/일/gi," ");

//         	$(this).text(day);
//       	});
        
      });   
      
    </script>
    
    <!--------------------Link ----------------------------->
    <div id="div2" class="position-fixed top-0 end-0 mt-65 col-sm-2 bg-success bg-opacity-75 bg-gradient text-white">
	<h4>Link</h4>
	<div class="row">
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://dictionary.goo.ne.jp/">
	<img alt="goo 辞書" src="resources/dictionary_goo.png" style="width: 40%; height:90%;" />
	</a>
	</div>	
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://kotobank.jp/">
	<img alt="コトバンク" src="resources/dictionary_kotobank.png" style="width: 70%; height:90%;" />
	</a>
	</div>	
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://www.yahoo.co.jp/">
	<img alt="ヤフー ジャパン" src="resources/Yahoo_Japan.png" style="width: 80%; height:70%;" />
	</a>
	</div>	
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://www.jlpt.or.kr/main/main2.asp">
	<img alt="日本語能力試験 JLPT" src="resources/jlpt.jpg" style="width: 80%; height:70%;" />
	</a>
	</div>	
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://blog.naver.com/japansisa/">
	<img alt="시사일본어사 블로그" src="resources/sisa.png" style="width: 90%; height:60%;" />
	</a>
	</div>	
	<div id="div21" class="mt-3 row-sm-2 em-5 text-body">			
	<a class="fs-1 taxt-danger  text-decoration-none " href= "https://www.nhk.or.jp/kokokoza/">
	<img alt="NHK 高校講座" src="resources/NHK.svg" style="width: 80%; height:70%;" />
	</a>
	</div>	
	</div>
	</div>
			<div id="div3" class="fs-2 mt-3 ms-3 col-sm-7 bg-danger bg-grient text-body">게시판</div>		
			<div id="div4" class="mt-3 ms-3 col-sm-5 ">sjjdjfdk</div>		
			
			<div id="div5" class="mt-3 ms-3 col-sm-3 bg-secondary bg-gradient text-white">sjjdjfd</div>
			
			<div id="div6" class="mt-3 ms-3 col-sm-3 bg-info bg-gradient text-white">sjjdj</div>
			<div id="div7" class="mt-3 col-sm-3 bg-warning bg-grient text-body">sjjdjfdkj</div>		
			<div id="div8" class="mt-3 col-sm-3">sjjdjfdk</div>		
		</div>
	</div>
</body>
</html>