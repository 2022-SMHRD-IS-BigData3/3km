<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>With Dogs!</title>
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
	font-size: 20px;
}

form#mid {
	text-align: center;
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
	margin-top: 10px;
	display: flex;
}

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	float: right;
	margin-left: -6px;
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
#enter {
	width: 360px;
	height: auto;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

#top-area {
	font-size: 13px;
	text-align: right;
	margin-right: 15px;
}

#medium {
	margin-top: 30px;
}

div.photobox {
	width: 150px;
	height: 150px;
	background-color: gainsboro;
	float: left;
	margin: 10px;
	margin-left: 16px;
	overflow: hidden;
}

#photobox-line {
	height: auto;
}

#photobox-line2 {
	height: 170px;
	clear: left;
}

.boxbottomleft {
	width: 160px;
	height: 30px;
	float: left;
	text-align: right;
}

.boxbottomright {
	width: 150px;
	height: 30px;
	float: right;
	text-align: right;
	margin-right: 20px;
}

.like {
	border: rgb(0, 0, 0, 0);
	background-color: rgb(0, 0, 0, 0);
}

.comment {
	border: rgb(0, 0, 0, 0);
	background-color: rgb(0, 0, 0, 0);
}

#bottom {
	text-align: center;
	font-size: 10px;
	height: 50px;
	clear: left;
}

#write {
	border: rgb(0, 0, 0, 0);
	background-color: rgb(0, 0, 0, 0);
	margin-right: -5px;
}

#morebutton {
	width: 50px;
	height: 25px;
	font-family: Katuri;
	border-color: whitesmoke;
	height: 25px;
	background: rgba(243, 156, 18, 0.73);
	margin-top: 13px;
}

.showphoto {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
.writer{
	text-align: left
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
										<li class="hidelist">나눔</li>
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
					onClick="location.href='Gowritepostpage.do'">
					<img src="./img/글쓰기아이콘.png">
				</button>
				<button type="button" id="person"
					onClick="location.href='Mypage.do'">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
		</form>
		<div id="medium">
			<c:forEach var="n" items="${nanum}">
				<div id="photobox-line">
					<div class="photobox">
						<img id="one" class="showphoto" src="${n.img_root}">
					</div>
					<div id="tc">
						<span>제목 : ${n.title}</span> 
						<br> 
						<span>내용 : ${n.post_contents}</span>
					</div>
						<span id="cone" class="commentnum">view: ${n.view_count}</span>
					<br> 
						<span class="writer">작성자 : </span>
				</div>
			</c:forEach>
		</div>
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