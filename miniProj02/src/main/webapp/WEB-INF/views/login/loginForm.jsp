<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<%@ include file="/WEB-INF/views/include/css.jsp"%>
<%@ include file="/WEB-INF/views/include/js.jsp"%>
<%-- 부트스트랩5 css --%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br />
	<!-- 오그인시 오류 메시지 출력 -->

	<form action="/login" method="post">
		<%-- csrf 토큰 설정 --%>
		<sec:csrfInput />
		아이디 : <input type="text" name="member_id" /><br /> 비밀번호 : <input
			type="password" name="member_pwd" /><br /> <input type="submit"
			value="로그인">
	</form>

	<script>
		msg = "${error ? exception : ''}";

		if (msg !== "") {
			alert(msg);
		}
	</script>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>