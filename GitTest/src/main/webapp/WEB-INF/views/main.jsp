<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>With Dogs!</title>
    <link rel="icon" href="/image/logo_noletter.png" />
    <link rel="apple-touch-icon" href="/image/logo_noletter.png" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
    
        /* div의 스타일 */
        #container {
            width: 360px;
            height: 640px;
            padding: 0px;
            background-color: rgba(249, 230, 191, 0.15);
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin: 0 auto;
        }

        #sangdan {
            background-color: rgba(243, 156, 18, 0.73);
            height: 50px
        }

        div.photobox1{
            width: 150px;
            height: 150px;
            background-color: gainsboro;
            float: left;
            margin : 10px;
            margin-left: 16px;
        }

        div.photobox2{
            width: 150px;
            height: 150px;
            background-color: gainsboro;
            float: right;
            margin : 10px;
            margin-right: 16px;
        }

       #top-area {
          width: 360px;
          height: 40px;
          font-size: 13px;
          padding: 15px;
          margin-left : 190px
       }

       #bottom {
          text-align: center;
          font-size: 10px
       }

       #morebutton {
          width: 50px;
          height: 25px;
          font-size: 5px;
       }


       

    </style>
</head>

<body>
    <div id="container">
        <header id="sangdan">

          <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#"><img src="/image/withdogs_smallletter_logo.png" width="200px"></a>
        <a class="navbar-brand" href="#">1</a>
        <div class="navbar-collapse collapse show" id="navbarNavDropdown" style="">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                장소
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">카페/식당</a></li>
                <li><a class="dropdown-item" href="#">산책</a></li>
                <li><a class="dropdown-item" href="#">기타</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                사료
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">puppy</a></li>
                <li><a class="dropdown-item" href="#">adult</a></li>
                <li><a class="dropdown-item" href="#">senior</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">용품</a>
              
            </li>
            <li class="nav-item">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                자유게시판
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">나눔</a></li>
                <li><a class="dropdown-item" href="#">Q&A</a></li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                My Page
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">계정</a></li>
                <li><a class="dropdown-item" href="#">내 정보 수정</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
            
        </header>


        <div id="top-area">
          <label for="cate-list">정렬방식</label>
          <select name="cate-list" id="cate-list">
            <option value="조회순">조회순</option>
            <option value="좋아요순">좋아요순</option>
            <option value="최신순">최신순</option>
          </select>          
        </div>

        <div id="photobox-line">
          <div class="photobox1">
            <a href="#"></a>
          </div>
          <div class="photobox2">
            <a href="#"></a>
          </div>
        </div>

        <div id="photobox-line">
          <div class="photobox1">
            <a href="#"></a>
          </div>
          <div class="photobox2">
            <a href="#"></a>
          </div>
        </div>

        <div id="photobox-line">
          <div class="photobox1">
            <a href="#"></a>
          </div>
          <div class="photobox2">
            <a href="#"></a>
          </div>
        </div>

        <div id ="bottom">
          <button id="morebutton" class="btn btn-primary btn-sm" btn-sm>더보기</button>
          <a href="#"></a>
        </div>





        
    </div>

</body>

</html>