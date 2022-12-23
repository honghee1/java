<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	if(id.equals("admin") && pass.equals("1234")) {
		// 로그인 성공이면 세션에 정보저장
		session.setAttribute("id", id);
		// main페이지로 이동 (세션에 정보가 저장되어 request 정보는 필요없으니 sendRedirect 사용)
		response.sendRedirect("09_main.jsp");
	}else {
		// 로그인 실패하면 경고창, 이전페이지 이동
		// 자바스크립트 코드 작성 = out.write(<script>자바스크립트 코드;</script>);
		out.write("<script>alert('아이디와 비밀번호를 확인하세요');history.back();</script>");
	}
%>