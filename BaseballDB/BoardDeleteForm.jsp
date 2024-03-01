<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Boardmodel.BoardDAO" %>
<%@ page import = "Boardmodel.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="euc-kr">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="../xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/rewrite.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>
			<%
			
			
			BoardDAO bdao = new BoardDAO();
			
			int num = Integer.parseInt(request.getParameter("num"));
			
			BoardBean bean = bdao.getOneUpdateBoard(num);
			
			
			%>
			
			<jsp:include page="Top.jsp" />	
	  <section class="block board_wrap">
	  <form action="BoardDeleteProc.jsp" method="post">
            <div class="joincontents">
                <h2 class="subject2">게시판</h2>
            </div>

			<div class="board_title">
				<strong>FAQ</strong>
				<p>질문을 등록해주세요.</p>
			</div>
			
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="titler">
						<dl>
							<dt>제목</dt>
							<dd><input type="text" placeholder="제목입력" name="subject" value="<%= bean.getSubject() %>"></dd>
						</dl>
					</div>
					<div class="infom">
						<dl>
							<dt>글쓴이</dt>
							<dd><input type="text" placeholder="글쓴이입력" name="writer" value="<%= bean.getWriter() %>"> </dd>
						</dl>
						<dl>
							<dt>비밀번호</dt>
							<dd><input type="password" placeholder="비밀번호 입력" name="password"></dd>
						</dl>
						<dl>
							<dt>이메일</dt>
							<dd><input type="email" placeholder="이메일 입력" name="email" value="<%= bean.getEmail() %>"></dd>
						</dl>
					</div>
				</div>
			</div>
			

				<div class="bt_wrap">
					<input type="hidden" name="num" value="<%= num %>" class="on">
					<input type="submit" value="글삭제" class="on">&nbsp;&nbsp;
					<input type="button" onclick="location.href='BoardList.jsp'" class="on" value="목록가기">
				</div>

			</form>
        </section>
</body>
</html>