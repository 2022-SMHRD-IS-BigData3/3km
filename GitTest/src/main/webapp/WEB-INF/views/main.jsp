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
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

	<style>
		@font-face {
			font-family: 'Katuri';
			src:
				url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff') format('woff');
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
			margin-top: 35px;
		}

		div.photobox2 {
			width: 150px;
			height: 150px;
			background-color: gainsboro;
			float: right;
			margin: 10px;
			margin-right: 16px;
			margin-top: 35px;
		}

		#top-area {
			width: 130px;
			height: 15px;
			font-size: 13px;
			padding: 15px;
			margin-left: 190px;
		}


		#photobox-line {
			height: 190px;
		}

		#photobox-line2 {
			height: 190px;
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


	</style>


</head>

<body>

	<form action="#">
		<div id="enter">
			<header class="sangdan">
				<button type="button" id="ham">
					<li class="menu"><a class="aham"><img src="./img/햄버거아이콘.png" /></a>
						<ul class="hide">
							<div class="kateham">
								<li class="menu"><a class="aham">Place</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Goplace_cafe.do'">카페/식당</li>
										<li class="hidelist">산책</li>
										<li class="hidelist">기타</li>
									</ul>
								</li> <br>
								<li class="menu"><a class="aham">Feed</a>
									<ul class="hide">
										<li class="hidelist">Puppy</li>
										<li class="hidelist">Adult</li>
										<li class="hidelist">Senior</li>
									</ul>
								</li> <br>
								<li class="aham"><a>Items</a></li> <br>
								<li class="menu"><a class="aham">Board</a>
									<ul class="hide">
										<li class="hidelist">나눔</li>
										<li class="hidelist" onClick="location.href='Goqna.do'">Q&A</li>
									</ul>
								</li> <br>
								<li class="menu"><a class="aham">MyPage</a>

									<ul class="hide">
										<li class="hidelist">‍계정 관리</li>
										<li class="hidelist">내 정보 수정</li>
									</ul>
								</li>
							</div>
						</ul>
					</li>
				</button>
				<button type="button" id="withdogslogo">
					<img src="./img/이름로고.png" width="180">
				</button>
				<button type="button" id="write" onClick="location.href='Gowritepostpage.do'">
					<img src="./img/글쓰기아이콘.png">
				</button>
				<button type="button" id="person" onClick="location.href='Gomypage1.do'">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
	</form>

	<div id="top-area">
		<label for="cate-list">정렬방식</label> <select name="cate-list" id="cate-list">
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
	<div class="boxbottomleft">
		<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
		<span class="likenum">0</span>
		<span class="comment"><img src="./img/댓글아이콘.png" width="17px"></span>
		<span class="commentnum">0</span>
	</div>
	<div class="boxbottomright">
		<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
		<span class="likenum">0</span>
		<span class="comment"><img src="./img/댓글아이콘.png" width="17px"></span>
		<span class="commentnum">0</span>
	</div>
	
	<div id="photobox-line2">
		<div class="photobox1">
			<a href="#"></a>
		</div>
		<div class="photobox2">
			<a href="#"></a>
		</div>
	</div>
	<div class="boxbottomleft">
		<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
		<span class="likenum">0</span>
		<span class="comment"><img src="./img/댓글아이콘.png" width="17px"></span>
		<span class="commentnum">0</span>
	</div>
	<div class="boxbottomright">
		<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
		<span class="likenum">0</span>
		<span class="comment"><img src="./img/댓글아이콘.png" width="17px"></span>
		<span class="commentnum">0</span>
	</div>

	

	<div id="bottom">
		<button id="morebutton" class="btn btn-primary btn-sm" btn-sm>더보기</button>
		<a href="#"></a>
	</div>

	</div>

	<script>
		$(document).ready(function () {
			$(".menu>.aham").click(function () {
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