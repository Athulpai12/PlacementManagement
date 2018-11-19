<?php
extract($_POST);
header('Content-Type: text/event-stream');
header('Cache-Control: no-cache');
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "PMS";
$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
$random = rand(10,10000000);
$dt = date("Y-m-d H:i:s");
$message = mysqli_real_escape_string($conn,$message);
$sql = "INSERT INTO notification values ('$random','$random','$subject','$message','$dt')";
if($conn->query($sql)==TRUE)
{
	echo "Hello";
	echo $message;
}
else
{
	echo "error ".$sql."<br>".$conn->error;
}
$conn->close();

?>