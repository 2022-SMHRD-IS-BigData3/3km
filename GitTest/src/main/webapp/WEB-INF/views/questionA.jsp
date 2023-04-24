<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>자유게시판 Q&A</title>
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

        #hamburger {
            background-color: rgba(0, 0, 0, 0);
            border: none;
            padding: 13px;
        }

        #withdogs {
            background-color: rgb(0, 0, 0, 0);
            border: none;
            margin-left: 20px;
            margin-top: 5px;
        }

        #person {
            background-color: rgba(0, 0, 0, 0);
            border: none;
            float: right;
            padding: 5px
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
        
        #btn{
            background-color: rgba(243, 156, 18, 0.73);
            margin-top: 30px;
            margin-left: 150px;
        }
        .comment{
            border : none;
            background-color: rgb(0, 0, 0, 0);
            margin-left: 220px;
        }
        .like{
            border: none;
            background-color: rgb(0, 0, 0, 0);
            margin-left: 15px
        }
    </style>
</head>

<body>
    <header id="header">
        <div id="container">
            <div id="upbar">
                <button type="button" id="hamburger"><img src="/project/icon/new_burger.png"></button>
                <button type="button" id="withdogs"><img src="/project/icon/logo.png" width="180"></button>
                <button type="button" id="person"><img src="/project/icon/person.png" width="35" height="35"></button>
            </div>
            <div class="post-body">
                <div class="post1">
                    <div class="post1-white">
                        <div class="title">
                            <span class="post-title">제목:</span>
                            <span class="post-title-content">저장받은 글을 출력</span>
                            <hr align="left" style="border:solid 2px rgb(233, 228, 228); width: 80%;">
                            <p class="content">사용자가 입력한 내용이 출력된다</p>
                        </div>
                    </div>
                    <div class="like-comment">
                        <form action="#">
                            <button class="comment"><img src="/project/icon/comment_b_sm.png" width="15px"></button>
                            <button class="like"><img src="/project/icon/like.png" width="15px"></button>
                        </form>
                    </div>
                </div>

                <div class="post1">
                    <div class="post1-white">
                        <div class="title">
                            <span class="post-title">제목:</span>
                            <span class="post-title-content">저장받은 글을 출력</span>
                            <hr align="left" style="border:solid 2px rgb(233, 228, 228); width: 80%;">
                            <p class="content">사용자가 입력한 내용이 출력된다</p>
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

            <input type="button" id="btn" value="더보기" style="border-color: rgb(0, 0, 0, 0);" >
        </div>
    </header>
</body>

</html>