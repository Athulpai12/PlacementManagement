function postreset(){
  reset = document.getElementById("reset");
  verify = document.getElementById("verifypassword");
  if(verify.value!=""){
  	reset.innerHTML = "Done";
  }
}

var pass="";
function checkPassword(password){
  if(password.value.length==0){
    return;
  }
  if(password.value.length<8){
    $("#password").html("Password should contain atleast 8 characters");
    password.value="";

  }
  else if(!(/\d/.test(password.value))){
    $("#password").html("Password must contain a digit");
    password.value="";
  }
  pass=password.value;
}
function verifyPassword(password){
  if(password.value.length==0){
    return;
  }
  if(password.value!=pass){
    $("#verifypassword").html("Passwords don't match");
    password.value="";
  }
}