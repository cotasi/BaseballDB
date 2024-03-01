<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "model.MemberDAO,model.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
		request.setCharacterEncoding("euc-kr");

		String id = request.getParameter("id");
		
		String pw = request.getParameter("pw");
		
		session.setAttribute("id",id);
		
		session.setAttribute("pw",pw);
		
		session.setMaxInactiveInterval(60*2);
		
		response.sendRedirect("SessionMain.jsp");
		
		
%>		
	

</body>
</html>