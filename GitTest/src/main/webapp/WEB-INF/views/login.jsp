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

div#enter {
	width: 360px;
	height: 500px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

form#mid {
	text-align: center;
}

.sangdan {
	height: 50px;
	background: rgba(243, 156, 18, 0.73);
	margin: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.sangdan img {
	margin: auto;
}

#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-right: 25px;
	margin-top: 10px;
	margin-left: -10px;
	display: flex;
}

#enter1 {
	padding-top: 100px;
	text-align: center;
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
	height: 30px;
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
}

.bottom1 {
	background-color: rgba(243, 156, 18, 0.73);
	width: 360px;
	height: 320px;
	padding: 0px;
	border: 1px solid #ccc;
	border-top: rgba(0, 0, 0, 0);
	border-bottom: rgba(0, 0, 0, 0);
	box-sizing: border-box;
	margin: 0 auto;
	color: azure;
	font-size: 25px;
	font-weight: bold;
}

#account {
	float: left;
	margin-left: -25px;
	padding-left: 0px;
}

#help {
	float: left;
	margin-left: -25px;
	padding-left: 0px;
}

#join {
	float: right;
	font-size: small;
	color: gray;
	margin-right: 20px;
}

.end {
	background-color: rgba(243, 156, 18, 0.73);
	width: 360px;
	margin: 0 auto;
	text-align: center;
}

#withdogs {
	color: azure;
	font-size: 30px;
	font-weight: bold;
}

#copyright {
	color: gray;
	font-size: smaller;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<form action="#" id="mid">
		<div id="enter">
			<header class="sangdan">
				<img src="./img/이름로고.png" width="240" id="withdogslogo">
			</header>
			<div id="enter1">
				<img src="./img/강아지로고.png" width="120px" height="100px"></img>
				<p>
					E-mail <input id="email" type="email" placeholder="이메일 주소를 입력하세요" /><br>
				</p>
				<p>
					PW<input id="pw" type="password" placeholder="8자 이내 비밀번호를 입력하세요" /><br>
				</p>
				<div id="login">
					<button id="loginbutton">Login</button>
				</div>
				<a href="Gojoin.do" id="join">Join</a>
			</div>
		</div>
		<div class="bottom1">
			<div id="account">
				<ul>
					<li class="menu1"><a class="ahelp">MY ACCOUNT</a>
						<ul class="hide1">
							<br>
							<li class="list">-로그인</li>
						</ul></li>
				</ul>
			</div>
			<br> <br> <br> <br> <br>
			<div id="help">
				<ul>
					<li class="menu1"><a class="ahelp">Help</a>
						<ul class="hide1">
							<br>
							<li class="hidelist1">-공지사항</li>
							<br>
							<li class="hidelist2">-1:1문의</li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div class="end">
			<div id="withdogs">With Dogs!</div>
			<div id="copyright">Copyright@with Dogs All Rights Reserved</div>
			<br>
		</div>
	</form>
	<script>
			  $(document).ready(function() {
				  $('#loginbutton').on('click', function() {
				    var email = $('#email').val();
				    var password = $('#pw').val();
				    
				    if (email === '' || password === '') {
				      alert('이메일과 비밀번호를 모두 입력해주세요.');
				      return;
				    }
				    
				    // DB에서 이메일과 비밀번호를 확인하는 로직 작성
				    if (/* 이메일과 비밀번호가 일치하지 않는다면 */) {
				      alert('이메일 또는 비밀번호가 잘못되었습니다.');
				      return;
				    }
				    
				    // 로그인 성공 시 메인 페이지로 이동
				    location.href = 'main.jsp';
				  });
				});
	</script>
</body>

</html>