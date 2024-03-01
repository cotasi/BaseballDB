<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "model.MemberDAO" %>
<%@ page import = "model.MemberBean" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
					
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/join3.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>

<jsp:include page="Top.jsp" />


					<%
					
					request.setCharacterEncoding("euc-kr");
					
					%>
					
					<jsp:useBean id="mbean" class="model.MemberBean">
						<jsp:setProperty name="mbean" property="*" />
					</jsp:useBean>
					
					<%
						MemberDAO mdao = new MemberDAO();
					
						mdao.insertMember(mbean);
						
						response.sendRedirect("index.jsp");
				
					%>
					
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
              <form action="SessionMain.jsp" method="post">
                <div class="join_box2">
                <div class="btn_center">
                    <input type="submit" class="btn_type1" value="돌아가기">
                </div>
                </div>
            </form>

            </div>
        </section>
    </main>
					
					
</body>
</html>