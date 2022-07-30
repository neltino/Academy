<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Class Edit Action:.</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				font-family: Gabriola;
				margin-top: 50px;
			}
	</style>
</head>
<body>



<?php
	include '../all_conn.php';
	
	 $id = $_POST['id'];
	 $classes = strtoupper($_POST['classes']);
				 
				$query_test = "SELECT classes FROM classes WHERE classes ='$classes'";
				$submit_test = mysqli_query($Father,$query_test);
				$result = mysqli_fetch_assoc($submit_test);
				
				 if($result['classes'] == $classes ){
					 echo "<h2 style = 'color: #ef3939;text-align: center; margin-top: 100px;'>Sorry, This Class Exists Already!</h2>";
					 header('Refresh:3, url="classes.php" ');
				 }elseif($result == NULL){
					  $query = "UPDATE classes SET classes = '$classes' WHERE ID = '$id'";
					  $submit = mysqli_query($Father, $query);
					  echo "<h2 style = 'color: #ef3939;text-align: center; margin-top: 100px;'>Update Successful!</h2>";
						header('Refresh:3, url="classes.php" ');
				 }
	 
	 
	 
	 
	 
	

?>