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
<title>게시물 작성</title>
<style>
@font-face {
	font-family: 'Katuri';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'BookkGothic-Bd';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/BookkGothic-Bd.woff2')
		format('woff2');
	font-weight: 700;
	font-style: normal;
}

body {
	font-family: Katuri;
	font-size: 20px;
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

#intitle {
	margin-left: 20px;
	height: 30px;
	width: 210px;
	font-family: BookkGothic-Bd;
	font-size: 18px;
}

#selgesi {
	margin-left: 10px;
	height: 35px;
	width: 90px;
	font-family: Katuri;
	font-size: 16px;
}

textarea {
	margin-left: 20px;
	margin-top: 20px;
	width: 316px;
	height: 400px;
	background-color: rgba(128, 128, 128, 0.085);
	border: none;
	font-family: BookkGothic-Bd;
	font-size: 18px;
}

#subbut {
	float: right;
	margin-right: 20px;
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

#imgbut {
	margin-left: 20px;
	background-color: rgb(0, 0, 0, 0);
	border: none;
}

<<<<<<< HEAD
#img {
	margin-left: 20px;
	border: none;
=======
#file {
	margin-left: 20px;
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/3km.git
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
<<<<<<< HEAD
										<li class="hidelist" onClick="location.href='Gomypage1.do'">‍계정관리</li>
										<li class="hidelist" onClick="location.href='Goinfo.do'">내정보 수정</li>
=======
										<li class="hidelist" onClick="location.href='Gomypage1.do'">계정 관리</li>
										<li class="hidelist" onClick="location.href='Goinfo.do'">내 정보 수정</li>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/3km.git
										<li class="hidelist" onClick="location.href='Gologout.do'">로그아웃</li>
									</ul></li>
							</div>
						</ul></li>
				</button>
				<button type="button" id="withdogslogo">
					<img src="./img/이름로고.png" width="180">
				</button>
<<<<<<< HEAD
				<button type="button" id="write"
					onClick="location.href='Gowritepostpage.do'">
					<img src="./img/글쓰기아이콘.png">
				</button>
				<button type="button" id="person"
					onClick="location.href='Gomypage1.do'">
=======
				<button type="button" id="person" onClick="location.href='Gomypage1.do'">
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/3km.git
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
<<<<<<< HEAD
	</form>
	<br>
	<form action="Write.do" method="post">
		<input type="text" id="intitle" placeholder="제목을 입력해주세요" name="title">
		<select id="selgesi" name="postType">
			<option value="cafe">카페/식당</option>
			<option value="walk">산책</option>
			<option value="etc">기타</option>
			<option value="puppy">Puppy</option>
			<option value="adult">Adult</option>
			<option value="senior">Senior</option>
			<option value="items">Items</option>
			<option value="share">나눔</option>
			<option value="question">Q & A</option>
		</select> <br>
		<textarea id="content" name="POST_CONTENTS"></textarea>
		<br> <br> <input type="file" name="imgfile" id="img" />
		<button type="submit" id="subbut" value="작성">작성</button>
	</form>
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
=======
			<br>
			<form action="" method="post">
				<input type="text" id="intitle" placeholder="제목을 입력해주세요"> <select
					id="selgesi">
					<option value="">카페/식당</option>
					<option value="">산책</option>
					<option value="">기타</option>
					<option value="">Puppy</option>
					<option value="">Adult</option>
					<option value="">Senior</option>
					<option value="">Items</option>
					<option value="">나눔</option>
					<option value="">Q & A</option>
				</select> <br>
				<textarea id="content"name="content"></textarea>
				<br> <br>
				<textarea></textarea>
				<br><br>
				<input id="file" type="file" name="uploadfile" id="img">
				<button type="submit" id="subbut" value="작성" >작성</button>
				</input>
				
			</form>
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
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/3km.git
			})
<<<<<<< HEAD
		})
	</script>
=======
			
			
		</script>
>>>>>>> branch 'master' of https://github.com/2022-SMHRD-IS-BigData3/3km.git
</body>
</html>