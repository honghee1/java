<%@page import="vo.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- request에 저장한 person을 꺼내서 toString()으로 출력 -->
<%
	// improt한 후 object기 떄문에 형변환
	Person p = (Person)request.getAttribute("person");
%>
<%=p.toString() %>
</body>
</html>