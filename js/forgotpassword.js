forgotpass={
	xhr: new XMLHttpRequest(),
	sendDetails:function(){
		othis=this;
		forgotpass.xhr.onreadystatechange=forgotpass.updateFields;
		uid=document.getElementById("uid");
		forgotpass.xhr.open("GET","http://localhost/PMS/forgotpassword.php?uid="+uid.value,true);
		forgotpass.xhr.send();
	},
	updateFields:function(){
		if(forgotpass.xhr.readyState==4 && forgotpass.xhr.status==200){
			ret=forgotpass.xhr.responseText;
			if(ret=="success"){
				document.getElementById("uid").value="";
				document.getElementById("reset_button").innerHTML="Reset link sent";
			}
			else{
				document.getElementById("uid").value="";
				document.getElementById("reset_button").innerHTML="Failed";
			}
		}
	}
}