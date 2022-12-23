<%@page import="vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 에러 발생시 에러페이지 이동할 수 있게 페이지 설정 -->
<%@ page errorPage="error.jsp" %>
<%
	// 05_person_form에서 이름 나이 읽어옴
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	// person 생성
	Person p = new Person(name, age);
						//(String, object)
	request.setAttribute("person", p);
	// person_result.jsp로 이동 (정보저장을 해야되므로 forward 사용)
	request.getRequestDispatcher("person_result.jsp").forward(request, response);
	
%>