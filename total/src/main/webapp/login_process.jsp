<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 이미 로그인 되어 있는 상태면 이전 페이지로 돌려보냄
	if(session.getAttribute("id") != null) {
		response.sendRedirect("index.jsp");
		return;
	}
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("admin") && pass.equals("1234")) {
		session.setAttribute("id", id);
		response.sendRedirect("index.jsp");	
	}else {
		out.write("<script>alert('아이디와 비밀번호를 확인하세요');history.back();</script>");
	}
%>