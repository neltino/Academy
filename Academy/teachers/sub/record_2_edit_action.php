<?php
		session_start();
		
		include '../../teach_conn.php';
		include '../../sub_conn.php';
		include '../../all_conn.php';
		
		$class = strtolower(str_replace(" ","",$_SESSION['class']));
		$subject = strtolower(str_replace(" ","",$_SESSION['subject']));
		$sub = $_SESSION['subject'];
		
		//selecting abbreviation for subject
		$course = "SELECT  abbreviation FROM subjects WHERE subject = '$sub'";
		$course_query = mysqli_query($Father, $course);
		$course_query2 = mysqli_query($Father, $course);
		$ans = mysqli_fetch_assoc($course_query);
		$abb = $ans['abbreviation'];
		$abb = $abb."_total";
	
		
		$myclass = $class."_2nd_term_".$subject;
		$asis = $_POST['asis'];
		$val = $_POST['new'];
		$val1 = $val[0];
		$val2 = $val[1];
		$val3 = $val[2];
		$val4 = $val[3];
		$val5 = $val[4];
		$val6 = $val[5];
		$val7 = $val[6];
		$val8 = $val[7];
		$val9 = $val[8];
		$val10 = $val[9];
		
		//checking if student exist
		$name = "SELECT name FROM `$myclass` WHERE name = '$asis'";
		$name_query = mysqli_query($HolySpirit, $name);
		$result = mysqli_fetch_assoc($name_query);
		if($result == NULL){
				$ins = "INSERT INTO `$myclass`(`name`, `ca1`, `ca2`, `ca3`,`ca4`, `ca_total`, `exam`, `$abb`, `grade` ) VALUES('$asis', '$val2', '$val3', '$val4', '$val5', '$val6', '$val7', '$val8', '$val9')";
						$submit_result = mysqli_query($HolySpirit, $ins);
		}else{
			$update = "UPDATE `$myclass` SET `name` = '$asis', ca1 = '$val2', ca2 = '$val3', ca3 = '$val4', ca4 = '$val5', ca_total = '$val6', exam = '$val7', `$abb` = '$val8', grade = '$val9'  WHERE ID = '$val1'";
			$update_query = mysqli_query($HolySpirit, $update);
		}
		
		//Reassigning position
					$position = "SELECT ID, $abb FROM `$myclass` ORDER BY $abb DESC";
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
							$update = "UPDATE `$myclass` SET position = '$zion' WHERE ID = '$id'";
							$update_query = mysqli_query($HolySpirit, $update);
						$sition++;	
	
					}
					
		//repositioning...
						$repos = "SELECT DISTINCT `$abb` FROM `$myclass`";
						$repos_query = mysqli_query($HolySpirit, $repos);
						
					
						//looping through each score
						while($ans=mysqli_fetch_assoc($repos_query)){
							$lue = $ans[$abb];
							$norah = "SELECT `ID`, `position` FROM `$myclass` WHERE `$abb` = $lue ORDER BY position ASC LIMIT 1 ";
							$norah_query = mysqli_query($HolySpirit, $norah);
							
							while($tino = mysqli_fetch_assoc($norah_query)){
								$mypos = $tino['position'];
								$newpos = "UPDATE `$myclass` SET position = '$mypos' WHERE $abb = $lue"; 
								$newpos_query = mysqli_query($HolySpirit, $newpos);
							}
							
						}
						
		//updating 1st term Broadsheet
					$wer = mysqli_fetch_array($course_query2);
					$abba = $wer['abbreviation'];
					
					$pin1 = $abba."_ca1";
					$pin2 = $abba."_ca2";
					$pin3 = $abba."_ca3";
					$pin4 = $abba."_ca4";
					$pin5 = $abba."_ca_total";
					$pin6 = $abba."_exam";
					$pin7 = "Total_".$abba;
					$pin8 = $abba."_grade";
					$pin9 = $abba."_pos";
					
					$brsheet = strtolower(str_replace(" ", "", $class."_2nd_term"));
					
					$sheet = "UPDATE `$brsheet` SET `$pin1` = '$val2', `$pin2` = '$val3', `$pin3` = '$val4', `$pin4` = '$val5', `$pin5` = '$val6', `$pin6` = '$val7', `$pin7` = '$val8', `$pin8` = '$val9' WHERE name = '$asis'";
					$sheet_query = mysqli_query($Son, $sheet);
					
					//resending position to 1st term broadsheet
					
					$zition = "Select name, position FROM `$myclass`";
						$zition_query = mysqli_query($HolySpirit, $zition);
						while($fetch = mysqli_fetch_assoc($zition_query)){
							$alpha = $fetch['name'];
							$omega = $fetch['position'];
							$zit_update = "UPDATE `$brsheet` SET `$pin9` = '$omega' WHERE name = '$alpha'";
							$zit_update_query = mysqli_query($Son, $zit_update);
						}
					
				header('Location: record_2.php');

?>