<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("key", "data");
%>
<!-- 하이퍼 링크 / submit은 request 객체가 초기화 setAttribute한 내용이 전달 X -->
	<a href="request_attribute_result.jsp">페이지 이동</a>
	<form action="request_attribute_result.jsp">
		<button>전송</button>
	</form>
</body>
</html>