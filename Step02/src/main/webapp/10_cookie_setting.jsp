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
	// 쿠키는 사용자가 방문한 웹사이트에서 사용자의 브라우저에 전송하는 작은 텍스트 조각입니다.
	// 쿠키가 있으면 웹사이트에서 사용자의 방문에 관한 정보를 기억하여 다음번에 사이트에 방문했을 때 
	// 번거로운 작업을 피하고 더 유용하게 사이트를 활용할 수 있습니다.
	// 쿠키생성(쿠키명, 쿠키내용)
	Cookie cookie = new Cookie("test", "쿠키내용");
	// 쿠키 시간설정
	cookie.setMaxAge(30); // 초단위
	// 쿠키 경로 설정
	cookie.setPath("/");
	response.addCookie(cookie);
%>
<a href="cookie_result.jsp">쿠키 조회 페이지 이동</a>
</body>
</html>