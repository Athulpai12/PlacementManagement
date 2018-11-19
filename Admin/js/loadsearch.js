console.log("new log");
console.log("new diary");

var url = window.location.search;
url = url.replace("?", ''); // remove the ?
//alert(url); //alerts ProjectID=462 is your case
var querystr= url.split("=")[1];
querystr = querystr.split("+").join(" ");
console.log(querystr)
$(document).ready(function(){
	function init(key,value)
	{
		$('#student_search_data').attr('value', querystr);
		card = document.createElement('div');
		$(card).addClass("card");
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

		$(card).appendTo($("#columndiv"));


	}
  $.ajax({
        type: "POST",
        url: "request_search.php",
        data:{
        	query:querystr
        }
        ,
        dataType: "json",
        success: function (response){
       //notifications = $.parse(response)
       console.log(response);
       if(response.status=="success")
        {
          $.each(response, function(key, value) {
            console.log(key);
            console.log(value);
                 if(key!="status")
                 {
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
 
});
