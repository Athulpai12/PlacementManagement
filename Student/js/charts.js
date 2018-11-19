dataset1 = [];
dataset2 = [];
labels1 = [];
labels2 = [];

// keep making calls to get data from server 

//make ajax calls using the below function and get data for each chart and replace the data
$.ajax({
  type: "GET" ,//mention method,
  url: "chart_data.php?id=1", // mention the server url,
  dataType: "json" ,//if returned data from server is json encoded use,
   data:{
    // List of data to be sent to server
    // in the form label:value
    //query:data_to_get
  },
  success: function (response){
    // if data returned by server the data is in response
    //console.log(response.labels);
    //console.log(response.values);
    dataset1 = response.values
    labels1 = response.labels
  },
  error: function (jqXHR, exception){
    //alert("error")
    // error function prints the error in the console
    var msg = '';
    if (jqXHR.status === 0) {
        msg = 'Not connect.\n Verify Network.';
    } else if (jqXHR.status == 404) {
        msg = 'Requested page not found. [404]';
    } else if (jqXHR.status == 500) {
        msg = 'Internal Server Error [500].';
    } else if (exception === 'parsererror') {
        msg = 'Requested JSON parse failed.';
    } else if (exception === 'timeout') {
        msg = 'Time out error.';
    } else if (exception === 'abort') {
        msg = 'Ajax request aborted.';
    } else {
        msg = 'Uncaught Error.\n' + jqXHR.responseText;
    }
   console.log(msg)
  },
});

$.ajax({
  type: "GET" ,//mention method,
  url: "chart_data.php?id=2", // mention the server url,
  dataType: "json" ,//if returned data from server is json encoded use,
  data:{
    // List of data to be sent to server
    // in the form label:value
    //query:data_to_get
  },
  success: function (response){
    // if data returned by server the data is in response
    dataset2 = response.values
    labels2 = response.labels
  },
  error: function (jqXHR, exception) {
    //alert("error")
    // error function prints the error in the console
    var msg = '';
    if (jqXHR.status === 0) {
        msg = 'Not connect.\n Verify Network.';
    } else if (jqXHR.status == 404) {
        msg = 'Requested page not found. [404]';
    } else if (jqXHR.status == 500) {
        msg = 'Internal Server Error [500].';
    } else if (exception === 'parsererror') {
        msg = 'Requested JSON parse failed.';
    } else if (exception === 'timeout') {
        msg = 'Time out error.';
    } else if (exception === 'abort') {
        msg = 'Ajax request aborted.';
    } else {
        msg = 'Uncaught Error.\n' + jqXHR.responseText;
    }
   console.log(msg)
  },
});


$(document).ready(function()
{
  //bar chart
  var ctx = document.getElementById("barChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'bar',
        defaultFontFamily: 'Poppins',
        data: {
          labels: labels2,
          datasets: [
            {
              label: "No. of Students",
              data: dataset2,
              borderColor: "rgba(0, 123, 255, 0.9)",
              borderWidth: "0",
              backgroundColor: "rgba(0, 123, 255, 0.5)",
              fontFamily: "Poppins"
            },
          ]
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          scales: {
            xAxes: [{
              ticks: {
                fontFamily: "Poppins"

              }
            }],
            yAxes: [{
              ticks: {
                beginAtZero: true,
                fontFamily: "Poppins"
              }
            }]
          }
        }
      });
  }

    // pie chart 


    var ctx = document.getElementById("pieChart");
    if (ctx) {
      ctx.height = 200;
      var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
          datasets: [{
            data: dataset1,
            backgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(10, 255, 0,0.5)",
              "rgba(0, 123, 255,0.3)",
              "rgba(150, 123, 123,0.5)",
              "rgba(200, 123, 123,0.5)",
              "rgba(255, 123, 123,0.9)",
              "rgba(123, 123, 123,0.7)",
              "rgba(0, 223, 123,0.9)",
              "rgba(255, 123, 0,0.5)",
              "rgba(0,0,0,0.07)"
            ],
            hoverBackgroundColor: [
              "rgba(0, 123, 255,0.9)",
              "rgba(0, 123, 255,0.7)",
              "rgba(0, 123, 255,0.5)",
              "rgba(0, 123, 255,0.3)",
              "rgba(0,0,0,0.07)"
            ]

          }],
          labels: labels1
        },
        options: {
          legend: {
            position: 'top',
            labels: {
              fontFamily: 'Poppins'
            }

          },
          responsive: true
        }
      });
    }
});

