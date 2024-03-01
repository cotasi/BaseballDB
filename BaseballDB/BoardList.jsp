<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "Boardmodel.BoardBean" %>
<%@ page import = "java.util.Vector" %>
<%@ page import = "Boardmodel.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="../xeicon/xeicon.min.css">
    <link rel="stylesheet" href="css_part/frame.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>

	<%
		int pageSize = 10;
	
		String pageNum = request.getParameter("pageNum");
		
		if(pageNum == null) {
			
			pageNum = "1";
			
			
		}
		
		int count = 0;
		
		int number = 0;
		
		int currentPage = Integer.parseInt(pageNum);
	
		BoardDAO bdao = new BoardDAO();
		
		count = bdao.getAllCount();
		
		int startRow = (currentPage-1)*pageSize+1;
		
		int endRow = currentPage*pageSize;
		
	
		Vector<BoardBean> vec =  bdao.getAllBoard(startRow,endRow);
		
		number = count - (currentPage- 1) * pageSize;
		
	
	%>
	

	<jsp:include page="Top.jsp" />
	<section class="block board_wrap">
            <div class="joincontents">
                <h2 class="subject2">게시판</h2>
            </div>

			<div class="board_title">
				<strong>FAQ</strong>
				<p>질문을 등록해주세요.</p>
			</div>
			<div class="board_list_wrap">
				<div class="board_list">
					<div class="top">
						<div class="num">번호</div>
						<div class="title">제목</div>
						<div class="write">글쓴이</div>
						<div class="date">작성일</div>
						<div class="count">조회</div>
					</div>
					
					<%
					
						for(int i=0;i<vec.size();i++) {
					
						BoardBean bean = vec.get(i);
					%>
					
					<div>
						<div class="num"><%= number-- %></div>
						<div class="title"><a href="BoardInfo.jsp?num=<%= bean.getNum() %>">
						<%
							if(bean.getRe_step() >= 1) {
								
								for(int j = 0; j<(bean.getRe_step())*5;j++){
									
									
												
						%> &nbsp;
									
						<%		}
							
								
							}
						
						%>
										   <%= bean.getSubject() %></a></div>
						<div class="write"><%= bean.getWriter() %></div>
						<div class="date"><%= bean.getReg_date() %></div>
						<div class="count"><%= bean.getReadcount() %></div>
					</div>
				
				   <%
				   
						}
				   
				   %>
				
					
				</div>
				
				<div class="board_page">
				
				<%
				
					if(count > 0) {
						
						int pageCount = count / pageSize +(count% pageSize == 0 ? 0 : 1);
						
						int startPage = 1;
						
						if(currentPage % 10 != 0 ) {
							
							startPage = (int) (currentPage/10)*10+1;
							
						}else {
							
							
							startPage = (int)(currentPage/10-1)*10+1;
							
						}
						
						
						int pageBlock = 10;
						
						int endPage = startPage + pageBlock;
						
						if(endPage > pageCount) endPage = pageCount;
						
						if(startPage>10) {
				
				%>
				
					<a href="BoardList.jsp?pageNum=<%= startPage-10 %>" class="num on">[이전]</a>
					
				<%
						}
						
						for(int i=startPage;i<=endPage;i++) {
							
							
				%>
				
					<a href="BoardList.jsp?pageNum=<%= i %>" class="num on"><%=i %></a>
				
				<%
							
						}
						
						if(endPage < pageCount) {
							
				%>	
				
				<a href="BoardList.jsp?pageNum=<%= startPage+10 %>" class="num on">[다음s]</a>		
							
				<%		
						}
				
					}
				%>
				</div>
				
				<div class="bt_wrap">
					<a href="BoardWriteForm.jsp" class="on">글쓰기</a>
					<!--- <a href="#">수정</a> -->
				</div>
			</div>


        </section>
</body>
</html>