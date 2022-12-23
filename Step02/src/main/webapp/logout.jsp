<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
// 로그아웃하면 세션정보 초기화 후 로그인 페이지(09_main.jsp)이동
	session.invalidate(); 
	response.sendRedirect("09_main.jsp");
%>