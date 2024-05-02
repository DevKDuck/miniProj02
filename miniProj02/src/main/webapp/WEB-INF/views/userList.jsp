<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User List</title>
</head>
<body>
    <h2>User List</h2>
    <table>
        <tr>
            <th>member_id</th>
            <th>member_name</th>
            <th>username</th>
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
</body>
</html>