<?php
		session_start();
		 $class = $_SESSION['class'];
		 $lass = str_replace(" ", "",$class);
		$new = trim(strtolower($lass)."_subjects");
		$id = $_POST['id'];
		
		$subjects = isset($_POST['my_sub']);
		include '../../teach_conn.php';
		include '../../all_conn.php';
		
		
		
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject Edit Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<style type="text/css"> 
	@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
		body{
			background: #f0f0f0;
		}
		h3{
			text-align: center;
			color: red;
			margin-top: 10%;
			font-family: Gabriola;
			font-size: 2vw;
		}
		
	
	</style>
</head>
<body>
	
</body>
</html>
<?php

		if($subjects == NULL){
			echo "<h3>Please Select at least one Subject!</h3>";
			header("Refresh:3, url=subject_edit.php");
			
		}else{
			$lode = implode(",",$_POST['my_sub']);
			$imp = "";
			foreach($_POST['my_sub'] as $full){
				$query = "SELECT subject FROM subjects WHERE abbreviation = '$full'";
				$submit = mysqli_query($Father, $query);
				$fullness = mysqli_fetch_assoc($submit);
				$imp.= $fullness['subject'].",";
			}
			$imp = trim($imp,",");
			
			
			$query = "UPDATE `$new` SET class = '$class', subjects = '$lode', subfull = '$imp' ";
			$submit = mysqli_query($Son, $query);
			
			echo "<h3>Update Successful!</h3>";
			header("Refresh:3, url=select_sub.php");
		}

		


?>