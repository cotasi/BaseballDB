<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "Boardmodel.BoardDAO" %>
<%@ page import = "Boardmodel.BoardBean" %>
<!DOCTYPE html>
<head>
	<meta charset="euc-kr">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="../xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/view.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<html>
<body>

	<%
	
		int num = Integer.parseInt(request.getParameter("num").trim());
	
		BoardDAO bdao = new BoardDAO();
		
		BoardBean bean = bdao.getOneBoard(num);
	
	%>
	
	<jsp:include page="Top.jsp" />

	<section class="block board_wrap">
            <div class="joincontents">
                <h2 class="subject2">�Խ���</h2>
            </div>

			<div class="board_title">
				<strong>FAQ</strong>
				<p>������ ������ּ���.</p>
			</div>
			<div class="board_view_wrap">
				<div class="board_view">
					
					<div class="title">
						<%= bean.getSubject() %>
					</div>

					<div class="infom">
						<dl>
							<dt>��ȣ</dt>
							<dd><%= bean.getNum() %></dd>
						</dl>
						<dl>
							<dt>�۾���</dt>
							<dd><%= bean.getWriter() %></dd>
						</dl>
						<dl>
							<dt>�ۼ���</dt>
							<dd><%= bean.getReg_date() %></dd>
						</dl>
						<dl>
							<dt>��ȸ��</dt>
							<dd><%= bean.getReadcount()  %></dd>
						</dl>
					</div>

					<div class="cont">
						<%= bean.getContent() %>
					</div>

				</div>
				<div class="bt_wrap">
					<a href="BoardReWriteForm.jsp?num=<%= bean.getNum() %>&ref=<%= bean.getRef() %>&re_step=<%= bean.getRe_step() %>&re_level=<%= bean.getRe_level() %>" class="on">��۾���</a>
					<a href="BoardUpdateForm.jsp?num=<%= bean.getNum() %>" class="on">�����ϱ�</a>
					<a href="BoardDeleteForm.jsp?num=<%= bean.getNum() %>" class="on">�����ϱ�</a>
					<a href="BoardList.jsp" class="on">���</a>
				</div>
			</div>

        </section>

</body>
</html>