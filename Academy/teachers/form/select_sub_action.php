<?php
	session_start();
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Class Select Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css">
	
		body{
			background: #f0f0f0;
		}
		@font-face{
			font-family: teen;
			src: url(../../myfont/teen.ttf);
		}
		h2, h3{
			margin-top: 20%;
			font-size: 2vw;
			font-family: teen;
			text-align: center;
			color: red;
		}
		
	
	
	</style>
</head>
<body>
	
</body>
</html>

<?php
		include '../../teach_conn.php';
		include '../../all_conn.php';
		
		$lasses = str_replace(" ", "",$_SESSION['class']);
		$class = $_SESSION['class'];
		if(isset($_POST['class'])){
			$myclass = $_POST['class'];
		}
		
		if(!isset($myclass)){
			
			echo "<h3>Please select at least one subject!</h3>";
			header('Refresh: 3, url=select_sub.php');
			
		}else{
			$imploded = implode(",", $_POST['class']);
			$imp = "";
			foreach($_POST['class'] as $full){
				$query = "SELECT subject FROM subjects WHERE abbreviation = '$full'";
				$submit = mysqli_query($Father, $query);
				$fullness = mysqli_fetch_assoc($submit);
				$imp.= $fullness['subject'].",";
			}
			$imp = trim($imp,",");
			
			$newclass = $lasses."_subjects";
			$query = "CREATE TABLE IF NOT EXISTS `$newclass` (
						`ID` int(11) NOT NULL AUTO_INCREMENT,
						`class` text NOT NULL,
						`subjects` text NOT NULL,
						`subfull` text NOT NULL,
						PRIMARY KEY (ID)
						
															)";
			$submit = mysqli_query($Son, $query);
			
			
			
			$register1 = $lasses."_1st_term"; // for first term
			$reg1 = "CREATE TABLE IF NOT EXISTS `$register1` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				name text NOT NULL,
				gender text NOT NULL,
				phone text NOT NULL,
				DOB text NOT NULL,
				grand double NOT NULL,
				average double NOT NULL,
				position text NOT NULL,
				teach_com text NOT NULL,
				prin_com text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$reg_query1 = mysqli_query($Son, $reg1);
			
			$register2 = $lasses."_2nd_term"; //for second term
			$reg2 = "CREATE TABLE IF NOT EXISTS `$register2` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				name text NOT NULL,
				gender text NOT NULL,
				phone text NOT NULL,
				DOB text NOT NULL,
				grand double NOT NULL,
				average double NOT NULL,
				position text NOT NULL,
				teach_com text NOT NULL,
				prin_com text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$reg_query2 = mysqli_query($Son, $reg2);
			
			$register3 = $lasses."_3rd_term";// for third term
			$reg3 = "CREATE TABLE IF NOT EXISTS `$register3` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				name text NOT NULL,
				gender text NOT NULL,
				phone text NOT NULL,
				DOB text NOT NULL,
				grand double NOT NULL,
				average double NOT NULL,
				position text NOT NULL,
				teach_com text NOT NULL,
				prin_com text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$reg_query3 = mysqli_query($Son, $reg3);
			
			
			
			
			
			
				$test = "SELECT * FROM `$newclass` ";
				$test_query = mysqli_query($Son, $test);
				
				
				if(mysqli_fetch_assoc($test_query) == NULL){
					$query2 = "INSERT INTO `$newclass` (class, subjects, subfull) VALUES('$class', '$imploded', '$imp') ";
					$submit2 = mysqli_query($Son, $query2);
					echo "<h2>Class Subjects for $class created!</h2>";
					header('Refresh: 3, url=select_sub.php');
			
				}else{
					echo "<h2>$class contain subjects already, you can only edit!</h2>";
					header('Refresh: 3, url=select_sub.php');
				}
				
				
		}
		
		
		
		 
?>

