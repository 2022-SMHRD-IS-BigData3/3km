<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="./img/강아지로고.png" />
	<link rel="apple-touch-icon" href="./img/강아지로고.png" />
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<title>게시물 상세보기</title>
	<style>
		@font-face {
			font-family: 'Katuri';
			src:
				url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff') format('woff');
			font-weight: normal;
			font-style: normal;
		}

		@font-face {
			font-family: 'BookkGothic-Bd';
			src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/BookkGothic-Bd.woff2') format('woff2');
			font-weight: 700;
			font-style: normal;
		}

		
		/* div의 스타일 */
		#enter {
			width: 360px;
			height: 1000px;
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



		#midempty {
			height: 10px;
		}

		#allcontents {
			width: 300px;
			height: 750px;
			margin: 30px;
			background-color: whitesmoke;
		}

		#title {
			height: 30px;
			text-align: center;
			font-size: 25px;
			padding-top: 10px;
			font-family: BookkGothic-Bd;
		}

		#photo {
			height: 300px;
			padding: 20px;
		}

		#content {
			width: 280px;
			height: 350px;
			font-size: 15px;
			padding: 10px;
		}

		#backbutton {
			float: right;
			margin-right: 40px;
			margin-top: 5px;
			width: 70px;
			height: 30px;
			background-color: rgba(243, 156, 18, 0.73);
			color: black;
			border-radius: 5px;
			border-color: whitesmoke;
			font-family: Katuri;
			font-size: 15px;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<div id="enter">
		<div>
			<header class="sangdan">
				<button type="button" id="ham">
					<li class="menu"><a class="aham"><img src="./img/햄버거아이콘.png" /></a>
						<ul class="hide">
							<div class="kateham">
								<li class="menu"><a class="aham">Place</a>
									<ul class="hide">
										<li class="hidelist">카페/식당</li>
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
										<li class="hidelist">Q&A</li>
									</ul>
								</li> <br>
								<li class="menu"><a class="aham">MyPage</a>
									<ul class="hide">
										<li class="hidelist">계정 관리</li>
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
				<button type="button" id="person">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
			<div>

				<div id="midempty"></div>

				<div id="allcontents">
					<div id="title">여기는 제목입니다.

					</div>
					<hr align="left" style="border:solid 1px rgb(233, 228, 228); width: 295px;">
					<div id="photo">사진 불러올 자리 
						<img src="./img/강아지로고.png" alt="" width="280" height="280">
					 </div>
					<div id="content"> 
						어제는 강아지랑 코딩을 했다 오늘은 강아지랑 코딩을 했다 내일은 강아지랑 코딩을 할거야
					</div>
				</div>
				<button input type="submit" id="backbutton" value="작성">뒤로가기
				</button>






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