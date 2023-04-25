<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="icon" href="./img/강아지로고.png" />
    <link rel="apple-touch-icon" href="./img/강아지로고.png" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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

        div#enter {
            width: 360px;
            height: 700px;
            padding: 0px;
            background-color: rgba(249, 230, 191, 0.15);
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin: 0 auto;
            align-self: center;
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

        #withdogslogo {
            background-color: rgb(0, 0, 0, 0);
            border: none;
            display: flex;
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

        .infoput {
            height: 2em;
            line-height: 2em;
            border-color: white;
            width: 235px;
            font-family: 'Katuri';
        }

        .btn {
            background-color: rgba(243, 156, 18, 0.73);
            color: black;
            margin-left: 260px;
            border-color: whitesmoke;
            font-family: 'Katuri';
            width: 50px;
            height: 30px;
        }
    </style>
</head>

<body>
    <div id="enter">
        <header class="sangdan">
            <div>
                <img src="./project/img/이름로고.png" width="180" id="withdogslogo">
            </div>
        </header>
        <form action="JoinSuccess.do" method="post" id="info">
            <h1>JOIN US</h1>
            <div>
                <span>방가와요 예비 사용자님</span>
            </div>
            <br>
            <div>
                <input class="infoput" name="email" type="text" placeholder="*Email" size="30" />
                <br><br>
                <input class="infoput" name="password" type="password" placeholder="*비밀번호" size="30" maxlength=8 />
                <br> <br>
                <input class="infoput" name="nickname" type="text" placeholder="*닉네임" size="30" />
                <br><br>
                <input class="infoput" name="date" type="date"  size="30" />
                <br> <br>
                <input class="infoput" name="dog_name" type="text" placeholder="*강아지 이름" size="30" />
                <br> <br>
                <input class="infoput" name="dog_age" type="number"  placeholder="*강아지 나이" size="30" />
                <br><br>
                <input class="infoput" name="dog_breed" type="text" placeholder="견종" size="30" />
            </div>
            <br> <input type="submit" class="btn" value="확인">
        </form>
    </div>
</body>

</html>