<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body class="bg-danger-subtle">    
      <div class="d-flex pt-5 justify-content-center align-items-center bd-highlight">
      <form action="updateBoard.do" method="post">
      <!-- 게시글번호와 그 속 Vo가 전부 담겨있음 > step으로는 구현 불가 > 별도 매핑 -->
         <input name="b_id" type="hidden" value="${board.b_id}" />
         <table class="table table-bordered">
            <tr>
               <td>제목</td>
               <td align="left">${board.b_title }</td>
            </tr>
            <tr>
               <td>작성자</td>
               <td align="left">${board.b_writer }</td>
            </tr>
            <tr>
               <td>내용</td>
               <td align="left"><textarea name="b_content" cols="40" rows="10">${board.b_content }</textarea></td>
            </tr>
            <tr>
               <td>등록일</td>
               <td align="left">${board.b_date }</td>
            </tr>
            
         </table>
      </form>
      
      <hr>
      </div>
      <div class="d-flex justify-content-center bd-highlight">
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  		글 추가
	</button>
	<jsp:include page="../../savemodal.jsp"></jsp:include>
      <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
  		글 수정
	</button>
	<jsp:include page="updateBoard.jsp"></jsp:include>
      <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
  		글 삭제
	</button>
      <a href="editBoard.do?b_id=${board.b_id }">글수정</a>&nbsp;&nbsp;&nbsp;
      <a href="deleteBoard.do?b_id=${board.b_id }">글삭제</a>&nbsp;&nbsp;&nbsp;
      <a href="getBoardList.do">글목록</a>
      </div>
</body>
</html>