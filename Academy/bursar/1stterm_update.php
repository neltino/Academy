<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:1st Term Payment Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			body{
				background: #f0f0f0;
			}
			h2{
				color:#ef3939;
				text-align: center;
			}
		input[type=submit]{
				border: none;
				width: 150px;
				height: 30px;
				margin-left: 450px;
				font-weight: bold;
				color: #ffffff;
				background: #7bca3d;
				font-family: Times New Roman, Ariel;
				border-radius: 3px;
			}
		input[type=submit]:hover{
				background: #4a8af4;
			}
		button{
			float: left;
				border: none;
				width: 150px;
				height: 30px;
				margin-left: 700px;
				margin-top: -30px;
				font-weight: bold;
				color: #ffffff;
				background: #7bca3d;
				font-family: Times New Roman, Ariel;
				border-radius: 3px;
		}
		button:hover{
			background: #4a8af4;
		}
	
	</style>
</head>
<body>
	
</body>
</html>

<?php

	include '../all_conn.php';
	
				 $find = $_POST['AdmissionNumber'];
				 $date = $_POST['TransactionDate'];
				$list = $_POST['list'];
				$amount = $_POST['amount'];
				$las = $_POST['las'];
				
				
				$i = 0;
				foreach($list as $list){
					if($amount[$i] > 0){
						$amy = $amount[$i];
						$update = "UPDATE `account1` SET `$list` = '$amy', TransactionDate = '$date' WHERE AdmissionNumber = '$find' "; //change
						$update_query = mysqli_query($Father, $update);
					
					}
					$i++;
				}
				echo "<h2>Payment Update SUCESSFUL! </h2>";
				echo "<br /><br />";
				
				echo "<form action='class_list1.php' method = 'POST' enctype = 'multipart/form-data'>";
							echo "<input type='text' name = 'prev' value = '$las' hidden />";
							echo "<input type='submit' value = 'Previous Class' />";
							
				echo "</form>";
					echo "<button class = 'no' onclick = 'window.location.href=`term1.php` '>Main Page</button>"; //change 
					
				
					
					
					
					
					

?>