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

.editBtn{
	position: absolute;
    right: 30%;

}
table#notice{
	margin-top: 60px;

}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

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
<jsp:include page="link.jsp"></jsp:include>
			<div id="div3" class="mt-3 ms-3 col-sm-7 bg-danger bg-grient text-body">
			<h2>게시판</h2>
			<button id="insertBoard" type="button" class="btn btn-primary editBtn" data-bs-toggle="modal" data-bs-target="#exampleModal">
  				게시글 작성
			</button>

<jsp:include page="savemodal.jsp"></jsp:include>
			<div class="mt-5 ms-3 col-sm-5 ">
			<table id="notice" class="bg-secondary table table-bordered">
			<thead>
			<tr>
			<td class="col-sm-2">번호</td>
			<td class="col-sm-2">이름</td>
			<td class="col-sm-2">저자</td>
<!-- 			<td></td> -->
			</tr>
			
			</table>
			</div>
			
			
					
			</div>		
			
			<div id="div5" class="mt-3 ms-3 col-sm-3 bg-secondary bg-gradient text-white">sjjdjfd</div>
			
			<div id="div6" class="mt-3 ms-3 col-sm-3 bg-info bg-gradient text-white">sjjdj</div>
			<div id="div7" class="mt-3 col-sm-3 bg-warning bg-grient text-body">sjjdjfdkj</div>		
			<div id="div8" class="mt-3 col-sm-3">sjjdjfdk</div>		
		</div>
	</div>
</body>
</html>