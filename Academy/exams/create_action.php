<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Create User Action:.</title>
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
	
	 
	 $status = $_POST['status'];
	 $name = ucwords($_POST['name']);
	 $username = str_replace(" ", "",strtolower($_POST['name']));
	 $password1 = $username."12345";
	 $password2 = $username."12345";
	 
	 //if no class is selected
	 if(!isset($_POST['my_class'])){
		 echo "<h2>Please select at least one class!</h2>";
		 header('Refresh: 3, url=users_form.php ');
		 die();
	 }
	 
	 $myClass = $_POST['my_class'];
	
	 
	//checking if class has been assigned 
	  $find = "SELECT `classes` FROM `users_form` ";
	 $find_query = mysqli_query($Father, $find);
	 
						while($finding = mysqli_fetch_assoc($find_query)){
						$lasses = strtoupper(str_replace(" ", "",$finding['classes']));
		 
								 foreach($myClass as $lass){
										$lass = strtoupper(str_replace(" ","",$lass));
									if(strcmp($lasses, $lass) == 0){
										echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 150px;'>Sorry, this selected class or one of the selected classes has already been assigned!</h2>";
										header("Refresh: 5, url='users_form.php'");
										die();
									}
							 }
		
						}
						
	//checking if same name and password already exists
	
	$find = "SELECT username, password1 FROM users_form";
	 $find_query = mysqli_query($Father, $find);
	 while($finding = mysqli_fetch_assoc($find_query)){
		 if(($finding['username'] == $username) && ($finding['password1'] == $password1)){
			 echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 150px;'>Sorry, this user already exists!</h2>";
			 echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 50px;'>Edit this user and add the desired class to this user!</h2>";
			header("Refresh: 5, url='users_form.php'");
			die();
		 }
	 }
	
	 
	 if(isset($_POST['empty'])){
		 echo "<body style = 'background: #f0f0f0;'></body>";
					echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 150px;'>Please, Create Class(es)!</h2>";
					header("Refresh: 3, url='classes.php'");
				}else{
					if(!isset($_POST['my_class'])){
						echo "<body style = 'background: #f0f0f0;'></body>";
					echo "<h2 style = 'color: #ef3939; text-align: center; margin-top: 150px;'>Please, select Class(es)!</h2>";
						header('Refresh:3, url = "users_form.php" ');
					}else{
						$checked = implode(",", $_POST['my_class']);
						
						$query = "INSERT INTO users_form(name, username, status, password1, password2, classes) VALUES ('$name', '$username', '$status', '$password1', '$password2', '$checked')";
						mysqli_query($Father, $query);
						echo "<h2>User Created Successfully!</h2>";
						header('Refresh:3, url = "users_form.php" ');
						
					}
					
					
					
						
	
						
				}
	 
	 
	
?>