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
                <h2 class="subject2">�Խ���</h2>
            </div>

			<div class="board_title">
				<strong>FAQ</strong>
				<p>������ ������ּ���.</p>
			</div>
			
			<div class="board_write_wrap">
				<div class="board_write">
					<div class="titler">
						<dl>
							<dt>����</dt>
							<dd><input type="text" placeholder="�����Է�" name="subject" value="��[Re:]"></dd>
						</dl>
					</div>
					<div class="infom">
						<dl>
							<dt>�۾���</dt>
							<dd><input type="text" placeholder="�۾����Է�" name="writer"></dd>
						</dl>
						<dl>
							<dt>��й�ȣ</dt>
							<dd><input type="password" placeholder="��й�ȣ �Է�" name="password"></dd>
						</dl>
						<dl>
							<dt>�̸���</dt>
							<dd><input type="email" placeholder="�̸��� �Է�" name="email"></dd>
						</dl>
					</div>
					<div class="contenter">
						<textarea placeholder="�����Է�" name="content"></textarea>
					</div>
				</div>
			</div>
			

				<div class="bt_wrap">
					<input type="submit" value="��۾��� ����" class="on">
					<input type="hidden" name="ref" value="<%= ref %>" class="on">
					<input type="hidden" name="re_step" value="<%= re_step %>"class="on">
					<input type="hidden" name="re_level" value="<%= re_level %>" class="on">
					<input type="reset" value="���" class="on">&nbsp;&nbsp;
					<input type="button" onclick="location.href='BoardList.jsp'" value="��ü�ۺ���" class="on">
				</div>

			</form>
        </section>
		
</body>
</html>