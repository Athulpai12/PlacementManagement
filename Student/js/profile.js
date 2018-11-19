var id="";
var userdata;
function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#dp')
        .attr('src', e.target.result)
        .width(150)
        .height(150);
      $('#user_photo_dropdown').attr('src', e.target.result)
        .attr('src', e.target.result)
        .width(150)
        .height(150);
      $('#user_photo_poster').attr('src', e.target.result)
        .attr('src', e.target.result)
        .width(150)
        .height(150);
    };
    reader.readAsDataURL(input.files[0]);
  }
}
$(function() {
  // bind 'uploadimage' and provide a simple callback function
  $('#uploadimage').ajaxForm(function(response) {
  $('#formsubmit').val("Photo uploaded");
  });
});

$(document).ready(function(){
  var auth = $.cookie('auth');
  auth = JSON.parse(auth);
  id=auth.id;
  $('#form_unique_id').val(id);
  $.get("profile.php?uid="+auth.id,function(retdata,status){
    userdata=JSON.parse(retdata);
    $('#details_table_uid').text($('#details_table_uid').text()+" : "+id);
    $('#details_table_name').text($('#details_table_name').text()+" : "+userdata.fname+" "+userdata.lname);
    $('#details_table_mobile').text($('#details_table_mobile').text()+" : "+userdata.mobile);
    $('#details_table_email').text($('#details_table_email').text()+" : "+userdata.email);
  });
  $("#dp").attr("src","Uploads/"+id+".jpg");
  $("#dp").on("error",function(){
      $(this).attr("src","images/icon/avatar-01.png");
  });
});

$(document).ready(function(){
  $("#logout").click(function(event){
    window.location='http://localhost/PMS/logout.php';
  });
});

$("#change_pass_old").blur(function(){
  datasend = "pass_old"+"="+$("#change_pass_old").val()+"&uid"+"="+id;
  $.ajax({url: 'profile.php', type: 'POST', data: datasend}).done(function(response){
    if(response=="no match"){
      $("#pass_old_error").html("Please enter the correct password");
      $("#change_pass_old").val("");
    }
  });
});

$("#change_pass_old").keypress(function(){
    $("#pass_old_error").html("");
});

var pass="";
function checkPassword(password){
  if(password.value.length==0){
    return;
  }
  if(password.value.length<8){
    $("#pass_new_error").html("Password should contain atleast 8 characters");
    password.value="";

  }
  else if(!(/\d/.test(password.value))){
    $("#pass_new_error").html("Password must contain a digit");
    password.value="";
  }
  pass=password.value;
}
function verifyPassword(password){
  if(password.value.length==0){
    return;
  }
  if(password.value!=pass){
    $("#pass_new_confirm_error").html("Passwords don't match");
    password.value="";
  }
}

$("#change_pass_new").keypress(function(){
    $("#pass_new_error").html("");
});

$("#change_pass_new_confirm").keypress(function(){
    $("#pass_new_confirm_error").html("");
});

function updatePassword(){
  datasend = "pass_new"+"="+$("#change_pass_new").val()+"&uid"+"="+id;
  $.ajax({url: 'profile.php', type: 'POST', data: datasend}).done(function(response){
    $("#change_pass_submit").html(response);
    $("#change_pass_old").html("");
    $("#change_pass_new").html("");
    $("#change_pass_new_error").html("");
  });
}

$("#change_pass_old").keydown(function(){
  $("#change_pass_submit").html("Change Password");
});
