<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css/info.css">
	<link rel="stylesheet" href="css/swiper.min.css">
	<link rel="stylesheet" href="css/default.css">
	<script src="js/jquery.js" charset="utf-8"></script>
	<script src="js/swiper.js" charset="utf-8"></script>
	<script src="js/default.js" charset="utf-8"></script>
</head>
<body>
	<header>
		<div class="top clear">
			<h1><a href=""><img src="img/original_logo.png" alt="original_logo"></a><a href="#"><img src="img/sub_logo.png" alt="sub_logo"></a></h1>
			<div>
				<div class="control">
				<h2>Move to Homepage</h2>
				<ul>
					<li><button class="xi-plus"><span class="hide">크기확대</span></button></li>
					<li><button class="xi-minus"><span class="hide">크기축소</span></button></li>
					<li><button>Original Size</button></li>				
				</ul>
				</div>
			<h2 class="hide">SNS</h2>
			<ul class="sns">
				<li><a href="https://mlb.com"><img src="../img/sns_1.png" alt ="sns_1"></a></li>
				<li><a href="#"><img src="img/sns_2.png" alt ="sns_2"></a></li>
				<li><a href="#"><img src="img/sns_3.png" alt ="sns_3"></a></li>
				<li><a href="#"><img src="img/sns_4.png" alt ="sns_4"></a></li>
			</ul>
			</div>
		</div>
		<div class="btm">
			<div class="clear">
				<nav class="lnb">
					<ul>
						<li><a href="#a">Player Stats</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="#a">Position</a></li>
						<li><a href="#a">Maps</a></li>
						<li><a href="#a">FAQ</a></li>
					</ul>
				</nav>
				<div class="spot">
					<a href="login.jsp">Login</a>
					<a href="join1.jsp">Sign up</a>
					<button onclick="alert('아직 미구현된 기능입니다.')"> <i class="xi-search"><span class="hide">검색</span></i></button>
				</div>
			</div>
		</div>
		
	</header>

    <main>
        <%
        	String id = request.getParameter("id");
        	ProductRepository dao = ProductRepository.getInstance();
         	Product product = productDAO.getProductById(id);
        %>
    
        <section class="block">
            <div class="product_view">
                <h2><%= product.getPname() %></h2>
                <table>
                    
                    <colgroup>
                    <col style="width:173px;">
                    <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th>영어이름</th>
                        <td class="price"><%= product.getPename() %></td>
                    </tr>
                    <tr>
                        <th>상품코드</th>
                        <td><%= product.getPid() %></td>
                    </tr>
                    <tr>
                        <th>제조사/공급사</th>
                        <td><%= product.getMan() %></td>
                    </tr>
                    
                    <tr>
                        <th>사용가능쿠폰</th>
                        <td><%= product.getUnitcoupon() %></td>
                    </tr>
                    <tr>
                        <th>가격</th>
                        <td class="total"><b><%= product.getUnitprice() %></b>원</td>
                    </tr>
                    
                    </tbody>
                </table>
                <div class="img">
                    <img src="images/<%= product.getFilename() %>" alt="">
                </div>
                <div class="btns">
                    <a href="#a" class="btn1">장바구니</a>
                    <a href="#a" class="btn2">구매하기</a>
                </div>
            </div>
        
        </section>
    </main>


</body>
</html>s