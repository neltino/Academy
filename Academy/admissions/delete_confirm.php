<!DOCTYPE HTML>
	<html lang="en-US">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>.:Delete Result:.</title>
		<link rel="icon" href="../img/soft.png" />
			<style type="text/css"> 
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
					body{
						background: #f0f0f0;
						font-family: teen;
					}
					h2{
						margin-top: 20%;
						color: #f03939;
						text-align: center;
					}
			</style>
	</head>
	<body>
		
	</body>
	</html>

<?php
		include '../all_conn.php';

		 $id = $_POST['id'];
		 
		//deleting from student list
			$delete = "DELETE FROM  `students` WHERE AdmissionNumber = '$id'";
			$delete_query = mysqli_query($Father, $delete);
		//deleting from Account1
			$delete_acct1 = "DELETE FROM  `account1` WHERE AdmissionNumber = '$id'";
			$delete_acct1_query = mysqli_query($Father, $delete_acct1);
			
		//deleting from Account2
			$delete_acct2 = "DELETE FROM  `account2` WHERE AdmissionNumber = '$id'";
			$delete_acct2_query = mysqli_query($Father, $delete_acct2);
			
		//deleting from Account2
			$delete_acct3 = "DELETE FROM  `account3` WHERE AdmissionNumber = '$id'";
			$delete_acct3_query = mysqli_query($Father, $delete_acct3);
		
		//Redirecting
		
		echo "<h2>Student Delete SUCCESSFUL!</h2>";
		header('Refresh: 3; url = delete.php');

?>