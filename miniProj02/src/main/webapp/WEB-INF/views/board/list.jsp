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

<!-- <style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

</style> -->

<style>
.table-container {
    width: 80%; 
    overflow-x: auto;
}

table, th, td {
    border: 1px solid black;
}

th, td {
    text-align: left;
    padding: 8px;
}

th {
    background-color: #f2f2f2;
}

table {
    width: 100%; /* 테이블 컨테이너의 100% 크기 */
    border-collapse: collapse;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%><br />
	<h1>게시물 목록</h1>
	<%-- 로그인 사용자 정보 출력 --%>

	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="principal" />
	</sec:authorize>

	<form id="searchForm" action="list" method="post">
		<%-- csrf 토큰 설정 --%>
		<sec:csrfInput />
		<select id="size" name="size">
			<c:forEach var="size" items="${sizes}">
				<option value="${size.codeid}"
					${pageRequestVO.size == size.codeid ? 'selected' : ''}>${size.name}</option>
			</c:forEach>
		</select> 
		<label>제목</label> <input type="text" id="searchKey" name="searchKey"
			value="${param.searchKey}"> <input type="submit" value="검색">
	</form>
	<div class="table-container">
		<table border="1">
			<tr>
				<th>게시물번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach var="board" items="${pageResponseVO.list}">
				<tr>
					<%--  <td style="cursor:pointer;"><a data-bs-toggle="modal" data-bs-target="#boardViewModel" data-bs-bno="${board.id}">${board.id}</a></td> --%>
					<td>${board.id}</td>
					<td>${board.title}</td>
					<td>${board.writer}</td>
					<td>${board.creation_date}</td>
				</tr>
			</c:forEach>
		</table>
	</div>


	 <div class="float-end">
        <ul class="pagination flex-wrap">
            <c:if test="${pageResponseVO.prev}">
                <li class="page-item">
                    <a class="page-link" data-num="${pageResponseVO.start -1}">이전</a>
                </li>
            </c:if>

            <c:forEach begin="${pageResponseVO.start}" end="${pageResponseVO.end}" var="num">
                <li class="page-item ${pageResponseVO.pageNo == num ? 'active':''} ">
                    <a class="page-link"  data-num="${num}">${num}</a></li>
            </c:forEach>

            <c:if test="${pageResponseVO.next}">
                <li class="page-item">
                    <a class="page-link"  data-num="${pageResponseVO.end + 1}">다음</a>
                </li>
            </c:if>
        </ul>

    </div>


	<script>
menuActive("board_link");


document.querySelector(".pagination").addEventListener("click", function (e) {
	
    e.preventDefault()

    const target = e.target

    if(target.tagName !== 'A') {
        return
    }
    //dataset 프로퍼티로 접근 또는 속성 접근 메서드 getAttribute() 사용 하여 접근 가능 
    //const num = target.getAttribute("data-num")
    const num = target.dataset["num"];
    
    //페이지번호 설정 
    searchForm.innerHTML += `<input type='hidden' name='pageNo' value='\${num}'>`;
    searchForm.submit();
});


document.querySelector("#size").addEventListener("change", e => {
    searchForm.submit();
});

</script>
	<div class="button-container">
		<a href="/board/insertForm">등록</a>
	</div>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>
