
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>등록화면</title>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<%-- 부트스트랩5 css --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<%-- ckeditor 관련 자바 스크립트  --%>
<script
	src="https://cdn.ckeditor.com/ckeditor5/12.4.0/classic/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
<style type="text/css">
#iForm {
	/* text-align: center; */
}

/* 제목과 비밀번호 입력 필드의 너비와 높이를 조정 */
input[type="text"], input[type="password"] {
    width: 100%; 
    padding: 10px; 
    margin-bottom: 10px; 
    box-sizing: border-box; 
}


textarea {
    width: 100%; 
    height: 200px; 
    padding: 10px; 
    box-sizing: border-box;
}


.ck.ck-editor {
	width: 80%;
	max-width: 800px;
	margin: 0 auto;
}

.ck-editor__editable {
	height: 80vh;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />

	<main class="container">
		<form id="iForm" method="post" enctype="multipart/form-data">
			<%-- <input type="hidden" id="token" name="token" value="${token}"> --%>
			<label for="title">제목:</label> <input type="text" id="title" name="title" required><br>
			<label>비밀번호:</label> <input type="password" id="password" name="password" required><br>
			<label for="title">내용:</label> <textarea id="editor" name="content" required></textarea>
			<div id="div_file">
				<input type='file' name='file' />
			</div>
			<input class="btn btn-primary" type="submit" value="생성"> <a
				class="btn btn-secondary" href="javascript:history(-1);">취소</a>
		</form>
	</main>
	<script type="text/javascript" src="/js/common.js"></script>
	
	
	<script>
	const csrfParameter = document.querySelector("meta[name='_csrf_parameter']").content;
	const csrfToken = document.querySelector("meta[name='_csrf']").content;
	const board_image_url = "/board/boardImageUpload?token=${token}&" + csrfParameter + "=" + csrfToken;

	let bcontent;
	ClassicEditor
			.create(document.querySelector('#bcontent'),{
				ckfinder:{
					uploadUrl: board_image_url
				}
			})
			.then((editor) => {
				bcontent = editor;
			})
			.catch(error => {
				console.error(error);
			});
	const iForm = document.getElementById("iForm");
	iForm.addEventListener('submit', (e) => {
		e.preventDefault();
		myFileFetch("insert", "iForm", json => {
			switch (json.status) {
				case 204:
					//성공
					alert("게시물을 생성 하였습니다");
					// 새로 고침
					location = "list";
					break;
				default:
					alert("게시물 생성에 실패했습니다");
			}
		});
	})
</script>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://cdn.ckeditor.com/ckeditor5/12.4.0/classic/ckeditor.js"></script>
<script src="https://ckeditor.com/apps/ckfinder/3.5.0/ckfinder.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>게시물 등록</title>
</head>
<body>
    <h1>게시물 등록</h1>
    
    <div id="editor">
        <p>This is some sample content.</p>
    </div>
    <script type="text/javascript" src="/js/common.js"></script>
    <script>
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );
    </script>
</body>
</html> --%>