<?php
include("../../config/config.php");
include("../../includes/classes/User.php");

$query = $_POST['query'];
$userLoggedIn = $_POST['userLoggedIn'];

$names = explode(" ", $query);

//If query contains an underscore, assume user is searching for usernames
if(strpos($query, '_') !== false) 
	$usersReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE username LIKE '$query%' AND user_closed='no' LIMIT 8");
else if(strpbrk($query,"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ@_")==false && (strpos($query, '1') !== false ||strpos($query, '2') !== false || strpos($query, '3') !== false ||strpos($query, '4') !== false || strpos($query, '5') !== false ||strpos($query, '6') !== false || strpos($query, '7') !== false ||strpos($query, '8') !== false || strpos($query, '9') !== false ||strpos($query, '0') !== false )) 
	$usersReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE phone LIKE '$query%' AND user_closed='no' LIMIT 8");
//If there are two words, assume they are first and last names respectively
else if(count($names) == 2)
	$usersReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '$names[0]%' AND last_name LIKE '$names[1]%') AND user_closed='no' LIMIT 8");
//If query has one word only, search first names or last names 
else if(strpos($query, '@') !== false)
	$usersReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (email LIKE  '$query%') AND user_closed='no' LIMIT 8");
else {
$q = "select * from posts where body LIKE '$query%'";
$result =  mysqli_query($con,$q);
$row = mysqli_fetch_assoc($result);
$qu = "SELECT * from users WHERE username = '".$row['added_by']."'";
	$usersReturnedQuery = mysqli_query($con, "SELECT * FROM users WHERE (first_name LIKE '$names[0]%' OR last_name LIKE '$names[0]%') OR home LIKE'$query%' OR username = '".$row['added_by']."' AND user_closed='no' LIMIT 8");
}


if($query != ""){

	while($row = mysqli_fetch_array($usersReturnedQuery)) {
		$user = new User($con, $userLoggedIn);
		$mutual_friends = "";
		if($row['username'] != $userLoggedIn)
			$mutual_friends = $user->getMutualFriends($row['username']) . " friends in common";
		else 
			$mutual_friends == "";

		echo "<div class='resultDisplay'>
				<a href='" . $row['username'] . "' style='color: #1485BD'>
					<div class='liveSearchProfilePic'>
						<img src='" . $row['profile_pic'] ."'>
					</div>

					<div class='liveSearchText'>
						" . $row['first_name'] . " " . $row['last_name'] . "
						<p>" . $row['username'] ."</p>
						<p id='white'>" . $mutual_friends ."</p>
					</div>
				</a>
				</div>";

	}

}

?>