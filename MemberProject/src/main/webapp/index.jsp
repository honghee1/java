<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
	.container {
		width: 1200px;
		margin: 0 auto;
	}
	h2 {
		text-align: center;
	}
	input {
		width: 300px;
		height: 40px;
		font-size: 18px;
		outline: none;
		border-radius: 5px;
		box-sizing: border-box;
		margin-bottom: 10px;
		border: 1px solid gray;
	}
	button {
		width: 300px;
		height: 40px;
		font-size: 18px;
		background-color: rgb(52, 152, 219);
		outline: none;
		box-sizing: border-box;
		border-radius: 5px;
		border: 1px solid rgb(52, 120, 255);
		color: white;
		font-weight: bold;
	}
	form {
		width: 300px;
		display: flex;
		margin: 0 auto;
		flex-direction: column;
	}
</style>
</head>
<body>

	<div class="container">
		<form action="login.do" method="post">
				<h2>회원관리 시스템</h2>
				<input type="text" name="id" placeholder="아이디를 입력하세요">
				<input type="password" name="passwd" placeholder="암호를 입력하세요">
				<button>로그인</button>
		</form>
	</div>
</body>
</html>