console.log("peacevkfjk");
var url = window.location.search;
url = url.replace("?", ''); // remove the ?
//alert(url); //alerts ProjectID=462 is your case
var querystr= url.split("=")[1];
$(document).ready(function()
{
  console.log("also here");
 if(querystr.length>2)
 {
  $.ajax({
        type: "GET",
        url: "getforms.php",
        data:{

          query:querystr
        },
        dataType: "json",
        success: function (response){
       //notifications = $.parse(response)
       console.log("heregpgp");
       if(response.status=='failure')
       {
          //alert("peacee");
          
          $('#fakebutton').click();
       }
       else
       {
       		console.log(response);
          console.log('reached');
          $('#maincontent').append(response.html);
       }
   },
   error: function (jqXHR, exception) {
          alert(exception+" "+jqXHR.responseText)
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
        alert(msg);
    },
});
}
});

