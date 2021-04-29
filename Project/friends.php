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
					<?php
					$id = $_SESSION['id'];
						$query = mysqli_query($con,"select * from users where id = '$id'");
 						$row = mysqli_fetch_assoc($query);
 						$names = explode(",", $row['friend_array']);
   						echo $names[0];
   						$begin=1;
   						while(strlen($names[$begin])>0){
   							
 							$query = mysqli_query($con,"select * from users where username = '$names[$begin]'");
							$row = mysqli_fetch_assoc($query);
 							$pic = $row['profile_pic'];
 							$n = $names[$begin];
 						echo  '<center><img  width="200" height="200" src="'.$pic.'" >';
 						echo "<br>";
 						echo "<a href='$n'><h3>$n</h3></a>";
   							echo "<br>";
   							$begin++;
   						}
	 				?> 
				</form>
			</div>
	</div>
	
</body>
</html>