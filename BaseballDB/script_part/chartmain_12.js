d3.csv('Pitcher_2020.csv').then(makeChart2);

var ctx2 = $('#line-chart12');

function makeChart2(players) {
	
var playerLabels2 = players.map(function(d) { return d.last_name});
var playerid11 = players.map(function(d) { return d.exit_velocity_avg});	
var playerid12 = players.map(function(d){ return d.xba*100 });
var playerid13 = players.map(function(d) { return d.xslg*100});
var playerid14 = players.map(function(d) { return d.xwoba*100});
var playerid15 = players.map(function(d) { return d.xobp*100});
var playerid16 = players.map(function(d) { return d.xiso*100});
var playerid17 = players.map(function(d) { return d.launch_angle_avg});
	
var myLineChart2 = new Chart(ctx2,{
	
	type:'bar',
	data:{
		
		labels: playerLabels2.slice(0,10),
		datasets:[
			{
				label:'exit_velocity_avg',
				data:playerid11.slice(0,10),
				backgroundColor:
                'rgba(255, 99, 132)',
				tension:0.1
			},
			{
				label:'xba*100',
				data:playerid12.slice(0,10),
				backgroundColor:'rgb(0,0,0)',
				fill:false,
				tension:0.1
			},
			{
				label:'xslg*100',
				data:playerid13.slice(0,10),
				backgroundColor:'rgb(200,200,200)',
				fill:false,
				tension:0.1
			},
			{
				label:'xwoba*100',
				data:playerid14.slice(0,10),
				backgroundColor:'rgb(100,100,100)',
				fill:false,
				tension:0.1
			},
			{
				label:'xobp*100',
				data:playerid15.slice(0,10),
				backgroundColor:'red',
				fill:false,
				tension:0.1
			},
			{
				label:'xiso*100',
				data:playerid16.slice(0,10),
				backgroundColor:'blue',
				fill:false,
				tension:0.1
			},
			{
				label:'launch_angle_avg',
				data:playerid17.slice(0,10),
				backgroundColor:'gray',
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


