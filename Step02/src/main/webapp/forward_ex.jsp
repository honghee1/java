<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String param = request.getParameter("data");
	request.setAttribute("result", "result_"+param);
	RequestDispatcher dispatcher = request.getRequestDispatcher("forward_result.jsp");
	dispatcher.forward(request, response);
	// forward는 url이 변경안됨 
	// 위 두줄을 합쳐서 사용가능
	// request.getRequestDispatcher("forward_result.jsp").forward(request, response);

%>