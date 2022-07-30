<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Exam Info Edit Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
	
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			body{
				background: #f0f0f0;
			}
			h2{
				text-align: center;
				color: red;
				font-family: teen;
				font-size: 1.5vw;
			}
	</style>
</head>
<body>


<?php
	include '../all_conn.php';
						
						if(isset($_POST['reportsheet'])){
							$item = 'reportsheet';
							$value = $_POST['reportsheet'];
						}elseif(isset($_POST['ca_exams'])){
							$item = 'caexams';
							$value = $_POST['ca_exams'];
						}elseif(isset($_POST['psycho'])){
							$item = 'psycho';
							$value = $_POST['psycho'];
						}elseif(isset($_POST['ca'])){
							$item = 'numca';
							$value = $_POST['ca'];
						}elseif(isset($_POST['phone'])){
							$item = 'phone';
							$value = $_POST['phone'];
						}
						
						$query = "UPDATE info_exams SET $item = '$value'";
						$submit = mysqli_query($Father, $query);
						
						echo "<h2>Update Successful!</h2>";
						header('Refresh:3, url = "info_exams.php" ');
				
		

?>