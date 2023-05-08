<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장소_카페/식당</title>
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
	float: right;
	margin-left: -6px;
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
	font-size: 13px;
	text-align: right;
	margin-top : 30px;
	margin-right: 15px;
}

div.photobox {
	width: 150px;
	height: 150px;
	background-color: gainsboro;
	float: left;
	margin: 10px;
	margin-left: 16px;
    overflow:hidden;
}
#photobox-line {
	height: 170px;
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

#popup01 {
	width: 200px;
	height: 200px;
	position: fixed;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #fff;
	z-index: 2;
	display: none;
}

.backon {
	content: "";
	width: 100%;
	height: 100%;
	background: #00000054;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1;
}

.close {
	position: absolute;
	top: -25px;
	right: 0;
	cursor: pointer;
	size: 50px;
}
#nopost{
	width: 200px;
	height: 200px;
	position: fixed; 
  	top: 50%; 
  	left: 50%; 
  	transform: translate(-50%, -50%);
}
</style>


</head>

<body>
	<div id="enter">
		<form action="#">
			<header class="sangdan">
				<button type="button" id="ham">
					<li class="menu"><a class="aham"><img src="./img/햄버거아이콘.png" /></a>
						<ul class="hide">
							<div class="kateham">
								<li class="menu"><a class="aham">Place</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Cafe.do'">카페/식당</li>
										<li class="hidelist">산책</li>
										<li class="hidelist">기타</li>
									</ul>
								</li> 
								<br>
								<li class="menu"><a class="aham">Feed</a>
									<ul class="hide">
										<li class="hidelist">Puppy</li>
										<li class="hidelist">Adult</li>
										<li class="hidelist">Senior</li>
									</ul>
								</li> 
								<br>
								<li class="aham"><a>Items</a></li> 
								<br>
								<li class="menu"><a class="aham">Board</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Nanum.do'">나눔</li>
										<li class="hidelist" onClick="location.href='Qna.do'">Q&A</li>
									</ul>
								</li> 
								<br>
								<li class="menu"><a class="aham">MyPage</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Gomypage.do'">‍마이페이지</li>
										<li class="hidelist" onClick="location.href='Goinfo.do'">내정보 수정</li>
										<li class="hidelist" onClick="location.href='Gologout.do'">로그아웃</li>
									</ul>
								</li>
							</div>
						</ul>
					</li>
				</button>
				<button type="button" id="withdogslogo"  onClick="location.href='Main.do'">
				<img src="./img/이름로고.png" width="180"></button>
				<button type="button" id="write" onClick="location.href='Gowritepostpage.do'">
				<img src="./img/글쓰기아이콘.png"></button>
				<button type="button" id="person" onClick="location.href='Gomypage.do'">
				<img src="./img/프로필아이콘.png"></button>
			</header>
		</form>
			<div id="medium">
			<div id="top-area">
				<label for="cate-list">정렬방식</label> <select name="cate-list" id="cate-list">
					<option value='view'>조회순</option>
					<option value="new">최신순</option>
					<option value="like">좋아요순</option>
				</select>
			</div>
			<div id="photobox">
				<div id="photobox-line">
					<div class="photobox">
						<img id="one" class="showphoto" onClick="location.href='showpost1.do'" src="${cafe[0].img_root}">
					</div>
					<div class="photobox">
						<img id="two" class="showphoto" onClick="location.href='showpost2.do'" src="${cafe[1].img_root}">
					</div>
				</div>
				<div class="boxbottomleft">
					<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
					<span id="lone" class="likenum">${cafe[0].like_count}</span> 
					<span id="cone" class="commentnum">view: ${cafe[0].view_count}</span>
				</div>
				<div class="boxbottomright">
					<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
					<span id="ltwo" class="likenum">${cafe[1].like_count}</span> 
					<span id="ctwo" class="commentnum">view: ${cafe[1].view_count}</span>
				</div>
				<div id="photobox-line2">
					<div class="photobox">
						<img id="three" class="showphoto" onClick="location.href='showpost3.do'" src="${cafe[2].img_root}">
					</div>
					<div class="photobox">
						<img id="four" class="showphoto" onClick="location.href='showpost4.do'" src="${cafe[3].img_root}">
					</div>
				</div>
				<div class="boxbottomleft">
					<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
					<span id="lthree" class="likenum">${cafe[2].like_count}</span> 
					<span id="cthree" class="commentnum">view: ${cafe[2].view_count}</span>
				</div>
				<div class="boxbottomright">
					<span class="like"><img src="./img/좋아요아이콘.png" width="15px"></span>
					<span id="lfour" class="likenum">${cafe[3].like_count}</span>
					<span id="cfour" class="commentnum">view: ${cafe[3].view_count}</span>
				</div>
			</div>
			<div id="bottom">
				<button id="morebutton" class="btn btn-primary btn-sm" btn-sm>더보기</button>
				<a href="#"></a>
			</div>
		</div>
	</div>
	<div id="popup01">
		<div class="close">close</div>
		<img id="nopost"src="./img/게시글없음.jpg">
	</div>
	
	<c:set var="cafe_length" value="${fn:length(cafe)}"/>
	
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
		$('#cate-list').change(function() {
			if ($(this).val() == 'view') {
				$('#one').attr('src', `${cafe[0].img_root}`);
				$('#lone').text(`${cafe[0].like_count}`);
				$('#cone').text(`view:${cafe[0].view_count}`);
				$('#two').attr('src', `${cafe[1].img_root}`);
				$('#ltwo').text(`${cafe[1].like_count}`);
				$('#ctwo').text(`view:${cafe[1].view_count}`);
				$('#three').attr('src', `${cafe[2].img_root}`);
				$('#lthree').text(`${cafe[2].like_count}`);
				$('#cthree').text(`view:${cafe[2].view_count}`);
				$('#four').attr('src', `${cafe[3].img_root}`);
				$('#lfour').text(`${cafe[3].like_count}`);
				$('#cfour').text(`view:${cafe[3].view_count}`);
			} else if ($(this).val() == 'new') {
				$('#one').attr('src', `${cafe[cafe_length-1].img_root}`);
				$('#lone').text(`${cafe[cafe_length-1].like_count}`);
				$('#cone').text(`view:${cafe[cafe_length-1].view_count}`);
				$('#two').attr('src', `${cafe[cafe_length-2].img_root}`);
				$('#ltwo').text(`${cafe[cafe_length-2].like_count}`);
				$('#ctwo').text(`view:${cafe[cafe_length-2].view_count}`);
				$('#three').attr('src',`${cafe[cafe_length-3].img_root}`);
				$('#lthree').text(`${cafe[cafe_length-3].like_count}`);
				$('#cthree').text(`view:${cafe[cafe_length-3].view_count}`);
				$('#four').attr('src', `${cafe[cafe_length-4].img_root}`);
				$('#lfour').text(`${cafe[cafe_length-4].like_count}`);
				$('#cfour').text(`view:${cafe[cafe_length-4].view_count}`);
			} else if ($(this).val() == 'like') {
				$('#one').attr('src',`${cafe[0].img_root}`);
				$('#lone').text(`${cafe[0].like_count}`);
				$('#cone').text(`view:${cafe[0].view_count}`);
				$('#two').attr('src', `${cafe[1].img_root}`);
				$('#ltwo').text(`${cafe[1].like_count}`);
				$('#ctwo').text(`view:${cafe[1].view_count}`);
				$('#three').attr('src',`${cafe[2].img_root}`);
				$('#lthree').text(`${cafe[2].like_count}`);
				$('#cthree').text(`view:${cafe[2].view_count}`);
				$('#four').attr('src',`${cafe[3].img_root}`);
				$('#lfour').text(`${cafe[3].like_count}`);
				$('#cfour').text(`view:${cafe[3].view_count}`);
			}
		})
		
	</script>

</body>

</html>