<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입 성공</title>
<link rel="icon" href="./img/강아지로고.png" />
<link rel="apple-touch-icon" href="./img/강아지로고.png" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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
	font-size: 18px;
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
div>ul {
	background-color: whitesmoke;
}

.dropdown-menu {
	background-color: whitesmoke;
}

.navbar-toggler {
	border: none;
}

.navbar-brand {
	margin-left: 15px;
}

.navbar-account {
	border: none;
	background-color: rgba(0, 0, 0, 0);
}

#container {
	width: 360px;
	height: 640px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

#sangdan {
	background-color: rgba(243, 156, 18, 0.73);
	height: 50px
}

#top-area {
	width: 360px;
	height: 40px;
	font-size: 13px;
	padding: 15px;
	margin-left: 190px
}

#bottom {
	text-align: center;
	font-size: 10px;
}

#blankarea {
	height: 100px;
}

#sucess {
	height: 200px;
	text-align: center;
}
</style>
</head>

<body>
	<form action="#">
		<div id="enter">
			<header class="sangdan">
				<button type="button" id="ham">
					<li class="menu"><a class="aham"><img
							src="./img/햄버거아이콘.png" /></a>
						<ul class="hide">
							<div class="kateham">
								<li class="menu"><a class="aham">Place</a>
									<ul class="hide">
										<li class="hidelist">카페/식당</li>
										<li class="hidelist">산책</li>
										<li class="hidelist">기타</li>
									</ul></li> <br>
								<li class="menu"><a class="aham">Feed</a>
									<ul class="hide">
										<li class="hidelist">Puppy</li>
										<li class="hidelist">Adult</li>
										<li class="hidelist">Senior</li>
									</ul></li> <br>
								<li class="aham"><a>Items</a></li> <br>
								<li class="menu"><a class="aham">Board</a>
									<ul class="hide">
										<li class="hidelist">나눔</li>
										<li class="hidelist">Q&A</li>
									</ul></li> <br>
								<li class="menu"><a class="aham">MyPage</a>
									<ul class="hide">
										<li class="hidelist">‍계정 관리</li>
										<li class="hidelist">내 정보 수정</li>
									</ul></li>
							</div>
						</ul></li>
				</button>
				<button type="button" id="withdogslogo">
					<img src="./img/이름로고.png" width="180">
				</button>
				<button type="button" id="person">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
	</form>


	<div id="sucess">
		<div id="blankarea"></div>
		<div>회원가입이 완료되었습니다!</div>
		<br>
		<button type="button" id="successbutton" onClick="location.href='login.jsp'">로그인 하러가기
	</div>




	</div>

</body>

</html>