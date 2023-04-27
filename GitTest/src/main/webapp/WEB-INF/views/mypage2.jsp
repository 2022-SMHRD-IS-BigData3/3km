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
	height: 35px;
	padding: 1rem;
	background: rgba(243, 156, 18, 0.73);
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.aham {
	padding-right: 50px;
	font-weight: bold;
	font-size: 25px;
	margin-top: 20px;
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
}

#write {
	border: rgb(0, 0, 0, 0);
	background-color: rgb(0, 0, 0, 0);
}

li.menu {
	width: 40px;
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
	font-size: 15px;
}

.hide .hidelist {
	width: 100px;
	height: 30px;
	font-size: 20px;
	margin-top: 10px;
	list-style: none;
}

.kateham {
	background-color: bisque;
	width: 320px;
	height: auto;
	position: absolute;
	font-family: Katuri;
	margin-top: 8px;
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
	padding-top: 30px;
	height: 50px;
	width: 300px;
}

#mypageimg {
	width: 50px;
	height: 50px;
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
	float: right;
}

.myinfo div {
	justify-content: center;
	flex-direction: column;
	margin-left: 15px;
	margin-right: 15px;
	float: right;
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
	height: 248px;
	margin-top: 70px;
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

.add {
	margin-top: 20px;
	display: flex;
}

.add1 {
	background-color: rgba(194, 192, 192, 0.709);
	width: 85px;
	height: 100px;
	padding: 5px;
	margin-left: 30px;
}
.add2{
	background-color: rgba(194, 192, 192, 0.709);
	width: 85px;
	height: 100px;
	padding: 5px;
	margin-left: 30px;
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
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
										<li class="hidelist" onClick="location.href='Goplace_cafe.do'">카페/식당</li>
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
										<li class="hidelist" onClick="location.href='Gomypage1.do'">‍계정
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
	</form>
	<br>
	<br>
	<div id="my_box">
		<div id="inupbox">
			<div id="mypageimg">
				<input type="file" name="uploadfile" id="img" style="display: none;" />
				<label for="img"><img src="./img/마이페이지프로필.png" id="user"></label>
			</div>
			<div class="myinfo">
				<div class="gesi">
					게시물 <br>
					<span id="gesisu">0</span>
				</div>
				<div class="follow">
					팔로워 <br>
					<span id="followsu">0</span>
				</div>
				<div class="following">
					팔로잉 <br>
					<span id="followingsu">0</span>
				</div>
			</div>
		</div>
		<p id="text">
			<span id="eapleak"> 자기소개를 입력하세요 </span>
		</p>
	</div>

	<div class="add">
		<div>
			<div class="add1">
				<input type="file" name="uploadfile" style="display: none;" />
				<div class="dogpageimg">
					<label for="img"><img src="./img/강아지프로필아이콘.png"
						class="dogpageimg" /></label>
				</div>
				<div class="doginfo">
					<span>이름</span>
				</div>
				<div class="doginfo">
					<span>나이</span>
				</div>
			</div>
		</div>
		<div>
			<div class="add2">
				<input type="file" name="uploadfile" style="display: none;" />
				<div class="dogpageimg">
					<label for="img"><img src="./img/강아지프로필아이콘.png"
						class="dogpageimg" /></label>
				</div>
				<div class="doginfo">
					<span>이름</span>
				</div>
				<div class="doginfo">
					<span>나이</span>
				</div>
			</div>
		</div>
	</div>


	<div id="btn">
		<input type="button" id="modify" value="정보수정" />
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