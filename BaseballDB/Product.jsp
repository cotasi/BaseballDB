<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.FigureDAO" %>
<%@ page import = "db.FigureBean" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="../xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css_part/info.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jquery.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page = "Top.jsp" />
	 <%
	 
	 	FigureDAO fdao = new FigureDAO();
	 
	 	FigureBean bean = fdao.getOneFigure();
	 
	 %>
	
	
    <main>
        <section class="block">
            <div class="product_view">
                <h2><%= bean.getPname() %></h2>
                <table>
                    <colgroup>
                    <col style="width:173px;">
                    <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th>Writer Name</th>
                        <td><%= bean.getWname() %></td>
                    </tr>
                    <tr>
                        <th>Price</th>
						<td><%= bean.getPrice() %></td>
                    </tr>
                    
                    <tr>
                        <th>Downprice</th>
                        <td><%= bean.getDownprice() %></td>
                    </tr>
                    </tbody>
                </table>
                <div class="img">
                    <img src="img/<%= bean.getImg() %>" alt="">
                </div>
                <div class="btns">
                    <a href="./index.jsp" class="btn1">상품 목록</a>
                </div>
            </div>
        
        </section>
    </main>


</body>
</html>