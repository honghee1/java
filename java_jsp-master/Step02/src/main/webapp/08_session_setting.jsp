<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=session.getId() %> <br>
<%
	request.setAttribute("req", "request value");

	// 세션 설정
	// 세션 만료시간 설정
	session.setMaxInactiveInterval(30); //초단위
	session.setAttribute("session", "session value");
	
	// 페이지 이동
	//forward 방식
	//request.getRequestDispatcher("session_result.jsp").forward(request, response);
	// sendrediect 방식
	response.sendRedirect("session_result.jsp");
%>
</body>
</html>