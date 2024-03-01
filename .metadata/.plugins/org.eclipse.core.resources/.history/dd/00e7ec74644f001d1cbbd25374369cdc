<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="./xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css/style.css">
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
				<li><a href="https://mlb.com"><img src="img/sns_1.png" alt ="sns_1"></a></li>
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
						<li><a href="#a">FAQ</a></li>
						<li><a href="#a">Contact</a></li>
						<li><a href="#a">Pitchers</a></li>
						<li><a href="#a">Hitters</a></li>
						<li><a href="#a">Figures</a></li>
					</ul>
				</nav>
				<div class="spot">
					<a href="./login.jsp">Login</a>
					<a href="./join01.jsp">Sign up</a>
					<button onclick="alert('아직 미구현된 기능입니다.')"> <i class="xi-search"><span class="hide">검색</span></i></button>
				</div>
			</div>
		</div>
		
	</header>
	<main>
		<section class="visual">
			<h2 class="hide"></h2>
			<div class="swiper-container slide1">
      			<div class="swiper-wrapper">
       					 <div class="swiper-slide">
							
						   <img src="img/slide2_mlb.png" alt="">
                            <div class="hide"> image1 </div>
                         </div>
        				<div class="swiper-slide">
							<a href="">
							<img src="img/slide3_mlb.png" alt="" />
							 <div class="hide">
							 	image1
								</div>
							 </a>
						 </div>
      			</div>
				<div class="controls">
      				<button class="next"></button>
      				<button class="prev"></button>
      				<div class="paging"></div>
				</div>	
    		</div>
		</section>


		<section>
			<div class="main_text0">
				<h1>WELCOME TO BASEBALL</h1>
				<div class="contents1">메이저리그에 오신 여러분들을 환영합니다.</div>

				<ul class="icons">
					<li>
					
					<%
						ProductRepository dao = ProductRepository.getInstance();
						ArrayList<Product> listOfProducts = productDAO.getAllProducts();
					%>
				
						<dl>
							<%
								Product product = listOfProducts.get(0);
							%>
					
							<dt><a href=""><%= product.getPename() %></a></dt>
							<dd><a href=""><img src="images/<%= product.getFilename() %>" alt=""></a></dd>
							<dd class="figure"><%= product.getPname()%></dd>
							<dd class="last">
								<div><a href="./product.jsp?id=<%=product.getPid()%>">이동하기</a></div>
								<div><a href="./addProduct.jsp?id=<%=product.getPid()%>">등록하기</a></div>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
						
							<%
								Product product2 = listOfProducts.get(1);
							%>
							<dt><a href=""><%= product2.getPename() %></a></dt>
							<dd><a href=""><img src="img/mlb_figure_01.png" alt=""></a></dd>
							<dd class="figure"><%= product2.getPname() %></dd>
							<dd class="last">
								<div><a href="./product.jsp?id=<%=product.getPid()%>">이동하기</a></div>
								<div><a href="./addProduct.jsp?id=<%=product.getPid()%>">등록하기</a></div>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
						
							<%
								Product product3 = listOfProducts.get(2);
							%>
							<dt><a href=""><%= product3.getPename() %></a></dt>
							<dd><a href=""><img src="img/mlb_figure_01.png" alt=""></a></dd>
							<dd class="figure"><%= product3.getPname() %></dd>
							<dd class="last">
								<div><a href="./product.jsp?id=<%=product.getPid()%>">이동하기</a></div>
								<div><a href="./addProduct.jsp?id=<%=product.getPid()%>">등록하기</a></div>
							</dd>
						</dl>
					</li>
					
				</ul>
				
			</div>
		</section>
			
		<section>
			<div id="info">
				<div>
				<h2>Sites Info.</h2>
				<ul class="list clear">
					<li class="bg1">
						<h3>사이트 원본 이동</h3>
						<div>곧 맨 위로 이동 됩니다.</div>
						<a href="#a">바로가기</a>
					</li>
					<li class="bg2">
						<a href="info.html"></a>
						<h3>피규어 정보 이동</h3>
						<div>피규어 목록을 볼 수 있습니다.</div>
					</li>
					<li class="bg3">
						<a href="geton.html"></a>
						<h3>피규어 등록 이동</h3>
						<div>권한 있는 사람만 이동 가능합니다.</div>
					</li>
					<li class="bg4">
						<a href="view.html"></a>
						<h3>질문 게시판 이동</h3>
						<div>문의 게시판으로 이동합니다.</div>
					</li>
				</ul>
				</div>
			</div>
		</section>

	</main>

	
</body>
</html>