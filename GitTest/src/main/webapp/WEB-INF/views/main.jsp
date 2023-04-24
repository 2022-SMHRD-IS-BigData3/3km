<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>With Dogs!</title>
<link rel="icon" href="./img/강아지로고.png" />
<link rel="apple-touch-icon" href="./img/강아지로고.png" />
<link rel="stylesheet"
	href="/GitTest/src/main/java/km/frontcontroller/sangdan.css" />
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
	list-style: none;
}

.hidelist {
	list-style: none;
	padding-left: 0px;
	list-style: none;
}

.hide .hidelist {
	font-size: medium;
	list-style: none;
}

.kateham {
	background-color: bisque;
	width: 350px;
	height: auto;
	position: absolute;
}

.aham {
	font-size: 25px;
}

/* div의 스타일 */
#enter {
	width: 360px;
	height: 640px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

div.photobox1 {
	width: 150px;
	height: 150px;
	background-color: gainsboro;
	float: left;
	margin: 10px;
	margin-left: 16px;
}

div.photobox2 {
	width: 150px;
	height: 150px;
	background-color: gainsboro;
	float: right;
	margin: 10px;
	margin-right: 16px;
}

#top-area {
	width: 360px;
	height: 15px;
	font-size: 13px;
	padding: 15px;
	margin-left: 190px
}

#bottom {
	text-align: center;
	font-size: 10px
}

#morebutton {
	width: 50px;
	height: 25px;
	font-size: 5px;
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
								<li class="menu"><a class="aham" >MyPage</a>

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
				<button type="button" id="person" onClick="location.href='mypage.jsp'">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
	</form>

	<div id="top-area">
		<label for="cate-list">정렬방식</label> <select name="cate-list"
			id="cate-list">
			<option value="조회순">조회순</option>
			<option value="좋아요순">좋아요순</option>
			<option value="최신순">최신순</option>
		</select>
	</div>

	<div id="photobox-line">
		<div class="photobox1">
			<a href="#"></a>
		</div>
		<div class="photobox2">
			<a href="#"></a>
		</div>
	</div>

	<div id="photobox-line">
		<div class="photobox1">
			<a href="#"></a>
		</div>
		<div class="photobox2">
			<a href="#"></a>
		</div>
	</div>

	<div id="photobox-line">
		<div class="photobox1">
			<a href="#"></a>
		</div>
		<div class="photobox2">
			<a href="#"></a>
		</div>
	</div>

	<div id="bottom">
		<button id="morebutton" class="btn btn-primary btn-sm" btn-sm>더보기</button>
		<a href="#"></a>
	</div>






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