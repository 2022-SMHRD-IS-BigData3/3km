<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="icon" href="./img/강아지로고 .png" />
<link rel="apple-touch-icon" href="./img/강아지로고.png" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<style>
@font-face {
    font-family: 'Katuri';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

body{
      font-family: Katuri;
    }
    
div#enter {
	width: 360px;
	height: 700px;
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

#enter {
	width: 360px;
	height: 640px;
	padding: 0px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: 0 auto;
}

h1 {
	text-align: center;
	color: rgba(243, 156, 18, 0.73);
}

div {
	align-items: center;
}

#info>div {
	text-align: center;
}

input {
	height: 2em;
	line-height: 2em;
}

#hamburger {
	background-color: rgba(0, 0, 0, 0);
	border: none;
	padding: 13px;
}

#person {
	background-color: rgba(0, 0, 0, 0);
	border: none;
	float: right;
	padding: 5px
}

.btn {
	background-color: rgba(243, 156, 18, 0.73);
	color: white;
	margin-left: 260px;
}

#date {
	width: 245px;
}
</style>
</head>


<body>
	<header id="header">

		<form action="#">
			<div id="enter">
				<header class="sangdan">
					<button type="button" id="ham">
						<li class="menu"><a class="aham"><img
								src="./img/íë²ê±°ìì´ì½.png" /></a>
							<ul class="hide">
								<div class="kateham">
									<li class="menu"><a class="aham">Place</a>
										<ul class="hide">
											<li class="hidelist">ì¹´í/ìë¹</li>
											<li class="hidelist">ì°ì±</li>
											<li class="hidelist">ê¸°í</li>
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
											<li class="hidelist">ëë</li>
											<li class="hidelist">Q&A</li>
										</ul></li> <br>
									<li class="menu"><a class="aham">MyPage</a>

										<ul class="hide">
											<li class="hidelist">âê³ì  ê´ë¦¬</li>
											<li class="hidelist">ë´ ì ë³´ ìì </li>
										</ul></li>
								</div>
							</ul></li>
					</button>
					<button type="button" id="withdogslogo">
						<img src="./img/ì´ë¦ë¡ê³ .png" width="180">
					</button>
					<button type="button" id="person"
						onClick="location.href='mypage.jsp'">
						<img src="./img/íë¡íìì´ì½.png">
					</button>
				</header>
		</form>


		<form action="Join.do" method="post" id="info">
			<h1>JOIN US</h1>
			<div>
				<span>ë°©ê°ìì ìë¹ ì¬ì©ìë</span>
			</div>
			<br>
			<div>
				<input name="email" type="text" placeholder="*Email" size="30"
					style="border-color: white;" /> <br> <br> <input
					name="password" type="password" placeholder="*ë¹ë°ë²í¸" size="30"
					maxlength=8 style="border-color: white;" /> <br> <br> <input
					name="nickname" type="text" placeholder="*ëë¤ì" size="30"
					style="border-color: white;" /> <br> <br> <input
					name="date" type="date" id="date" size="30"
					style="border-color: white;"> <br> <br> <input
					name="age" type="number" placeholder="*ê°ìì§ ëì´" size="30"
					style="border-color: white;"> <br> <br> <input
					name="name" type="text" placeholder="*ê°ìì§ ì´ë¦" size="30"
					style="border-color: white;"> <br> <br> <input
					name="breed" type="text" placeholder="ê²¬ì¢" size="30"
					style="border-color: white;">
			</div>
			<br> <input type="submit" class="btn" value="íì¸"
				style="border-color: rgba(0, 0, 0, 0);">
		</form>
		</div>

	</header>
    <script>$(document).ready(function () {
        $(".menu>.aham").click(function () {
            var submenu = $(this).next(".hide");
            if (submenu.is(":visible")) {
                submenu.slideUp();
            } else {
                submenu.slideDown();
            }
        })
    })</script>
</body>
</html>