<?php
	session_start();
	$class = $_SESSION['class'];
	$new1 = strtolower(str_replace(" ", "",$class."_1st_term"));
	$new2 = strtolower(str_replace(" ", "",$class."_2nd_term"));
	$new3 = strtolower(str_replace(" ", "",$class."_3rd_term"));
		
		include '../../teach_conn.php';
		
		$name = implode(" ",str_replace("'","",$_POST['name']));
		//$name = str_replace(".", "", $name);
		$name = ucwords($name);
		$dob = implode(",",$_POST['dob']);
		$gender = $_POST['gender'];
		$phone = trim(str_replace("'", "",$_POST['phone']));
		 
		 $query = "SELECT name, gender, DOB FROM `$new1` ";
		 $submit1 = mysqli_query($Son, $query);
		 $submit2 = mysqli_query($Son, $query);
		 
		 $ans = mysqli_fetch_assoc($submit1);
		
		
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Registration Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<style type="text/css"> 
		body{
			background: #f0f0f0;
			font-family: Times New Roman;
		}
		i{
			color: #4a8af4;
		}
		h2{
			color: #f03939;
			text-align: center;
			margin-top: 80px;
		}
		.prev{
			padding: 3px;
			text-decoration: none;
			background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold;
			margin-left: 600px;
		}
		.prev:hover{
			background: #6ac239;
			color: #ffffff;
			
		}
	
	
	</style>
</head>
<body>
		<?php
		
				 if($ans == NULL){
					 
							$myquery1 = "INSERT INTO `$new1` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
							$submit_myquery1 = mysqli_query($Son, $myquery1);
							
							$myquery2 = "INSERT INTO `$new2` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
							$submit_myquery2 = mysqli_query($Son, $myquery2);
							
							$myquery3 = "INSERT INTO `$new3` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
							$submit_myquery3 = mysqli_query($Son, $myquery3);
							
							
							header('Location: register.php');
					
						
					}else{
					
									while($answer = mysqli_fetch_assoc($submit2)){
							
											if($answer['name'] == $name){
											echo "<h2><i>$name</i> has already been registered!</h2>";		
										echo "<br />";
										header("Refresh:3, url=register.php");
										echo die();
											
											}
					
									}
									$myquery1 = "INSERT INTO `$new1` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
									$submit_myquery1 = mysqli_query($Son, $myquery1);
									
									$myquery2 = "INSERT INTO `$new2` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
									$submit_myquery2 = mysqli_query($Son, $myquery2);
									
									$myquery3 = "INSERT INTO `$new3` (name, gender, DOB, phone) VALUES('$name', '$gender', '$dob', '$phone')";
									$submit_myquery3 = mysqli_query($Son, $myquery3);
									
										header('Location: register.php');
											
									
					}
		
		?>
	
</body>
</html>