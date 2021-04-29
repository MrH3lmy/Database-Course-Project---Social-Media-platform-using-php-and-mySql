<?php  
require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';
?>


<html>
<head>
	<title>Edit Profile</title>
	<link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>

	

	<div class="wrapper">
			<div >
				<form method="POST">
					 <input type="text" name="reg_phone"placeholder="Enter Your Number" required>
					 <br>
					 <input type="text" name="reg_home"placeholder="Enter Your Home Town" required>
					 <br>
					Date<input type="date" placeholder="Date" name="reg_birth" required>
					<br>
					Status<select name="status" required>
							<option>Single</option>
							<option>Engaged</option>
							<option>Married</option>
					</select>
					<br>
					<input type="submit" name="edit_button" value="Confirm">
				</form>
			</div>
	</div>
	<?php
	 if(isset($_POST['edit_button'])){
	$date="";
 	$home="";
 	$phone="";
 	$status="";
 	$id = "";
 	$id = $_SESSION['id'];
 	$date= $_POST['reg_birth'];
 	$home= $_POST['reg_home'];
 	$phone= $_POST['reg_phone'];
 	$status = $_POST['status'];
	$query = mysqli_query($con, "update users set date='".$birth."',home='".$home."',phone='".$phone."',status='".$status."' where id = '".$_SESSION['id']."'");
	 header("Location: index.php");
}
	  ?>
</body>
</html>