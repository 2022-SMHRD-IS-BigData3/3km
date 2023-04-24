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
        #user{
            width: 70px;
            margin-top: 30px;
            margin-left: 20px;
        }
        #modify {
            margin-top: px;
            margin-left: 20px;
            border-radius: 4%;
            background-color: rgb(52, 152, 219);
            color: white;
        }
        
        #word{
            width: 170px;
            margin-left: 10px;
        }
        #white{
            background-color: white;
            width: 180px;
            height: 80px;
            margin-left: 105px;
            margin-top: -80px;
        }
        #btn{
            margin-top: 17px;
            margin-left: 90px;
        }
        #picture{
            background-color: rgba(243, 156, 18, 0.73);
            width: 360px;
            height: 248px;
            margin-top: 90px;
        }
        .post_img{
            background-color: whitesmoke;
            width: 130px;
            height: 110px;
            margin-top: 20px;
            margin-left: 30px;
        }
        .post_img2{
            background-color: whitesmoke;
            width: 130px;
            height: 110px;
            margin-left: 160px;
        }
        .add1{
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: 30px;
            margin-left: 30px;
        }
        .add2{
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: -50px;
            margin-left: 140px;
        }
        .add3{
            background-color: rgb(194, 192, 192);
            width: 90px;
            height: 30px;
            margin-top: -50px;
            margin-left: 250px;
        }
        p{
            font-size: 20px;
            text-align: center;
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

            <div id="my_box">
                <div>
                    <input type="file" name="uploadfile" id="img" style="display:none;"/>
                    <label for="img"><img src="/project/icon/user.png" id="user"></label>

                </div>
                <div id="text">
                    <div id="white">
                        <div id="word">
                            글을 써요 글을 쓰는 중이에요 여기는 글이 작성되는 곳 입니다.
                        </div>
                    </div>
                </div>
                <div id="btn">
                    <input type="button" id="modify" value="정보수정" style="width: 84px;height: 26px; border-color: rgb(0, 0, 0, 0);">
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


</body>

</html>