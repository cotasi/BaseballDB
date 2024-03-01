<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>

<%


	request.setCharacterEncoding("UTF-8");

	String pname = request.getParameter("pname");
	String pename = request.getParameter("pename");
	String unitprice = request.getParameter("unitprice");
	String pid = request.getParameter("pid");
	String man = request.getParameter("man");
	String unitcoupon = request.getParameter("unitcoupon");
	
	Integer price,coupon;
	
	
	price = Integer.valueOf(unitprice);
	
	coupon = Integer.valueOf(unitcoupon);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setPname(pname);
	newProduct.setPename(pename);
	newProduct.setUnitprice(price);
	newProduct.setPid(pid);
	newProduct.setMan(man);
	newProduct.setUnitcoupon(coupon);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("index.jsp");


%>