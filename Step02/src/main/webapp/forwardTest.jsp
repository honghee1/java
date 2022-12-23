<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%=request.getParameter("name") %><br>
<%=request.getParameter("hobby") %>
<%
	out.write("<script>alert('안녕하세요');</script>");
	//out.write("<script>location.href='forwardResult.jsp';</script>");
%>
<jsp:forward page="forwardResult.jsp"></jsp:forward>