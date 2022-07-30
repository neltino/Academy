<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit User Action:.</title>
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
			}
	</style>
</head>
<body>

<?php

	include '../all_conn.php';
	  $id = $_POST['id'];
	  
	  if(!isset($_POST['my_class'])){
		 echo "<h2>Please select at least one class!</h2>";
		 header('Refresh: 3, url=users_form.php');
		 die();
	 }
	  
	  $username = $_POST['username'];
	  $status = $_POST['status'];
	  $password = $_POST['password'];
	  $name = ucwords($_POST['name']);
	  $checked = implode(",", $_POST['my_class']);
	  $checked1 = $_POST['my_class'];
	  $myClass = $_POST['my_class'];
	  
	  $classing = $_POST['lass'];
	 
	//checking if class has changed
		if(strcmp($checked, $classing) != 0){
			//checking if one or all classes have  already been assigned;
			
								 $find = "SELECT `classes` FROM `users_form` WHERE ID != '$id' ";
								 $find_query = mysqli_query($Father, $find);
						
								 while($finding = mysqli_fetch_assoc($find_query)){
									 $lasses = $finding['classes'];
									 
									 foreach($checked1 as $dross){
										 if(strchr($lasses, $dross) == True ){
											 echo "<h2>Sorry, one or more classes have been assigned already!</h2>";
											 header("Refresh: 5, url = users_form.php");
											 die();
										 }
										
										} 
								 }
									
								 
						 
			
		}
		
		
	  
	  
	 
	  
//checking if same password, username and class exists
	  
	   $find = "SELECT username, password1, classes FROM users_form WHERE ID != '$id' ";
	   $find_query = mysqli_query($Father, $find);
	   
	 
	 while($finding = mysqli_fetch_assoc($find_query)){
		 if(($finding['username'] == $username) && ($finding['password1'] == $password) && ($finding['classes'] == $checked)){
			 
			 echo "<h2>Sorry, this user already exists!</h2>";
			 echo "<h2>Please change at least the password!</h2>";
			header("Refresh: 5, url = 'users_form.php'");
			die();
		 }
	 }
	
	  
		$pass = "SELECT password1, password2 FROM users_form WHERE ID = '$id'";
		$submit_pass = mysqli_query($Father, $pass);
		$answer = mysqli_fetch_assoc($submit_pass);
	 
	 
	if(!isset($_POST['my_class'])){
						echo "<body style = 'background: #f0f0f0;'></body>";
					echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 150px;'>Please, select Class(es) First!</h2>";
					header("Refresh: 5, url = users_form.php");
					}else{
						
						
						if($answer['password1'] == $answer['password2']){
							$query1 = "UPDATE users_form SET name = '$name', username = '$username', status = '$status', password1 = '$password', password2 = '$password', classes = '$checked' WHERE ID = '$id'";
							$submit1 = mysqli_query($Father, $query1);
						}else{
							$query2 = "UPDATE users_form SET name = '$name', username = '$username', status = '$status', password1 = '$password', classes = '$checked' WHERE ID = '$id'";
							$submit2 = mysqli_query($Father, $query2);
						}
						
						echo "<h2>Update Successful!</h2>";
						header('Refresh:3, url = users_form.php');
					}
	
?>