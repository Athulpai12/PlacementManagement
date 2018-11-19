<?php
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
	if($_SERVER['REQUEST_METHOD'] === 'GET'){
		extract($_GET);
		if(isset($uid)){
			$userid = $uid;
			$sql="SELECT * from student_details where USN='$uid'";
			$result = $conn->query($sql);
			$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
			$ret = array('fname' => $row['FirstName'],'lname' => $row['LastName'],'mobile' => $row['Mobile'],'email' => $row['Email']);
			echo json_encode($ret);
		}
	}
	else if($_SERVER['REQUEST_METHOD'] === 'POST'){
		extract($_POST);
		if(isset($Unique_ID)){
			$uploaddir = './Uploads/';
			$temp = explode(".", $_FILES["userfile"]["name"]);
			$newfilename = $Unique_ID . '.' . end($temp);	// Change Unique_ID to whatever name you want. Typically UID
			$uploadfile = $uploaddir . $newfilename;
			echo $uploadfile;
			move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile);
		}
		else if(isset($pass_old)){
			$sql="SELECT * from login where Unique_ID='$uid'";
			$result = $conn->query($sql);
			$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
			if(strcmp($row['Password'],$pass_old)==0){
				echo "match";
			}
			else{
				echo "no match";
			}
		}
		else if(isset($pass_new)){
			$sql="UPDATE login SET Password='$pass_new' where Unique_ID='$uid'";
  			$result = $conn->query($sql);
  			if($result){
  				echo "Password Updated";
  			}
  			else{
  				echo "Update Failed";
  			}
		}
	}
?>