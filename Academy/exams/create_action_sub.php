<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Create Subject Teachers:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			body{
				background: #f0f0f0;
			}
			
			h2{
				color: #ef3939;
				text-align: center;
				font-family: Gabriola;
				margin-top: 80px;
			}
	</style>
</head>
<body>
			<?php
		if(!isset($_POST['my_class'])){
		 echo "<h2>Please select at least one class!</h2>";
		 header('Refresh: 3, url=users_sub.php ');
		 die();
	 }

	include '../all_conn.php';
	$name = ucwords($_POST['name']);
	 $Classes = $_POST['my_class'];
	 $subject = $_POST['my_sub'];
	  
	 if(isset($_POST['single'])){
		$username = strtolower(str_replace(" ", "",$subject)); 

	 }else{
		$username = strtolower(str_replace(" ", "",$name)); 
		$Classes = explode(",", $Classes);
			
	 }
	 
	 $status = $_POST['status'];
	
	 $password = "";
	 $counter = 1;
	 foreach($Classes as $ject){
		 if($counter == 1){
			 $password.= strtolower($ject);
		 }else{
			 $str = strlen($ject) - 1;
			 $password.= $ject[$str];
		 }
		 
		 $counter++;
	 }
	 
	 
	 if(isset($_POST['single'])){
		 $password1 = $username.$password;
		$password2 = $username.$password;
	 }else{
			$ok = implode(",", $Classes);
			$ok = strtolower($ok);
			$password1 = $username.$ok;
			$password2 = $password1;
	 }
	 
	 
	 
	 
//checking if same username and password exists 

	 $find = "SELECT username, password1 from users_sub";
	 $find_query = mysqli_query($Father, $find);

	 while($finding = mysqli_fetch_assoc($find_query)){
		 
		 if(($finding['username'] == $username) && ($finding['password1'] == $password1)){
			 
			 echo "<h2>Sorry, this user already exists!</h2>";
			 echo "<h2>You may keep the (same) username, but change (edit) the password!</h2>";
			header("Refresh: 5, url = users_sub.php");
			die();
		 }
	 }
	
	 
			
							//checking if same subject and class already assigned 
							 $find = "SELECT subject, classes from users_sub";
							 $find_query = mysqli_query($Father, $find);

							 while($finding = mysqli_fetch_assoc($find_query)){
								 //checking if same subject exists 
								 if($_POST['my_sub'] == $finding['subject']){
									 //checking if same subject is already assigned to same class
									 foreach($Classes as $cla){
										 $crank = explode(",", $finding['classes']);
										 foreach($crank as $crack){
													if(strcmp($crack, $cla) == 0 ){
												
												 echo "<h2>Sorry, this subject and class have already been assigned!</h2>";
												 echo "<h2>You may assign the same subject to different teachers, but NOT THE SAME CLASS!</h2>";
												header("Refresh: 5, url = users_sub.php");
												die();
										 }
										 }
										 
									 }
								 }
								 
								
							 }
				//Ensuring no assigned class for all subject is still assigned again to another subject 
							if(isset($_POST['single'])){
								$all = "SELECT `classes` FROM `users_sub` WHERE subject = 'All'";
								$all_query1 = mysqli_query($Father, $all);
								$all_query2 = mysqli_query($Father, $all);
								if(mysqli_fetch_assoc($all_query1) != NULL){
									while($checker = mysqli_fetch_assoc($all_query2)){
										$checking = $checker['classes'];
										foreach($Classes as $test){
											if($test == $checking){
													 echo "<h2>Sorry, this class or one of these classes have already been assigned 
															to one of the users with the <i style = 'color: blue;'>'All'</i> subject status!</h2>";
													 
													header("Refresh: 5, url = users_sub.php");
													die();
											}
										}
									}
								}
							}elseif(isset($_POST['suball'])){
									
									$all = "SELECT `classes` FROM `users_sub` WHERE NOT subject = 'All'";
									$all_query1 = mysqli_query($Father, $all);
									$all_query2 = mysqli_query($Father, $all);
									if(mysqli_fetch_assoc($all_query1) != NULL){
										while($checker = mysqli_fetch_assoc($all_query2)){
											$checking = $checker['classes'];
											$imp = explode(",", $checking);
											foreach($imp as $test){
												if($test == $Classes[0]){
														 echo "<h2>Sorry, this class have already been assigned 
																to one of the single-subject users!</h2>";
														 
														header("Refresh: 5, url = users_sub.php");
														die();
												}
											}
										}
									}
							}
							
						$password1 = strtolower(str_replace(" ", "", $password1));
						$password2 = strtolower(str_replace(" ", "", $password2));
						
						$checked_class = implode(",", $Classes);
						$checked_sub =  $_POST['my_sub'];
						
						$query = "INSERT INTO users_sub(name, username, status, password1, password2, classes, subject) VALUES ('$name', '$username', '$status', '$password1', '$password2', '$checked_class', '$checked_sub')";
						mysqli_query($Father, $query);
						echo "<h2>User Created Successfully!</h2>";
						header("Refresh: 3, url = users_sub.php");
						
					
					
	 
	 
	
?>
</body>
</html>




