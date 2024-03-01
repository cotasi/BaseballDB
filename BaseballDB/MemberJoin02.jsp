<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/join2.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<link rel="stylesheet" href="css_part/bootstrap.min.css">
	<script src="./script_part/jquery-3,6.1.min.js"></script>
	<script src="script_part/bootstrap.min.js"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/idcheck.js"></script>
</head>
<body>
<jsp:include page="Top.jsp"/>
    <main>
        <section class="block">
            <div class="joincontents">
                <h2 class="subject2">회원가입</h2>
                <p>혹시라도 남의 정보를 이용하여 이익을 취득하는 경우 <br>
                   바로 불이익이 주어집니다.</p>
                <ol class="steps">
                    <li>STEP 1 <div>본인인증</div></li>
                    <li>STEP 2 <div>회원정보입력</div></li>
                    <li>STEP 3 <div>가입완료</div></li>
                </ol>
              <form action="MemberJoinProc.jsp" method="post">
                <div class="join_box2">
                    <h3 class="subject3">회원정보</h3>

                    <table class="type1">
                        <caption></caption>
                        <colgroup>
                            <col style="width:170px;">
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><span>필수입력</span>아이디</th>
                                <td>
                                    <input type="text" style="width:300px;" id="id" name="id">
                                  <!--  <button type="button" class="btn_type3" onclick="registerCheckFunction();">중복체크</button> -->
                                </td>

                            </tr>
                            <tr>
                                <th><span>필수입력</span>비밀번호</th>
                                <td><input type="password" style="width:300px;" name="pass1">
                                    <span class="ifo">비밀번호는 4~8자로 입력하시오.</span> 
                                </td>
                               

                            </tr>
                            <tr>
                                <th><span>필수입력</span>비밀번호확인</th>
                                <td><input type="password" style="width:300px;" name="pass2"></td>

                            </tr>
                             <tr>
                                <th><span>필수입력</span>이메일</th>
                                <td><input type="email" style="width:300px;" name="email" ></td>

                            </tr>
                        </tbody>
                    </table>


                <div class="btn_center">
                    <input type="submit" class="btn_type1" value="회원가입">
                    <a href="index.jsp" class="btn_type2">취소 </a>
                </div>
                </div>
            </form>

            </div>
        </section>
    </main>
 </body>
 </html>