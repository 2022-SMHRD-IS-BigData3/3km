<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>마이페이지</title>
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

#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-right: 0px;
	margin-top: 10px;
	display: flex;
}

#write {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	float: right;
}

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	margin-left: -5px;
	padding-left: 0px;
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

/* 상단바 css */
#my_box {
	background-color: rgba(243, 156, 18, 0.73);
	width: 300px;
	height: 140px;
	margin-top: 0px;
	margin-left: 30px;
	border-radius: 13%;
}

#inupbox {
	padding-top: 25px;
	height: 50px;
	width: 300px;
}

#mypageimg {
	width: 60px;
	height: 60px;
	float: left;
	margin-left: 30px;
}

#file {
	border-radius: 4%;
	background-color: rgb(52, 152, 219);
	color: white;
}

#user {
	width: 100%;
	height: 100%;
}

.myinfo {
	display: flex;
	margin-top: 10px;
}

.myinfo div {
	justify-content: center;
	flex-direction: column;
	margin-left: 15px;
	margin-right: 15px;
	text-align: center;
}

.myinfo span {
	text-align: center;
}

#modify {
	border-radius: 4%;
	background-color: rgb(52, 152, 219);
	color: white;
	width: 70px;
	height: 26px;
	border-color: rgb(0, 0, 0, 0);
	font-family: Katuri;
	margin-right: 10px;
}

#word {
	width: 170px;
	margin-left: 10px;
}

#text {
	border-radius: 10px;
	background-color: white;
	width: 255px;
	height: 20px;
	margin-left: 25px;
	margin-top: 20px;
	border: none;
}

#eapleak {
	margin-left: 10px;
	text-decoration: none;
	color: black;
	font-size: small;
}

#btn {
	margin-top: 17px;
	margin-right: 20px;
	float: right;
}

#picture {
	background-color: rgba(243, 156, 18, 0.73);
	width: 360px;
	height: 220px;
	margin-top: 68px;
}

.post_img {
	background-color: whitesmoke;
	width: 130px;
	height: 110px;
	margin-top: 20px;
	margin-left: 27px;
}

.post_img2 {
	background-color: whitesmoke;
	width: 130px;
	height: 110px;
	margin-left: 27px;
}

.add {
	margin-top: 20px;
}

.add-wrapper {
	display: flex;
}

.add1 {
	background-color: rgba(194, 192, 192, 0.709);
	width: 85px;
	height: 120px;
	padding: 5px;
	margin-left: 17.5px;
}

.add2 {
	background-color: rgba(194, 192, 192, 0.709);
	width: 85px;
	height: 120px;
	padding: 5px;
	margin-left: 17.5px;
}

.add3 {
	background-color: rgba(194, 192, 192, 0.709);
	width: 85px;
	height: 120px;
	padding: 5px;
	margin-left: 17.5px;
}

.dogpageimg {
	border-radius: 100px;
	margin-top: 5px;
	margin: 0 auto;
	width: 50px;
	height: 50px;
	background-color: #D3C9B5;
}

.doginfo {
	text-align: center;
}

#dogname {
	border-radius: 10px;
	font-family: Katuri;
	color: gray;
}

#dogage {
	border-radius: 10px;
	font-family: Katuri;
	color: gray;
}

.empty {
	height: 30px;
}

#picname {
	text-align: center;
}

.gesi {
	text-align: center;
}
</style>
</head>

<body>
	<div id="enter">
		<form action="#">
			<header class="sangdan">
				<button type="button" id="ham">
					<li class="menu"><a class="aham"> <img
							src="./img/햄버거아이콘.png" /></a>
						<ul class="hide">
							<div class="kateham">
								<li class="menu"><a class="aham">Place</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Cafe.do'">카페/식당</li>
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
										<li class="hidelist" onClick="location.href='Nanum.do'">나눔</li>
										<li class="hidelist" onClick="location.href='Qna.do'">Q&A</li>
									</ul></li> <br>
								<li class="menu"><a class="aham">MyPage</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Mypage.do'">‍마이페이지</li>
										<li class="hidelist" onClick="location.href='Goinfo.do'">내정보
											수정</li>
										<li class="hidelist" onClick="location.href='Gologout.do'">로그아웃</li>
									</ul></li>
							</div>
						</ul></li>
				</button>
				<button type="button" id="withdogslogo"
					onClick="location.href='Main.do'">
					<img src="./img/이름로고.png" width="180">
				</button>
				<button type="button" id="write"
					onClick="location.href='Gowritepostpage.do?user=${member}'">
					<img src="./img/글쓰기아이콘.png">
				</button>
				<button type="button" id="person"
					onClick="location.href='Mypage.do'">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
		</form>
		<div class="empty"></div>
		<div id="my_box">
			<div id="inupbox">
				<div id="mypageimg">
					<label for="img"><img src="./img/유저아이콘.png" id="user"></label>
				</div>
				<div class="myinfo">
					<div class="gesi">
						게시물 <br>
						<span class="gesi" id="gesisu">0</span>
					</div>
				</div>
			</div>
			<p id="text">
				<span id="eapleak">${member.introduce}</span>
			</p>
		</div>

		<div class="add">
			<div class="add-wrapper">
				<c:forEach items="${doginfo}" var="item">
					<c:if test="${item.user_id} == ${member.user_id}">
						<div class="add1">
							<div class="dogpageimg">
								<label for="img"><img src="./img/강아지프로필아이콘.png"
									class="dogpageimg" /></label>
							</div>
							<div class="doginfo">
								<span>${item.dog_name}</span>
							</div>
							<div class="doginfo">
								<span>${item.dog_age}살</span>
							</div>
							<div class="doginfo">
								<span>${item.dog_breed}</span>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>

		<div id="btn">
			<input type="button" id="modify" value="정보수정"
				onClick="location.href='Gomypagewrite.do'" />
		</div>
		<div id="picture_box">
			<div id="picture" style="overflow-y: scroll;">
				<p id="picname">${member.nickname}님이올린 게시글 사진</p>
				<div>
					<img class="post_img" src="./img/이미지없음.jpg"> <img
						class="post_img2" src="./img/이미지없음.jpg">
				</div>
				<div>
					<img class="post_img" src="./img/이미지없음.jpg"> <img
						class="post_img2" src="./img/이미지없음.jpg">
				</div>
				<div>
					<img class="post_img" src="./img/이미지없음.jpg"> <img
						class="post_img2" src="./img/이미지없음.jpg">
				</div>
			</div>
		</div>
	</div>
	</header>
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
	</script>
</body>

</html>