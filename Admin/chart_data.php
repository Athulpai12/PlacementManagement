<?php
	extract($_GET);
    $servername = "localhost";
    $username = "root";
    $password = "root";
    $dbName = "PMS";
    $conn = new mysqli($servername, $username, $password, $dbName);
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
	if($id == 1){
		$query = "select count(*),sector from placement_drive group by sector";
		$result = $conn->query($query);
		$labels = array();
		$values = array();
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				array_push($labels,$row['sector']);
				array_push($values ,$row['count(*)']);
			}

		}
		//echo("<script>console.log('PHP: ".$data."');</script>");
		$jsonArray = array();
		$jsonArray['labels']= $labels;
		$jsonArray['values']= $values;
		$conn->close();
		header('Content-type: application/json');
		echo json_encode($jsonArray);
	}
	else if($id == 2){
		$query = "select count(*),monthname(Date) as Month from placement_drive group by Month";
		$result = $conn->query($query);
		$labels = array();
		$values = array();
		if ($result->num_rows > 0) {
			while($row = $result->fetch_assoc()) {
				array_push($labels,$row['Month']);
				array_push($values,$row['count(*)']);
			}
		}
		$jsonArray = array();
		$jsonArray['labels']= $labels;
		$jsonArray['values']= $values;
		$conn->close();
		header('Content-type: application/json');
		echo json_encode($jsonArray);
	}
?>    