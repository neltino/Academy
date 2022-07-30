<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
		body{
			background: #f0f0f0;
		}
		h2{
			color: #ef3939;
			text-align: center;
		}
		button{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-left: 500px; margin-top: 20px;
				font-family: Times New Roman;
			}
			button:hover{
				background: #6ac239;
				color: #ffffff;
			}
		a{
			text-decoration: none;
			color: #ef3939;
		}
		a:hover{
			color: #ffffff;
		}
	</style>
</head>
<body>
	
</body>
</html>
<?php
		include '../all_conn.php';
	 $classes = $_POST['classes'];
	 $houses = $_POST['houses'];
	 $reg = $_POST['reg'];
	//checking if the admission_info table is empty
		$check = "SELECT `classes` FROM `admin_info`";
		$check_query = mysqli_query($Father, $check);
		if($checking = mysqli_fetch_assoc( $check_query) == NULL){
			$send = "INSERT INTO `admin_info` (classes, houses, reg) VALUES ('$classes', '$houses', '$reg' )";
			$send_query = mysqli_query($Father, $send);
			
			header('Location: basic_info.php');
		}else{
			echo "<h2><i>Sorry, registration information has already been supplied. You can only edit!<i></h2>";
			echo "<br /><br />";
			echo "<button><a href='basic_info.php'>Previous Page</a></button>";
		}
		
?>