<?php
	 $class = $_POST['class'];
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Registration:.</title>
	<link rel="icon" href="../../img/soft.png" />
</head>
<body>
	<?php
		include '../../teach_conn.php';
		$newclass = $class."1st_term";
		
		$query = "SHOW tables ";
		$submit = mysqli_query($Son,$query);
		$answer = mysqli_fetch_assoc($submit);
		foreach($answer as $result){
			if($newclass == $result){
				echo "You can now register";
				
			}else{
				include 'create_sub.php';
			}
		}
		
		
	
	
	?>
</body>
</html>