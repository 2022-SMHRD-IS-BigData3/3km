<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보</title>
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

/* 상단바 css */
#enter {
	width: 360px;
	height: 640px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

.sangdan {
	height: 50px;
	background: rgba(243, 156, 18, 0.73);
	margin: 0;
	display: flex;
}

.aham {
	padding-right: 30px;
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

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	margin-left: -5px;
	padding-left: 0px;
}

#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-right: 0px;
	margin-top: 10px;
	display: flex;
}

write {
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

#info {
	color: rgba(243, 156, 18, 0.73);
	font-weight: bold;
	text-align: center;
}

.hide .hidelist {
	font-size: medium;
}

.aham {
	font-size: 25px;
}

.infobody {
	text-align: center;
}

.infobody input {
	height: 30px;
	line-height: 2em;
	border-color: white;
	width: 235px;
	font-size: medium;
	font-family: 'Katuri';
}

.infobody2 {
	display: flex;
	margin-left: 58px;
	margin-bottom: -15px;
}

.btn {
	background-color: rgba(243, 156, 18, 0.73);
	color: black;
	margin-right: 60px;
	float: right;
	border-color: whitesmoke;
	font-family: 'Katuri';
	width: 50px;
	height: 30px;
}

#date {
	width: 236px;
	height: 30px;
}

.plusbut {
	border: 0;
	outline: 0;
	width: 30px;
	height: 30px;
	margin-left: 5px;
	background-color: rgb(0, 0, 0, 0);
}
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
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
									<li class="hidelist" onClick="location.href='Goqna.do'">Q&A</li>
								</ul></li> <br>
							<li class="menu"><a class="aham">MyPage</a>
								<ul class="hide">
									<li class="hidelist" onClick="location.href='Gomypage1.do'">계정
										관리</li>
									<li class="hidelist" onClick="location.href='Goinfo.do'">내
										정보 수정</li>
									<li class="hidelist" onClick="location.href='Gologout.do'">로그아웃</li>
								</ul></li>
						</div>
					</ul></li>
			</button>
			<button type="button" id="withdogslogo">
				<img src="./img/이름로고.png" width="180">
			</button>
			<button type="button" id="write"
				onClick="location.href='Gowritepostpage.do'">
				<img src="./img/글쓰기아이콘.png">
			</button>
			<button type="button" id="person"
				onClick="location.href='Gomypage1.do'">
				<img src="./img/프로필아이콘.png">
			</button>
		</header>
		<div class="empty"></div>
		<br> <br>

		<form action="info.do">
			<div class="infobody">
				<input type="email" placeholder=`${member.email}` size="30" readonly />
				<br> <br>
				<div class="infobody2">
					<input type="password" id="pw" value=`${member.pw}` size="30"
						maxlength=8 /> <input type="checkbox" id="check" />
				</div>
				<br> <br> <input type="text" placeholder="닉네임" size="30" />
				<br> <br> <input type="date" id="date" size="30" /> <br>
				<br>
				<div class="infobody2">
					<input type="text" placeholder="강아지 나이" size="30" />
					<button name="" class="plusbut">
						<img src="./img/플러스버튼이미지.png" alt="" height="30px" width="30px" />
					</button>
				</div>
				<br> <br>
				<div class="infobody2">
					<input type="text" placeholder="DogName" size="30" />
				</div>
				<br> <br>
				<div class="infobody2">
					<input type="text" placeholder="DogBreed" size="30" />
				</div>
			</div>
			<br> <br> <input type="submit" class="btn" value="완료">
		</form>
		<script>
		$(document).ready(function() {
			$(".menu>.aham").click(function() {
				var submenu = $(this).next(".hide");
				if (submenu.is(":visible")) {
					submenu.slideUp();
				} else {
					submenu.slideDown();
				}
			})
		})
		
		$(document).ready(function() {
			var checked = $("#check").is(':checked');
			
			if(checked){
				$('input#pw').attr("readonly",true); 
			}else{
				$('input#pw').attr("readonly",false); 
			}
			
		}
		
	</script>
</body>

</html>