<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Domain Action:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			body{
				background: #f0f0f0;
			}
			
			h2{
				color: #ef3939;
				text-align: center;
				font-family: Gabriola;
				margin-top: 80px;
			}
	</style>
</head>
<body>

<?php
	include '../all_conn.php';
	
	 $id = $_POST['id'];
	 $domain = ucwords($_POST['domain']);
	 $domain = str_replace("'", "", $domain);
				 
				$query_test = "SELECT domain FROM domains WHERE domain ='$domain'";
				$submit_test = mysqli_query($Father,$query_test);
				$result = mysqli_fetch_assoc($submit_test);
				
				 if($result['domain'] == $domain ){
					 echo "<body style = 'background: #f0f0f0;'> </body>";
					 echo "<h2 style = 'color: #ef3939;text-align: center; margin-top: 100px;'>Sorry, This Domain Item Exists Already!</h2>";
					 header("Refresh:3, url = domains.php");
				 }elseif($result == NULL){
					  $query = "UPDATE domains SET domain = '$domain' WHERE ID = '$id'";
					  $submit = mysqli_query($Father, $query);
						echo "<h2>Update, successful!</h2>";
						header("Refresh:3, url = domains.php");
				 }
	 
	 
	 
	 
	 
	

?>