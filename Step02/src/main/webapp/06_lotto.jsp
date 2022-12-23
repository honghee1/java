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
	06_lotto.jsp
		폼으로 로또번호 생성할 세트 개수를 입력 
		입력 받은 내용을 lotto_process.jsp로 이동
	lotto_process.jsp
		받은 개수로 로또번호를 생성해서
		request 영역에 저장한 후
		lotto_result.jsp 페이지로 이동
	lotto_result.jsp
		request에 저장된 로또번호를 읽어와서
		표로 로또번호를 출력		
	-->
	<form action="lotto_process.jsp">
		<input type="number" name="ea"><button>전송</button>
	</form>
</body>
</html>