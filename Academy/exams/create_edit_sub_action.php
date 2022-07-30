<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject Teacher Edit Action:.</title>
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
				font-size: 2vw;
			}
			@media only screen and (max-width: 768px){
				h2{font-size: 4vw; margin-top: 20%;}
			}
	</style>
</head>
<body>


<?php

	include '../all_conn.php';
	//checking who
	if(isset($_POST['all'])){
		$checked_class = $_POST['my_class'];
		$checked_class1 = explode(",", $_POST['my_class']);
	}elseif(isset($_POST['one'])){
		//checking if at least one class has been selected
		if(!isset($_POST['my_class'])){
							echo "<h2 >Please select at least one class!</h2>";
								header("Refresh: 3, url = 'users_sub.php'");
								die();
			}
			
			 $checked_class = implode(",", $_POST['my_class']);
			 $checked_class1 = $_POST['my_class'];
	}
	
	
			
	   $id = $_POST['id'];
	   $username = $_POST['username'];
	   $status = $_POST['status'];
	   $password = $_POST['password'];
	   $name = $_POST['name'];
	   $checked_sub = $_POST['my_sub'];
	  //checking if user already exists with the same details
	  $find = "SELECT username, password1, classes, subject FROM users_sub WHERE ID !='$id'";
	 $find_query = mysqli_query($Father, $find);
	 
	 while($finding = mysqli_fetch_assoc($find_query)){
		 
		 if(($finding['username'] == $username) && ($finding['password1'] == $password) && ($finding['classes'] == $checked_class) && ($finding['subject'] == $checked_sub)){
			
			 echo "<h2>Sorry, this user already exists!</h2>";
			 echo "<h2>You may keep the (same) username, but change(edit) the password!</h2>";
			header("Refresh: 5, url = 'users_sub.php'");
			 die();
		 }
	 }
 
 
			
		 
		 	$pass = "SELECT password1, password2 FROM users_sub WHERE ID = '$id'";
		$submit_pass = mysqli_query($Father, $pass);
		$answer = mysqli_fetch_assoc($submit_pass);
	 
	 
	if(!isset($_POST['my_class']) || ($_POST['my_sub'] == 'nothing') ){
					
						
							if(!isset($_POST['my_class']) && ($_POST['my_sub'] == 'nothing')){
								echo "<h2 >Please select at least one class and subject!</h2>";
								header("Refresh: 3, url = 'users_sub.php'");
								die();
								
							}elseif(!isset($_POST['my_class'])){
								echo "<h2 >Please select at least one class!</h2>";
								header("Refresh: 3, url = 'users_sub.php'");
								die();
							}elseif($_POST['my_sub'] == 'nothing'){
								echo "<h2 >Please select a subject!</h2>";
								header("Refresh: 3, url = 'users_sub.php'");
								die();
							}
						
					}else{
						//checking if class or subject have changed
						 $lasses = $_POST['lasses'];
						 $subjee = $_POST['subjee'];
						 
						 if(strcmp($subjee,$checked_sub) != 0 || strcmp($lasses, $checked_class ) != 0 ){
							 
							 $change = "SELECT subject, classes FROM users_sub WHERE ID != '$id' ";
							 $change_query = mysqli_query($Father, $change);
							 while($chanjee = mysqli_fetch_assoc($change_query)){
								 foreach($checked_class1 as $chng){
									 if(strchr($chanjee['classes'], $chng)== True && strchr($chanjee['subject'], $checked_sub) == True){
										  echo "<h2>Sorry, there is a user already assigned to this subject and class or classes!</h2>";
										 header("Refresh: 5, url = 'users_sub.php'");
										 die();
									 }
								 }
							 }
						 }
						
						
						
						
						
						
						
						
						
						
						
						
						//Ensuring no assigned class for all subject is still assigned again to another subject 
							if(isset($_POST['one'])){
								$all = "SELECT `classes` FROM `users_sub` WHERE subject = 'All' AND  name != '$name' ";
								$all_query1 = mysqli_query($Father, $all);
								$all_query2 = mysqli_query($Father, $all);
								if(mysqli_fetch_assoc($all_query1) != NULL){
									while($checker = mysqli_fetch_assoc($all_query2)){
										$checking = $checker['classes'];
										foreach($checked_class1 as $test){
											if($test == $checking){
													 echo "<h2>Sorry, this class or one of these classes have already been assigned 
															to one of the users with the <i style = 'color: blue;'>'All'</i> subject status!</h2>";
													 
													header("Refresh: 5, url = users_sub.php");
													die();
											}
										}
									}
								}
							}elseif(isset($_POST['all'])){
									
									$all = "SELECT `classes` FROM `users_sub` WHERE NOT subject = 'All' AND name != '$name'";
									$all_query1 = mysqli_query($Father, $all);
									$all_query2 = mysqli_query($Father, $all);
									if(mysqli_fetch_assoc($all_query1) != NULL){
										while($checker = mysqli_fetch_assoc($all_query2)){
											$checking = $checker['classes'];
											$imp = explode(",", $checking);
											foreach($imp as $test){
												if($test == $checked_class){
														 echo "<h2>Sorry, this class have already been assigned 
																to one of the single-subject users!</h2>";
														 
														header("Refresh: 5, url = users_sub.php");
														die();
												}
											}
										}
									}
							}
						
						
						
						
						
						
						
						
						
						
						
						
						
						
						if($answer['password1'] == $answer['password2']){
							$query1 = "UPDATE users_sub SET name = '$name', username = '$username', status = '$status', password1 = '$password', password2 = '$password', classes = '$checked_class', subject = '$checked_sub' WHERE ID = '$id' ";
							mysqli_query($Father, $query1);
						}else{
							$query2 = "UPDATE users_sub SET name = '$name', username = '$username', status = '$status', password1 = '$password', classes = '$checked_class', subject = '$checked_sub' WHERE ID = '$id' ";
							mysqli_query($Father, $query2);
						}
						
						echo "<h2>Update Successful!</h2>";
						header("Refresh: 3, url = 'users_sub.php'");
						
					}
	
	 	
?>