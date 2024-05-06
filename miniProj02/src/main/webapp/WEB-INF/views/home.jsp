<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<%-- 부트스트랩5 css --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* 전체 페이지를 커버하는 컨테이너 스타일 */
.center-container {
	height: 100vh; /* 브라우저 창의 전체 높이 */
	display: flex; /* Flexbox를 사용하여 아이템을 배치 */
	justify-content: center; /* 수평 중앙 정렬 */
	align-items: center; /* 수직 중앙 정렬 */
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />
<div class="center-container">
  <h1>HOME</h1>
</div>

	<%-- <sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<c:choose>
	<c:when test="${empty principal}">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/login/loginForm">로그인</a></li>
			<li class="nav-item"><a class="nav-link" href="/login/signupPage">회원가입</a></li>
		</ul>
	</c:when>
	<c:otherwise>
		이름 : ${principal.member_name}
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="login/editPage">회원정보</a></li>
			<li class="nav-item"><a class="nav-link" href="/login/logout">로그아웃</a></li>
			<li class="nav-item"><a class="nav-link" href="/userList">유저 목록</a></li>
			<li class="nav-item"><a class="nav-link" href="/boardlist">게시물 목록</a></li>
			<li class="nav-item"><a class="nav-link" href="/delete">회원삭제</a></li>
		</ul>
	</c:otherwise>
</c:choose> --%>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
