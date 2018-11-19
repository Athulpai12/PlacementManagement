$(function(){
	$.ajax({
	url: 'chart_data.php?id=2',
	type: 'GET',
	success : function(data){
	  chartData = data;
	  var chartProperties = {
	    "caption": "No of student Placed",
	    "subcaption": "",
	    "xaxisname": "MONTH",
	    "yaxisname": "COUNT",
	    "numbersuffix": "",
	    "theme": "fusion"
	  };
	   myChart = new FusionCharts({
	   type: "column2d",
	   renderAt: "Bar-Chart",
	   width: "100%",
	   height: "200%",
	   dataFormat: "json",
	   dataSource: {
	     "chart": chartProperties,
	     "data": chartData
	   }
	  });
	  myChart.render();
	}
	});
});