<?php
extract($_GET);
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "PMS";
$form = array();
$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
if ($conn->connect_error) {
		echo "die\n\n";
		ob_flush();
		flush();
	    die("Connection failed: " . $conn->connect_error);
	}
$sql = "select * from form_admin where job_id='$query'";
$result = $conn->query($sql);
while($row=mysqli_fetch_assoc($result)) {
		$form['html'] = $row['html'];
	}
	if(sizeof($form)>0)
    {
		$form['status'] = 'success';
    }
    else
    {
    	$form['status'] = 'failure';
    	$form['query'] = $query;
    }

echo json_encode($form);
?>