<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sign Up</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="/signup" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <div>
            아이디: <input type="text" name="member_id" placeholder="아이디"/>
        </div>
        <div>
           비밀번호: <input type="password" name="member_pwd" placeholder="비밀번호"/>
        </div>
        <div>
           이름: <input type="text" name="member_name" placeholder="이름"/>
        </div>
        <div>
            생일: <input type="date" name="member_birthday"/>
        </div>
        <div>
            성별: <input type="text" name="member_gender" placeholder="성별"/>
        </div>
        <div>
            번호: <input type="text" name="member_phone_number" placeholder="번호"/>
        </div>
        <div>
            주소: <input type="text" name="member_address" placeholder="주소"/>
        </div>
        <div>
            취미: <input type="text" name="member_hobby" placeholder="취미"/>
        </div>

        <button type="submit">회원가입</button>
    </form>
</body>
</html>