<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>:Records Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<style type="text/css"> 
	@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			
		body{
			background: #f0f0f0;
		}
		h2,h3,h4{
				color: #e93838;
				text-align: center;
				font-family: Gabriola;
				font-size: 2vw;
				margin-top: 10%;
			}
		@media only screen and (max-width: 768px){
			h2{font-size: 5vw; margin-top: 30%;}
		}
			
	
	</style>
</head>
<body>
	
</body>
</html>
<?php
		session_start();
		$class = str_replace(" ", "",$_SESSION['class']);
		$sub = $_SESSION['subject'];
		$subject = strtolower(str_replace(" ", "",$_SESSION['subject']));
		$ter = strtolower($class)."_1st_term_".$subject; //change
		
		include '../../sub_conn.php';
		include '../../teach_conn.php';
		include '../../all_conn.php';
		
		//checking if table exists
		$looking = "SHOW TABLES";
		$looking_query = mysqli_query($HolySpirit, $looking);
		$g = "";
		while($looks = mysqli_fetch_assoc($looking_query)){
			if(strcmp($looks['Tables_in_subjects'],$ter) == 0){
				$g.= $looks['Tables_in_subjects'];
			}
		}
		
		
		
		if($g != ""){
			echo "<h2>Sorry, this class has scores in it already. You can only edit!</h2>";
				header("Refresh: 3, url=record_1.php");
				
				die();;
		}else{
			
		

		
		$new = strtolower($class."_1st_term"); //change
		
				$abbreviation = "SELECT abbreviation FROM subjects WHERE subject = '$sub' "; 
				$abb_query = mysqli_query($Father, $abbreviation);
				$abb = mysqli_fetch_assoc($abb_query);
				$viate = $abb['abbreviation']."_total";
				
		
			$register = strtolower($class)."_1st_term_".$subject; //change
			$reg = "CREATE TABLE IF NOT EXISTS `$register` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				name text  NULL,
				ca1 double  NULL,
				ca2 double  NULL,
				ca3 double  NULL,
				ca4 double  NULL,
				ca_total double  NULL,
				exam double  NULL,
				$viate double  NULL,
				grade text  NULL,
				position text  NULL,
				PRIMARY KEY (ID)
			
			)";
			$reg_query = mysqli_query($HolySpirit, $reg);
			
			//checking ca num
			$ca = "SELECT `numca` FROM `info_exams` ";
			$ca_query = mysqli_query($Father, $ca);
			$myca = mysqli_fetch_assoc($ca_query);
			$myca = $myca['numca'];
			
			
			if($myca == "2"){
					$names = "SELECT name FROM `$new`";
					$name_sub = mysqli_query($Son, $names);
					
					
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						$name = $_POST[$me];
						$val1 = $name[0];
						$val2 = $name[1];
						$val3 = $name[2];
						$val4 = $name[3];
						$val5 = $name[4];
						$val6 = $name[5];
						$val7 = $name[6];
						
						$result = "INSERT INTO `$register`(`name`, `ca1`, `ca2`,`ca_total`, `exam`, `$viate`, `grade` ) VALUES('$val1', '$val2', '$val3', '$val4', '$val5', '$val6', '$val7')";
						$submit_result = mysqli_query($HolySpirit, $result);
					}
			}elseif($myca == "3"){
						$names = "SELECT name FROM `$new`";
						$name_sub = mysqli_query($Son, $names);
					
					
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						$name = $_POST[$me];
						$val1 = $name[0];
						$val2 = $name[1];
						$val3 = $name[2];
						$val4 = $name[3];
						$val5 = $name[4];
						$val6 = $name[5];
						$val7 = $name[6];
						$val8 = $name[7];
						
						$result = "INSERT INTO `$register`(`name`, `ca1`, `ca2`, `ca3`, `ca_total`, `exam`, `$viate`, `grade` ) VALUES('$val1', '$val2', '$val3', '$val4', '$val5', '$val6', '$val7', '$val8')";
						$submit_result = mysqli_query($HolySpirit, $result);
					}
			}elseif($myca == "4"){
						$names = "SELECT name FROM `$new`";
						$name_sub = mysqli_query($Son, $names);
					
					
					while($nam = mysqli_fetch_assoc($name_sub)){
						$me = str_replace(" ", "",$nam['name']);
						$me = str_replace(".", "", $me);
						$name = $_POST[$me];
						$val1 = $name[0];
						$val2 = $name[1];
						$val3 = $name[2];
						$val4 = $name[3];
						$val5 = $name[4];
						$val6 = $name[5];
						$val7 = $name[6];
						$val8 = $name[7];
						$val9 = $name[8];
						
						$result = "INSERT INTO `$register`(`name`, `ca1`, `ca2`, `ca3`,`ca4`, `ca_total`, `exam`, `$viate`, `grade` ) VALUES('$val1', '$val2', '$val3', '$val4', '$val5', '$val6', '$val7', '$val8', '$val9')";
						$submit_result = mysqli_query($HolySpirit, $result);
			}
			
			}
					
					//assigning positions
					$position = "SELECT ID, $viate FROM `$register` ORDER BY $viate DESC";
					$pos_query = mysqli_query($HolySpirit, $position);
					
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
							$update = "UPDATE `$register` SET position = '$zion' WHERE ID = '$id'";
							$update_query = mysqli_query($HolySpirit, $update);
						$sition++;	
	
					}
					

					//repositioning...
						$repos = "SELECT DISTINCT `$viate` FROM `$register`";
						$repos_query = mysqli_query($HolySpirit, $repos);
						
					
						//looping through each score
						while($ans=mysqli_fetch_assoc($repos_query)){
							$lue = $ans[$viate];
							$norah = "SELECT `ID`, `position` FROM `$register` WHERE `$viate` = $lue ORDER BY position ASC LIMIT 1 ";
							$norah_query = mysqli_query($HolySpirit, $norah);
							
							while($tino = mysqli_fetch_assoc($norah_query)){
								$mypos = $tino['position'];
								$newpos = "UPDATE `$register` SET position = '$mypos' WHERE $viate = $lue"; 
								$newpos_query = mysqli_query($HolySpirit, $newpos);
							}
							
						}
						
						// Sending to Broadsheet!
						//Adding column names
						$gister = $class."_1st_term"; //change
						$short = $abb['abbreviation'];
						$field1 = $short."_ca1";
						$field2 = $short."_ca2";
						$field3 = $short."_ca3";
						$field4 = $short."_ca4";
						$field5 = $short."_ca_total";
						$field6 = $short."_exam";
						$field7 = "Total_".$short;
						$field8 = $short."_grade";
						$field9 = $short."_pos";
						
						$broadsheet = "ALTER TABLE `$gister` ADD `$field1` DOUBLE NOT NULL AFTER `DOB`, ADD `$field2` DOUBLE NOT NULL AFTER `$field1`, ADD `$field3` DOUBLE NOT NULL AFTER `$field2`, ADD `$field4` DOUBLE NOT NULL AFTER `$field3`, ADD `$field5` DOUBLE NOT NULL AFTER `$field4`, ADD `$field6` DOUBLE NOT NULL AFTER `$field5`, ADD `$field7` DOUBLE NOT NULL AFTER `$field6`, ADD `$field8` text NOT NULL AFTER `$field7`, ADD `$field9` text NOT NULL AFTER `$field8` ";
						$broadsheet_query = mysqli_query($Son, $broadsheet);
						
						if($myca == "2"){
							
									//sending data
								$broad = "SELECT ID, name FROM `$gister` ORDER BY name ASC";
								$broad_query = mysqli_query($Son, $broad);
								while($broading = mysqli_fetch_assoc($broad_query)){
									$my = str_replace(" ", "", $broading['name']);
									$my = str_replace(".", "", $my);
									$naming = $_POST[$my];
									$id = $broading['ID'];
									$lu1 = $naming[1];
									$lu2 = $naming[2];
									$lu3 = $naming[3];
									$lu4 = $naming[4];
									$lu5 = $naming[5];
									$lu6 = $naming[6];
									
									
									
									$putting = "UPDATE `$gister` SET `$field1` = $lu1, `$field2` = $lu2, `$field5` = $lu3, `$field6` = $lu4, `$field7` = $lu5, `$field8` = '$lu6' WHERE ID = '$id' ";
									$putting_query = mysqli_query($Son, $putting);
									
									// sending position to broadsheet
									$zition = "Select name, position FROM `$register`";
									$zition_query = mysqli_query($HolySpirit, $zition);
									while($fetch = mysqli_fetch_assoc($zition_query)){
										$alpha = $fetch['name'];
										$omega = $fetch['position'];
										$zit_update = "UPDATE `$gister` SET `$field9` = '$omega' WHERE name = '$alpha'";
										$zit_update_query = mysqli_query($Son, $zit_update);
									}
								}
							
						}elseif($myca == "3"){
								//sending data
						$broad = "SELECT ID, name FROM `$gister` ORDER BY name ASC";
						$broad_query = mysqli_query($Son, $broad);
						while($broading = mysqli_fetch_assoc($broad_query)){
							$my = str_replace(" ", "", $broading['name']);
							$my = str_replace(".", "", $my);
							$naming = $_POST[$my];
							$id = $broading['ID'];
							$lu1 = $naming[1];
							$lu2 = $naming[2];
							$lu3 = $naming[3];
							$lu4 = $naming[4];
							$lu5 = $naming[5];
							$lu6 = $naming[6];
							$lu7 = $naming[7];
							
							$putting = "UPDATE `$gister` SET `$field1` = $lu1, `$field2` = $lu2, `$field3` = $lu3, `$field5` = $lu4, `$field6` = $lu5, `$field7` = $lu6, `$field8` = '$lu7' WHERE ID = '$id' ";
							$putting_query = mysqli_query($Son, $putting);
							
							// sending position to broadsheet
						$zition = "Select name, position FROM `$register`";
						$zition_query = mysqli_query($HolySpirit, $zition);
						while($fetch = mysqli_fetch_assoc($zition_query)){
							$alpha = $fetch['name'];
							$omega = $fetch['position'];
							$zit_update = "UPDATE `$gister` SET `$field9` = '$omega' WHERE name = '$alpha'";
							$zit_update_query = mysqli_query($Son, $zit_update);
							
						}
						}
						}elseif($myca == "4"){
								//sending data
						$broad = "SELECT ID, name FROM `$gister` ORDER BY name ASC";
						$broad_query = mysqli_query($Son, $broad);
						while($broading = mysqli_fetch_assoc($broad_query)){
							$my = str_replace(" ", "", $broading['name']);
							$my = str_replace(".", "", $my);
							$naming = $_POST[$my];
							echo $id = $broading['ID'];
							echo $lu1 = $naming[1];
							echo $lu2 = $naming[2];
							echo $lu3 = $naming[3];
							echo $lu4 = $naming[4];
							echo $lu5 = $naming[5];
							echo $lu6 = $naming[6];
							echo $lu7 = $naming[7];
							echo $lu8 = $naming[8];
							
							$putting = "UPDATE `$gister` SET `$field1` = '$lu1', `$field2` = '$lu2', `$field3` = '$lu3', `$field4` = '$lu4', `$field5` = '$lu5', `$field6` = '$lu6', `$field7` = '$lu7', `$field8` = '$lu8' WHERE ID = '$id' ";
							$putting_query = mysqli_query($Son, $putting);
							}
							
							
							// sending position to broadsheet
						$zition = "Select name, position FROM `$register`";
						$zition_query = mysqli_query($HolySpirit, $zition);
						while($fetch = mysqli_fetch_assoc($zition_query)){
							$alpha = $fetch['name'];
							$omega = $fetch['position'];
							$zit_update = "UPDATE `$gister` SET `$field9` = '$omega' WHERE name = '$alpha'";
							$zit_update_query = mysqli_query($Son, $zit_update);
						}
						
							
						}
					
					header('Location: record_1.php'); //change
					
	}
?>