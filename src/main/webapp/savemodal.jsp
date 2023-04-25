<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!-- include libraries(jQuery, bootstrap) -->
    <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
  
 <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="${pageContext.request.contextPath}/resources/summernote/summernote-lite.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/summernote/lang/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/summernote/summernote-lite.min.css">
  <!--  -->
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
<script type="text/javascript">
$(function() {
	
	var toolbar =[
		// 글꼴 설정
	    ['fontname', ['fontname']],
	    // 글자 크기 설정
	    ['fontsize', ['fontsize']],
	    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
	    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
	    // 글자색
	    ['color', ['forecolor','color']],
	    // 표만들기
	    ['table', ['table']],
	    // 글머리 기호, 번호매기기, 문단정렬
	    ['para', ['ul', 'ol', 'paragraph']],
	    // 줄간격
	    ['height', ['height']],
	    // 그림첨부, 링크만들기, 동영상첨부
	    ['insert',['picture','link','video']],
	    // 코드보기, 확대해서보기, 도움말
	    ['view', ['codeview','fullscreen', 'help']]

	];
	 
	var setting = {
            height : 300,
            minHeight : null,
            maxHeight : null,
            focus : true,
            lang : 'ko-KR',
            toolbar : toolbar,
            callbacks : { //여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files, editor,
            welEditable) {
            for (var i = files.length - 1; i >= 0; i--) {
            uploadSummernoteImageFile(files[i],
            this);
            		}
            	}
            }
         };

        $('#summernote').summernote(setting);

	
	$("#modal_submit").click(function() {
		$("#save").submit();
	});
	
})
</script>
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
        <form id="save" action="saveBoard.do" method="post" enctype="multipart/form-data">
        <table class="table table-bordered">
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
        <td class="text-start"><textarea id="summernote" name="b_content" ></textarea></td>
       
        </tr>
        </tbody>
        </table>
        </form>
      </div>
      <div class="modal-footer">
<!--         <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
        <button type="button" id="modal_submit"class="btn btn-primary">저장</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>