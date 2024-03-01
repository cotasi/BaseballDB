<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css_part/login.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>

		<section class="block">
            <div class="joincontents">
                <h2 class="subject2">로그인</h2>
            </div>


            <div class="loginform">
                <form action="SessionLoginProc.jsp" method="post">
                    <fieldset>
                        <legend>로그인</legend>
                    </fieldset>
                <div class="login">
                    <ul class="topp">
                        <li><label for="id">아이디</label><input type="text" name="id"></li>
                        <li><label for="pw">비밀번호</label><input type="password" name="pw1"></li>
                         <li class="btn_li"><input type="submit" value="로그인"></li>
                         <li class="save"><input type="checkbox" id="chk"><label for="chk">아이디 저장</label></li>
                         <li>&nbsp;</li>
                         <li>&nbsp;</li>
                         <li>&nbsp;</li>
                         <li>&nbsp;</li>
                         <li>&nbsp;</li>
                         <li>&nbsp;</li>
                           
                    </ul>

                </div>

                </form>
            </div>


        </section>
</body>
</html>