<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</head>
<body>
	<main class="ms-3 mt-5 me-3">
	<table class="table table-bordered text-center">
	<tr>
	<td>게시물번호</td>
	<td>게시물이름</td>
	<td>게시자</td>
	</tr>
	<c:forEach items="${boardList }" var="board" >
	<tr>
	<td><a href="showBoard.do?b_id=${board.b_id }">
	${board.b_id }</a>
 	<%-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  ${board.b_id }
</button> --%>
</td>
<%-- 	<jsp:include page="showBoard2?b_id=${board.b_id }"></jsp:include> --%>
	<td>${board.b_title }</td>
	<td>${board.b_writer }</td>
	</tr>
	</c:forEach>
	</table>
	</main>
</body>
</html>