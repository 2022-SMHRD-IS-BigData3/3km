<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

/* div의 스타일 */
#enter {
	width: 360px;
	height: 0 auto;
	padding-bottom: 30px;
	background-color: rgba(249, 230, 191, 0.15);
	border: 1px solid #ccc;
	box-sizing: border-box;
	margin: auto;
	margin-bottom: 30px;
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
	margin-top: 10px;
	display: flex;
	margin-left: -20px;
}

#person {
	border: none;
	background-color: rgba(0, 0, 0, 0);
	float: right;
	margin-left: 41px;
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
	height: auto;
	margin: 30px;
	margin-bottom: 10px;
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
	width: 200px;
	height: 200px;
	padding: 20px;
	margin-left: 30px;
}

#content {
	width: 280px;
	height: auto;
	font-size: 15px;
	padding: 10px;
}

.bottom {
	text-align: right;
	width: 320px;
}

#comment {
	margin-left: 30px;
	margin-top: 5px;
	width: 250px;
	float: left;
}

#okbutton {
	width: 34px;
	margin-left: 10px;
	height: 20px;
	background-color: rgba(243, 156, 18, 0.73);
	color: black;
	border-radius: 5px;
	border-color: whitesmoke;
	font-family: Katuri;
	font-size: 10px;
}

#commentarea {
	width: 300px;
	height: auto 0;
	margin-left: 30px;
	background-color: whitesmoke;
}

#backbutton {
	float: right;
	margin-lift: 15px;
	margin-top : 12px;
	width: 43px;
	height: 20px;
	background-color: rgba(243, 156, 18, 0.73);
	color: black;
	border-radius: 5px;
	border-color: whitesmoke;
	font-family: Katuri;
	font-size: 13px;
}

#comment_space {
	margin-bottom: 8px;
}

.user_comment {
	margin-bottom: 6px;
}

#user_id {
	display: none;
}

#commentarea {
	display: none;
}

#showcomm {
	margin-right: 15px;
	width: 50px;
	height: 20px;
	background-color: rgba(243, 156, 18, 0.73);
	color: black;
	border-radius: 5px;
	border-color: whitesmoke;
	font-family: Katuri;
	font-size: 8px;
	margin-top: 8px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<div id="enter">
		<form action="#">
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
										<li class="hidelist" onClick="location.href='Qna.do'">Q&A</li>
									</ul></li> <br>
								<li class="menu"><a class="aham">MyPage</a>
									<ul class="hide">
										<li class="hidelist" onClick="location.href='Gomypage.do'">‍마이페이지</li>
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
				<button type="button" id="person"
					onClick="location.href='Gomypage.do'">
					<img src="./img/프로필아이콘.png">
				</button>
			</header>
		</form>
		<div id="midempty"></div>

		<div id="allcontents">
			<div id="title">${show1[0].title}</div>
			<hr align="left"
				style="border: solid 1px rgb(233, 228, 228); width: 295px;">
			<div id="photo">
				<img src="${show1[0].img_root}" alt="" width="200" height="200">
			</div>
			<div id="content">${show1[0].post_contents}</div>
		</div>
		<div class="bottom">
			<!-- <img src="/img/좋아요아이콘.png" width="15px"> -->
			<button id="like">❤</button>
			<span id="likenum">${show1[0].like_count}</span> <span
				class="comment"><img src="./img/댓글아이콘.png" width="17px"></span>
			<span class="commentnum">3</span>
		</div>
		<br>
		<div>
			<form action="Pluscomment.do">
				<!-- 댓글 기능단으로 보내기 -->
				<input id="comment" name="comment" placeholder="댓글 입력" autocomplete="off" /> 
				<input id="user_id" name="user_id" value="${member.user_id}" />
				<button id="okbutton" value="확인" type="submit">확인</button>
			</form>
			<button id="showcomm" value="확인">댓글보기</button>
		</div>
		<br>
		<div id="commentarea">
			<p id="comment_space">댓글 공간</p>
			<div class="user_comment">
				<span>작성자:삐삐</span><br> <span>↳와! 너무 귀여워요</span>
			</div>
			<div class="user_comment">
				<span>작성자:서지호</span><br> <span>↳털 복실복실한거봐 어디 미용실다녀요?</span>
			</div>
			<div class="user_comment">
				<span>작성자:지나가는산책러</span><br> <span>↳이 세상 귀여움이 아니다 귀욤뿜뿜</span>
			</div>
		</div>
		<button id="backbutton" value="뒤로" onClick="location.href='Main.do'">back</button>
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
		
		$(document).on('click','#like',(e)=>{
			$(e.target).text('💔');
			$('#likenum').text('21');
			$(e.target).attr('id','dislike');
			$(e.target).removeClass('like');
		})
		$(document).on('click','#dislike',function(){
			$(this).text('❤');	
			$('#dislike+span').text(`${show1[0].like_count}`);
			$(this).removeClass('dislike');
			$(this).attr('id','like');
		})
		
		$(document).ready(function () {
			$('#comment_area').hide();
			
    		$("#showcomm").click(function () {
        		var commentarea = $("#commentarea");
        		if (commentarea.is(":visible")) {
        			commentarea.fadeIn("slow");
        			commentarea.slideToggle(500);
            		commentarea.hide();
        		} else {
        			commentarea.fadeIn("slow");
        			commentarea.show();
        		}
    		});
		});
		$("#showcomm").on('click',(e)=>{
			
		})
		
		
		
		
	</script>
</body>

</html>