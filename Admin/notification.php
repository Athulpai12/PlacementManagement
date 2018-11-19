<?php
	session_start();
	extract($_POST);
	$servername = "localhost";
	$username = "root";
	$password = "root";
	$dbname = "pms";
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 
	$dt =  $_SESSION['time'];
	$sql="SELECT * from notification where date_time >= '$dt'";
	$result = $conn->query($sql);
	$notification = array();
	while($row=mysqli_fetch_assoc($result)) {
		$notification[][$row['subject']] = $row['message'];
	}
    if(sizeof($notification)>0){
		$notification['status'] = 'success';
    }
    else{
    	$notification['status'] = 'failure';
    }
	$_SESSION['time']=date("Y-m-d H:i:s");
	echo(json_encode($notification));
?>