$(document).ready(function(){
	function init(key,value){
		card = document.createElement('div');
		$(card).addClass("card")
    .appendTo($("#columndiv"));

		cardheader = document.createElement('div');
		$(cardheader).addClass("card-header")
		.appendTo($(card));

		strong = document.createElement('strong')
		$(strong).addClass("card-title")
		.html("Notification")
		.appendTo($(cardheader));

		cardbody = document.createElement('div');
		$(cardbody).addClass("card-body")
		.appendTo($(card));

		headerdiv =  document.createElement('div');
		$(headerdiv).addClass("typo-header")
		.appendTo($(cardbody));

		header =  document.createElement('h3');
		$(header).addClass("pb-2")
		.html(key)
		.appendTo($(headerdiv));

		articles = document.createElement('div');
		$(articles).addClass("typo-articles")
		.appendTo($(cardbody));

		paragraph = document.createElement('p');
		$(paragraph).html(value)
		.appendTo($(articles));
		
	}
  $.ajax({
    type: "POST",
    url: "notification.php",
    data:data_json,
    dataType: "json",
    success: function (response){
      //notifications = $.parse(response)
      console.log(response);
      if(response.status=="success"){
        $.each(response, function(key, value){
          console.log(key);
          console.log(value);
          if(key!="status"){
            $.each(value, function(k, v){
              console.log(v);console.log(k);
              init(k,v);
            });
          }
        });
      }
      console.log(response.status);
      console.log("end of notification");
    }
  });
  $SSE = new EventSource("pollingserver.php");
  $SSE.onmessage = function(event){
    // alert(JSON.parse(event.data).subject);
    var returned_value = JSON.parse(event.data);
    if(returned_value.status=="success"){
      $.each(returned_value, function(key, value) {
        console.log(key);
        console.log(value);
        if(key!="status"){
          $.each(value, function(k, v){
            console.log(v);
            console.log(k);
            init(k,v);
          });
        }
      });
    }
  };  
});