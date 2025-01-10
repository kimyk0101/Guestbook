<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="learnbyteaching.guestbook.vo.GuestbookVo"%>
<%@page import="learnbyteaching.guestbook.dao.GuestbookDaoImpl"%>
<%@page import="learnbyteaching.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
--%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방명록</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
	<h1 class="mb-3">방명록 (Model 2)</h1>
    <form method="POST" action="<c:url value='/gb' />">
        <div class="mb-3">
            <label for="name" class="form-label">이름</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="mb-3">
            <label for="pass" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="pass" name="pass">
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">내용</label>
            <textarea class="form-control" id="content" name="content" rows="5"></textarea>
        </div>
        <div class="text-end">
            <button type="submit" class="btn btn-primary">확인</button>
        </div>
    </form>
    <br/>
    
     <%--
     for (GuestbookVo vo: list) {
     --%>
    <c:forEach items="${list }" var="vo">
    <div class="card mb-3">
        <div class="card-header">
            <span>[${vo.no }]</span> ${vo.name } <span class="text-muted">${vo.regDate }</span>
           	<a href="<c:url value='/gb?a=deleteform&no=${vo.no}' />" class="btn btn-danger btn-sm float-end">삭제</a>
        </div>
        
        <div class="card-body">
            <p class="card-text">${vo.content }</p>
        </div>
    </div>
    </c:forEach>    
    <%--
     }
    --%>  
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>