<?php
	session_start();
	extract($_POST);
	if(strlen($query)==0){
		echo json_encode(array("status"=>'failure'));
		exit();
	}
	$servername = "localhost";
	$username = "root";
	$password = "root";
	$dbname = "PMS";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 
	$dt =  $_SESSION['time'];
	$query_str = "%".$query."%";
	$sql="SELECT * from notification where subject  like '$query_str' or message like '$query_str' order by subject limit 10";
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