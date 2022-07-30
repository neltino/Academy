<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject Action:.</title>
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
				 color: #ef3939;
				 text-align: center; 
				 margin-top: 20%;
				 font-family: teen;
				 font-size: 2vw;
			}
			@media only screen and (max-width: 768px){
					h2{font-size: 4vw;}
			}
		
	</style>
</head>
<body>

<?php


		include '../all_conn.php';
		
		
		
		
		
		$subject = strtoupper($_POST['subject']);
		$subject = str_replace("'", "", $subject);
		
		$abbreviation = strtoupper($_POST['abbreviation']);
		$abbreviation = str_replace("'", "", $abbreviation);
			 
				$query_test = "SELECT subject, abbreviation FROM subjects WHERE subject = '$subject' OR abbreviation = '$abbreviation' ";
				$submit_test = mysqli_query($Father,$query_test);
				$result = mysqli_fetch_assoc($submit_test);
				
				 if(($result['subject'] == $subject) || ($result['abbreviation'] == $abbreviation)){
					 
					 echo "<h2>Sorry, This Subject Or Abbreviation Exists Already!</h2>";
					 header("Refresh:3, url=subjects.php");
				 }elseif($result == NULL){
					 $query = "INSERT INTO subjects (subject, abbreviation) VALUES('$subject', '$abbreviation')";
					$submit = mysqli_query($Father, $query);
		
						header('Location: subjects.php');
					 
				 }
		
?>