<?php
	session_start();
	$name = $_SESSION['username'];
	$class = $_SESSION['class'];
	$subject = $_SESSION['subject'];
	$id_new = $_SESSION['id'];
	$type = $_SESSION['type'];
	
	ini_set('max_execution_time', 0);

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:1st Term CA & Exams Records:.</title>
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
						font-family: Gabriola;
						src: url(../../myfont/gabriola.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			#myhead h4{
		font-family: Aulyars;
		font-size: 2vw;
		text-align: center;
	}
	#myhead em{
		color: yellow;
		font-family: zipty;
	}
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
		h3{
			color: white;
			text-align: center;
			font-family: Gabriola;
		}
		
					
			h2,h3,h4, h5{
				color: yellow;
				text-align: center;
				font-family: teen;
				font-size: 2vw;
			}
			form{
				margin-left: 0;
			}
			form select{
				background: white;
				cursor: pointer;
			}
			table{
				background: #ffffff;
				border: 2px solid #000000;
				border-collapse: collapse;
				width: auto;
				font-family: teen;
				font-size: 1vw;
				margin-left: 15%;
			}
			th{
				text-align: center;
				border: solid 2px #000000;
				color: fuchsia;
				padding: 0 1px;
			}
			td{
				border: solid 1px #000000;
				border-top: solid 2px #000000;
				padding: 1px;
			}
			.table td{
				text-align: right;
				padding-right: 2px;
			}
			
			td input[type=text]{
				width: 100px;
			}
		.read{
			color: blue;
		}
		.newform select{
			width: 20%;
			margin-left: 15%;
			font-family: teen;
			margin-bottom: 0.5%;
		}
		input[type=submit], input[type=reset]{
			width: 10%;
			font-family: teen;
			margin-left: 30%;
			margin-top: 0.5%;
			cursor: pointer;
			font-size: 1vw;
		}
		input[type=reset]{
			float: left;
			margin-top: -2.79%;
			margin-left: 45%;
		}
		table input[type=submit]{
			margin-left: 0;
			width: 100%;
			border: none;
			background: #4caf50;
			color: white;
			margin: 2px 0;
			border-radius: 3px;
		}
		table input[type=submit]:hover{
			background: #2196f3;
		}
		h4, h5, h6{
			margin-left: 20%;
			font-family: teen;
			color: black;
		}
		b{
			visibility: hidden;
			font-family: Gabriola;
		}
		caption span{
			float: right;
			color: yellow;
		}
		caption span small{
			font-family: cac;
		}
		caption span:hover, small:hover{
			color: white;
			cursor: pointer;
		}
		.lastdiv{
			display:none;
			font-family: teen;
		}
		h4, h5{
			margin-left: 0;
			color: yellow;
		}
		h6{
			margin-left: 15%;
		}
	@media print{
		.noprint{display:none}
		.table{margin-left:0; font-size: 12pt;}
		table th{padding: 1px;}
		h2,h4,h5,h6{margin-left:0; color: black;}
		.lastdiv{display:block;}
		td{line-height: 1}
	}
	@page{
		size: A4 portrait;
	}	
	@media only screen and (max-width: 768px){
				h3{font-size: 4vw; margin-top: 7%;}
				form{margin-left: 0; width: 98%; margin-left: 1%;}
				.newform select{width: 100%; margin-left: 0;}
				 table{margin-left: 1%; font-size: 2.5vw; width: 98%;}
				td input[type=text]{width: 100%;}
				input[type=submit], input[type=reset]{width: 98%; margin-left: 1%; font-size: 4vw; margin-top: 1%;}
				h2,h4,h5,h6{font-size: 3vw;}
			}
	
	</style>
</head>
<body>
<?php
	include '../../teach_conn.php'; 
	include '../../all_conn.php'; 
	include '../../sub_conn.php';
	
	//checking if class exists!
		//selecting assigned class
			$assigned = "SELECT classes FROM users_sub WHERE ID = '$id_new'";
			$assigned_query = mysqli_query($Father, $assigned);
	
	//checking if class exists!
			//setting & changing class
				
					$new = strtolower(str_replace(" ","",$class."_1st_term")); //change
				
				
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
				header("Refresh: 3, url = records.php");
				die();
	} 
		//checking if an existing class has members in it!
		$qry = "SELECT name FROM `$new`";
		$sub = mysqli_query($Son, $qry);
		$ans = mysqli_fetch_assoc($sub);
		if($ans == NULL){
			echo "<h2>Sorry, This Class has no registered Class Members</h2>";
				echo "<h3>Ask the Form Teacher to register Class Members</h3>"; 
				header("Refresh: 3, url = records.php");
				die();
		}
		
		//checking if subject has been registered by the subject teacher!
			//1. Select Abbreviation
				$abbreviation = "SELECT `abbreviation` FROM subjects WHERE `subject` = '$subject' "; 
				$abb_query = mysqli_query($Father, $abbreviation);
				$abb = mysqli_fetch_assoc($abb_query);
				
			//2. Checking subjects registered for this class!
			$current_class = strtolower(str_replace(" ", "", $class));
			$newclass = $current_class."_subjects";
			$newclass_query = "SELECT subjects FROM `$newclass`";
			$newclass_submit = mysqli_query($Son, $newclass_query);
			$newclass_request = mysqli_fetch_assoc($newclass_submit);
			// checking...
			$request = strchr($newclass_request['subjects'], $abb['abbreviation']);
			if($request === False){
				echo "<h2>Sorry, your subject $subject is not on the subject list for $class </h2>";
				echo "<h3>Ask the $class Form Teacher to add your subject </h3>"; 
				header("Refresh: 4, url = records.php");
				die();
			}
		
		//selecting grades
		$grades = "SELECT `caexams` FROM `info_exams`";
		$grade_submit = mysqli_query($Father, $grades);
		$dgrade = $grade_check = mysqli_fetch_assoc($grade_submit);
		
		if($dgrade['caexams'] == 'alphabetic'){
			$b = "A,B,C,D,E,F,";
			$c = "70,60,50,45,40,0,";
			
		}elseif($dgrade['caexams'] == 'alphanumeric'){
			$b = "A1,B2,B3,C4,C5,C6,D7,E8,F9,";
			$c = '75,70,65,60,55,50,45,40,0,';
		}else{
			echo "<br /><br /> 
						<h2>Please Ask the Examination Officer to Set the CA & Exam grade type (alphabetic or alphanumeric)!</h2>";
						header("Refresh: 4, url = records.php");
				die();
		}
		
		
		$explode1 = explode(",", $b);
		$count1 = count($explode1);
		
		$explode2 = explode(",", $c);
		$count2 = count($explode2);
		
		
	
?>
		<div class = "noprint">
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >1st Term CA & Exam Record</h1> 
					
		</div>
		<?php include 'asidesub.php' ?>
			<h3><?php echo "SUBJECT: &ensp;".$subject; echo "&emsp; &emsp; CLASS: &ensp;". $class;?> </h3>
			
			<?php
				//for change of class
				
					if($type == "All"){
						
								$newing = strtolower(str_replace(" ", "", $class))."_subjects";
								$query = "SELECT `subfull` FROM `$newing` ";
								$submit = mysqli_query($Son, $query);
								
								$allsub = mysqli_fetch_assoc($submit);
								$allsubjects = explode(",", $allsub['subfull']);
											
											echo " <form name = 'myform' onchange = 'myfunct()' action='../intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data' class = 'newform'>";
													echo "<input type='text' name = 'name' value = '$name' hidden />";
													echo "<input type='text' name = 'id' value = '$id_new' hidden />";
													echo "<input type='text' name = 'class' value = '$class' hidden />";
													echo "<input type='text' name = 'type' value = 'All' hidden />";
														
														echo "<select class = 'w3-select w3-round w3-border-green' name='sub' required>";
															echo "<option value=''>Change Subject</option>";
																foreach($allsubjects as $all){
																	echo "<option value='$all'>$all</option>";
																}
														echo "</select>";
													echo "<input type='text' value = 'Change Class' name = 'record1' hidden />";// change
											
											echo "</form>";
											
					}else{
							echo "<form name = 'myform' onchange = 'myfunct()' action='../intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data' class = 'newform'>";
							echo "<select class = 'w3-select w3-round w3-border-green' name = 'class'>";
								echo "<option value=''>Select to Change Class </option>";
								$asgn = mysqli_fetch_assoc($assigned_query);
									$assigned_classes = $asgn['classes'];
									$ex = explode(",",$assigned_classes);
									foreach($ex as $ex){
										echo "<option value='$ex'>$ex</option>";
									}
							echo "</select> &nbsp;";
									echo "<input type='text' name = 'name' value = '$name' hidden />";
									echo "<input type='text' name = 'id' value = '$id_new' hidden />";
									echo "<input type='text' name = 'sub' value = '$subject' hidden />";
									echo "<input type='text' name = 'type' value = 'One' hidden />";
									echo "<input type='text' value = 'Change Class' name = 'record1' hidden />";// change
							echo "</form>";
					}
					
					echo "<script>
							function myfunct(){
								var x = document.forms['myform']['class'].value;
								if(x == ''){
									alert('Class cannot be empty, please select a valid class');
								}else{
									myform.submit();
								}
							}
					</script>";
					
			?>
			
			<?php 
			//selecting number of ca 
			$ca = "SELECT `numca` FROM `info_exams` ";
			$ca_query = mysqli_query($Father, $ca);
			$myca = mysqli_fetch_assoc($ca_query);
			$myca = $myca['numca'];
			
		
			if($myca == "2"){
				// for 2 CAs
				
				echo '<form action = "record_action_1.php" method = "POST" enctype = "multipart/form-data" >';
			echo '<table>';
				echo "<th>S/&#x2116 </th>
				<th>Full Name</th>
				<th>CA1</th>
				<th>CA2</th>
				
				<th style = 'color: #4c8cf5;'>CA_Total</th>
				<th>Exam</th>
				<th  style = 'color: #4c8cf5;'>Total</th>
				<th  style = 'color: #4c8cf5;' >Grade</th>";
				
				
					$names = "SELECT ID, name FROM `$new` ORDER BY name ASC";
					$name_sub = mysqli_query($Son, $names);
					
					$p = 1;
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						$naming = $me."[]";
						$me = metaphone($me);
						$dob = $nam['ID'];
						echo "<tr>";
									echo "<td>$p.</td>";
									echo "<td><input name = '$naming' style = 'font-weight: bold; border: none; width: auto; 'type='text' value = '$nam[name]' readonly /></td>";
									echo "<td><input id = '$me.1' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.2' name = '$naming'type='text'  onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									
									echo "<td><input id = '$me.4' name = '$naming' type='text' readonly class = 'read' /></td>";
									echo "<td><input id = '$me.5' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.6' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly class = 'read'  /></td>";
									echo "<td><input id = '$me.7' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly/ class = 'read'  ></td>";
									
									
									
						echo "</tr>";
								echo "<script>";
										echo "function $me$dob(){";
												echo "var CA1 = document.getElementById('$me.1');";
												echo "var a = CA1.value;";
												echo "var CA2 = document.getElementById('$me.2');";
												echo "var b = CA2.value;";
												
												echo "var total_CA = document.getElementById('$me.4');";
												echo	"total_CA.value = (Number(a)+Number(b));";
												echo "var d = total_CA.value;";
												
												echo "var exams = document.getElementById('$me.5');";
												echo "var e = exams.value;";
												
												echo "var total = document.getElementById('$me.6');";
												echo "total.value = (Number(d) + Number(e));";
												echo "var f = total.value;";
												echo "var grade = document.getElementById('$me.7');";
													for($i=0; $i < ($count1 - 1); $i++){
														echo "if(f >= $explode2[$i]){grade.value = '$explode1[$i]';}";
														if($i<($count1 - 2)){
															echo "else ";
														}
													}
													
											echo " }";
					
								echo "</script>";
						$p++;
					}
				
				
				
			
			echo "</table>
					
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='submit' value = 'Submit' />
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='reset' value = 'Clear' />
	</form>";
			
				
			}elseif($myca == "3"){
				// for 3 CAs
			echo '<form action = "record_action_1.php" method = "POST" enctype = "multipart/form-data" >';
			echo '<table>';
				echo "<th>S/&#x2116 </th>
				<th>Full Name</th>
				<th>CA1</th>
				<th>CA2</th>
				<th>CA3</th>
				<th style = 'color: #4c8cf5;'>CA_Total</th>
				<th>Exam</th>
				<th  style = 'color: #4c8cf5;'>Total</th>
				<th  style = 'color: #4c8cf5;' >Grade</th>";
				
				
					$names = "SELECT ID, name FROM `$new` ORDER BY name ASC";
					$name_sub = mysqli_query($Son, $names);
					
					$p = 1;
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						
						$naming = $me."[]";
						$me = metaphone($me);
						$dob = $nam['ID'];
						echo "<tr>";
									echo "<td>$p.</td>";
									echo "<td><input name = '$naming' style = 'font-weight: bold; border: none; width: auto; 'type='text' value = '$nam[name]' readonly /></td>";
									echo "<td><input id = '$me.1' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.2' name = '$naming'type='text'  onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.3' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.4' name = '$naming' type='text' readonly class = 'read' /></td>";
									echo "<td><input id = '$me.5' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.6' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly class = 'read'  /></td>";
									echo "<td><input id = '$me.7' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly/ class = 'read'  ></td>";
									
									
									
						echo "</tr>";
								echo "<script>";
										echo "function $me$dob(){";
												echo "var CA1 = document.getElementById('$me.1');";
												echo "var a = CA1.value;";
												echo "var CA2 = document.getElementById('$me.2');";
												echo "var b = CA2.value;";
												echo "var CA3 = document.getElementById('$me.3');";
												echo "var c = CA3.value;";
												echo "var total_CA = document.getElementById('$me.4');";
												echo	"total_CA.value = (Number(a)+Number(b)+Number(c));";
												echo "var d = total_CA.value;";
												
												echo "var exams = document.getElementById('$me.5');";
												echo "var e = exams.value;";
												
												echo "var total = document.getElementById('$me.6');";
												echo "total.value = (Number(d) + Number(e));";
												echo "var f = total.value;";
												echo "var grade = document.getElementById('$me.7');";
													for($i=0; $i < ($count1 - 1); $i++){
														echo "if(f >= $explode2[$i]){grade.value = '$explode1[$i]';}";
														if($i<($count1 - 2)){
															echo "else ";
														}
													}
													
											echo " }";
					
								echo "</script>";
						$p++;
					}
				
				
				
			
			echo "</table>
					
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='submit' value = 'Submit' />
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='reset' value = 'Clear' />
	</form>";
					
			}elseif($myca == "4"){
				// for 4 CAs 
				
					echo '<form action = "record_action_1.php" method = "POST" enctype = "multipart/form-data" >';
			echo '<table>';
				echo "<th>S/&#x2116 </th>
				<th>Full Name</th>
				<th>CA1</th>
				<th>CA2</th>
				<th>CA3</th>
				<th>CA4</th>
				<th style = 'color: #4c8cf5;'>CA_Total</th>
				<th>Exam</th>
				<th  style = 'color: #4c8cf5;'>Total</th>
				<th  style = 'color: #4c8cf5;' >Grade</th>";
				
				
					$names = "SELECT ID, name FROM `$new` ORDER BY name ASC";
					$name_sub = mysqli_query($Son, $names);
					
					$p = 1;
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						
						$naming = $me."[]";
						$me = metaphone($me);
						$dob = $nam['ID'];
						echo "<tr>";
									echo "<td>$p.</td>";
									echo "<td><input name = '$naming' style = 'font-weight: bold; border: none; width: auto; 'type='text' value = '$nam[name]' readonly /></td>";
									echo "<td><input id = '$me.1' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.2' name = '$naming'type='text'  onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.3' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.4' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									
									echo "<td><input id = '$me.5' name = '$naming' type='text' readonly class = 'read' /></td>";
									echo "<td><input id = '$me.6' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()'  /></td>";
									echo "<td><input id = '$me.7' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly class = 'read'  /></td>";
									echo "<td><input id = '$me.8' name = '$naming' type='text' onKeyPress = '$me$dob()' onKeyUp = '$me$dob()' readonly/ class = 'read'  ></td>";
									
									
									
						echo "</tr>";
								echo "<script>";
										echo "function $me$dob(){";
												echo "var CA1 = document.getElementById('$me.1');";
												echo "var a = CA1.value;";
												echo "var CA2 = document.getElementById('$me.2');";
												echo "var b = CA2.value;";
												echo "var CA3 = document.getElementById('$me.3');";
												echo "var c = CA3.value;";
												echo "var CA4 = document.getElementById('$me.4');";
												echo "var d = CA4.value;";
												
												echo "var total_CA = document.getElementById('$me.5');";
												echo	"total_CA.value = (Number(a)+Number(b)+Number(c)+Number(d));";
												echo "var e = total_CA.value;";
												
												echo "var exams = document.getElementById('$me.6');";
												echo "var f = exams.value;";
												
												echo "var total = document.getElementById('$me.7');";
												echo "total.value = (Number(e) + Number(f));";
												echo "var g = total.value;";
												echo "var grade = document.getElementById('$me.8');";
													for($i=0; $i < ($count1 - 1); $i++){
														echo "if(g >= $explode2[$i]){grade.value = '$explode1[$i]';}";
														if($i<($count1 - 2)){
															echo "else ";
														}
													}
													
											echo " }";
					
								echo "</script>";
						$p++;
					}
				
				
				
			
			echo "</table>
					
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='submit' value = 'Submit' />
					<input class = 'w3-input w3-green w3-round w3-hover-blue' type='reset' value = 'Clear' />
	</form>";
			
				
		
			}else{
				
				echo "<br /><br /> 
						<h2>Please Ask the Examination Officer to Set the Number of CAs the School Offers!</h2>";
				die();
			}
		
		?>

			
		
			
			
			<br />
</div>
		<?php
				//checking if subject exists
						$mysubject = strtolower(str_replace(" ", "",$class."_1st_term_".$subject)); //change
						
						$tables = "SHOW TABLES"	;
					$tables_query = mysqli_query($HolySpirit, $tables);
					$t = "";
					while($tab = mysqli_fetch_assoc($tables_query)){
						if(strcmp($tab['Tables_in_subjects'], $mysubject) == 0){
							$t.= $tab['Tables_in_subjects'];
						}
					}
					
					
		if($t != ""){
		// if subject exists
			
			// fetching school name 
						$cool = "SELECT school FROM `info_sch`";
						$cool_query = mysqli_query($Father, $cool);
						$skull = mysqli_fetch_assoc($cool_query);
						if($skull == NULL){
							$school = "SCHOOL NAME NOT SET YET!";
						}else{
							$school = strtoupper($skull['school']);
						}
		
					
					
						$abbr = "SELECT abbreviation FROM subjects WHERE subject = '$subject' ";
						$abb = mysqli_query($Father, $abbr);
						$viate = mysqli_fetch_assoc($abb);
						$viate = $viate['abbreviation'];
						$course = $viate."_total";

		//redirecting
		$fields = "DESCRIBE `$new`";
					$fields_query = mysqli_query($Son, $fields);
						$field = mysqli_fetch_assoc($fields_query);
					
						$justsub = "";
					while($field = mysqli_fetch_assoc($fields_query)){
						$myfield = $field['Field'];
						if(strchr($myfield, $viate) == true){
							$justsub.= "`$field[Field]`,";
						}
					}
					
						$justsub = trim('`ID`,`name`,'.$justsub, ",");
						if($justsub == '`ID`,`name`'){
							die();
						}
						
						$ject = "SELECT $justsub FROM `$new` ORDER BY name ASC";
						$mysubject_query1 = mysqli_query($Son, $ject);
						$mysubject_query2 = mysqli_query($Son, $ject);
						
			//selectors
					$legend0 = 'name';
					
					$legend1 = $viate.'_ca1';
					$legend2 = $viate.'_ca2';
					$legend3 = $viate.'_ca3';
					$legend4 = $viate.'_ca4';
					$legend5 = $viate.'_ca_total';
					$legend6 = $viate.'_exam';
					$legend7 = 'Total_'.$viate;
					$legend8 = $viate.'_grade';
					$legend9 = $viate.'_pos';
						
			if(mysqli_fetch_assoc($mysubject_query1) !== NULL){
				
				
					echo "<h2>$school</h2>";
					$session = date('F');
					if($session == "January" || $session == "February" || $session == "March" || $session == "April" || $session == "May" || $session == "June" || $session == "July"){
						$yr = date('Y');
						$acad = $yr - 1 ."/". $yr;
					}else{
						$yr = date('Y');
						$acad = $yr ."/". ($yr+1);
					}
					echo "<h4>$acad &emsp; TERM: 1ST TERM</h4>";
					echo "<h5>SUBJECT:  $subject &emsp; &emsp; CLASS:  $class </h5>";
					
						if($myca == "2"){
								echo "<table class = 'table'> ";
							echo "<caption class = 'noprint' ><span class = 'fas fa-print fa-2x' onclick = 'window.print()'><small>print</small></span></caption>";
								echo "<th>S/&#x2116</th>";
								echo "<th>Full Name</th>";
								echo "<th>CA1</th>";
								echo "<th>CA2</th>";
								echo "<th>CA_Total</th>";
								echo "<th>Exam</th>";
								echo "<th>Total</th>";
								echo "<th>Grade</th>";
								echo "<th>Position</th>";
								
								echo "<th class = 'noprint'>Edit</th>";
									echo "</div>";
									$i = 1;
								while($legend = mysqli_fetch_assoc($mysubject_query2)){
									echo "<tr>";
											if(($legend[$legend1] == 0) && ($legend[$legend2] == 0) && ($legend[$legend6] == 0)){
												echo "<td>$i.</td>";
												echo "<td>$legend[$legend0]</td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														
														
											}else{
												
													echo "<td>$i.</td>";
													echo "<td style = 'text-align: left;'>$legend[$legend0]</td>";
													
													//for score colours
													if($legend[$legend1] < 7.5){
														
														echo "<td style = 'color: red;'>$legend[$legend1]</td>";
													}else{
														echo "<td>$legend[$legend1]</td>";
													}
													
													if($legend[$legend2] < 7.5){
														echo "<td style = 'color: red;'>$legend[$legend2]</td>";
													}else{
														echo "<td>$legend[$legend2]</td>";
														}
													
													if($legend[$legend5] < 15){
														echo "<td style = 'color:red' >$legend[$legend5]</td>";
													}else{
														echo "<td>$legend[$legend5]</td>";
													}
													if($legend[$legend6] < 35){
														echo "<td style = 'color: red;'>$legend[$legend6]</td>";
													}else{
														echo "<td>$legend[$legend6]</td>";
													}
													if($legend[$legend7] < 50){
														echo "<td style = 'color: red;'>$legend[$legend7]</td>";
													}else{
														echo "<td>$legend[$legend7]</td>";
													}
													echo "<td>$legend[$legend8]</td>";
													echo "<td>$legend[$legend9]</td>";
													
													
											}

									
									
										echo "<form action='record_1_edit.php' method = 'POST' encytype = 'multipart/form-data'>";
										echo "<td class = 'noprint'><input type='text' name = 'id' value = '$legend[ID]' hidden /> <input type='text' name = 'asis' value = '$legend[name]' hidden /> <input type='submit' value = ' Edit '/></td>";
										echo "</form>";
											
									echo "</tr>";
									$i++;
								}
					echo "</table>";
						}elseif($myca == "3"){
									echo "<table class = 'table'> ";
							echo "<caption class = 'noprint' ><span class = 'fas fa-print fa-2x' onclick = 'window.print()'><small>print</small></span></caption>";
								echo "<th>S/&#x2116</th>";
								echo "<th>Full Name</th>";
								echo "<th>CA1</th>";
								echo "<th>CA2</th>";
								echo "<th>CA3</th>";
								echo "<th>CA_Total</th>";
								echo "<th>Exam</th>";
								echo "<th>Total</th>";
								echo "<th>Grade</th>";
								echo "<th>Position</th>";
								
									
								echo "<th class = 'noprint'>Edit</th>";
									echo "</div>";
									$i = 1;
								while($legend = mysqli_fetch_assoc($mysubject_query2)){
									echo "<tr>";
											if(($legend[$legend1] == 0) && ($legend[$legend2] == 0) && ($legend[$legend3] == 0) && ($legend[$legend6] == 0)){
												echo "<td>$i.</td>";
												echo "<td>$legend[name]</td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														
											}else{
													echo "<td>$i.</td>";
													echo "<td style = 'text-align: left;'>$legend[name]</td>";
														if($legend[$legend1] < 5){
															echo "<td style = 'color: red;'>$legend[$legend1]</td>";
														}else{
															echo "<td>$legend[$legend1]</td>";
														}
														if($legend[$legend2] < 5){
															echo "<td style = 'color: red;'>$legend[$legend2]</td>";
														}else{
															echo "<td>$legend[$legend2]</td>";
														}
													if($legend[$legend3] < 5){
															echo "<td style = 'color: red;'>$legend[$legend3]</td>";
														}else{
															echo "<td>$legend[$legend3]</td>";
														}
													if($legend[$legend5] < 15){
														echo "<td style = 'color: red;'>$legend[$legend5]</td>";
													}else{
														echo "<td>$legend[$legend5]</td>";
													}
													if($legend[$legend6] < 35){
														echo "<td style = 'color: red;'>$legend[$legend6]</td>";
													}else{
														echo "<td>$legend[$legend6]</td>";
													}
													if($legend[$legend7] < 50){
														echo "<td style = 'color: red;'>$legend[$legend7]</td>";
													}else{
														echo "<td>$legend[$legend7]</td>";
													}
													echo "<td>$legend[$legend8]</td>";
													echo "<td>$legend[$legend9]</td>";
													
											}

									
									
										echo "<form action='record_1_edit.php' method = 'POST' encytype = 'multipart/form-data'>";
										echo "<td class = 'noprint'><input type='text' name = 'id' value = '$legend[ID]' hidden /> <input type='text' name = 'asis' value = '$legend[name]' hidden /> <input type='submit' value = ' Edit '/></td>";
										echo "</form>";
											
									echo "</tr>";
									$i++;
								}
					echo "</table>";
						}elseif($myca == "4"){
									echo "<table class = 'table'> ";
							echo "<caption class = 'noprint' ><span class = 'fas fa-print fa-2x' onclick = 'window.print()'><small>print</small></span></caption>";
								echo "<th>S/&#x2116</th>";
								echo "<th>Full Name</th>";
								echo "<th>CA1</th>";
								echo "<th>CA2</th>";
								echo "<th>CA3</th>";
								echo "<th>CA4</th>";
								echo "<th>CA_Total</th>";
								echo "<th>Exam</th>";
								echo "<th>Total</th>";
								echo "<th>Grade</th>";
								echo "<th>Position</th>";
								
								echo "<th class = 'noprint'>Edit</th>";
									echo "</div>";
									$i = 1;
								while($legend = mysqli_fetch_assoc($mysubject_query2)){
									echo "<tr>";
											if(($legend[$legend1] == 0) && ($legend[$legend2] == 0) && ($legend[$legend3] == 0) && ($legend[$legend4] == 0) && ($legend[$legend6] == 0)){
												echo "<td>$i.</td>";
												echo "<td>$legend[name]</td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														echo "<td> </td>";
														
														
														
											}else{
													echo "<td>$i.</td>";
													echo "<td style = 'text-align: left;'>$legend[name]</td>";
													if($legend[$legend1] < 5){
														echo "<td style = 'color: red;'>$legend[$legend1]</td>";
													}else{
														echo "<td>$legend[$legend1]</td>";
													}
													if($legend[$legend2] < 5){
														echo "<td style = 'color: red;'>$legend[$legend2]</td>";
													}else{
														echo "<td>$legend[$legend2]</td>";
													}
													if($legend[$legend3] < 5){
														echo "<td style = 'color: red;'>$legend[$legend3]</td>";
													}else{
														echo "<td>$legend[$legend3]</td>";
													}
													if($legend[$legend4] < 5){
														echo "<td style = 'color: red;'>$legend[$legend4]</td>";
													}else{
														echo "<td>$legend[$legend4]</td>";
													}
													if($legend[$legend5] < 20){
														echo "<td style = 'color: red;'>$legend[$legend5]</td>";
													}else{
														echo "<td>$legend[$legend5]</td>";
													}
													if($legend[$legend6] < 30){
														echo "<td style = 'color: red;'>$legend[$legend6]</td>";
													}else{
														echo "<td>$legend[$legend6]</td>";
													}
													if($legend[$legend7] < 50){
														echo "<td style = 'color: red;'>$legend[$legend7]</td>";
													}else{
														echo "<td>$legend[$legend7]</td>";
													}
													echo "<td>$legend[$legend8]</td>";
													echo "<td>$legend[$legend9]</td>";
													
													
											}

									
									
										echo "<form action='record_1_edit.php' method = 'POST' encytype = 'multipart/form-data'>";
										echo "<td class = 'noprint'><input type='text' name = 'id' value = '$legend[ID]' hidden /> <input type='text' name = 'asis' value = '$legend[name]' hidden /> <input type='submit' value = ' Edit '/></td>";
										echo "</form>";
											
									echo "</tr>";
									$i++;
								}
					echo "</table>";
						}
					echo "<br />";
					echo "<h5 class = 'exam'><u>For Internal Examination Office Use</u></h5>";
					echo "<table class = 'table' >";
								echo "<h6>Subject Bests(Positions 1st, 2nd & 3rd) </h6>";
								$best = "SELECT `$legend0`, `$legend7`, `$legend9` FROM `$new` WHERE $legend9 = '1st' OR $legend9 = '2nd' OR $legend9 = '3rd' ORDER BY $legend9 ASC";
								$best_query = mysqli_query($Son, $best);
								echo "<th>Name</th>";
								echo "<th>Score</th>";
								echo "<th>Position</th>";
								while($bestee = mysqli_fetch_assoc($best_query)){
									echo "<tr>";
											echo "<td style = 'text-align: left;'>$bestee[$legend0]</td>";
											echo "<td>$bestee[$legend7]</td>";
											echo "<td>$bestee[$legend9]</td>";
									echo "</tr>";
								}
					echo "</table>";
					
					// Clear Record
			echo "<div class = 'noprint'>";
				echo "<form action='clear_1.php' method = 'POST' enctype = 'multipart/form-data'>";
							echo "<input type='text' name = 'myclass' value = '$mysubject' hidden />";
							echo "<input class = 'w3-input w3-green w3-round w3-hover-blue' type='submit' value = 'Clear Record' />";
				echo "</form>";
			echo "</div>";
			
				echo "<br /> 
			<div class = 'lastdiv'>";
					if($type == "All"){
						echo "<strong>Scores recorded by: </strong> $name &emsp; &emsp; <strong>Sign:</strong> ___________";
					}else{
						echo "<strong>Subject Teacher: </strong> $name &emsp; &emsp; <strong>Sign:</strong> ___________";
					}
			echo "</div> ";
			}
				
						
		}


				
					?>
					
			
</body>
</html>