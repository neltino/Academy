<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Mass Delete Result:.</title>
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
		include '../all_conn.php';
	if(isset($_POST['admin'])){
		
			foreach($_POST['admin'] as $admin){
		//deleting student
		$edit = "DELETE FROM `students` WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		//deleting account1
		
		$edit = "DELETE FROM `account1` WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		
		//deleting account2
		
		$edit = "DELETE FROM `account2` WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
		
		//deleting account3
		
		$edit = "DELETE FROM `account3` WHERE AdmissionNumber = '$admin' ";
		$edit_query = mysqli_query($Father, $edit);
	}
	
			echo "<h3>Student(s) Delete Successful!</h3>";
			header('Refresh:3; url = mass_delete.php');
	}else{
		echo "<h3>No Student Selected. Please select at least one student!</h3>";
			header('Refresh:3; url = mass_delete.php');
	}
	
?>
</body>
</html>