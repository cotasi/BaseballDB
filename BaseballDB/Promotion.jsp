<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Vector" %>
<%@ page import = "db.FigureBean" %>
<%@ page import = "db.FigureDAO" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<link rel="stylesheet" href="css_part/shop.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic-eco.css" rel="stylesheet">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
	<script src="https://kit.fontawesome.com/4c14da1a7d.js" crossorigin="anonymous"></script>
	
</head>
<body>
<%
	FigureDAO fdao = new FigureDAO();

	Vector<FigureBean> v = fdao.getSelectFigure();

%>

			 <div class="main_text0">
				<h1>WELCOME TO BASEBALL</h1>
				<div class="contents1">메이저리그에 오신 여러분들을 환영합니다.</div>
				<div class="container">
					<div class="row row-cols-1 row-cols-sm-2 g-3">	
					
				<% 
							 	for(int i=0;i<v.size();i++) {
							 	
							 			FigureBean bean = v.get(i);
			     %>
						<div class="col-sm-4 align-self-center">
							 <div class="card shadow-sm">
							 <div>
							 	<div class="screen">
							 		<span></span>
							 		<span></span>
							 		<span></span>
							 		<span></span>
							 		<div class="img_box">
            						<img class="bd-placeholder-img card-img-top"  src="./img/product/<%= bean.getImg() %>" alt="no">
            						</div>
           							 <div class="card-body">
             							 <p class="card-text"><%= bean.getPname() %></p>
             							 <div class="d-flex justify-content-between align-items-center">
               								 <div class="btn-group">
                 								 <a href="Product.jsp" class="btn btn-sm btn-outline-secondary">상세보기</a>
                							</div>
             							 </div>
            					   </div>
            					  </div>	
         					   </div>
         					   </div>
						</div>
					<%
            					   
					}
            					   
            	   %>	
								
					</div>
				</div>	
			</div>
	
</body>
</html>