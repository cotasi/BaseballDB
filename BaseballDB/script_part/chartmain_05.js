d3.csv('Batter_2020.csv').then(makeChart);

var ctx = $('#line-chart5');

function makeChart(players) {
	
var playerLabels = players.map(function(d) { return d.last_name});
var playerid = players.map(function(d) { return d.exit_velocity_avg});	
var playerid2 = players.map(function(d){ return d.xba*100 });
var playerid3 = players.map(function(d) { return d.xslg*100});
var playerid4 = players.map(function(d) { return d.xwoba*100});
var playerid5 = players.map(function(d) { return d.xobp*100});
var playerid6 = players.map(function(d) { return d.xiso*100});
var playerid7 = players.map(function(d) { return d.launch_angle_avg});
	
var myLineChart = new Chart(ctx,{
	
	type:'line',
	data:{
		
		labels: playerLabels.slice(0,10),
		datasets:[
			{
				label:'exit_velocity_avg',
				data:playerid.slice(0,10),
				borderColor:'rgb(75,192,192)',
				fill:false,
				tension:0.1
			},
			{
				label:'xba*100',
				data:playerid2.slice(0,10),
				borderColor:'rgb(0,0,0)',
				fill:false,
				tension:0.1
			},
			{
				label:'xslg*100',
				data:playerid3.slice(0,10),
				borderColor:'rgb(200,200,200)',
				fill:false,
				tension:0.1
			},
			{
				label:'xwoba*100',
				data:playerid4.slice(0,10),
				borderColor:'rgb(100,100,100)',
				fill:false,
				tension:0.1
			},
			{
				label:'xobp*100',
				data:playerid5.slice(0,10),
				borderColor:'red',
				fill:false,
				tension:0.1
			},
			{
				label:'xiso*100',
				data:playerid6.slice(0,10),
				borderColor:'blue',
				fill:false,
				tension:0.1
			},
			{
				label:'xiso*100',
				data:playerid6.slice(0,10),
				borderColor:'blue',
				fill:false,
				tension:0.1
			}
		]
	},
	options: {
		maintatinAspectRatio:false
	}


});
}


