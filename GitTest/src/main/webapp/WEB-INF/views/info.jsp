<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
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

        #info {
            color: rgba(243, 156, 18, 0.73);
            font-weight: bold;
            text-align: center;
        }

        .hide .hidelist {
            font-size: medium;
        }

        .aham {
            font-size: 25px;
        }

        .infobody {
            text-align: center;
        }

        .infobody input {
            height: 2em;
            line-height: 2em;
            width: 200px;
        }

        .infobody2 {
            display: flex;
            margin-left: 75px;
        }

        .btn {
            float: right;
            margin-right: 78px;
            border-color: rgba(0, 0, 0, 0);
        }

        #date {
            width: 200px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>
    <form action="#">
        <div id="enter">
            <header class="sangdan">
                <button type="button" id="ham">
                    <li class="menu">
                        <a class="aham"><img src="./img/햄버거아이콘.png" /></a>
                        <ul class="hide">
                            <div class="kateham">
                                <li class="menu"><a class="aham">Place</a>
                                    <ul class="hide">
                                        <li class="hidelist">☕카페/식당</li>
                                        <li class="hidelist">🦮산책</li>
                                        <li class="hidelist">🎸기타</li>
                                    </ul>
                                </li>
                                <br>
                                <li class="menu"><a class="aham">Feed</a>
                                    <ul class="hide">
                                        <li class="hidelist">🐾puppy</li>
                                        <li class="hidelist">🧔adult</li>
                                        <li class="hidelist">👴senior</li>
                                    </ul>
                                </li>
                                <br>
                                <li class="aham"><a>Items</a></li>
                                <br>
                                <li class="menu"><a class="aham">Board</a>
                                    <ul class="hide">
                                        <li class="hidelist">🚚나눔</li>
                                        <li class="hidelist">❓Q&A</li>
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
                <button type="button" id="withdogslogo"><img src="./img/이름로고.png" width="180"></button>
                <button type="button" id="person"><img src="./img/프로필아이콘.png"></button>
            </header>
            <h1 id="info">info</h1>
            <div class="infobody">
                <input type="email" placeholder="Email" size="30" style=" border-color: white;" />
                <br>
                <br>
                <div class="infobody2">
                    <input type="password" placeholder="Password" size="30" maxlength=8 style=" border-color: white;" />
                    <input type="checkbox" name="" id="check">
                </div>
                <br>
                <br>
                <input type="text" placeholder="닉네임" size="30" style=" border-color: white;" />
                <br>
                <br>
                <input type="date" id="date" size="30" style=" border-color: white;">
                <br>
                <br>
                <input type="text" placeholder="강아지 나이" size="30" style=" border-color: white;">
                <br>
                <br>
                <input type="text" placeholder="DogName" size="30" style=" border-color: white;">
                <br>
                <br>
                <input type="견종" placeholder="견종" size="30" style=" border-color: white;">
            </div>
            <br>
            <input type="submit" class="btn" value="확인">
        </div>

        </div>

    </form>
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