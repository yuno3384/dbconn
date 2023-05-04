<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.5/index.global.min.js"></script>
</head>
<body class="bg-danger-subtle">    
      <div class="d-flex pt-5 justify-content-center align-items-center bd-highlight">
      <form action="updateBoard.do?b_id=${board.b_id }" method="post">
      <!-- 게시글번호와 그 속 Vo가 전부 담겨있음 > step으로는 구현 불가 > 별도 매핑 -->
         <input name="b_id" type="hidden" value="${board.b_id}" />
         <table class="table table-bordered">
            <tr>
               <td>제목</td>
               <td align="left">
               <input name="b_title" placeholder="${board.b_title }">
               </td>
            </tr>
            <tr>
               <td>작성자</td>
               <td align="left">
               ${board.b_writer }
               </td>
            </tr>
            <tr>
               <td>내용</td>
               <td align="left">
               <textarea name="b_content" cols="40" rows="10" placeholder="${board.b_content }"></textarea></td>
            </tr>
            <tr>
               <td>비밀번호</td>
               <td align="left">
               <input type="text" name="b_pwd">
				</td>
            </tr>
            <tr>
               <td align="left">
		      <button type="submit" class="btn btn-primary">
		  		글 수정
				</button>
               </td>
            </tr>
            
         </table>
         
      </form>
      </div>
    
</body>
</html>