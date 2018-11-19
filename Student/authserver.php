<?php 
	session_start();
	extract($_POST);

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
	$sql="SELECT * from login where Unique_ID='$id' and Password='$hash'";
	$result = $conn->query($sql);
	$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	$count = $row['Unique_ID'];
	if($count>0){
		if(!isset($_SESSION['time']))
		$_SESSION['time'] = date("Y-m-d H:i:s");
		if(!isset($_SESSION['lastlogout']))
		$_SESSION['lastlogout'] = mysqli_fetch_assoc($result)['Last_login_time'];
		echo "success";
    }
    else{
		echo $result;
    }
?>