<?php
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
	if(isset($feedback_text)){
		if($feedback_anonymous=='true'){
			$sql = "INSERT INTO feedback (`Unique_ID`,`Feedback`) VALUES ('Anon','$feedback_text');";
		}
		else{
			$sql = "INSERT INTO feedback (`Unique_ID`,`Feedback`) VALUES ('$uid','$feedback_text');";
		}
		$result = $conn->query($sql);
		if($result){
			echo "success";
		}
		else{
			echo "failure";
		}
	}

?>