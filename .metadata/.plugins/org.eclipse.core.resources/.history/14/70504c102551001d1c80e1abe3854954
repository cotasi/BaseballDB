<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "dao" class="member.memberDAO" />

<%

	String id = request.getParameter("id");
	boolean check = dao.idCheck(id);


%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript" src="js/join.js"></script>
</head>
<body>
	<br>
	<center>
	<b><%= id %></b>
	
	<%
		if(check) {
			
			out.println("는 이미 존재하는 아이디입니다.<br></br>");
			
		}else{
			
			out.println("는 사용 가능 합니다.<br></br>");
			
		}
	%>
	<a href="#" onClick = "javascript:self.close()">닫기</a>
	</center>
</body>
</html>