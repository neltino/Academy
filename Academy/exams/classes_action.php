<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Class Action:.</title>
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
	
</body>
</html>
<?php
		include '../all_conn.php';
		
				$classes = strtoupper($_POST['class']);
				
		
				$query_test = "SELECT classes FROM classes WHERE classes ='$classes'";
				$submit_test = mysqli_query($Father,$query_test);
				$result = mysqli_fetch_assoc($submit_test);
				
				 if($result['classes'] == $classes ){
					 echo "<body style = 'background: #f0f0f0;'> </body>";
					 echo "<h2 style = 'color: #ef3939;text-align: center; margin-top: 100px;'>Sorry, This Class Exists Already!</h2>";
					 echo "<br /><br />";
					 echo "<a href='classes.php'> <button>Previous Page</button></a>";
				 }elseif($result == NULL){
					 $query = "INSERT INTO classes (classes) VALUES('$classes')";
					 $submit = mysqli_query($Father, $query);
		
					header('Location: classes.php');
					 
				 }
		

		
?>