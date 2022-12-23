<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 결과 페이지</title>
</head>
<body>
<%
	/*String n = request.getParameter("dan");
	int dan = Integer.parseInt(n);*/
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
	<h2>--<%=dan %>단--</h2>
<%	
	for(int i=1;i<=9;i++) {
%>
		<p><%=dan %> * <%=i %> = <%=dan*i %></p>
<%		
	}
%>
</body>
</html>