var width = 960,
    height = 500;

var path = d3.geo.path(),
    force = d3.layout.force().size([width, height]);

var svg = d3.select("body").append("svg")
    .attr("width", width)
    .attr("height", height);

d3.json("/mbostock/raw/4090846/us.json", function(error, us) {
  if (error) throw error;

  var states = topojson.feature(us, us.objects.states),
      nodes = [],
      links = [];

  states.features.forEach(function(d, i) {
    if (d.id === 2 || d.id === 15 || d.id === 72) return; // lower 48
    var centroid = path.centroid(d);
    if (centroid.some(isNaN)) return;
    centroid.x = centroid[0];
    centroid.y = centroid[1];
    centroid.feature = d;
    nodes.push(centroid);
  });

  d3.geom.voronoi().links(nodes).forEach(function(link) {
    var dx = link.source.x - link.target.x,
        dy = link.source.y - link.target.y;
    link.distance = Math.sqrt(dx * dx + dy * dy);
    links.push(link);
  });

  force
      .gravity(0)
      .nodes(nodes)
      .links(links)
      .linkDistance(function(d) { return d.distance; })
      .start();

  var link = svg.selectAll("line")
      .data(links)
    .enter().append("line")
      .attr("x1", function(d) { return d.source.x; })
      .attr("y1", function(d) { return d.source.y; })
      .attr("x2", function(d) { return d.target.x; })
      .attr("y2", function(d) { return d.target.y; });

  var node = svg.selectAll("g")
      .data(nodes)
    .enter().append("g")
      .attr("transform", function(d) { return "translate(" + -d.x + "," + -d.y + ")"; })
      .call(force.drag)
    .append("path")
      .attr("transform", function(d) { return "translate(" + d.x + "," + d.y + ")"; })
      .attr("d", function(d) { return path(d.feature); });

  force.on("tick", function(e) {
    link.attr("x1", function(d) { return d.source.x; })
        .attr("y1", function(d) { return d.source.y; })
        .attr("x2", function(d) { return d.target.x; })
        .attr("y2", function(d) { return d.target.y; });

    node.attr("transform", function(d) {
      return "translate(" + d.x + "," + d.y + ")";
    });
  });
});