<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
	session 정보(id)를 불러옴
 -->
<%
	String id = (String)session.getAttribute("id");
	// 로그인이 되면 id값이 있기 때문에 로그인 페이지를 보여줄 필요가 없음
	if(id == null) {
%>
					<!-- 로그인 시 url에 비밀번호가 표시되면 안되기때문에 post로 처리 -->
	<form action="login_session_process.jsp" method="post">
		아이디 : <input type="text" name="id"> <br>
		비밀번호 : <input type="password" name="pass"> <br>
		<button>로그인</button>
	</form>
<%
	} else {
		
%>
	<!-- 로그인 성공시 로그아웃 페이지 이동 -->
	<%=id %>님 로그인 하셨습니다.<br>
	<a href="logout.jsp">로그아웃</a>
<%
	}	
%>
</body>
</html>