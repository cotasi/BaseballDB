<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "model.ProductDAO" %>

<%

	request.setCharacterEncoding("euc-kr");

	String msg="",url="";

	String uploadPath =request.getRealPath("upload");

	int maxsize = 1024*1024*10;
	
	String filename="";
	
	String originFile = "";
	
	MultipartRequest multi = new MultipartRequest(request, uploadPath,maxsize, "euc-kr",new DefaultFileRenamePolicy());
	
	ProductDAO pdao = ProductDAO.getInstance();
	
	pdao.registerProduct(multi);
	
	response.sendRedirect("index.jsp");


%>