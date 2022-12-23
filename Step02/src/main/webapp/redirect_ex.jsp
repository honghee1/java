<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String param = request.getParameter("data");
						// 저장할때 setAttrubute(result 데이터에, result_param을 넣겠다.)
	request.setAttribute("result", "request_"+param);
						//이동할 페이지 경로
	// sendRedirect로 페이지 이동시ㅏ request 영역이 전부 초기화 (실행하면 data값이 null값으로 나옴)
	// url이 변경되는게 특징
	response.sendRedirect("redirect_result.jsp");
						
%>