<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
 <%@ page import = "Boardmodel.BoardDAO" %>
<!DOCTYPE html>
<html>
<body>

	<%
		request.setCharacterEncoding("euc-kr");
	
	%>
	
	<jsp:useBean id="boardbean" class="Boardmodel.BoardBean">
		<jsp:setProperty name="boardbean" property="*" />
	</jsp:useBean>
	
	<%
	
		BoardDAO bdao = new BoardDAO();
	
		String pass = bdao.getPass(boardbean.getNum());
		
		if(pass.equals(boardbean.getPassword())) {
			
			
			bdao.updateBoard(boardbean);
			
			response.sendRedirect("BoardList.jsp");
			
		}else {
			
	%>
	
		<script type="text/javascript">alert("패스워드가 일치하지 않습니다. 확인 후 수정하시오.");
									  histor.go(-1);
									  </script>
									  
	<% 		
			
		}
	
	
	%>

</body>
</html>