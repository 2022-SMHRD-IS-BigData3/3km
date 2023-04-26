<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mypage_edit</title>
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

/* 상단바 css */
#mypageimg{
    width: 50px;
	height: 50px;
}
#my_box {
	background-color: rgba(243, 156, 18, 0.73);
	width: 300px;
	height: 160px;
	margin-top: 30px;
	margin-left: 30px;
	border-radius: 13%;
}

#file {
	border-radius: 4%;
	background-color: rgb(52, 152, 219);
	color: white;
}

#user {
	width: 70px;
	margin-top: 30px;
	margin-left: 20px;
}

#modify {
	margin-top: px;
	border-radius: 4%;
	background-color: rgb(52, 152, 219);
	color: white;
}

#word {
	width: 170px;
	margin-left: 10px;
}

#text {
	border-radius: 10px;
	background-color: white;
	width: 180px;
	height: 80px;
	margin-left: 100px;
	margin-top: -30px;
}

#btn {
	margin-top: 17px;
	margin-right: 20px;
	float: right;
}

#picture {
	background-color: rgba(243, 156, 18, 0.73);
	width: 360px;
	height: 248px;
	margin-top: 47px;
}

.post_img {
	background-color: whitesmoke;
	width: 130px;
	height: 110px;
	margin-top: 20px;
	margin-left: 30px;
}

.post_img2 {
	background-color: whitesmoke;
	width: 130px;
	height: 110px;
	margin-left: 160px;
}

.add1 {
	background-color: rgb(194, 192, 192);
	width: 90px;
	height: 30px;
	margin: 0 auto;
}
.myinfo {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}

.myinfo div {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  margin-left: 30px;
  margin-right: 30px;
}

.myinfo span {
  text-align: center;
}

p {
	font-size: 18px;
	text-align: center;
	margin-top: 20px;
	padding: 5.5px;
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
									<li class="hidelist">Q&A</li>
								</ul></li> <br>
							<li class="menu"><a class="aham">MyPage</a>
								<ul class="hide">
									<li class="hidelist">계정 관리</li>
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
		<div id="my_box">
			<div>
				<input type="file" name="uploadfile" id="img" style="display: none;" />
				<div id="mypageimg">
					<label for="img"><img src="./img/마이페이지프로필.png"
						id="user"></label>
				</div>
			</div>
			<div id="text">
				<div id="white">
					<div id="word">글을 써요 글을 쓰는 중이에요 여기는 글이 작성되는 곳 입니다.</div>
				</div>
			</div>
			<div id="btn">
				<input type="button" id="modify" value="정보수정" onClick="location.href='Goinfo.do'"
					style="width: 84px; height: 26px; border-color: rgb(0, 0, 0, 0);">
			</div>
		</div>

		<div>
			<div >
				<div class="add1">
					<p>강쥐1</p>
				</div>
			</div>
		</div>
		<div class="myinfo">
			<div class="gesi">게시물 <br><span id="gesisu">0</span></div>
			<div class="follow">팔로워 <br><span id="followsu">0</span></div>
			<div class="following">팔로잉 <br><span id="followingsu">0</span></div>
		</div>
		<div id="picture_box">
			<div id="picture" style="overflow-y: scroll;">
				<div class="post_img">
					<div>
						<div class="post_img2"></div>
					</div>
				</div>
				<div class="post_img">
					<div>
						<div class="post_img2"></div>
					</div>
				</div>
				<div class="post_img">
					<div>
						<div class="post_img2"></div>
					</div>
				</div>
				<div class="post_img">
					<div>
						<div class="post_img2"></div>
					</div>
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