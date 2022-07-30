<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Subject Edit Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			
			body{
				background: #f0f0f0;
			}
		@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
		h2{
			color: red;
			font-family: Gabriola;
			text-align: center;
			margin-top: 100px;
		}
	
	
	</style>
</head>
<body>
	
</body>
</html>
<?php
	include '../all_conn.php';
	 $id = $_POST['id'];
	 
	 
	 
	 $subject = strtoupper($_POST['subject']);
	 $subject = str_replace("'", "", $subject);
	 $abbreviation = strtoupper($_POST['abbreviation']);
	 $abbreviation = str_replace("'", "", $abbreviation);
	 
	  $oldsub = strtoupper($_POST['oldsub']);
	  $oldabb = strtoupper($_POST['oldabb']);
	  
	 
				 
				$query_test = "SELECT subject FROM subjects WHERE subject != '$oldsub'";
				$submit_test = mysqli_query($Father,$query_test);
				while($result = mysqli_fetch_assoc($submit_test)){
					
					if($result['subject'] == $subject){
						echo "<h2>Sorry, This Subject Exists Already!</h2>";
						header("Refresh:3, url = 'subjects.php'");
						die();
					}
					
					
				}
				
				$query_test = "SELECT abbreviation FROM subjects WHERE abbreviation != '$oldabb'";
				$submit_test = mysqli_query($Father,$query_test);
				
				while($result = mysqli_fetch_assoc($submit_test)){
					
				
					if($result['abbreviation'] == $abbreviation){
						echo "<h2>Sorry, This Abbreviation Exists Already!</h2>";
						header("Refresh:3, url = 'subjects.php'");
						die();
					}
					
					
				}
				
				
						$query = "UPDATE subjects SET subject = '$subject', abbreviation = '$abbreviation' WHERE ID = '$id'";
						$submit = mysqli_query($Father, $query);
						echo "<h2>Update Successful!</h2>";
						header('Refresh:3, url="subjects.php"');
				 
		
	 
	 
	 

	 

?>