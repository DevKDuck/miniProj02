<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>
<%@ include file="/WEB-INF/views/include/meta.jsp" %>
    <%@ include file="/WEB-INF/views/include/css.jsp" %>
    <%@ include file="/WEB-INF/views/include/js.jsp" %>
    <%-- 부트스트랩5 css --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %> <br/>
    <h2>User List</h2>
    <table style="width:100%">
        <tr>
            <th>member_id</th>
            <th>member_name</th>
            <th>member_birthday</th>
            <th>member_gender</th>
            <th>member_phone_number</th>
            <th>member_address</th>
            <th>member_hobby</th>
            
        </tr>
        <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.member_id}</td>
            <td>${u.member_name}</td>
            <td>${u.member_birthday}</td>
            <td>${u.member_gender}</td>
            <td>${u.member_phone_number}</td>
            <td>${u.member_address}</td>
            <td>${u.member_hobby}</td>
        </tr>
        </c:forEach>
    </table>
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>