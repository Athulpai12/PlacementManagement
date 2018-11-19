<?php
	session_start();
	session_write_close();
	header('Content-Type: text/event-stream');
	header('Cache-Control: no-cache');
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
	$a=6;
	while($a>4){
		sleep(10);
		$dt = $_SESSION['time']; 
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
    	session_start();
		$_SESSION['time']=date("Y-m-d H:i:s");
		session_write_close();
		echo  'data:'.json_encode($notification)."\n\n";
		ob_flush();
		flush(); 
		$a=$a-1;
	}
?>