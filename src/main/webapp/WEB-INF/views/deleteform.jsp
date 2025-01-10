<%@page import="learnbyteaching.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>삭제 폼</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
	<h1 class="mb-3">삭제 폼 (Model 2)</h1>
    <form method="post" action="<c:url value="/gb" />">
    	<input type="hidden" name="a" value="delete" />
        <input type='hidden' name="no" value="${no }">		
        <div class="mb-3">
            <label for="password" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <div class="d-flex justify-content-between">
            <button type="submit" class="btn btn-primary">확인</button>
            <a href="<c:url value="/gb" />" class="btn btn-secondary">메인으로 돌아가기</a>
        </div>
    </form>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>