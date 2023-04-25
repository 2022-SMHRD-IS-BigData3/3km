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

body{
      font-family: Katuri;
    }
    
#withdogslogo {
	background-color: rgb(0, 0, 0, 0);
	border: none;
	margin-right: 25px;
	margin-top: 10px;
	margin-left: -10px;
	display: flex;
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

    #blankarea{
      height: 100px;
    }

    #success {
      height: 200px;
      text-align: center;
	  font-size: 23px;
    }

	#successbutton {
	font-family: Katuri;
	font-size: 20px;
	}

</style>
</head>
<body>
	<header class="sangdan">
			<img src="./img/이름로고.png" width="240" id="withdogslogo">
		</header>
	<div id="success">
		<div id="blankarea"></div>
		<div> 회원가입이 완료되었습니다!</div>
		<br>
		<button type="button" id="sucessbutton" onClick="location.href='login.jsp'">로그인 하러가기</button>
	  </div>
	<script>
	</script>

</body>

</html>