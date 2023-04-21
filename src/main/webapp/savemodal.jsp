<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.5/index.global.min.js"></script>
<style type="text/css">

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
.editBtn{
	position: absolute;
    right: 30%;

}
table#notice{
	margin-top: 60px;
	width : 700px;
	
}
</style>
</head>
<body>
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">게시글 입력</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="saveBoard.do" method="get">
        <table class="table table-bordered">
        <thead>
        <tr class="mt-2" style="display: none">
        <td>게시물 id</td>
        <td>
        <input type="hidden" name="b_id">
        </td>
        </tr>
        <tbody>
        <tr>
        <td>작성자</td>
        <td>
        <input type="text" class="modal_table" name="m_name" value="${userName }" readonly="readonly">
        </td>
        </tr>
        <tr>
        <td>제목</td>
        <td>
        <input type="text" class="modal_table" name="b_title">
        </td>
        </tr>
        <tr>
        <td style="padding-right:0px;">비밀번호 </td>
        <td><input type="password" class="modal_table" name="b_pwd"></td>
        </tr>
        <tr>
        <td>내용</td>
        <td><textarea name="b_content" rows="9" cols="46"></textarea></td>
        </tr>
        </tbody>
        </table>
        </form>
      </div>
      <div class="modal-footer">
<!--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
        <button type="button" class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>