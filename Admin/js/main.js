var cookieValue = $.cookie("auth");
if (typeof cookieValue === 'undefined')
  window.location = "../index.html";
else{
  check = true;
  data_json = JSON.parse(cookieValue)
  $.ajax({
    type: "POST",
    url: "authserver.php",
    data:data_json,
    success: function (response){
      if(response=="success"){
        console.log("working!!")
      }
      else{
        console.log('not set');
        console.log(data_json);
        console.log(response);
        window.location = "../index.html";
      }
    }
  });
}
            
(function($){
    // USE STRICT
  "use strict";
  $(".animsition").animsition({
    inClass: 'fade-in',
    outClass: 'fade-out',
    inDuration: 900,
    outDuration: 900,
    linkElement: 'a:not([target="_blank"]):not([href^="#"]):not([class^="chosen-single"])',
    loading: true,
    loadingParentElement: 'html',
    loadingClass: 'page-loader',
    loadingInner: '<div class="page-loader__spin"></div>',
    timeout: false,
    timeoutCountdown: 5000,
    onLoadEvent: true,
    browser: ['animation-duration', '-webkit-animation-duration'],
    overlay: false,
    overlayClass: 'animsition-overlay-slide',
    overlayParentElement: 'html',
    transition: function (url) {
      window.location.href = url;
    }
  });
})(jQuery);

(function ($) {
  // USE STRICT
  "use strict";
  // Dropdown 
  try{
    var menu = $('.js-item-menu');
    var sub_menu_is_showed = -1;
    for (var i = 0; i < menu.length; i++){
      $(menu[i]).on('click', function(e){
        e.preventDefault();
        $('.js-right-sidebar').removeClass("show-sidebar");        
        if (jQuery.inArray(this, menu) == sub_menu_is_showed) {
          $(this).toggleClass('show-dropdown');
          sub_menu_is_showed = -1;
        }
        else{
          for(var i = 0; i < menu.length; i++) {
            $(menu[i]).removeClass("show-dropdown");
          }
          $(this).toggleClass('show-dropdown');
          sub_menu_is_showed = jQuery.inArray(this, menu);
        }
      });
    }
    $(".js-item-menu, .js-dropdown").click(function (event) {
      event.stopPropagation();
    });
    $("body,html").on("click", function () {
      for (var i = 0; i < menu.length; i++) {
        menu[i].classList.remove("show-dropdown");
      }
      sub_menu_is_showed = -1;
    });
  } 
  catch (error) {
    console.log(error);
  }
})(jQuery);

$(document).ready(function(){
  var auth = $.cookie('auth');
  auth = JSON.parse(auth);
  id=auth.id;
  $.get("profile.php?uid="+auth.id,function(retdata,status){
    userdata=JSON.parse(retdata);
    // Top right corner dropdown
    $('#header_dropdown_name_hyperlink').text(userdata.fname+" "+userdata.lname);
    $('#header_dropdown_name').text(userdata.fname+" "+userdata.lname);
    $('#header_dropdown_email').text(userdata.email);
  });

  $("#user_photo_dropdown").attr("src","Uploads/"+id+".jpg");
  $("#user_photo_dropdown").on("error",function(){
    $(this).attr("src","images/icon/avatar-01.png");
  });
  $("#user_photo_poster").attr("src","Uploads/"+id+".jpg");
  $("#user_photo_poster").on("error",function(){
    $(this).attr("src","images/icon/avatar-01.png");
  });
	// logout function is implemented here
  $("#logout").click(function(event){
    if(typeof $SSE !== 'undefined'){
      $SSE.close();
    }
    window.location='http://localhost/PMS/logout.php';
  });
  //search function is implemented here
  //alert("hellow")
  console.log($('#student_search_data').val()+" this ")
  	//if($('#student_search_data').val().length>3)
	{
    $('#student_search_data').typeahead({
    source: function(query, result){
		$.ajax({
      type: "GET",
      url: "query_search.php",
      dataType: "json",
      data:{
      	query:$('#student_search_data').val()
      },
      success: function (response){
        result($.map(response, function(item){
          return item;
        }));
        console.log(response+"resp");
      },
      error: function (jqXHR, exception){
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
      }
    });
  }
  });
  }
  console.log("document Ready");
});
