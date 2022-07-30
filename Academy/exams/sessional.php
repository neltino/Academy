<?php
		ini_set('max_execution_time', 0);
?>


<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject & Class Bests:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
	@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
		body{
			background: #f0f0f0;
			font-family: teen;
		}
		h2{
			color:#ef3939;
			text-align: center;
		}
		button, .noprint button{
			background: #6ac239;
			border: none;
			border-radius: 3px;
			margin-left: 20%;
			margin-bottom: 1%;
			cursor: pointer;
			color: white;
			font-size: 1.3vw;
			font-family: teen;
		}
		.noprint button:hover{
			background: #ffffff;
			color: #ef3939;
		}
		
		table{
			margin-left: 15%;
			background: #ffffff;
			border-collapse: collapse;
			border: 2px solid #000000;
			font-size: 11pt;
		}
		th{
			border: 2px solid #000000;
		}
		td{
			border: 1px solid #000000;
		}
		caption{
			font-weight: bold;
		}
		.print{
			color: #ffffff;
			background: #6ac239;
			border: none;
			border-radius: 3px;
			margin-left: 50px;
			
			font-family: Times New Roman;
		}
		.print:hover{
			color: #ef3939;
			background: #ffffff;
		}
		select{
			margin-left: 15%;
			font-family: teen;
			border-radius: 5px;
			border: solid 2px #6ac239;
		}
		.noprint button{ width: 150px;}
		@media print{
				.noprint{display:none;}
				table{margin-left: -5px;}
				body{
					background: #ffffff;
				}
				h2{color: #000000;}	
			}
		
		@media only screen and (max-width: 768px){
			h2{font-size: 4vw;}
			button{font-size: 5vw; margin-left: 0;}
		}
	</style>
</head>
<body>
		<?php
	include '../all_conn.php';
	include '../teach_conn.php';
	
		$class = strtolower(str_replace(" ", "",$_POST['class']));
		$class_sub = $class."_subjects";
		$new1 = $class."_1st_term";
		$new2 = $class."_2nd_term";
		$new3 = $class."_3rd_term";
		
		//checking if subjects exists
		
		$tables = "SHOW TABLES";
		$table_query = mysqli_query($Son, $tables);
		$check = "";
		while($tab = mysqli_fetch_assoc($table_query)){
			$bles = $tab['Tables_in_teachers'];
			if(strcmp($bles, $class_sub) == 0){
				$check.= $bles;
			}
		}
		
		//confirming class subjects exists 
		if($check == ""){
			echo "<h2>Sorry, this class has no registered subjects!</h2>";
			echo "<br />";
			echo "<button  onclick = 'window.location.href=`summary.php`' style = 'margin-left: 45%;' >Previous Page</button>";
			die();
		}
		//Confirming class has registered members 
		
				$class_confirm = "SELECT `name` FROM `$new1`" ;
				$class_confirm_query = mysqli_query($Son, $class_confirm);
				if(mysqli_fetch_assoc($class_confirm_query) == NULL){
					echo "<h2>Sorry, this class has no registered class members!</h2>";
					echo "<br />";
					echo "<button  onclick = 'window.location.href=`summary.php' style = 'margin-left: 45%;'>Previous Page </button>";
					die();
				}
		
		
			echo "<h2>SUBJECT AND CLASS BESTS FOR $_POST[class]</h2>";
			
			echo "<div class = 'noprint'>";
						echo "<button class = 'print' onclick = 'window.print()'> Print</button>";
						echo "<button onclick = 'window.location.href=`summary.php`'> Previous Page</button>";
						
			echo "</div>";
			
			
		//selecting subjects 
			$sub = "SELECT `subjects` FROM `$class_sub`";
			$sub_query = mysqli_query($Son, $sub);
			$subjects = mysqli_fetch_assoc($sub_query);
			$ject = $subjects['subjects'];
			
		//exploding...
		$explode = explode(",",$ject);
		
		
		
		
		//constructing table-holder
			echo "<form name = 'myform' onchange = 'myfunct()' action='' method = 'POST' enctype = 'multipart/form-data'>
					<select name='class'>";
						echo "<option value=''>Change Class</option>";
						
						$query = "SELECT classes FROM classes ORDER BY classes ASC";
						$submit1 = mysqli_query($Father, $query);
						$submit2 = mysqli_query($Father, $query);
						if(mysqli_fetch_assoc($submit1) == NULL){
							echo "<option value=''>No Class Created Yet</option>";
						}else{
							while($answer=mysqli_fetch_assoc($submit2)){
								echo "<option value='$answer[classes]'>$answer[classes]</option>";
							}
						}
				echo "</select>
			</form>";
			echo "<script>
					function myfunct(){
						var x = document.forms['myform']['class'].value;
						if(x == ''){
							alert('Please select a valid class');
						}else{
							myform.submit();
						}
					}
			</script>";
			echo "<table>";
						echo "<caption>SUBJECT BESTS</caption>";
					echo "<th>S/&#x2116; </th>";
					echo "<th>Subjects</th>";
					echo "<th>Names</th>";
					echo "<th colspan = 3>Scores</th>";
					echo "<th>Total</th>";
					echo "<th>Average</th>";
					echo "<th>Position</th>";
					echo "<tr>";
								echo "<td></td>";
								echo "<td></td>";
								echo "<td></td>";
								echo "<td><b>1st Term</b></td>";
								echo "<td><b>2nd Term</b></td>";
								echo "<td><b>3rd Term</b></td>";
								echo "<td></td>";
								echo "<td></td>";
								echo "<td></td>";
					echo "</tr>";
		//filling table
						$i = 1;
						foreach($explode as $sub){
							
							//selecting full name of subject
							$full = "SELECT `subject` FROM `subjects` WHERE abbreviation = '$sub'";
							$full_query = mysqli_query($Father, $full);
							$full_sub = mysqli_fetch_assoc($full_query);
							$full_name = ucwords( strtolower($full_sub['subject']));
							echo "<tr>";
										echo "<td>$i.</td>";
										echo "<td>$full_name</td>";
							//creating temporary table
										$tempo = "tempo".$class;
										$create = "CREATE TABLE IF NOT EXISTS `$tempo` (
											`ID` int(11) NOT NULL AUTO_INCREMENT,
											`name` text NOT NULL,
											`st` double NOT NULL,
											`nd` double NOT NULL,
											`rd` double NOT NULL,
											`total` double NOT NULL,
											`average` double NOT NULL,
											`position` text NOT NULL,
											PRIMARY KEY (ID)
						
															)";
										$create_query = mysqli_query($Son, $create);
										
										
							//Inserting student names
									$insert = "INSERT INTO `$tempo` (name) SELECT name FROM `$new1` WHERE NOT EXISTS(SELECT name FROM `$tempo` WHERE $tempo.name = $new1.name)";
									$insert_query = mysqli_query($Son, $insert);
									
									$darasi = "Total_".$sub;
									
								//checking if subject total exists for 1st term!
										
										//For 1st Term
										$table1 = "SHOW COLUMNS FROM `$new1`" ;
										$table1_query = mysqli_query($Son, $table1);
										$val1 = "";
										while($tab1 = mysqli_fetch_assoc($table1_query)){
											if(strcmp($tab1['Field'],$darasi ) == 0){
												$val1.=$tab1['Field'];
											}
										}
										if($val1 == ""){
											$term1 = 0;
											$names = "SELECT name FROM `$tempo`";
											$names_query = mysqli_query($Son, $names);
											
											while($naming1 = mysqli_fetch_assoc($names_query)){
												$special = $naming1['name'];
												
												$update1 = "UPDATE `$tempo` SET st = '$term1' WHERE name = '$special' ";
												$update1_query = mysqli_query($Son, $update1);
											}
										}else{
												$names = "SELECT name FROM `$tempo`";
												$names_query = mysqli_query($Son, $names);
											
											while($naming1 = mysqli_fetch_assoc($names_query)){
												$special = $naming1['name'];
												$score1 = "SELECT `$val1` FROM `$new1` WHERE name = '$special'";
												$score1_query = mysqli_query($Son, $score1);
												$core1 = mysqli_fetch_assoc($score1_query);
												$term1 = $core1[$val1];
												$update1 = "UPDATE `$tempo` SET st = '$term1' WHERE name = '$special' ";
												$update1_query = mysqli_query($Son, $update1);
											}
										}
									
									
									
									
									//checking if subject total exists for 2nd term!
										
										//For 2nd Term
										$table2 = "SHOW COLUMNS FROM `$new2`" ;
										$table2_query = mysqli_query($Son, $table2);
										$val2 = "";
										while($tab2 = mysqli_fetch_assoc($table2_query)){
											if(strcmp($tab2['Field'],$darasi ) == 0){
												$val2.=$tab2['Field'];
											}
										}
										if($val2 == ""){
											$term2 = 0;
											$names = "SELECT name FROM `$tempo`";
											$names_query = mysqli_query($Son, $names);
											
											while($naming2 = mysqli_fetch_assoc($names_query)){
												$special = $naming2['name'];
												
												$update2 = "UPDATE `$tempo` SET nd = '$term2' WHERE name = '$special' ";
												$update2_query = mysqli_query($Son, $update2);
											}
										}else{
												$names = "SELECT name FROM `$tempo`";
												$names_query = mysqli_query($Son, $names);
											
											while($naming2 = mysqli_fetch_assoc($names_query)){
												$special = $naming2['name'];
												$score2 = "SELECT `$val2` FROM `$new2` WHERE name = '$special'";
												$score2_query = mysqli_query($Son, $score2);
												$core2 = mysqli_fetch_assoc($score2_query);
												$term2 = $core2[$val2];
												$update2 = "UPDATE `$tempo` SET nd = '$term2' WHERE name = '$special' ";
												$update2_query = mysqli_query($Son, $update2);
											}
										}
										
										
									
									
								//checking if subject total exists for 3rd term!
										
										//For 3rd Term
										$table3 = "SHOW COLUMNS FROM `$new3`" ;
										$table3_query = mysqli_query($Son, $table3);
										$val3 = "";
										while($tab3 = mysqli_fetch_assoc($table3_query)){
											if(strcmp($tab3['Field'],$darasi ) == 0){
												$val3.=$tab3['Field'];
											}
										}
										if($val3 == ""){
											$term3 = 0;
											$names = "SELECT name FROM `$tempo`";
											$names_query = mysqli_query($Son, $names);
											
											while($naming3 = mysqli_fetch_assoc($names_query)){
												$special = $naming3['name'];
												
												$update3 = "UPDATE `$tempo` SET rd = '$term3' WHERE name = '$special' ";
												$update3_query = mysqli_query($Son, $update3);
											}
										}else{
												$names = "SELECT name FROM `$tempo`";
												$names_query = mysqli_query($Son, $names);
											
											while($naming3 = mysqli_fetch_assoc($names_query)){
												$special = $naming3['name'];
												$score3 = "SELECT `$val3` FROM `$new3` WHERE name = '$special'";
												$score3_query = mysqli_query($Son, $score3);
												$core3 = mysqli_fetch_assoc($score3_query);
												$term3 = $core3[$val3];
												$update3 = "UPDATE `$tempo` SET rd = '$term3' WHERE name = '$special' ";
												$update3_query = mysqli_query($Son, $update3);
											}
										}
						//summing each row
										
											$add = "SELECT name FROM `$tempo`";
											$add_query = mysqli_query($Son, $add);
											
											while($summing = mysqli_fetch_assoc($add_query)){
												$special = $summing['name'];
												
												$sum = "UPDATE `$tempo` SET total = (st + nd + rd), average = total/3 WHERE name = '$special' ";
												$sum_query = mysqli_query($Son, $sum);
											}
						
									
				
				//assigning positions
				
					$position = "SELECT ID, average FROM `$tempo` ORDER BY average DESC";
					$pos_query = mysqli_query($Son, $position);
					
					$sition = 1;
					while($pos = mysqli_fetch_assoc($pos_query)){
						$id = $pos['ID'];
						if($sition == 1 || $sition == 21 || $sition == 31 || $sition == 41 || $sition == 51 || $sition == 61 || $sition == 71 || $sition == 81 || $sition == 91 || $sition == 101 || $sition == 121 || $sition == 131 || $sition == 141 || $sition == 151 || $sition == 161 || $sition == 171 || $sition == 181 || $sition == 191 || $sition == 201 || $sition == 221 || $sition == 231 || $sition == 241 || $sition == 251 ||
						$sition == 261 || $sition == 271 || $sition == 281 || $sition == 291 || $sition == 301 || $sition == 321 || $sition == 331 || $sition == 341 || $sition == 351 || $sition == 361 || $sition == 371 || $sition == 381 || $sition == 391 || $sition == 401 || $sition == 421 || $sition == 431 || $sition == 441 || $sition == 451 || $sition == 461 || $sition == 471 || $sition == 481 || $sition == 491){
							$ord = "st";
						}elseif($sition == 2 || $sition == 22 || $sition == 32 || $sition == 42 || $sition == 52 || $sition == 62 || $sition == 72 || $sition == 82 || $sition == 92 || $sition == 102 || $sition == 122 || $sition == 132 || $sition == 142 || $sition == 152 || $sition == 162 || $sition == 172 || $sition == 182 || $sition == 192 || $sition == 202 || $sition == 222 || $sition == 232 || $sition == 242 || $sition == 252 ||
						$sition == 262 || $sition == 272 || $sition == 282 || $sition == 292 || $sition == 302 || $sition == 322 || $sition == 332 || $sition == 342 || $sition == 352 || $sition == 362 || $sition == 372 || $sition == 382 || $sition == 392 || $sition == 402 || $sition == 422 || $sition == 432 || $sition == 442 || $sition == 452 || $sition == 462 || $sition == 472 || $sition == 482 || $sition == 492){
							$ord = "nd";
						}elseif($sition == 3 || $sition == 23 || $sition == 33 || $sition == 43 || $sition == 53 || $sition == 63 || $sition == 73 || $sition == 83 || $sition == 93 || $sition == 103 || $sition == 123 || $sition == 133 || $sition == 143 || $sition == 153 || $sition == 163 || $sition == 173 || $sition == 183 || $sition == 193 || $sition == 203 || $sition == 223 || $sition == 233 || $sition == 243 || $sition == 253 ||
						$sition == 263 || $sition == 273 || $sition == 283 || $sition == 293 || $sition == 303 || $sition == 323 || $sition == 333 || $sition == 343 || $sition == 353 || $sition == 363 || $sition == 373 || $sition == 383 || $sition == 393 || $sition == 403 || $sition == 423 || $sition == 433 || $sition == 443 || $sition == 453 || $sition == 463 || $sition == 473 || $sition == 483 || $sition == 493){
							$ord = "rd";
						}else{
							$ord = "th";
						}
							$zion = $sition.$ord;
							$update = "UPDATE `$tempo` SET position = '$zion' WHERE ID = '$id'";
							$update_query = mysqli_query($Son, $update);
						$sition++;	
	
					}
					

					//repositioning...
						$repos = "SELECT DISTINCT `total` FROM `$tempo`";
						$repos_query = mysqli_query($Son, $repos);
						
					
						//looping through each score
						while($ans=mysqli_fetch_assoc($repos_query)){
							$lue = $ans['total'];
							$norah = "SELECT `ID`, `position` FROM `$tempo` WHERE `total` = $lue ORDER BY position ASC LIMIT 1 ";
							$norah_query = mysqli_query($Son, $norah);
							
							while($tino = mysqli_fetch_assoc($norah_query)){
								$mypos = $tino['position'];
								$newpos = "UPDATE `$tempo` SET position = '$mypos' WHERE total = $lue"; 
								$newpos_query = mysqli_query($Son, $newpos);
							}
							
						}
		//fetching result from tempo 
						//selecting names for 1st position
						$result1 = "SELECT name FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						echo "<td>";
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['name'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
						//selecting names for second position
						$result2 = "SELECT name FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['name'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting names for third position
						$result3 = "SELECT name FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['name'].",";
								
							}
							echo trim($rez3,",");
							
						echo "</td>";
				//selecting 1st term scores1
								
						echo "<td>";
						$result1 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['st'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 1st term scores2
						$result2 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['st'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 1st term scores3
						$result3 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['st'].",";
								
							}
							echo trim($rez3,",");
										
							echo "</td>";
										
									
										
										
										
				//selecting 2nd term scores1
								
						echo "<td>";
						$result1 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['nd'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 2nd term scores2
						$result2 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['nd'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 2nd term scores3
						$result3 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['nd'].",";
								
							}
							echo trim($rez3,",");
										
						echo "</td>";
										
						echo "<td>";
									 
					//selecting 3rd term scores1
								
						$result1 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['rd'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 3rd term scores2
						$result2 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['rd'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 3rd term scores3
						$result3 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['rd'].",";
								
							}
							echo trim($rez3,",");

				
						echo "</td>";
						
						echo "<td>";
						//Selecting Totals
						
								//selecting total for 1st position
								
					
						$result1 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['total'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting total for 2nd position
						$result2 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['total'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting total for 3rd position
						$result3 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['total'].",";
								
							}
							echo trim($rez3,",");
						echo "</td>";
						
										echo "<td>";
				//Selecting Averages
								//selecting average for 1st position
								
					
						$result1 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez1,","),2);
							echo "<br />";
				//selecting average for 2nd position
						$result2 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query1 = mysqli_query($Son, $result2);
						$result2_query2 = mysqli_query($Son, $result2);
							if(mysqli_fetch_assoc($result2_query1) != NULL){
								$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query2) ){
								 
								 $rez2.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez2,","),2);
							}
						
							echo "<br />";
							
						//selecting average for 3rd position
						$result3 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query1 = mysqli_query($Son, $result3);
						$result3_query2 = mysqli_query($Son, $result3);
							if(mysqli_fetch_assoc($result3_query1) != NULL){
								
								$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query2) ){
								 
								 $rez3.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez3,","),2);
								
							}
						

										echo "</td>";
										
						echo "<td>";
						//For positions
									//selecting position for 1st position
								
					
						$result1 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['position'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting position for 2nd position
						$result2 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['position'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting position for 3rd position
						$result3 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['position'].",";
								
							}
							echo trim($rez3,",");

								echo "</td>";
	//Destroying table tempo 
				//$destroy = "DROP TABLE `$tempo`";
				//$destroy_query = mysqli_query($Son, $destroy);
							echo "</tr>";
						$i++;
						
						}
					
			echo "</table>";
		
		echo "<br /><br /> <br />";
			
		
//Overall bests for 1st, 2nd & 3rd
				echo "<table>";
								echo "<caption>CLASS OVERALL BEST FOR $_POST[class]</caption>";
							echo "<th>S/&#x2116;</th>";
							echo "<th>Names</th>";
							echo "<th colspan = 3 >Average</th>";
							echo "<th>Cumulative Average</th>";
							echo "<th>Sessional Average</th>";
							echo "<th>Position</th>";
							echo "<tr>";
										echo "<td> </td>";
										echo "<td> </td>";
										echo "<td>1st Term</td>";
										echo "<td>2nd Term </td>";
										echo "<td>3rd Term</td>";
										echo "<td> </td>";
										echo "<td> </td>";
										echo "<td> </td>";
						
							echo "</tr>";
							
							echo "<tr>";
								echo "<td>";
											echo "1. <br />";
											echo "2. <br />";
											echo "3.";
								echo "</td>";
			//creating Temporary Table 
								$tempo = "tempo".$class;
										$create = "CREATE TABLE IF NOT EXISTS `$tempo` (
											`ID` int(11) NOT NULL AUTO_INCREMENT,
											`name` text NOT NULL,
											`st` double NOT NULL,
											`nd` double NOT NULL,
											`rd` double NOT NULL,
											`total` double NOT NULL,
											`average` double NOT NULL,
											`position` text NOT NULL,
											PRIMARY KEY (ID)
						
															)";
								$create_query = mysqli_query($Son, $create);
			//Inserting names into table 
								//Inserting student names
									$insert = "INSERT INTO `$tempo` (name) SELECT name FROM `$new1` WHERE NOT EXISTS(SELECT name FROM `$tempo` WHERE $tempo.name = $new1.name)";
									$insert_query = mysqli_query($Son, $insert);
									
								//Fetching names 
								$students = "SELECT name FROM `$tempo`";
								$students_query = mysqli_query($Son, $students);
								while($stud = mysqli_fetch_assoc($students_query)){
									$name = $stud['name'];
									//selecting 1st term average
										$av1 = "SELECT `average` FROM `$new1` WHERE name = '$name'";
										$av1_query = mysqli_query($Son, $av1);
										$val1 = mysqli_fetch_assoc($av1_query);
										$value1 = $val1['average'];
									//selecting 2nd term average 
										$av2 = "SELECT `average` FROM `$new2` WHERE name = '$name'";
										$av2_query = mysqli_query($Son, $av2);
										$val2 = mysqli_fetch_assoc($av2_query);
										$value2 = $val2['average'];
										
									//selecting 3rd term average 
										$av3 = "SELECT `average` FROM `$new3` WHERE name = '$name'";
										$av3_query = mysqli_query($Son, $av3);
										$val3 = mysqli_fetch_assoc($av3_query);
										$value3 = $val3['average'];
										
									//updating averages
										$update = "UPDATE `$tempo` SET st = '$value1', nd = '$value2', rd = '$value3', total = ('$value1' + '$value2' + '$value3'), average = total/3 WHERE name = '$name'";
										$update_query = mysqli_query($Son, $update);
									
								}
			//Positioning 
					$position = "SELECT ID, average FROM `$tempo` ORDER BY average DESC";
					$pos_query = mysqli_query($Son, $position);
					
					$sition = 1;
					while($pos = mysqli_fetch_assoc($pos_query)){
						$id = $pos['ID'];
						if($sition == 1 || $sition == 21 || $sition == 31 || $sition == 41 || $sition == 51 || $sition == 61 || $sition == 71 || $sition == 81 || $sition == 91 || $sition == 101 || $sition == 121 || $sition == 131 || $sition == 141 || $sition == 151 || $sition == 161 || $sition == 171 || $sition == 181 || $sition == 191 || $sition == 201 || $sition == 221 || $sition == 231 || $sition == 241 || $sition == 251 ||
						$sition == 261 || $sition == 271 || $sition == 281 || $sition == 291 || $sition == 301 || $sition == 321 || $sition == 331 || $sition == 341 || $sition == 351 || $sition == 361 || $sition == 371 || $sition == 381 || $sition == 391 || $sition == 401 || $sition == 421 || $sition == 431 || $sition == 441 || $sition == 451 || $sition == 461 || $sition == 471 || $sition == 481 || $sition == 491){
							$ord = "st";
						}elseif($sition == 2 || $sition == 22 || $sition == 32 || $sition == 42 || $sition == 52 || $sition == 62 || $sition == 72 || $sition == 82 || $sition == 92 || $sition == 102 || $sition == 122 || $sition == 132 || $sition == 142 || $sition == 152 || $sition == 162 || $sition == 172 || $sition == 182 || $sition == 192 || $sition == 202 || $sition == 222 || $sition == 232 || $sition == 242 || $sition == 252 ||
						$sition == 262 || $sition == 272 || $sition == 282 || $sition == 292 || $sition == 302 || $sition == 322 || $sition == 332 || $sition == 342 || $sition == 352 || $sition == 362 || $sition == 372 || $sition == 382 || $sition == 392 || $sition == 402 || $sition == 422 || $sition == 432 || $sition == 442 || $sition == 452 || $sition == 462 || $sition == 472 || $sition == 482 || $sition == 492){
							$ord = "nd";
						}elseif($sition == 3 || $sition == 23 || $sition == 33 || $sition == 43 || $sition == 53 || $sition == 63 || $sition == 73 || $sition == 83 || $sition == 93 || $sition == 103 || $sition == 123 || $sition == 133 || $sition == 143 || $sition == 153 || $sition == 163 || $sition == 173 || $sition == 183 || $sition == 193 || $sition == 203 || $sition == 223 || $sition == 233 || $sition == 243 || $sition == 253 ||
						$sition == 263 || $sition == 273 || $sition == 283 || $sition == 293 || $sition == 303 || $sition == 323 || $sition == 333 || $sition == 343 || $sition == 353 || $sition == 363 || $sition == 373 || $sition == 383 || $sition == 393 || $sition == 403 || $sition == 423 || $sition == 433 || $sition == 443 || $sition == 453 || $sition == 463 || $sition == 473 || $sition == 483 || $sition == 493){
							$ord = "rd";
						}else{
							$ord = "th";
						}
							$zion = $sition.$ord;
							$update = "UPDATE `$tempo` SET position = '$zion' WHERE ID = '$id'";
							$update_query = mysqli_query($Son, $update);
						$sition++;	
	
					}
					

					//repositioning...
						$repos = "SELECT DISTINCT `total` FROM `$tempo`";
						$repos_query = mysqli_query($Son, $repos);
						
					
						//looping through each score
						while($ans=mysqli_fetch_assoc($repos_query)){
							$lue = $ans['total'];
							$norah = "SELECT `ID`, `position` FROM `$tempo` WHERE `total` = $lue ORDER BY position ASC LIMIT 1 ";
							$norah_query = mysqli_query($Son, $norah);
							
							while($tino = mysqli_fetch_assoc($norah_query)){
								$mypos = $tino['position'];
								$newpos = "UPDATE `$tempo` SET position = '$mypos' WHERE total = $lue"; 
								$newpos_query = mysqli_query($Son, $newpos);
							}
							
						}
						
//
				//fetching result from tempo 
						//selecting names for 1st position
						$result1 = "SELECT name FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						echo "<td>";
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['name'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
						//selecting names for second position
						$result2 = "SELECT name FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['name'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting names for third position
						$result3 = "SELECT name FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['name'].",";
								
							}
							echo trim($rez3,",");
							
						echo "</td>";
				//selecting 1st term scores1
								
						echo "<td>";
						$result1 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['st'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 1st term scores2
						$result2 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['st'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 1st term scores3
						$result3 = "SELECT DISTINCT st FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['st'].",";
								
							}
							echo trim($rez3,",");
										
							echo "</td>";
										
									
										
										
										
				//selecting 2nd term scores1
								
						echo "<td>";
						$result1 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['nd'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 2nd term scores2
						$result2 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['nd'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 2nd term scores3
						$result3 = "SELECT DISTINCT nd FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['nd'].",";
								
							}
							echo trim($rez3,",");
										
						echo "</td>";
										
						echo "<td>";
									 
					//selecting 3rd term scores1
								
						$result1 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['rd'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting 3rd term scores2
						$result2 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['rd'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting 3rd term scores3
						$result3 = "SELECT DISTINCT rd FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['rd'].",";
								
							}
							echo trim($rez3,",");

				
						echo "</td>";
						
						echo "<td>";
						//Selecting Totals
						
								//selecting total for 1st position
								
					
						$result1 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['total'].",";
								
							}
							if($rez1 == ""){
								$rez1 = 0;
								echo number_format(trim($rez1,","),2);
							}else{
								echo number_format(trim($rez1,","),2);
							}
							echo "<br />";
				//selecting total for 2nd position
						$result2 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['total'].",";
								
							}
							if($rez2 == ""){
								$rez2 = 0;
								echo number_format(trim($rez2,","),2);
							}else{
								echo number_format(trim($rez2,","),2);
							}
							echo "<br />";
							
						//selecting total for 3rd position
						$result3 = "SELECT DISTINCT total FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['total'].",";
								
							}
							if($rez3 == ""){
								$rez3 = 0;
								echo number_format(trim($rez3,","),2);
							}else{
								echo number_format(trim($rez3,","),2);
							}
						echo "</td>";
						
										echo "<td>";
				//Selecting Averages
								//selecting average for 1st position
								
					
						$result1 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez1,","),2);
							echo "<br />";
				//selecting average for 2nd position
						$result2 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query1 = mysqli_query($Son, $result2);
						$result2_query2 = mysqli_query($Son, $result2);
							if(mysqli_fetch_assoc($result2_query1) != NULL){
								$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query2) ){
								 
								 $rez2.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez2,","),2);
							}
						
							echo "<br />";
							
						//selecting average for 3rd position
						$result3 = "SELECT DISTINCT average FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query1 = mysqli_query($Son, $result3);
						$result3_query2 = mysqli_query($Son, $result3);
							if(mysqli_fetch_assoc($result3_query1) != NULL){
								
								$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query2) ){
								 
								 $rez3.= $resulting['average'].",";
								
							}
							echo number_format(trim($rez3,","),2);
								
							}
						

										echo "</td>";
										
						echo "<td>";
						//For positions
									//selecting position for 1st position
								
					
						$result1 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '1st' ORDER BY name ASC";
						$result1_query = mysqli_query($Son, $result1);
						
						$rez1 = "";
						while($resulting = mysqli_fetch_assoc($result1_query) ){
								 
								 $rez1.= $resulting['position'].",";
								
							}
							echo trim($rez1,",");
							echo "<br />";
				//selecting position for 2nd position
						$result2 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '2nd' ORDER BY name ASC";
						$result2_query = mysqli_query($Son, $result2);
						$rez2 = "";
						while($resulting = mysqli_fetch_assoc($result2_query) ){
								 
								 $rez2.= $resulting['position'].",";
								
							}
							echo trim($rez2,",");
							echo "<br />";
							
						//selecting position for 3rd position
						$result3 = "SELECT DISTINCT position FROM `$tempo` WHERE position = '3rd' ORDER BY name ASC";
						$result3_query = mysqli_query($Son, $result3);
						$rez3 = "";
						while($resulting = mysqli_fetch_assoc($result3_query) ){
								 
								 $rez3.= $resulting['position'].",";
								
							}
							echo trim($rez3,",");

								echo "</td>";
				echo "</tr>";
								
				echo "</table>";
?>
</body>
</html>
