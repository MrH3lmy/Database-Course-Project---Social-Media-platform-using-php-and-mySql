<?php 
include("includes/header.php");





 ?>
 <body id="green">
	<div class="user_details column">
		<a href="<?php echo $userLoggedIn; ?>">  <img src="<?php echo $user['profile_pic']; ?>"> </a>

		<div class="user_details_left_right">
			<a href="<?php echo $userLoggedIn; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name'];
			
			 ?>
			</a>
			<br>
			
		</div>
		<br><br>
		<form method="post">
          <input type="submit" name="edit" value="Edit Profile" id ="accept_button">
 		</form> 
 		<form method="post">
          <input type="submit" name="friends" value="Friends"id ="accept_button">
 		</form> 
 		<form method="post" enctype = "multipart/form-data" >
          <input type="file" name="image" >
          <input type="submit" value="Change Profile Picture" name="submit"id ="accept_button">
 		</form> 
		
	</div>
		


	<div class="main_column column">
		<form class="post_form" action="index.php" method="POST" enctype = "multipart/form-data">
			<textarea name="post_text" id="post_text" placeholder="Got something to say?"></textarea>
			<br>
			<input type="submit" name="post" id="accept_button" value="Post">
			<br><br>
			<input type="file" name="image">
			<br><br>
			<br><br>
			<br><br>
			<hr>
		</form>
		<div class="posts_area"></div>
		<?php
	if (isset($_POST['post'])){
		$source = $_FILES['image']['tmp_name'];
		$destination = "posts/".$_FILES['image']['name'];
  move_uploaded_file($source,$destination);
  $photo=$_FILES['image']['name'];
  $_SESSION['photo'] = $photo;
  $post = new Post($con, $userLoggedIn);
  $post->submitPost($_POST['post_text'], 'none');
}
		 ?>
		<img id="loading" src="assets/images/icons/loading.gif">


	</div>

	<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';

	$(document).ready(function() {

		$('#loading').show();

		//Original ajax request for loading first posts 
		$.ajax({
			url: "includes/handlers/ajax_load_posts.php",
			type: "POST",
			data: "page=1&userLoggedIn=" + userLoggedIn,
			cache:false,

			success: function(data) {
				$('#loading').hide();
				$('.posts_area').html(data);
			}
		});

		$(window).scroll(function() {
			var height = $('.posts_area').height(); //Div containing posts
			var scroll_top = $(this).scrollTop();
			var page = $('.posts_area').find('.nextPage').val();
			var noMorePosts = $('.posts_area').find('.noMorePosts').val();

			if ((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts == 'false') {
				$('#loading').show();

				var ajaxReq = $.ajax({
					url: "includes/handlers/ajax_load_posts.php",
					type: "POST",
					data: "page=" + page + "&userLoggedIn=" + userLoggedIn,
					cache:false,

					success: function(response) {
						$('.posts_area').find('.nextPage').remove(); //Removes current .nextpage 
						$('.posts_area').find('.noMorePosts').remove(); //Removes current .nextpage 

						$('#loading').hide();
						$('.posts_area').append(response);
					}
				});

			} //End if 

			return false;

		}); //End (window).scroll(function())


	});

	</script>




	</div>

	<?php
		if(isset($_POST['edit']))
			{$_SESSION['id'] = $user['id'];
 			 header("Location: edit.php");}
		?>
	<?php
		if(isset($_POST['friends']))
			{$_SESSION['id'] = $user['id'];
 			 header("Location: friends.php");}
		?>
	<?php
		if(isset($_POST['submit']))
			{
				$source = $_FILES['image']['tmp_name'];
				$destination = "profilePicture/".$_FILES['image']['name'];
		move_uploaded_file($source,$destination);
		$ii = $user['id'];
		$photo = $destination;
		$q = mysqli_query($con,"UPDATE users SET profile_pic = '$photo' WHERE id = '$ii'");
  	}
		?>
	
</body>
</html>