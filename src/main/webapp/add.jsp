<%@page import="learnbyteaching.guestbook.dao.GuestbookDaoImpl"%>
<%@page import="learnbyteaching.guestbook.vo.GuestbookVo"%>
<%@page import="learnbyteaching.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ServletContext context = getServletContext();

String dbUser = context.getInitParameter("dbUser");
String dbPass = context.getInitParameter("dbPass");

String name = request.getParameter("name");
String password = request.getParameter("pass");
String content = request.getParameter("content");

GuestbookDao dao = new GuestbookDaoImpl(dbUser, dbPass);
GuestbookVo vo = new GuestbookVo(name, password, content);
dao.insert(vo);

response.sendRedirect("list.jsp");
%>