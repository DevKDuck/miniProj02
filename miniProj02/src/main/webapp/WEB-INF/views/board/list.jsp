<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
  <%@ include file="/WEB-INF/views/include/meta.jsp" %>
    <%@ include file="/WEB-INF/views/include/css.jsp" %>
    <%@ include file="/WEB-INF/views/include/js.jsp" %>
    <%-- 부트스트랩5 css --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %><br/>
<h1>게시물 목록</h1>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<c:choose>
	<c:when test="${empty principal}">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/login/loginForm">로그인</a></li>
			<li class="nav-item"><a class="nav-link" href="/login/joinForm">회원가입</a></li>
		</ul>
	</c:when>
	<c:otherwise>
		이름 : ${principal.member_name}
		
		 <table style="width:100%">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>내용</th>
            <th>비밀번호</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>본횟수</th>
            
        </tr>
        <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.id}</td>
            <td>${u.title}</td>
            <td>${u.content}</td>
            <td>${u.password}</td>
            <td>${u.writer}</td>
            <td>${u.creation_date}</td>
            <td>${u.view_count}</td>
        </tr>
        </c:forEach>
    </table>
			<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/board/insertForm">게시물 등록</a></li>
		</ul>		
		
	</c:otherwise>
</c:choose>



<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>