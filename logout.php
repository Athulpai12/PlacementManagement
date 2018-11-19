<?php
	setcookie("auth","",time()-7600);
	session_start();
	session_destroy();
	header("LOCATION: http://localhost/PMS/index.html");
?>