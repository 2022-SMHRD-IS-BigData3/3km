<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공페이지</title>
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

        .sangdan {
            height: 50px;
            background: rgba(243, 156, 18, 0.73);
            margin: 0;
            display: flex;
        }

        .sangdan div {
            padding: 13px;
            margin: 0 auto;
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
            display: flex;
            margin-top:-2px;
            margin-right: 1px;
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


        #top-area {
            width: 360px;
            height: 40px;
            font-size: 13px;
            padding: 15px;
            margin-left: 190px
        }

        #bottom {
            text-align: center;
            font-size: 10px;
        }

        #blankarea {
            height: 100px;
        }

        #success {
            height: 200px;
            text-align: center;
            font-size: 23px;
        }

        #successbutton {
            font-family: Katuri;
            font-size: 18px;
            border-color: whitesmoke;
            background-color: rgba(243, 156, 18, 0.73);
            height: 30px;
            width: 130px;
            color: black;
        }
    </style>


</head>

<body>

    <form action="#">
        <div id="enter">
            <header class="sangdan">
                <div>
                    <img src="./img/이름로고.png" width="180" id="withdogslogo">
                </div>
            </header>
    </form>

    <div id="success">
        <div id="blankarea"></div>
        <div>회원가입이 완료되었습니다!</div>
        <div> ${nickname}님 환영합니다!</div>
        <br><br>
        <button type="button" id="successbutton" onClick="location.href='Gologin.do'">로그인 하러가기</button>
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