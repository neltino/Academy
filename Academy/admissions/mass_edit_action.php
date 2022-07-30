<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Mass Class Edit Result:.</title>
	<link rel="icon" href="../img/soft.png" /> 
	<style type="text/css"> 
		@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
		body{
			background: #f0f0f0;
		}
		h3{
			color:#e93838;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
		}
		@media only screen and (max-width: 768px){
			h3{font-size: 5vw; margin-top: 50%;}
			
			}
	
	</style>
</head>
<body>
	<?php
		if(!isset($_POST['admin'])){
			echo "<h3>Please Select at least one student!</h3>";
			header('Refresh:5; url = mass_edit.php');
			die();
		}
		include '../all_conn.php';
	$class = $_POST['new'];
	foreach($_POST['admin'] as $admin){
		//editing student
		$edit = "UPDATE `students` SET class = '$class' WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		//editing account1
		
		$edit = "UPDATE `account1` SET class = '$class' WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		
		//editing account2
		
		$edit = "UPDATE `account2` SET class = '$class' WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		
		//editing account3
		
		$edit = "UPDATE `account3` SET class = '$class' WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
	}
			echo "<h3>Class Update Successful!</h3>";
			header('Refresh:3; url = mass_edit.php');
?>
</body>
</html>