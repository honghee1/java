<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		margin:0;
		padding:0;
	}
	.container{
		width: 1200px;
		display: flex;
		flex-direction: column;
		margin: 50px auto;
	}
	header{
		text-align: right;
	}
	.profile{
		display: inline-block;
		text-align: left;
	}
	nav{
		border-bottom: 1px solid black;
		padding: 20px 0px;
	}
	nav ul{
		list-style-type: none;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
	}
	nav ul li{
		width: 200px;
	}
	nav ul li a:link,nav ul li a:visited {
		display: inline-block;
		font-size: 20px;
		font-weight: bold;
		text-align: center;
		width: 100%;
		padding:10px 0px;
		color:black;
		text-decoration: none;
	}
	section table{
		margin:30px auto;
		border-collapse: collapse;
	}
	
	th, td{
		width:150px;
		text-align:center;
		padding:10px;
		font-size: 20px;
		border:1px solid black;
	}
	section h2 {
		margin-top: 40px;
		text-align: center;
	}
	section ul {
		margin: 0 auto;
		list-style-type: none;
		display: flex;
		width: 300px;
		flex-direction: column;
	}
	section li {
		margin-top: 10px;
	}
	li > input {
		width: 100%;
		height: 30px;
		border-radius: 5px;
		border: 1px solid gray;
	}
	li > button {
		width: 50%;
		height: 40px;
		box-sizing: border-box;
	}
</style>
</head>
<body>
<c:if test="${sessionScope.dto == null}">
	<c:redirect url="index.jsp"/>
</c:if>
	<div class="container">
		<header>
			<div class="profile">
				${sessionScope.dto.name }님 로그인 하셨습니다.<br>
				<a href="logout.do">로그아웃</a> | <a href="update_view.jsp">회원정보 수정</a>
			</div>
		</header>		
		<nav>
			<ul>
				<li><a href="main.jsp">홈</a></li>
				<li><a href="memberList.do">회원목록</a></li>
				<li><a href="register.jsp">회원추가</a></li>
			</ul>
		</nav>
		<section>
			<h2>회원정보추가</h2>
			<form action="register.do" method="post">
			<ul>
				<li>
				<input type="text" name="id" placeholder="아이디를 입력하세요">		
				</li>
				<li>
				<input type="password" name="passwd" placeholder="암호를 입력하세요">	
				</li>
				<li>
				<input type="text" name="name" placeholder="이름을 입력하세요">			
				</li>
				<li>
				<input type="number" name="age" placeholder="나이를 입력하세요">	
				</li>
				<li>
					<div>
						<input type="radio" name="gender" id="g1" value="M">
						<label for="g1">남</label>
						<input type="radio" name="gender" id="g2" value="F">
						<label for="g2">여</label>
					</div>
				</li>
				<li>
				<input type="text" name="address" placeholder="주소를 입력하세요">			
				</li>
				<li>
					<button>회원가입</button><button type="button" onclick="history.back();">취소</button>
				</li>
			</ul>
			</form>
		</section>
	</div>
</body>
</html>





