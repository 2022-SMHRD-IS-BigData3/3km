<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판_질문</title>
    <link rel="icon" href="./img/강아지로고.png" />
    <link rel="apple-touch-icon" href="./img/강아지로고.png" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <style>
        @font-face {
            font-family: 'Katuri';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: Katuri;
        }


        
        form#mid {
            text-align: center;
        }

        .sangdan {
            width: 360px;
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


        .post1 {
            background-color: rgb(233, 228, 228);
            box-sizing: border-box;
            border: 1px solid #ccc;
            margin-top: 50px;
            margin-left: 18px;
            width: 320px;
            height: 200px;

        }

        .post1-white {
            background-color: white;
            box-sizing: border-box;
            border: 1px solid #ccc;
            margin-top: 20px;
            margin-left: 9px;
            width: 300px;
            height: 160px;

        }

        .title {
            margin-left: 17px;
            margin-top: 10px;
        }

        #btn {
            background-color: rgba(243, 156, 18, 0.73);
            margin-top: 30px;
            margin-left: 150px;
        }

        .comment {
            border: none;
            background-color: rgb(0, 0, 0, 0);
            margin-left: 220px;
        }

        .like {
            border: none;
            background-color: rgb(0, 0, 0, 0);
            margin-left: 15px
        }

        #btn {
            font-family: Katuri;
            border-color: whitesmoke;
            height: 25px;
        }
        
        #write {
			border: rgb(0, 0, 0, 0);
			background-color: rgb(0, 0, 0, 0);
		}


    </style>
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
                                        <li class="hidelist">Q&A</li>
                                    </ul>
                                </li> <br>
                                <li class="menu"><a class="aham">MyPage</a>
                                    <ul class="hide">
                                        <li class="hidelist">‍계정 관리</li>
                                        <li class="hidelist">내 정보 수정</li>
                                        <li class="hidelist">로그아웃</li>
                                    </ul>
                                </li>
                            </div>
                        </ul>
                    </li>
                </button>
                <button type="button" id="withdogslogo">
                    <img src="./img/이름로고.png" width="180">
                </button>
                <button type="button" id="write" onClick="location.href='writepostpage.jsp'">
					<img src="./img/글쓰기아이콘.png">
				</button>
                <button type="button" id="person">
                    <img src="./img/프로필아이콘.png">
                </button>
            </header>


            <div class="post-body">
                <div class="post1">
                    <div class="post1-white">
                        <div class="title">
                           
                            							
							
                            <hr align="left" style="border:solid 2px rgb(233, 228, 228); width: 80%;">
                            
                            	<c:forEach items="${post}" var="item">
                            		 <span class="post-title">제목:</span><div>${item.title}</div>
                            		 <br>
                            		 <br>
                                </c:forEach>
                            
                        </div>
                    </div>
                    <div class="like-comment">
                        <form action="#">
                            <button class="comment"><img src="/project/icon/comment_b_sm.png" width="15px"></button>
                            <button class="like"><img src="/project/icon/like.png" width="15px"></button>
                        </form>
                    </div>
                </div>

                

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