 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MLB-Statcast Database</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="css_part/chart.css"  rel="stylesheet">
<script src="https://unpkg.com/@popperjs/core@2"></script>
<script src="https://d3js.org/d3.v7.min.js"></script>


</head>
<body>

<jsp:include page = "Top.jsp" />
	
<div class="container-fluid">
  <div class="row">
    <main class="col-md-12 ms-sm-auto col-lg-12 px-md-4 float-right">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Batter Saber Stats Samples</h1>
        <div class="dropdown-center">
  			<button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    		Select Your Year
  			</button>
  			<ul class="dropdown-menu">
   				<li><a class="dropdown-item" href="./BatterMain.jsp">2022</a></li>
    			<li><a class="dropdown-item active" href="./Batter2021.jsp">2021</a></li>
    			<li><a class="dropdown-item" href="./Batter2020.jsp">2020</a></li>
  		   </ul>
			</div>
      </div>
   <div class="chart-container">
	<canvas id="line-chart3" height="150px"></canvas>
	<script src="script_part/chartmain_03.js"></script>
   </div>
   
   
   <div class="chart-container">
	<canvas id="line-chart4" height="150px"></canvas>
	<script src="script_part/chartmain_04.js"></script>
   </div>
   
    </main>
    
     <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Questions</h1>
    </div>
    	
     <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        Question #01. What is Saber Metrics?
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">The term is derived from the acronym SABR, which stands for the Society for American Baseball Research, founded in 1971. The term "sabermetrics" was coined by Bill James, who is one of its pioneers and is often considered its most prominent advocate and public face.</div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        Question #02. How to Understand this Stats..?
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">Check NamuWiki</div>
    </div>
  </div>
</div>
    
    </div>
    </div>

</body>
</html>