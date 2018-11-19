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
		$sql="SELECT * from login where Unique_ID='$uid'";
		$result = $conn->query($sql);
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		$count=$row['Unique_ID'];

		if($count){
			echo "success";
		}
		else{
			echo "failure";
		}
	}
	else if($_SERVER['REQUEST_METHOD'] === 'POST'){
		extract($_POST);
		if(isset($signup)){
			if(strstr($uid, ";")||strstr($fstname, ";")||strstr($lstname, ";")||strstr($email, ";")){
				echo "SQL Injection";
			}
			else{
				$currtime=time();
				$sql="INSERT INTO `login` (`First_Name`, `Last_Name`, `Unique_ID`, `Email`, `Password`,`Verified`,`Last_login_time`) VALUES
					('$fstname', '$lstname', '$uid', '$email', '','No','$currtime');";
				$result = $conn->query($sql);
				if($result){
					// Send a password link to email
					require_once "Mail.php";
					$from = 'Admin Placement <placement.1997@gmail.com>';
					$to = $email;
					$subject = 'Password Link';
					$link = "https://www.something.com/link";		// Edit this and send correct link
					$mail_content = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
                            <html xmlns="http://www.w3.org/1999/xhtml">
                            	<head>
                            		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                            	</head>
                                <body>
                                	<div>
                                        <p> Hi '.$fstname.',
                                        </p>
                                        <p>Here is the password link for your placement account: 
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
					echo "registered";
				}
				else{
					echo "notregistered";
				}
			}
		}
		else if(isset($login)){
			if(strstr($login_uid, ";") || strstr($uspd, ";")){
				echo "SQL Injection";
			}
			else{
				if($login_uid[0]=='A'){
					$loginhash = hash('sha256','$login_uid.$uspd');	// Use this for secure storage of password
					$sql="SELECT * from admin where Admin_ID='$login_uid' and Password='$uspd' and privilege>0"; // $loginhash instead of $uspd
					$result = $conn->query($sql);
					$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
					$count=$row['Admin_ID'];
					if($count){
						$authorization=array("hash"=>$uspd,"id"=>$login_uid); // $loginhash

						setcookie("auth",json_encode($authorization),time() + (60*60));
						echo "admin success";
					}
					else{
						echo "failure";
					}
				}
				else if($login_uid[0]=='0'){
					$loginhash = hash('sha256','$login_uid.$uspd');	// Use this for secure storage of password
					$sql="SELECT * from login where Unique_ID='$login_uid' and Password='$uspd' and Verified='Yes'"; // $loginhash instead of $uspd
					$result = $conn->query($sql);
					$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
					$count=$row['Unique_ID'];

					if($count){
						$authorization=array("hash"=>$uspd,"id"=>$login_uid); // $loginhash

						setcookie("auth",json_encode($authorization),time() + (60*60));
						echo "success";
					}
					else{
						echo "failure";
					}
				}
			}
		}
	}
?>