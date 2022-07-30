<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Exams Info Action:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			button{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-left: 580px; margin-top: 20px;
				font-family: Times New Roman;
			}
		button:hover{
				background: #6ac239;
				color: #ffffff;
			}
	</style>
</head>
<body>

<?php


		include '../all_conn.php';
		
		
	 $report = $_POST['report'];
	 $caexams = $_POST['ca_exams'];
	 $psycho = $_POST['psycho'];
	 $ca = $_POST['ca'];
	 $phone = $_POST['phone'];
		 
				$query_test = "SELECT reportsheet FROM info_exams";
				$submit_test = mysqli_query($Father,$query_test);
				$result = mysqli_fetch_assoc($submit_test);
				
				 if($result != NULL ){
					 echo "<body style = 'background: #f0f0f0;'> </body>";
					 echo "<h2 style = 'color: #ef3939;text-align: center; margin-top: 100px;'>Sorry, Exam Info are set already, you can only edit!</h2>";
					 header("Refresh: 3, url=info_exams.php");
				 }elseif($result == NULL){
					 $query = "INSERT INTO info_exams (reportsheet, caexams, psycho, numca, phone ) VALUES('$report', '$caexams', '$psycho', '$ca', '$phone')";
					$submit = mysqli_query($Father, $query);
		
						header('Location: info_exams.php');
					 
				 }
?>