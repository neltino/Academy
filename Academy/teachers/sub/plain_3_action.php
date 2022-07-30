<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:3rd Term Plain Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
			}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
					
			h2,h3,h4{
				color: yellow;
				text-align: center;
				font-family: teen;
				font-size: 2vw;
			}
			
			table{
				background: #ffffff;
				border: 2px solid #000000;
				border-collapse: collapse;
				margin-left: 350px;
				width: 45%;
				font-family: teen;
			}
			th{
				text-align: center;
				border: solid 2px #000000;
				color: indigo;
			}
			td{
				border: solid 1px #000000;
				padding: 2px;
				border-top: solid 2px #000000;
			}
			table caption{
				text-align: right;
				color: yellow;
				cursor: pointer;
			}
			table caption:hover{
				color: white;
			}
			caption span{
				font-family:cac;
			}
			
	@media print{
		.noprint, caption{display:none;}
		h2, h3, h4{color: #000000; margin-top: -5px;}
		table{margin-left: 0%; width: 90%}
	}
	@page{
		size: A4 portrait;
	}
	@media only screen and (max-width: 768px){
				h2, h3{font-size: 5vw; margin-top: 10%}
				h4{font-size: 5vw;}
				table{margin-left: 1%; width: 98%;}
				caption i span{font-size: 5vw;}
			}
	</style>
</head>
<body>
<?php
	

	include '../../teach_conn.php'; 
	include '../../all_conn.php'; 
	$class = $_POST['class'];
	//checking if class exists!
	$new = strtolower(str_replace(" ","",$class."_3rd_term")); //change
	$query = "SHOW TABLES";
	$submit = mysqli_query($Son, $query);
	
	$a = "";
	while($answer = mysqli_fetch_assoc($submit)){
		if(strcmp($answer['Tables_in_teachers'], $new) == 0){
			$a.= $answer['Tables_in_teachers'];
		}
		
	}
	
	if($a == ""){
				echo "<h2>Sorry, This Class has no registered Class Members</h2>";
				echo "<h3>Ask the Form Teacher to register Class Members</h3>"; 
				header("Refresh: 3, url=plain_3.php");//change
				die();
	} 
		//checking if an existing class has members in it!
		$qry = "SELECT name FROM `$new`";
		$sub = mysqli_query($Son, $qry);
		$ans = mysqli_fetch_assoc($sub);
		if($ans == NULL){
			echo "<h2>Sorry, This Class has no registered Class Members</h2>";
				echo "<h3>Ask the Form Teacher to register Class Members</h3>"; 
				header("Refresh: 3, url=plain_3.php");//change
				die();
		}
 include 'asidesub.php';
	// fetching school name 
	$cool = "SELECT school FROM `info_sch`";
	$cool_query = mysqli_query($Father, $cool);
	$skull = mysqli_fetch_assoc($cool_query);
	if($skull == NULL){
		$school = "School Name Not Set Yet!";
	}else{
		$school = $skull['school'];
	}
	
?> 
		
		<?php
			//selecting number of ca 
			$ca = "SELECT `numca` FROM `info_exams` ";
			$ca_query = mysqli_query($Father, $ca);
			$myca = mysqli_fetch_assoc($ca_query);
			$myca = $myca['numca'];
			
			if($myca == "2"){
			echo "<h2>".strtoupper($school)."</h2>";
		$session = date('F');
			if($session == "January" || $session == "February" || $session == "March" || $session == "April" || $session == "May" || $session == "June" || $session == "July"){
				$yr = date('Y');
				$acad = $yr - 1 ."/". $yr;
			}else{
				$yr = date('Y');
				$acad = $yr ."/". ($yr+1);
			}
			
			echo"<h4>$acad ACADEMIC SESSION</h4>";
		echo "<h4>3RD TERM PLAIN CA & EXAM SHEET</h4>
		<h4>SUBJECT:_____________________________ CLASS: ".strtoupper($class)."</h4>";
		echo "<br />
		<table> ";
		echo "<caption onclick = 'window.print()'><i class = 'fas fa-print fa-2x' ><span>print</span></i></caption>";
						echo 	"<th>S/&#x2116</th>
								<th>Full Name</th>
								<th>CA1</th>
								<th>CA2</th>
								<th>Exams</th>";
								
				$names = "SELECT name from `$new` ORDER BY name ASC";
				$names_query = mysqli_query($Son, $names);
				$i = 1;
				while($nam = mysqli_fetch_assoc($names_query)){
					echo "<tr>";
							echo "<td>$i.</td>";
							echo "<td>$nam[name]</td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
							
					echo "</tr>";
					$i++;
				}
			echo "</table>";
			}elseif($myca == "3"){
			
			echo "<h2>".strtoupper($school)."</h2>";
		$session = date('F');
			if($session == "January" || $session == "February" || $session == "March" || $session == "April" || $session == "May" || $session == "June" || $session == "July"){
				$yr = date('Y');
				$acad = $yr - 1 ."/". $yr;
			}else{
				$yr = date('Y');
				$acad = $yr ."/". ($yr+1);
			}
			
			echo"<h4>$acad ACADEMIC SESSION</h4>";
		echo "<h4>3RD TERM PLAIN CA & EXAM SHEET</h4>
		<h4>SUBJECT:_____________________________ CLASS: ".strtoupper($class)."</h4>";
		echo "<br />
		<table> ";
			echo "<caption onclick = 'window.print()'><i class = 'fas fa-print fa-2x' ><span>print</span></i></caption>";
				echo 	"<th>S/&#x2116</th>
						<th>Full Name</th>
						<th>CA1</th>
						<th>CA2</th>
						<th>CA3</th>
						<th>Exams</th>";
						
					$names = "SELECT name from `$new` ORDER BY name ASC";
				$names_query = mysqli_query($Son, $names);
				$i = 1;
				while($nam = mysqli_fetch_assoc($names_query)){
					echo "<tr>";
							echo "<td>$i.</td>";
							echo "<td>$nam[name]</td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
					echo "</tr>";
					$i++;
				}
			
				echo "</table>";
				
			}elseif($myca == "4"){
				
				echo "<h2>".strtoupper($school)."</h2>";
		$session = date('F');
			if($session == "January" || $session == "February" || $session == "March" || $session == "April" || $session == "May" || $session == "June" || $session == "July"){
				$yr = date('Y');
				$acad = $yr - 1 ."/". $yr;
			}else{
				$yr = date('Y');
				$acad = $yr ."/". ($yr+1);
			}
			
			echo"<h4>$acad ACADEMIC SESSION</h4>";
		echo "<h4>3RD TERM PLAIN CA & EXAM SHEET</h4>
		<h4>SUBJECT:_____________________________ CLASS: ".strtoupper($class)."</h4>";
		echo "<br />
		<table> ";
			echo "<caption onclick = 'window.print()'><i class = 'fas fa-print fa-2x' ><span>print</span></i></caption>";
				echo "<th>S/&#x2116</th>
					<th>Full Name</th>
					<th>CA1</th>
					<th>CA2</th>
					<th>CA3</th>
					<th>CA4</th>
					<th>Exams</th>";
			
			$names = "SELECT name from `$new` ORDER BY name ASC";
				$names_query = mysqli_query($Son, $names);
				$i = 1;
				while($nam = mysqli_fetch_assoc($names_query)){
					echo "<tr>";
							echo "<td>$i.</td>";
							echo "<td>$nam[name]</td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
							echo "<td></td>";
					echo "</tr>";
					$i++;
				}
			echo "</table>";
			}else{
				
				echo "<br /><br /> 
						<h2>Please Ask the Examination Officer to Set the Number of CAs the School Offers!</h2>";
				die();
			}
		?>
		
		
		
		<br />	
		
</body>
</html>