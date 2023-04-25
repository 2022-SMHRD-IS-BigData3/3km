<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="./img/강아지로고.png" />
<link rel="apple-touch-icon" href="./img/강아지로고.png" />
<title>로그인</title>
<style>
/* div의 스타일 */
@font-face {
	font-family: 'Katuri';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: Katuri;
}

form#mid {
	text-align: center;
	display: inline-block;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	border-bottom: none;
	height: 450px;
}

.sangdan {
	height: 50px;
	background: rgba(243, 156, 18, 0.73);
	margin: 0;
	display: flex;
}

.sangdan div {
	padding: 13px;
	margin: 0 auto;
}

#cate-list {
	font-family: Katuri;
}

#enter1 {
	width: 360px;
	height: 310px;
	margin-top: 60px;
	text-align: center;
}

#enter1 div {
	padding-bottom: 30px;
}

input {
	background-color: #eee;
	border: gray;
	padding: 12px 15px;
	margin: 8px 0;
	width: 230px;
}

#pw {
	margin-left: 25px;
}

#login {
	width: 320px;
	height: 0px;
	margin: 0 auto;
	background-color: rgba(243, 156, 18, 0.73);
	text-align: center;
	font-size: large;
}

#loginbutton {
	width: 320px;
	height: 30px;
	background-color: rgba(243, 156, 18, 0.73);
	border: 0px;
	font-family: 'Katuri';
}

.join {
	background-color: rgba(249, 230, 191, 0.15);
	width: 360px;
	border: 1px solid #ccc;
	border-top: none;
	border-bottom: none;
}

#Join {
	float: right;
	margin-right: 20px;
	text-decoration: none;
	color: inherit;
}

.empty {
	background-color: rgba(249, 230, 191, 0.15);
	width: 360px;
	height: 100px;
	border: 1px solid #ccc;
	border-top: none;
	border-bottom: none;
}

#bottom1 {
	background-color: rgba(243, 156, 18, 0.73);
	border: 1px solid #ccc;
	border-top: rgba(0, 0, 0, 0);
	border-bottom: rgba(0, 0, 0, 0);
	width: 360px;
	height: 420px;
	text-align: left;
	color: #eee;
	display: inline-block;
}

h1 {
	text-align: center;
	margin-bottom: 0;
}

h2 {
	margin-bottom: 5;
}

p {
	text-align: center;
}

.bottomli {
	list-style: none;
	margin: 10px;
	padding: 5px;
}

li {
	height: 30px;;
}
</style>
</head>

<body>
	<form action="" id="mid">

		<header class="sangdan">
			<div>
				<img src="./img/이름로고.png" width="180">
			</div>
		</header>
		<div id="enter1">
			<div>
				<img src="./img/강아지로고.png" width="120px"
					height="100px"></img>
			</div>
			<p>
				E-mail <input id="email" name="email" type="email"
					placeholder="이메일 주소를 입력하세요" /><br>
			</p>
			<p>
				PW<input id="pw" name="pw" type="password"
					placeholder="8자 이내 비밀번호를 입력하세요" /><br>
			</p>
			<div id="login">
				<button type="button" id="loginbutton" onClick="location.href='main.do'">Login</button>
			</div>
		</div>
	</form>
	<div class="join">
		<a href="join.do" id="Join">Join</a>
	</div>
	<div class="empty"></div>
	<div id="bottom1">
		<ul class=" bottomli">
			<h2>My ACCOUNT</h2>
			<li><a>- 로그인</a></li>
			<li><a>- 계정관리</a></li>
		</ul>

		<ul class=" bottomli">
			<h2>Help</h2>
			<li><a>- 공지사항</a></li>
			<li><a>- 1:1문의</a></li>
		</ul>
		<br>
		<h1>With Dogs!</h1>
		<p>Copyright@with Dogs All Rights Reserved</p>
	</div>
	</form>

<script>
			  $(document).ready(function() {
				  $('#loginbutton').on('click', function() {
				    var email = $('#email').val();
				    var password = $('#pw').val();
				    
				    if (email === '' || password === '') {
				      alert('이메일과 비밀번호를 입력해주세요.');
				      return;
				    }
				    
				    if (`${member.email} != email || ${member.pw} != password`) {
				      alert('이메일 또는 비밀번호가 잘못되었습니다.');
				      return;
				    }
				    
				    if (`${member.email} == email && ${member.pw} == password`){
				    	location.href = 'Gomain.do';
				    }
				  });
				});
	</script>

</body>

</html>