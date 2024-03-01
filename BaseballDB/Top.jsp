<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MLB-Statcast Database</title>
	<link rel="stylesheet" type="text/css" href="xeicon/xeicon.min.css">
	<link rel="stylesheet" href="css_part/style.css">
	<link rel="stylesheet" href="css_part/swiper.min.css">
	<link rel="stylesheet" href="css_part/default.css">
	<script src="script_part/jjquery-3.6.1.min.js" charset="utf-8"></script>
	<script src="script_part/swiper.js" charset="utf-8"></script>
	<script src="script_part/default.js" charset="utf-8"></script>
</head>
<body>

<%
	String logout = request.getParameter("logout");

	if(logout != null) {
		
		session.setAttribute("id",null);

		session.setMaxInactiveInterval(0);
		
	}

	String id = (String)session.getAttribute("id");

	if(id == null) { id="Guest";}

%>
		<header>
		<div class="top clear">
			<h1><a href="index.jsp"><img src="img/original_logo.png" alt="original_logo"></a><a href="index.jsp"><img src="img/sub_logo.png" alt="sub_logo"></a></h1>
			<div>
				<div class="control">
				<h2>Move to Homepage</h2>
				<ul>
					<li><button><i class="xi-plus"><span class="hide">크기확대</span></i></button></li>
					<li><button><i class="xi-minus"><span class="hide">크기축소</span></i></button></li>
					<li><button>Original Size</button></li>				
				</ul>
				</div>
			<h2 class="hide">SNS</h2>
			<ul class="sns">
				<li><a href="https://mlb.com"><img src="img/sns_1.png" alt ="sns_1"></a></li>
				<li><a href="https://www.fangraphs.com/"><img src="img/sns_2.png" alt ="sns_2"></a></li>
				<li><a href="https://www.baseball-reference.com/"><img src="img/sns_3.png" alt ="sns_3"></a></li>
				<li><a href="https://baseballsavant.mlb.com/"><img src="img/sns_4.png" alt ="sns_4"></a></li>
			</ul>
			</div>
		</div>
		<div class="btm">
			<div class="clear">
				<nav class="lnb">
					<ul>
						<li><a href="PitcherMain.jsp" style="text-decoration:none;">Pitchers</a></li>
						<li><a href="BatterMain.jsp" style="text-decoration:none;">Hitters</a></li>
						<li><a href="BoardList.jsp" style="text-decoration:none;">Community</a></li>
						<li><a href="ProductAdmin.jsp" style="text-decoration:none;">Shop</a></li>
					</ul>
				</nav>
				<div class="spot">
				<%
					if(id.equals("Guest")) {
				
				%>
					<div><%=id %> 님</div><button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">Login</button>
				<%
					}else{
				%>
				
					<div><%=id %> 님</div><button onclick="location.href='SessionMain.jsp?logout=1'">Logout</button>
				<%
					}
				%>
					<button onclick="location.href='MemberJoin01.jsp'">Sign up</button>
					<button onclick="alert('아직 미구현된 기능입니다.')"> <i class="xi-search"><span class="hide">검색</span></i></button>
				</div>
			</div>
		</div>
		
	</header>	
</body>
</html>