<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pms";

	// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
$query_str = "%".$_GET['query']."%";
$sql="select * from student_details where USN  like '$query_str' or Email like '$query_str' order by USN limit 10";
$result = $conn->query($sql);
$notification = array();
$count=0;
while($row=mysqli_fetch_assoc($result)) {
		if(strpos($row['USN'],$_GET['query'])!==false)
		$notification[$count] = $row['USN'];
		else
			$notification[$count]=$row['Email'];
		//$notification[$count] = $row['message'];
		$count+=1;
	}
echo json_encode($notification);
?>