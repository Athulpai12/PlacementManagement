<?php
	extract($_GET);
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
	if(strstr($uid, ";")){
		echo "alert('SQL Injection');";
	}
	else{
		$sql="SELECT * from login where Unique_ID='$uid'";
		$result = $conn->query($sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		$uid=$row['Unique_ID'];
		if($uid){
			// Send reset link
			$fstname = $row['First_Name'];
			$email = $row['Email'];
			// Send a password link to email
			require_once "Mail.php";
			$from = 'Admin Placement <placement.1997@gmail.com>';
			$to = $email;
			$subject = 'Reset Password Link';
			$mail_content = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                            <html xmlns="http://www.w3.org/1999/xhtml">
                            	<head>
                            		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                            	</head>
                                <body>
                                	<div>
                                        <p> Hi '.$fstname.',
                                        </p>
                                        <p>Here is the password reset link for your placement account: 
                                        	<a href ="localhost/PMS/reset_pass.php?uid='.$uid.'">Reset Password</a>
                                        </p>
                                	</div>
                                </body>
                            </html>';
			$headers = array(
			    'From' => $from,
			    'To' => $to,
			    'Subject' => $subject,
			    'Content-Type' => "text/html; charset=ISO-8859-1\r\n"
			);
			$smtp = Mail::factory('smtp', array(
			        'host' => 'ssl://smtp.gmail.com',
			        'port' => '465',
			        'auth' => true,
			        'username' => 'placement.1997@gmail.com',
			        'password' => 'admin@1997'
			));
			$mail = $smtp->send($to, $headers, $mail_content);
			if (PEAR::isError($mail)) {
			    //echo('<script>console.log(' . $mail->getMessage() . ');</script>');
			} else {
			    //echo('<script>console.log("Message successfully sent!");</script>');
			}
			setcookie("reset_password_allow", "$uid", time() + 100, "/"); // Depends on server to client time
			echo "success";
		}
		else{
			echo "failure";
		}
	}
?>