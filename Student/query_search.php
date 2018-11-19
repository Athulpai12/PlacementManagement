<?php
	$servername = "localhost";
	$username = "root";
	$password = "root";
	$dbname = "PMS";
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	$query_str = "%".$_GET['query']."%";
	$sql="SELECT * from notification where subject like '$query_str' or message like '$query_str' order by subject limit 10";
	$result = $conn->query($sql);
	$notification = array();
	$count=0;
	while($row=mysqli_fetch_assoc($result)) {
		$notification[$count] = $row['subject'];
		$notification[$count] = $row['message'];
		$count+=1;
	}
	echo json_encode($notification);
?>