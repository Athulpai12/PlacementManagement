<?php
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
	$CompanyName = $_POST['CompanyName'];
	$CompanyName = mysqli_real_escape_string($conn,$CompanyName);
	$jobid = $_POST['jobid'];
	$jobid = mysqli_real_escape_string($conn,$jobid);
	$html = $_POST['html'];
	$html = mysqli_real_escape_string($conn,$html);

	$sql="INSERT INTO form_admin VALUES ('$jobid','$CompanyName','$html');";
	if($conn->query($sql)){
		echo "Successful";
	}
	else{
		echo "Failed";
	}
?>