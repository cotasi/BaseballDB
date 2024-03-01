<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
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
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));

%>

	 <jsp:include page="Top.jsp" />	
	  <section class="block board_wrap">
	  <form action="BoardReWriteProc.jsp" method="post">
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
							<dd><input type="text" placeholder="제목입력" name="subject" value="ㄴ[Re:]"></dd>
						</dl>
					</div>
					<div class="infom">
						<dl>
							<dt>글쓴이</dt>
							<dd><input type="text" placeholder="글쓴이입력" name="writer"></dd>
						</dl>
						<dl>
							<dt>비밀번호</dt>
							<dd><input type="password" placeholder="비밀번호 입력" name="password"></dd>
						</dl>
						<dl>
							<dt>이메일</dt>
							<dd><input type="email" placeholder="이메일 입력" name="email"></dd>
						</dl>
					</div>
					<div class="contenter">
						<textarea placeholder="내용입력" name="content"></textarea>
					</div>
				</div>
			</div>
			

				<div class="bt_wrap">
					<input type="submit" value="답글쓰기 종료" class="on">
					<input type="hidden" name="ref" value="<%= ref %>" class="on">
					<input type="hidden" name="re_step" value="<%= re_step %>"class="on">
					<input type="hidden" name="re_level" value="<%= re_level %>" class="on">
					<input type="reset" value="취소" class="on">&nbsp;&nbsp;
					<input type="button" onclick="location.href='BoardList.jsp'" value="전체글보기" class="on">
				</div>

			</form>
        </section>
		
</body>
</html>