$(function(){
  $.ajax({
    url: 'chart_data.php?id=1',
    type: 'GET',
    success : function(data) {
      chartData = data;
      var chartProperties = {
        "caption": "Percentage of Students Placed across different sectors",
        "plottooltext": "<b>$percentValue</b> of students placed on $label",
        "showpercentvalues": "1",
        "legendposition": "bottom",
        "usedataplotcolorforlabels": "1",
        "theme": "fusion"
      };
      apiChart = new FusionCharts({
        type: 'pie2d',
        renderAt: 'Pie-Chart',
        width: '100%',
        height: '100%',
        dataFormat: 'json',
        dataSource: {
          "chart": chartProperties,
          "data": chartData
        }
      });
      apiChart.render();
    }
  });
});