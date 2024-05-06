<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<ul class="nav nav-pills nav-justified">
	<li class="nav-item"><a class="nav-link" href="<c:url value='/introduce/introduce'/>"
		id="home_link">회사소개</a></li>
	<li class="nav-item"><a class="nav-link"
		href="<c:url value='/boardlist'/>" id="board_link">게시물</a></li>

	<c:choose>
		<c:when test="${empty principal}">
			<li class="nav-item"><a class="nav-link"
				href="<c:url value='/login/loginForm'/>" id="login_link">로그인</a></li>

			<li class="nav-item"><a class="nav-link"
				href="<c:url value='/login/signupPage'/>" id="sinupPage_link">회원가입</a>
			</li>
		</c:when>
		<c:otherwise>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item"><a class="nav-link"
				href="<c:url value='/userList'/>" id="member_link">회원관리</a></li>
        </sec:authorize>
			<li class="nav-item"><a class="nav-link" href="/login/logout">로그아웃</a></li>
			<li class="nav-item"><a class="nav-link"
				href="<c:url value='/login/editPage'/>" id="mypage_link">mypage</a></li>
		</c:otherwise>
	</c:choose>
</ul>