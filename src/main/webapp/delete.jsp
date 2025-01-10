<%@page import="learnbyteaching.guestbook.dao.GuestbookDaoImpl"%>
<%@page import="learnbyteaching.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ServletContext context = getServletContext();

String dbUser = context.getInitParameter("dbUser");
String dbPass = context.getInitParameter("dbPass");

Integer no = Integer.valueOf(request.getParameter("no"));	//	오류 원인 (작성 잘못됨)
String password = request.getParameter("password");			//	추가 작성

GuestbookDao dao = new GuestbookDaoImpl(dbUser,dbPass);
dao.delete(no, password);									//	오류 원인 (작성 잘못됨)
		
response.sendRedirect("list.jsp");
%>

