<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Comment Result:.</title>
	<link rel="icon" href="../img/soft.png" /> 
	<style type="text/css"> 
			body{
				background: #f0f0f0;
				font-family: Times New Roman;
			}
			button{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-left: 570px; margin-top: 20px;
				font-family: Times New Roman;
			}
			button:hover{
				background: #6ac239;
				color: #ffffff;
			}
			@media only screen and (max-width: 768px){
			 button{width: auto; font-size: 3vw; margin-left: 40%;}
			 h3{font-size: 4vw;}
			
			}
	</style>
</head>
<body>
	
</body>
</html>
<?php
	include '../teach_conn.php';
	include '../all_conn.php';
	
		 $id = $_POST['id'];
		 $comment = str_replace("'", "", $_POST['com']);
		 $class = $_POST['myclass'];
		 $id_count = count($id);
		 
		 for($i = 0; $i < $id_count; $i++){
			 $my_id = $id[$i];
			 $my_com = ucfirst($comment[$i]);
			 
			 $update = "UPDATE `$class` SET `prin_com` = '$my_com' WHERE ID = '$my_id'";
			 $update_query = mysqli_query($Son, $update);
		 }
		 echo "<br /><br />";
		 echo "<h3 style = 'color: #ef3939; text-align: center;'>Comment Entry Successful!</h3>";
		 
		 echo "<br />";
		 echo "<a href='com_1.php'><button>Next Class</button></a>";
		
?>