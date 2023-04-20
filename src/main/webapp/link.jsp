<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.modal_table{
	border: none;
	position: absolute;
    left: 6em;
}
</style>
</head>
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
</body>
</html>