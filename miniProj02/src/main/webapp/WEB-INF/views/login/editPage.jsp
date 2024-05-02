<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify Information</title>
</head>
<body>
    <h2>회원 정보 수정</h2>
    <form action="/update" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <p>
            member_id<br>
            <input type="text" name="member_id" value="${user.member_id}"/>
        </p>
        <p>
            member_password<br>
            <input type="text" name="member_pwd"/>
        </p>
        
        <p>
            member_name<br>
            <input type="text" name="member_name"value="${user.member_name}"/>
        </p>
        <p>
            member_bitrhday<br>
            <input type="text" name="member_birthday" value="${user.member_birthday}"/>
        </p>
        <p>
            member_gender<br>
            <input type="text" name="member_gender" value="${user.member_gender}"/>
        </p>
        <p>
            member_phone_number<br>
            <input type="text" name="member_phone_number" value="${user.member_phone_number}"/>
        </p>
        <p>
            member_address<br>
            <input type="text" name="member_address" value="${user.member_address}"/>
        </p>
        <p>
            member_hobby<br>
            <input type="text" name="member_hobby" value="${user.member_hobby}"/>
        </p>
        

        <button type="submit">저장하기</button>
    </form>
</body>
</html>