<?php
	session_start();
	$class = $_SESSION['class'];
	$new1 = strtolower(str_replace(" ", "",$class."_1st_term"));
	$new2 = strtolower(str_replace(" ", "",$class."_2nd_term"));
	$new3 = strtolower(str_replace(" ", "",$class."_3rd_term"));
		
		include '../../teach_conn.php';
		
		$name = implode(" ",$_POST['name']);
		$name = ucwords($name);
		$name = str_replace("'", "", $name);
		//$name = str_replace(".", "", $name);
		
		$dob = implode(",",$_POST['dob']);
		$gender = $_POST['gender'];
		$phone = trim(str_replace("'", "",$_POST['phone']));
		$id = $_POST['id'];
		 
		 $query = "SELECT name, gender, DOB, phone FROM `$new1` ";
		 $submit1 = mysqli_query($Son, $query);
		 
		 $ans = mysqli_fetch_assoc($submit1);
		 $submit2 = mysqli_query($Son, $query);
		
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
		
				 
									while($answer = mysqli_fetch_assoc($submit2)){
											
							
											if(($answer['name'] == $name) &&($answer['DOB'] == $dob) && ($answer['gender'] == $gender) && $answer['phone'] == $phone){
											echo "<h2><i>$name</i> has already been registered!</h2>";		
										echo "<br />";
										echo "<a href='register.php' class = 'prev'>Previous Page</a>";
										echo die();
											
											}
					
									}
									
										$myquery1 = "UPDATE `$new1` SET name = '$name', gender = '$gender', DOB = '$dob', phone = '$phone'  WHERE ID = '$id'";
										$submit_myquery1 = mysqli_query($Son, $myquery1);
										
										$myquery2 = "UPDATE `$new2` SET name = '$name', gender = '$gender', DOB = '$dob', phone = '$phone'  WHERE ID = '$id'";
										$submit_myquery2 = mysqli_query($Son, $myquery2);
										
										$myquery3 = "UPDATE `$new3` SET name = '$name', gender = '$gender', DOB = '$dob', phone = '$phone'  WHERE ID = '$id'";
										$submit_myquery3 = mysqli_query($Son, $myquery3);
										
										header('Location: register.php');
											
									
					
		
		?>
	
</body>
</html>