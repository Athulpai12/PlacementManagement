<?php
  if($_SERVER['REQUEST_METHOD'] === 'POST'){
    if(isset($_POST['reset'])){
      $PASS = $_POST['password'];
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
      if(isset($_COOKIE["uid"])) {
        $uid = $_COOKIE["uid"];
      } 
      $registerhash=hash('sha256','$uid.$PASS'); // Add the hash to the DB later
      $sql="UPDATE login SET Password='$PASS' where Unique_ID='$uid'";
      $result = $conn->query($sql);
      if($result){
        // Success
      }
      else{
        echo "failure";
      }
    }
  }
  else if($_SERVER['REQUEST_METHOD'] === 'GET'){
    extract($_GET);
    if(strcmp($_COOKIE["reset_password_allow"],$uid)) {
      header('Location:reset_pass.php?uid='.$uid);
    }
    $cookie_name = "uid";
    $cookie_value = $uid;
    setcookie($cookie_name, $cookie_value, time() + 100, "/"); // Depends on server to client time
  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Reset / Set Password</title>
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <div class='help'>
      <a href="index.html">
        <h3 style="color: white;" align="center">Back to Home</h3>
      </a>
    </div>
    <div class="form">
    	<div>
    		<h1 style="color: white;font-weight: bold;" align="center">Create a Password</h1>
    	</div>
    	<form id="form_login" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" method="post">
    	  <div class="field-wrap">
          <label>
            Set a Password<span class="req">*</span>
          </label>
          <input type="password" id="password" name="password" onblur="checkPassword(this)" required autocomplete="off"/>
  	    </div>
    	  <div class="field-wrap">
    	    <label>
    	      Verify Password<span class="req">*</span>
    	    </label>
    	    <input type="password" id="verifypassword" name="password" onblur="verifyPassword(this)" required autocomplete="off"/>
    	  </div>
        <button type="submit" id="reset" name="reset" class="button button-block" onclick="postreset()">Reset</button>
  	  </form>
    </div> <!-- /form -->
    <script src='js/jquery.min.js'></script>
    <script src="js/index.js"></script>
    <script src="js/forgotpassword.js"></script>
    <script src="js/reset_pass.js"></script>
  </body>
</html>
