<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
       
        #container {
            width: 360px;
            height: 640px;
            padding: 0px;
            background-color: rgba(249, 230, 191, 0.15);
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin: 0 auto;
        }


        #upbar {
            width: 360px;
            height: 50px;
            background-color: rgba(243, 156, 18, 0.73);

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
        <div id="container">
            <div id="upbar">
                <button type="button" id="hamburger"><img src="src/main/webapp/IMG/new_burger.png"></button>
                <button type="button" id="person"><img src="src/main/webapp/IMG/person.png" width="35" height="35"></button>
            </div>
            <form action="Join.do" method="post" id="info">
                <h1>JOIN US</h1>
                <div>
                    <span>방가와요 예비 사용자님</span>
                </div>
                <br>
                <div>
                    <input name="email" type="text" placeholder="*Email" size="30" style=" border-color: white;" />
                    <br>
                    <br>
                    <input name="password" type="password" placeholder="*비밀번호" size="30" maxlength=8 style=" border-color: white;" />
                    <br>
                    <br>
                    <input name="nickname" type="text" placeholder="*닉네임" size="30" style=" border-color: white;" />
                    <br>
                    <br>
                    <input name="date" type="date" id="date" size="30" style=" border-color: white;">
                    <br>
                    <br>
                    <input name="age" type="number" placeholder="*강아지 나이" size="30" style=" border-color: white;">
                    <br>
                    <br>
                    <input name="name" type="text" placeholder="*강아지 이름" size="30" style=" border-color: white;">
                    <br>
                    <br>
                    <input name="breed" type="text" placeholder="견종" size="30" style=" border-color: white;">
                </div>
                <br>
                <input type="submit" class="btn" value="확인" style="border-color: rgba(0, 0, 0, 0);">
            </form>
        </div>

    </header>

</body>
</html>