<?php 
		ini_set('max_execution_time', 0);
		session_start();
		$class = $_SESSION['class'];
				include '../../teach_conn.php';
				include '../../all_conn.php';
				
				$myclass = strtolower(str_replace(" ", "", $class."_3rd_term")); //change
		
		
	
					//calculating totals
				$describe = "DESCRIBE `$myclass`";
				$describe_query = mysqli_query($Son, $describe);
						//selecting fields with totals only
				$f = "";
				while($desc = mysqli_fetch_assoc($describe_query)){
						if(strchr($desc['Field'], "Total_") == True){
							$f.= $desc['Field']."+";
						}
				}
				$list = chop($f,"+");
				
				
				if($list == ""){
					
							echo "<h3 style = 'color: red; text-align: center; font-family: teen;'>No Subject has been entered for this term!</h3>";
							header("Refresh: 3, url=broad_2.php");
									die();
	
				}
				
				//summing rows with ID
				$selectid = "SELECT ID FROM `$myclass`";
				$select_query = mysqli_query($Son, $selectid);
				while($myid = mysqli_fetch_assoc($select_query)){
					$id = $myid['ID'];
					$mysum = "SELECT SUM($list) AS Total FROM `$myclass` WHERE ID = '$id'";
					$mysum_query1 = mysqli_query($Son, $mysum);
					$mysum_query2 = mysqli_query($Son, $mysum);
					
					if($mysum_query1 != NULL){
						$sum = mysqli_fetch_assoc($mysum_query2);
						$mytotal = $sum['Total'];
					
					
					$update = "UPDATE `$myclass` SET grand = '$mytotal'  WHERE ID = '$id'";
					$update_query = mysqli_query($Son, $update);
					}else{
						break;
					}
					
				}
					$newlist = str_replace("+", ",", $list);
					$explode = explode(",", $newlist);
					
					
					
					
					
							$idselect = "SELECT ID FROM `$myclass`";
							$idselect_query = mysqli_query($Son, $idselect);
							
							while($ids = mysqli_fetch_assoc($idselect_query)){
								$myids = $ids['ID'];
								//creating temporary table
								$theavg = "avg".$class;
								$table = "CREATE TABLE `$theavg`( average double );";
								$table_query = mysqli_query($Son, $table);
								foreach($explode as $val){
									$put = "INSERT INTO `$theavg` (average) SELECT $val FROM `$myclass` WHERE ID = '$myids' AND $val > 0";
									$put_query = mysqli_query($Son, $put);
								}
								//calculating average
								$avg = "SELECT AVG(average) AS rage FROM `$theavg`";
								$avg_query = mysqli_query($Son, $avg);
								$g = mysqli_fetch_assoc($avg_query);
								$myavg = number_format($g['rage'],2);
								//Inserting average into broadsheet
								$update = "UPDATE `$myclass` SET average = $myavg WHERE ID = '$myids'";
								$update_query = mysqli_query($Son, $update);
								//destroy table avg
								$drop = "DROP TABLE `$theavg`";
								$drop_query = mysqli_query($Son, $drop);
								
							}
							
// checking grade type 
					$grade = "SELECT `reportsheet` FROM `info_exams` ";
					$grade_query = mysqli_query($Father, $grade);
					$grading = mysqli_fetch_assoc($grade_query);
					$mygrade = $grading['reportsheet'];
					
					if($mygrade == "alphabetic"){
						//selecting average 
						
						$select = "SELECT ID, average FROM `$myclass` ";
						$select_query = mysqli_query($Son, $select);
						
						while($selecting = mysqli_fetch_assoc($select_query)){
							$average = $selecting['average'];
							$id = $selecting['ID'];
							if($average >= 70){
								$grad = "A";
							}elseif($average >= 60){
								$grad = "B";
							}elseif($average >= 50){
								$grad = "C";
							}elseif($average >= 45){
								$grad = "D";
							}elseif($average >= 40){
								$grad = "E";
							}elseif($average < 39){
								$grad = "F";
							}
							
							//updating grades 
							$update = "UPDATE `$myclass` SET position = '$grad' WHERE ID = '$id' ";
							$update_query = mysqli_query($Son, $update);
						}
						
					}else{
						
						//positioning
	
			//assigning positions
					$position = "SELECT ID, average FROM `$myclass` ORDER BY average DESC";
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
							$update = "UPDATE `$myclass` SET position = '$zion' WHERE ID = '$id'";
							$update_query = mysqli_query($Son, $update);
						$sition++;	
	
					}
					

					//repositioning...
						$repos = "SELECT DISTINCT `average` FROM `$myclass`";
						$repos_query = mysqli_query($Son, $repos);
						
					
						//looping through each score
						while($ans=mysqli_fetch_assoc($repos_query)){
							$lue = $ans['average'];
							$norah = "SELECT `ID`, `position` FROM `$myclass` WHERE `average` = $lue ORDER BY position ASC LIMIT 1 ";
							$norah_query = mysqli_query($Son, $norah);
							
							while($tino = mysqli_fetch_assoc($norah_query)){
								$mypos = $tino['position'];
								$newpos = "UPDATE `$myclass` SET position = '$mypos' WHERE average = $lue"; 
								$newpos_query = mysqli_query($Son, $newpos);
							}
							
						}
			

					}
				
				if(isset($_POST['sub'])){
					header('Location: comm_3.php');
				}else{
					header('Location: broad_3.php');
				}

?>