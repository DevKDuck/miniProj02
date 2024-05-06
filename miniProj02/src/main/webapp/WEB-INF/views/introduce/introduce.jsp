<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<style>
/* 전체 페이지를 커버하는 컨테이너 스타일 */
.center-container {
	height: 100vh; /* 브라우저 창의 전체 높이 */
	display: flex; /* Flexbox를 사용하여 아이템을 배치 */
	justify-content: center; /* 수평 중앙 정렬 */
	align-items: center; /* 수직 중앙 정렬 */
}
</style>
<meta charset="UTF-8">
<title>Home</title>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<%@ include file="/WEB-INF/views/include/js.jsp"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />

	<div class="center-container">
		<h1>우리 회사 어때??</h1>
		
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
