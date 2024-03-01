d3.csv("Batter_2022.csv",function(data){
	function tabulate(data,columns) {
		var table = d3.select('#feature_table')
		.style("padding","0 0 2% 0")
		.style("background-color","white")
		,columnNames = columns
		, thead = table.append("thead")
		, tbody = table.append("tbody");
		
		thead.append("tr")
		.selectAll("th")
		.data(columnNames)
		.enter()
		.append("th")
		.style("vertical-align","middle")
		.text(function(columnNames) { return columnNames;});
		
		thead.selectAll("tr")
		.style("color","white")
		.style("font-size","medium")
		.style("height","40px")
		.style("background-color","#205492")
		.style("font-weight","600");
		
		var rows = tbody.selectAll("tr")
		.data(data)
		.enter()
		.append("tr");
		
		var cells = rows.selectAll("td")
		.data(function(row){
			return columns.map(function (column){
				return { column: column, value : row[column] };
			});
		})
		.enter()
		.append("td")
		.style("background-color","#fffff")
		.style("font-size","1.8vh")
		.style("color","#09284d")
		.style("font-weight","bold")
		.style("padding","15px")
		.style("width","600px")
		.style("text-align","center")
		.html(function (d){
			return d.value;
		});
		
		return table;
	};
	
	tabulate(data,["last_name","player_id","year",'xba','xslg','xwoba'])
});