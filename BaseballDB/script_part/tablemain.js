d3.csv("Batter_2021.csv").then(function(data) {
	
	var title = d3.keys(data[0]);
	var table = d3.select('#feature_table').append('table');
	var thead = table.append('thead');
	var tbody = table.append('tbody');
	
	var header = thead.append('tr')
					  .selectAll('th')
					  .data(title).enter()
					  .append('th')
					  .text(function(d) { return d;})
					  
	var rows = tbody.selectAll('tr').data(data)
					.enter()
					.append('tr')
					
	var cells = rows.selectAll('td')
	                .data(function(d){
					return title.map(function(title){
						return { 'title':title, 'value':d[title]};
					});
	})
					.enter()
					.append('td')
					.text(function(d){return d.value;})
	
});