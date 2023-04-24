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
                url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_13@1.0/Katuri.woff') format('woff');
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

        /* 상단바 css */
        #my_box {
            background-color: rgba(243, 156, 18, 0.73);
            width: 300px;
            height: 160px;
            margin-top: 30px;
            margin-left: 30px;
            border-radius: 13%;
        }

        #file {
            border-radius: 4%;
            background-color: rgb(52, 152, 219);
            color: white;
        }

        #user {
            width: 70px;
            margin-top: 30px;
            margin-left: 20px;
        }

        #modify {
            margin-top: px;
            border-radius: 4%;
            background-color: rgb(52, 152, 219);
            color: white;
        }

        #word {
            width: 170px;
            margin-left: 10px;

        }

        #white {
            background-color: white;
            width: 180px;
            height: 80px;
            margin-left: 90px;
            margin-top: -30px;
        }

        #btn {
            margin-top: 17px;
            margin-left: 90px;
        }

        #picture {
            background-color: rgba(243, 156, 18, 0.73);
            width: 360px;
            height: 248px;
            margin-top: 90px;
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

        .add1 {
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: 30px;
            margin-left: 30px;
        }

        .add2 {
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: -50px;
            margin-left: 140px;
        }

        .add3 {
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: -50px;
            margin-left: 250px;
        }

        p {
            font-size: 20px;
            text-align: center;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
    <div id="enter">
        <header class="sangdan">
            <button type="button" id="ham">
                <li class="menu">
                    <a class="aham"><img src="./project/img/햄버거아이콘.png" /></a>
                    <ul class="hide">
                        <div class="kateham">
                            <li class="menu"><a class="aham">Place</a>
                                <ul class="hide">
                                    <li class="hidelist">카페/식당</li>
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
                                    <li class="hidelist">나눔</li>
                                    <li class="hidelist">Q&A</li>
                                </ul>
                            </li>
                            <br>
                            <li class="menu"><a class="aham">MyPage</a>
                                <ul class="hide">
                                    <li class="hidelist">👨‍💼계정 관리</li>
                                    <li class="hidelist">👨‍🎓내 정보 수정</li>
                                </ul>
                            </li>
                        </div>
                    </ul>
                </li>
            </button>
            <button type="button" id="withdogslogo"><img src="./project/img/이름로고.png" width="180"></button>
            <button type="button" id="person"><img src="./project/img/프로필아이콘.png"></button>
        </header>
        <div id="my_box">
            <div>
                <input type="file" name="uploadfile" id="img" style="display:none;" />
                <div>
                    <label for="img"><img src="/project/icon/user.png" id="user"></label>
                </div>


            </div>
            <div id="text">
                <div id="white">
                    <div id="word">
                        글을 써요 글을 쓰는 중이에요 여기는 글이 작성되는 곳 입니다.
                    </div>
                </div>
            </div>
            <div id="btn">
                <input type="button" id="modify" value="정보수정"
                    style="width: 84px;height: 26px; border-color: rgb(0, 0, 0, 0);">
            </div>
        </div>

        <div>
            <div>
                <div class="add1">
                    <p>강쥐1</p>
                </div>
            </div>
            <div>
                <div class="add2">
                    <p>강쥐2</p>
                </div>
            </div>
            <div>
                <div class="add3">
                    <p>강쥐3</p>
                </div>
            </div>

        </div>

        <div id="picture_box">
            <div id="picture" style="overflow-y: scroll;">
                <div class="post_img">
                    <div>
                        <div class="post_img2"> </div>
                    </div>
                </div>
                <div class="post_img">
                    <div>
                        <div class="post_img2"> </div>
                    </div>
                </div>
                <div class="post_img">
                    <div>
                        <div class="post_img2"> </div>
                    </div>
                </div>
                <div class="post_img">
                    <div>
                        <div class="post_img2"> </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </header>
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