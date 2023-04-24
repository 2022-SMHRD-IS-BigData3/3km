<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<style>
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

<!--
상단바 css -->form#mid {
	text-align: center;
}

.sangdan {
	height: 50px;
	background: rgba(243, 156, 18, 0.73);
	margin: 0;
	display: flex;
}

.aham {
	padding-right: 50px;
	font-weight: bold;
	font-size: 15px;
}

#ham {
	border: none;
	background-color: rgba(9, 9, 9, 0);
	float: left;
	display: flex;
	margin-top: 10px;
}

#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-right: 25px;
	margin-top: 10px;
	margin-left: -10px;
	display: flex;
}

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	float: right;
}

.menu {
	cursor: pointer;
	list-style: none;
}

.menu .hide {
	display: none;
	font-size: 5px;
}

.hide {
	list-style: none;
	padding-left: 0px;
	text-align: left;
}

.hidelist {
	list-style: none;
	padding-left: 0px;
}

.hide .hidelist {
	height: 30px;
	font-size: 20px;
	margin-top: 10px;
	list-style: none;
}

.kateham {
	background-color: bisque;
	width: 350px;
	height: auto;
	position: absolute;
	font-family: Katuri;
}

.aham {
	font-size: 25px;
}

#cate-list {
	font-family: Katuri;
}
    
/* div의 스타일 */
div#enter {
	width: 360px;
	height: 500px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
	border-bottom: rgba(0, 0, 0, 0);
}

#enter1 {
	padding-top: 100px;
}

form#mid {
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

header {
	height: 50px;
	background: rgba(243, 156, 18, 0.73);
	margin: 0;
}

#ham {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	padding: 13px;
	float: left;
}

#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-left: 38px;
	margin-top: 10px;
}

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	float: right;
}

#bottom {
	text-align: center;
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
	padding: 10px;
	float: left;
}

#help {
	float: left;
	margin: 0px;
	padding-left: 10px;
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

.menu {
	cursor: pointer;
}

.menu .hide {
	display: none;
	font-size: medium;
}

ul {
	list-style: none;
	padding-left: 0px;
	margin-left: 0px;
}

li.list {
	float: left;
}

#ahelp {
	margin-right: 50px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<form action="#">
		<div id="enter">
			<header class="sangdan">
				<button type="button" id="ham">
					<img src="./img/KakaoTalk_20230420_174244800.png">
				</button>
				<button type="button" id="withdogslogo">
					<img src="./img/KakaoTalk_20230414_111706684_02.png" width="180">
				</button>
				<button type="button" id="person">
					<img src="./img/person.png">
				</button>
			</header>
	</form>
	<form action="#" id="mid">
		<div id="enter1">
			<img src="./img/KakaoTalk_20230420_143633223.png" width="120px"
				height="100px"></img>
			<p>
				E-mail <input type="email" placeholder="이메일 주소를 입력하세요" /><br>
			</p>
			<p>
				PW<input id="pw" type="password" placeholder="8자 이내 비밀번호를 입력하세요" /><br>
			</p>
			<div id="login">
				<button id="loginbutton">Login</button>
			</div>
			<a href="#" id="join">Join</a>
		</div>
		</div>
	</form>
	<form action="#" id="bottom">
		<div class="bottom1">
			<div id="account">
				<ul>
					<li class="menu"><a>MY ACCOUNT</a>
						<ul class="hide">
							<li class="list">로그인</li>
						</ul></li>
				</ul>
				<!-- <div><img src="" alt="대충사진"></div> -->
			</div>
			<br> <br> <br> <br>
			<div id="help">
				<ul>
					<li class="menu"><a id="ahelp">Help</a>
						<ul class="hide">
							<li class="list">공지사항</li>
							<br>
							<li class="list">1:1문의</li>
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
			$(".menu>a").click(function() {
				var submenu = $(this).next("ul");
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			})
		})
	</script>
</body>

</html>