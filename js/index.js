$('.form').find('input, textarea').on('keyup blur focus', function(e) {
  var $this = $(this),
  label = $this.prev('label');
	if (e.type === 'keyup') {
		if ($this.val() === '') {
      label.removeClass('active highlight');
    } 
    else {
      label.addClass('active highlight');
    }
  } 
  else if (e.type === 'blur') {
    if( $this.val() === '' ) {
    	label.removeClass('active highlight'); 
		} 
    else {
		  label.removeClass('highlight');   
		}   
  } 
  else if (e.type === 'focus') {    
    if( $this.val() === '' ) {
    	label.removeClass('highlight'); 
		} 
    else if( $this.val() !== '' ) {
		  label.addClass('highlight');
		}
  }
});

$('.tab a').on('click', function (e) {
  e.preventDefault();
  $(this).parent().addClass('active');
  $(this).parent().siblings().removeClass('active');
  target = $(this).attr('href');
  $('.tab-content > div').not(target).hide();
  $(target).fadeIn(600);
});

obj={
  cuid:new XMLHttpRequest(),
  htmluid:"",
  checkUid:function(uid){
    htmluid=uid;
    obj.cuid.onreadystatechange=obj.checkValidId;
    obj.cuid.open("GET","http://localhost/PMS/index.php?uid="+htmluid.value,true);
    obj.cuid.send();
  },
  checkValidId:function(){
    if(obj.cuid.readyState==4 && obj.cuid.status==200){
      ret=obj.cuid.responseText;
      if(ret=="success"){
      }
      else if(ret=="failure"){
        alert("Unique ID doesn't exist");
        htmluid.value="";
      }
    }
  }
}
function postRegistration(){
  register= new XMLHttpRequest();
  register.onreadystatechange=function(){
    if(register.readyState==4 && register.status==200){
      status=register.responseText;
      if(status==="registered"){
        registered();
      }
      else if(status==="notregistered"){
        notregistered();
      }
    }
  }
  register.open("POST","http://localhost/PMS/index.php",true);
  formData = new FormData();
  formData.append("fstname",document.getElementById("fstname").value);
  formData.append("lstname",document.getElementById("lstname").value);
  formData.append("uid",document.getElementById("uid").value);
  formData.append("email",document.getElementById("email").value);
  formData.append("signup","signup");
  register.send(formData);
}
function postLogin(){
  var login= new XMLHttpRequest();
  login.onreadystatechange=function(){
    if(login.readyState==4 && login.status==200){
      if(login.responseText==="success"){
        window.location="Student/dashboard.html";
      }
      if(login.responseText==="admin success"){
        window.location="Admin/dashboard.html";
      }
      else if(login.responseText==="failure"){
        alert("Your User ID and Password don't match / Account is not yet approved");
      }
    }
  }
  login.open("POST","http://localhost/PMS/index.php",true);
  loginData = new FormData();
  loginData.append("login_uid",document.getElementById("login_uid").value);
  loginData.append("uspd",document.getElementById("login_pd").value);
  loginData.append("login","login");
  login.send(loginData);
}

function registered(){
  signup=document.getElementById("submit_signup");
  signup.innerHTML="Registered";
}
function notregistered(){
  signup=document.getElementById("submit_signup");
  signup.innerHTML="Not Registered";
}

