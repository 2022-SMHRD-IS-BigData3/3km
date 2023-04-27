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
            margin-left: -5px;
            padding-left: 0px;
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




		#midempty {
			height: 10px;
		}

		#allcontents {
			width: 300px;
			height: 570px;
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
			height: 250px;
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
			height: 180px;
			margin-left: 30px;
			background-color: whitesmoke;
		}

		#backbutton {
			float: right;
			margin-right: 15px;
			width: 43px;
			height: 20px;
			background-color: rgba(243, 156, 18, 0.73);
			color: black;
			border-radius: 5px;
			border-color: whitesmoke;
			font-family: Katuri;
			font-size: 13px;
		}
	</style>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
	<div id="enter">
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
									<li class="hidelist" onClick="location.href='Goqna.do'">Q&A</li>
								</ul>
							</li> <br>
							<li class="menu"><a class="aham">MyPage</a>
								<ul class="hide">
									<li class="hidelist" onClick="location.href='Gomypage1.do'">계정 관리</li>
									<li class="hidelist" onClick="location.href='Goinfo.do'">내 정보 수정</li>
									<li class="hidelist" onClick="location.href='Gologout.do'">로그아웃</li>
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

		<div id="midempty"></div>

		<div id="allcontents">
			<div id="title">여기는 제목입니다.

			</div>
			<hr align="left" style="border:solid 1px rgb(233, 228, 228); width: 295px;">
			<div id="photo">사진 불러올 자리
				<img src="./img/강아지로고.png" alt="" width="200" height="200">
			</div>
			<div id="content">
				어제는 강아지랑 산책을 했다 오늘은 강아지랑 산책을 하고있다 내일은 강아지랑 산책을 할거야
			</div>
		</div>

		<div class="bottom">
			<span class="like">❤</button><!-- <img src="/img/좋아요아이콘.png" width="15px"> --></span>
			<span class="likenum">0</span>
			<span class="comment"><img src="/img/댓글아이콘.png" width="17px"></span>
			<span class="commentnum">0</span>
		</div>

		<br>
		<div>
			<input id="comment" placeholder="write a comment...">
			</input>
			<button id="okbutton" value="확인">확인</button>
		</div>
		<br>
		<div id="commentarea">댓글 공간</div>
		<br>
		<button id="backbutton" value="뒤로">back
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
		
		$(document).on('click','.like',(e)=>{
			$(e.target).text('💔');
			$('.likenum').text('1');
			$(e.target).attr('class','dislike');
			$(e.target).removeClass('like');
		})
		$(document).on('click','.dislike',function(){
			$(this).text('❤');	
			$('.dislike+span').text('0');
			$(this).removeClass('dislike');
			$(this).attr('class','like');
		})
	</script>
</body>

</html>