<?php
	session_start();
	$class = $_SESSION['class'];
	
	ini_set('max_execution_time', 0);
	
	$myclass = strtolower(str_replace(" ", "",$class."_3rd_term")); //change
	include '../../teach_conn.php';
	include '../../all_conn.php';
	$id = $_POST['id'];
	$name = $_POST['name'];
	
	
	//checking school grade type, etc.
				$grade = "SELECT `reportsheet`, `psycho`, `phone`, `numca` FROM `info_exams` ";
				$grade_query = mysqli_query($Father, $grade);
				$grading = mysqli_fetch_assoc($grade_query);
				$theGrade = $grading['reportsheet'];
				$thePsycho = $grading['psycho'];
				$thePhone = $grading['phone'];
				$myca = $grading['numca'];
	
	
	
			
	//fetching age
		$age = "SELECT DOB from `$myclass` WHERE ID = '$id'";
		$age_query = mysqli_query($Son, $age);
		$ag = mysqli_fetch_assoc($age_query);
		$years = str_replace(",", "-",$ag['DOB']);
		
		$dob = date_create($years);
		$dob_date = date_format($dob,"Y-m-j");
		$current = date("j-F-Y");
		$current_date = date_create($current);
		$date = date_format($current_date, "Y-m-j");
		
		$diff = "SELECT DATEDIFF('$date', '$dob_date') AS diff ";
		$diff_query = mysqli_query($Son, $diff);
		$approx = mysqli_fetch_assoc($diff_query);
		$days = $approx['diff'];
		//converting days to year as an integer
		$actual = $days/365;
		$real = (int)$actual;
		//selecting total number of students in a class
		
			$max = "SELECT ID FROM `$myclass` WHERE ID = (SELECT MAX(ID)  FROM `$myclass`)"; 
			$maxquery = mysqli_query($Son, $max);
			$maximum = mysqli_fetch_assoc($maxquery);
			$total = $maximum['ID'];
		
		//selecting minimum class performance
			$min = "SELECT average FROM `$myclass` WHERE average = (SELECT MIN(average)  FROM `$myclass`)"; 
			$minquery = mysqli_query($Son, $min);
			$minimum = mysqli_fetch_assoc($minquery);
			$mini = $minimum['average'];
		//selecting highest class performance 
		$high = "SELECT average FROM `$myclass` WHERE average = (SELECT MAX(average)  FROM `$myclass`)"; 
			$higher = mysqli_query($Son, $high);
			$highest = mysqli_fetch_assoc($higher);
			$best = $highest['average'];
		//fetching school Name
		$sch = "SELECT school, address, logo FROM info_sch";
		$sch_query = mysqli_query($Father, $sch);
		$schooling = mysqli_fetch_assoc($sch_query);
		
		
		
		
		
		
			
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Sessional Reportsheet :.</title>
	<link rel="icon" href="../../img/soft.png" />
	<style type="text/css">
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			body{
				background: #f0f0f0;
				font-family: teen, Times New Roman;
			}
			
			a{
				text-decoration: none;
				color: #ef3939;
			}
			a:hover{
				color: #ffffff;
			}
			
			button, input[type=submit]{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-left: 50px; margin-top: 20px;
				font-family: teen, Times New Roman; width: 100px; font-size: 0.9vw;
			}
			button:hover, input[type=submit]:hover{
				background: #6ac239;
				color: #ffffff;
				cursor: pointer;
			}
			form{
				float: left;
				margin-left: 400px;
			}
			
			h1,h2,h3{
				color: #ef3939;
				text-align: center;
			}
			.page{
				width: 21cm;
				height: 29.7cm;
				background: none;
				margin-left: 250px;
				border: solid 2px #000000;
				border-radius: 5px;
				
			}
			.header{
				background: #ffffff;
				height: 235px;
				width: 20cm;
				border-radius: 8px;
				border: 2px solid #000000;
				margin-left: 16px;
				margin-top: 5px;
				text-align: center;
			}
			p{
				margin-left: 20px;
				font-size: 12pt;
				text-align: center;
			}
			.sheet{
				margin-left: 280px;
				height: 30px;
				width: 210px;
				background: #4c8bf5;
				color: #ffffff;
				font-weight: bold;
				border: #4c8bf5;
				text-align: center;
				border-radius: 5px;
				padding-top: 5px;
			}
			
			
			@page{
				size: A4 portrait;
			}
			table{
				margin-top: 30px;
				border-collapse: collapse;
				font-family: Times New Roman;
				font-size: 10pt;
				background: #ffffff;
				font-family: teen;
			}
			.vertical{
				transform: rotate(270deg);
				transform-origin: left top 1;
				float: none;
			}
			th{
				border: 2px solid #000000;
				height: 50px;
			}
			tr{
				border: 2px solid #000000;
			}
			td{
				border: 1px solid #000000;
			}
			
			ul li{
				list-style: none;
			}
			.comment{
				float: left;
				position: absolute;
				border: 2px solid #000000;
				border-radius: 5px;
				width: 20cm;
				margin-top: -5.3cm;
				height: 150px;
				margin-left: 265px;
				background: #ffffff;
				font-family: Times New Roman;
			}
			.back_img{
				position: absolute;
				width: 21cm;
				margin-top: -3px;
				z-index: -2;
				background: #ffffff;
				color: #e9e9e9;
				text-align: justify;
				font-family: Times New Roman;
				height: 29.8cm;
				overflow: hidden;
			}
			
			em{
				text-align: center;
				margin-left: 100px;
			}
			
			.special{
				float: left;
				position: absolute;
				margin-top: 16cm;
				text-align: left; 
				color: #4b8bf5;
				background: #ffffff;
				width: 160px;
				font-weight: bold;
			}
			.title{
				color: #4a8af4;
				text-shadow: 2px 2px 2px #4b3b2c;
				font-size: 22pt;
				margin-top: -3px;
			}
		
		
			.dlogo{
				float: left;
				 position: absolute;
				 width: 100px;
				 height: 115px;
				 margin-left: -375px;
				 margin-top: 30px;
			}
			.acad{
				float: left;
				position: absolute;
				
			}
			.right{
				text-align: center;
				margin-top: -30px;
			}
			caption{
				font-weight:bold;
				background: #ffffff;
			}
			.annual{
				display: none;
				float: left;
				position: relative;
				margin-top: -893px;
				margin-left: 795px;
				
			}
			.averages{
				float: left;
				position: absolute;
				margin-left:781px;
				margin-top: -350px;
			}
			.nal{
				float: left;
				position: absolute;
				margin-left: 770px;
				margin-top: -240px;
				background: #ffffff;
			}
			.session{
				color: #4b8bf5;
			}
			table:first-child{
				font-size: 0.95vw;
			}
			
			@media print{
				
				.noprint{display:none;}
				body{
					background: none;
				}
				.page{
					margin-left: 0px;
					margin-top: -5px;
					}
				
				.diff{color: #000000;}
				.td{color:#000000; font-weight: bold;}
				.comment{margin-left: 0.4cm}
				.annual{margin-left: 530px; margin-top: -894px;}
				.averages, .nal{margin-left: 510px;}
				table:first-child{font-size: 1.8vw;}
				
			}
			.header em{
				margin-left: 0;
			}
			
			
	
	</style>
</head>
<body>
		<?php
				if($schooling != NULL){
			$school = $schooling['school']." ";
			$address = $schooling['address'];
			$logo = '<img class = "dlogo" src = "data:image/jpeg; base64,' .base64_encode($schooling['logo']).'"height = "50" width = "30" />';
			
		}else{
			$school = "School Name Not Set! ";
			$logo = "";
			$address = "";
		}
		
		?>
		
	<div class = "noprint">
		<h1>Sessional Reportsheet</h1>
		<?php
			//fetching the last/highest id
			$max = "SELECT ID FROM `$myclass` WHERE ID = (SELECT MAX(ID)  FROM `$myclass`)"; 
			$maxquery = mysqli_query($Son, $max);
			$maximum = mysqli_fetch_assoc($maxquery);
			$highest_id = $maximum['ID'];
			
			//selecting the next id after the current one
			$identity = "SELECT ID, name FROM `$myclass` ORDER BY ID ASC ";
			$identity_query = mysqli_query($Son, $identity);
			$a = "";
			$b = "";
			while($row = mysqli_fetch_assoc($identity_query)){
				$current_id = $row['ID'];
				$current_name = $row['name'];
					if($current_id > $id){
						$a.=$current_id;
						$b.=$current_name;
						break;
					}
			}
		
		?>
		<button onclick = "window.location.href = 'sessional.php'">Previous Page</button>
		<button onclick = "window.print()">Print</button>
			<?php
			
				if($id < $highest_id){
				//sending back to the previous page
			echo "<form action='' method = 'POST' enctype = 'multipart/form-data'>";
						echo "<input type='text' name = 'id' value = '$a' hidden />";
						echo "<input type='text' name = 'name' value = '$b' hidden />";
						echo "<input type='submit' value = 'Next Student'  />";
						
			echo "</form>";
				
			}elseif($id == $highest_id){
				echo "<button style = 'float: left; margin-left: 250px; width: 200px;'>This is the last Student</button>";
				
			}
			
			?>
		<br /><br />
	</div>
		<div class = "page"> 
				
						
									<?php
											echo "<div class = 'back_img'>";
											
												echo $cool =	str_repeat($school, 400);
											echo "</div>";
									?>
						
				
				<div class = "header">
							<?php
									//fetching school logo
									echo $logo;
									
							?>
						<h2 class = 'title'><?php echo strtoupper($school);?></h2>
						<em><?php echo $address;?></em> <br /> <br />
						
						<div class = 'sheet'>STUDENT REPORTSHEET</div>
				
					<p><b>Name:</b>&nbsp; <?php echo $name;?> &emsp; &emsp; <b>Class: &nbsp;</b> <?php echo $class; ?> &emsp;&emsp;<b>Term: &nbsp;</b>3rd Term &emsp; <b> Age:</b>&nbsp; <?php echo $real;?> years</p> 
					<p><b>&#x2116; in Class:</b> &nbsp; <?php echo $total;?> &emsp; <b>Class Lowest Performance:</b> &nbsp; <?php echo number_format($mini,2);?> &emsp;
					<b>Class Highest Performance:</b> &nbsp; <?php echo number_format($best,2);?> </p>
					&#x2116; of Times Opened: _______ &emsp; &#x2116; of Times Present: _______ &emsp; &#x2116; of Times Absent: _______
				</div>
					<div style = "margin-left: 5px;">
				<?php
					
						
						//selecting fields from broadsheet
					$fiel = "SHOW columns FROM `$myclass`";
					$fiel_query = mysqli_query($Son, $fiel);
					$a = "";
					while($field = mysqli_fetch_assoc($fiel_query)){
						$column = $field['Field'];
						//pick only fields with subject total
						if(strchr($column, "Total_") == True){
							//checking if the total column is greater than zero
							$greater = "SELECT $column FROM `$myclass` WHERE ID = '$id' ";
							$greater_query = mysqli_query($Son, $greater);
							 $val = mysqli_fetch_assoc($greater_query);
								 $value = (int)$val[$column];
								 if($value > 0){
									$col = str_replace("Total_", "",$column);
									$a.= $col.",";
								 }
							 
							 
							 
							 
						}
					}
					$sub = chop($a,",");
					
					$explode = explode(",", $sub);
					$count = count($explode);
					
					if($myca == 2){
						$span = 9;
					}elseif($myca == 3){
						$span = 10;
					}elseif($myca == 4){
						$span = 11;
					}
					//displaying table
						echo "<table class = 'acad' id = 'academ'>";
						echo "<tr>
						<th colspan = $span>3RD TERM RESULT</th> 
						<th colspan = 4>Sessional Subject Summary</th>
						</tr>";
								echo "<th>S/&#x2116</th>";
								echo "<th>Subjects</th>";
								echo "<th>CA1</th>";
								echo "<th>CA2</th>";
								if($myca == 3){
									echo "<th>CA3</th>";
								}elseif($myca == 4){
									echo "<th>CA3</th>";
									echo "<th>CA4</th>";
								}
								echo "<th>Total CA</th>";
								echo "<th class = 'vertical'>Exam</th>";
								echo "<th class = 'vertical'>Total</th>";
								echo "<th class = 'vertical'>Grade</th>";
								echo "<th class = 'vertical'>Position</th>";
								echo "<th>1st Term</th>";
								echo "<th>2nd Term</th>";
								echo "<th>3rd Term</th>";
								echo "<th>Average</th>";
										
									//auto-number 
										$i = 1;
										
										foreach($explode as $item){
									
											echo "<tr>";
											
												echo "<td>$i.</td>";
											$mysub = "SELECT subject FROM subjects WHERE abbreviation = '$item'";
											$mysub_query = mysqli_query($Father, $mysub);
											$my = mysqli_fetch_assoc($mysub_query);
											$myject = $my['subject'];
											$offered = ucwords(strtolower($myject));
											echo "<td>$offered</td>";
											
											//selecting scores 
														$pin1 = $item."_ca1";
														$pin2 = $item."_ca2";
														$pin3 = $item."_ca3";
														$pin4 = $item."_ca4";
														$pin5 = $item."_ca_total";
														$pin6 = $item."_exam";
														$pin7 = "Total_".$item;
														$pin8 = $item."_grade";
														$pin9 = $item."_pos";
												$score = "SELECT $pin1, $pin2, $pin3, $pin4, $pin5, $pin6, $pin7, $pin8, $pin9 FROM `$myclass` WHERE ID = '$id'";
												$score_query = mysqli_query($Son, $score);
												
												if($score_query == false){
													echo "<h3 id = 'noRecord'>This particular student has no CA and Exam Records!</h3>";
													echo "<script>
																x = document.getElementById('academ').style.visibility = 'hidden';
																
															
													</script>";
													die();
												}
												
												$scores = mysqli_fetch_assoc($score_query);
										//setting colour variables
												$first = $scores[$pin1];
												$second = $scores[$pin2];
												$third = $scores[$pin3];
												$fourth = $scores[$pin4];
												$fifth = $scores[$pin5];
												$sixth = $scores[$pin6];
												$seventh = $scores[$pin7];
												
											if($myca == 2){
													if($first < 7.5){
													echo "<td style = 'color: #f03939;' class = 'td'>$first</td>";
												}else{
													echo "<td>$first</td>";
												}
												if($second < 7.5){
													echo "<td style = 'color: #f03939;' class = 'td'>$second</td>";
												}else{
													echo "<td>$second</td>";
												}
												
												
												if($fifth < 15){
													echo "<td style = 'color: #f03939;' class = 'td'>$fifth</td>";
												}else{
													echo "<td>$fifth</td>";
												}
												if($sixth < 35){
													echo "<td style = 'color: #f03939;' class = 'td'>$sixth</td>";
												}else{
													echo "<td>$sixth</td>";
												}
												if($seventh < 40){
													echo "<td style = 'color: #f03939;' class = 'td'>$seventh</td>";
												}else{
													echo "<td>$seventh</td>";
												}
										}elseif($myca == 3){
												if($first < 5){
													echo "<td style = 'color: #f03939;' class = 'td'>$first</td>";
												}else{
													echo "<td>$first</td>";
												}
												if($second < 5){
													echo "<td style = 'color: #f03939;' class = 'td'>$second</td>";
												}else{
													echo "<td>$second</td>";
												}
												if($third < 5){
													echo "<td style = 'color: #f03939;' class = 'td'>$third</td>";
												}else{
													echo "<td>$third</td>";
												}
												if($fifth < 15){
													echo "<td style = 'color: #f03939;' class = 'td'>$fifth</td>";
												}else{
													echo "<td>$fifth</td>";
												}
												if($sixth < 35){
													echo "<td style = 'color: #f03939;' class = 'td'>$sixth</td>";
												}else{
													echo "<td>$sixth</td>";
												}
												if($seventh < 40){
													echo "<td style = 'color: #f03939;' class = 'td'>$seventh</td>";
												}else{
													echo "<td>$seventh</td>";
												}
										}elseif($myca == 4){
												if($first < 5){
												echo "<td style = 'color: #f03939;' class = 'td'>$first</td>";
											}else{
												echo "<td>$first</td>";
											}
											if($second < 5){
												echo "<td style = 'color: #f03939;' class = 'td'>$second</td>";
											}else{
												echo "<td>$second</td>";
											}
											if($third < 5){
												echo "<td style = 'color: #f03939;' class = 'td'>$third</td>";
											}else{
												echo "<td>$third</td>";
											}
											if($fourth < 5){
												echo "<td style = 'color: #f03939;' class = 'td'>$fourth</td>";
											}else{
												echo "<td>$fourth</td>";
											}
											if($fifth < 20){
												echo "<td style = 'color: #f03939;' class = 'td'>$fifth</td>";
											}else{
												echo "<td>$fifth</td>";
											}
											if($sixth < 30){
												echo "<td style = 'color: #f03939;' class = 'td'>$sixth</td>";
											}else{
												echo "<td>$sixth</td>";
											}
											if($seventh < 40){
												echo "<td style = 'color: #f03939;' class = 'td'>$seventh</td>";
											}else{
												echo "<td>$seventh</td>";
											}
										}
										
												echo "<td>$scores[$pin8]</td>";
												echo "<td>$scores[$pin9]</td>";
												
												
												
												//other terms
												$d_sub = "Total_".$item;
						$class1 = strtolower(str_replace(" ", "", $class."_1st_term"));
						$class2 = strtolower(str_replace(" ", "", $class."_2nd_term"));
						$class3 = strtolower(str_replace(" ", "", $class."_3rd_term"));
						
								//checking first term to see if subject exists!
									//1st term
								$for1st = "SHOW COLUMNS FROM `$class1` ";
								$for1st_query = mysqli_query($Son, $for1st);
								
								$first = "";
								$av1 = 0;
								while($st = mysqli_fetch_assoc($for1st_query)){
									
									if(strcmp($d_sub, $st['Field']) == 0){
										$comp1 = $st['Field'];
											//selecting subject score
											$score1 = "SELECT `$comp1` FROM `$class1` WHERE ID = '$id'";
											$score1_query = mysqli_query($Son, $score1);
											$scoring1 = mysqli_fetch_assoc($score1_query);
											
													if($scoring1[$comp1] < 40){
														echo "<td style = 'color: #e84024'>$scoring1[$comp1]</td>";
													}else{
														echo "<td>$scoring1[$comp1]</td>";
													}
											$av1 = $scoring1[$comp1];
									}
									$first.=$st['Field'];
								}
								if(strchr($first, $d_sub) == False){
									echo "<td></td>";
								}
								
								
								
							
							//2nd term
								$for2nd = "SHOW COLUMNS FROM `$class2` ";
								$for2nd_query = mysqli_query($Son, $for2nd);
								
								$second = "";
								$av2 = 0;
								while($nd = mysqli_fetch_assoc($for2nd_query)){
									if(strcmp($d_sub, $nd['Field']) == 0){
										$comp2 = $nd['Field'];
											//selecting subject score
											$score2 = "SELECT `$comp2` FROM `$class2` WHERE ID = '$id'";
											$score2_query = mysqli_query($Son, $score2);
											$scoring2 = mysqli_fetch_assoc($score2_query);
											
													if($scoring2[$comp2] < 40){
														echo "<td style = 'color: #e84024'>$scoring2[$comp2]</td>";
													}else{
														echo "<td>$scoring2[$comp2]</td>";
													}
											$av2 = $scoring2[$comp2];
									}
									$second.=$nd['Field'];
								}
									if(strchr($second, $d_sub) == False){
										echo "<td></td>";
									}
								
								
								//3rd term
								$for3rd = "SHOW COLUMNS FROM `$class3` ";
								$for3rd_query = mysqli_query($Son, $for3rd);
								
								$third = "";
								$av3 = 0;
								while($rd = mysqli_fetch_assoc($for3rd_query)){
									if(strcmp($d_sub, $rd['Field']) == 0){
										$comp3 = $rd['Field'];
											//selecting subject score
											$score3 = "SELECT `$comp3` FROM `$class3` WHERE ID = '$id'";
											$score3_query = mysqli_query($Son, $score3);
											$scoring3 = mysqli_fetch_assoc($score3_query);
											
													if($scoring3[$comp3] < 40){
														echo "<td style = 'color: #e84024'>$scoring3[$comp3]</td>";
													}else{
														echo "<td>$scoring3[$comp3]</td>";
													}
										$av3 = $scoring3[$comp3];
											
									}
									$third.=$rd['Field'];
								}
								
								if(strchr($third, $d_sub) == False){
									echo "<td></td>";
								}
					
					// Finding Subject Average 
					
							//creating temporary table 
							$create = "CREATE TABLE IF NOT EXISTS `tempo` (ave double);";
							$create_query = mysqli_query($Son, $create); 
							
							//Inserting subject scores 
							$d_scores = array($av1, $av2, $av3);
							foreach($d_scores as $rel){
								if($rel > 0){
									$insert = "INSERT INTO `tempo` (ave) VALUES ('$rel')";
								$insert_query = mysqli_query($Son, $insert);
								}
							}
							
							// fetching average 
							$rage = "SELECT AVG(ave) AS aver FROM `tempo`"; 
							$rage_query = mysqli_query($Son, $rage);
							$raging = mysqli_fetch_assoc($rage_query);
							$real = number_format($raging['aver'],2);
							echo "<td>$real</td>";
							//destroying temporary table
								$drop = "DROP TABLE `tempo`";
								$drop_query = mysqli_query($Son, $drop);
												
												
											
											echo "</tr>";
											$i++;
										}
										
								
						echo "</table>";
					// Selecting Position 
					
								$pos = "SELECT position FROM `$myclass` WHERE ID = '$id'";
								$pos_query = mysqli_query($Son, $pos);
								$position = mysqli_fetch_assoc($pos_query);
								$zition = $position['position'];
					
						
								
								
						//selecting Total
						$tot = "SELECT `grand` FROM `$myclass` WHERE ID = '$id' ";
						$tot_query = mysqli_query($Son, $tot);
						$al = mysqli_fetch_assoc($tot_query);
						$tota = $al['grand'];
						//selecting average
						$av = "SELECT `average` FROM `$myclass` WHERE ID = '$id' ";
						$av_query = mysqli_query($Son, $av);
						$rage = mysqli_fetch_assoc($av_query);
						$average = number_format($rage['average'],2);
						
						
						
						
						
						
						echo "<table class = 'special'>";
							echo "<caption style = 'border-bottom: solid 2px black; color: black;' >3RD TERM</caption>";
							echo "<tr style = 'border: none;'> ";
									if($theGrade == 'alphabetic'){
										echo "<td style = 'border: none;'>Overall Grade: </td>";
										echo "<td style = 'border: none;'>$zition </td>";
									}else{
										echo "<td style = 'border: none;'>Position: </td>";
										echo "<td style = 'border: none;'>$zition </td>";
									}
							echo "</tr>";
							echo "<tr style = 'border: none;'>";
									echo "<td style = 'border: none;'>Total: </td>";
										echo "<td style = 'border: none;'>$tota </td>";
							echo "</tr>";
							echo "<tr style = 'border: none;'>";
								echo "<td style = 'border: none;'>Average: </td>";
										if($average < 40){
											echo "<td style = 'color: red; border: none;'>$average </td>";
										}else{
											echo "<td style = 'color: green; border: none;'>$average </td>";
										}
							echo "</tr>";
							
						echo "</table>";
						
						
						
						
				echo "</div>";
			echo "</div>";
						echo "<br /><br />";
						
						
						
					//comments & others
					echo "<div class = 'comment' style = 'padding-left: 5px;'>";
					//selecting form-teacher's comment
						$comm = "SELECT teach_com FROM `$myclass` WHERE ID = '$id'";
						$comm_query = mysqli_query($Son, $comm);
						$commenting = mysqli_fetch_assoc($comm_query);
						$comment = ucfirst($commenting['teach_com']);
						echo "<br />";
						echo "<b>Form Teacher's Comment:</b> &nbsp; <i>$comment</i> &emsp;";
					
						echo "<b>Sign:_______________</b>";
						echo "<br />";
					//selecting Principal's comment
						$prin = "SELECT prin_com FROM `$myclass` WHERE ID = '$id' ";
						$prin_query = mysqli_query($Son, $prin);
						$princ = mysqli_fetch_assoc($prin_query);
						$principal = ucfirst($princ['prin_com']);
						echo "<br />";
						echo "<b>Principal's Comment:</b> &nbsp; <i>$principal</i> &emsp;";
						echo "<b>Sign:_______________</b>";
						echo "<br /> <br />";
						echo "<b>Next Term Begins:________________________________________ &emsp; Fees:_____________________________</b>";
					
					echo "</div>";
					
	
					//Picking sessional average 
							echo "<table class = 'averages'>";
									echo "<caption>SUMMARY OF AVERAGES</caption>";
									echo "<th>1st Term</th>";
									echo "<th>2nd Term</th>";
									echo "<th>3rd Term</th>";
									//average for 1st term
									echo "<tr>";
									$st_ave = "SELECT `average` FROM `$class1` WHERE ID = '$id'";
									$st_ave_query = mysqli_query($Son, $st_ave); 
									$first_ave = mysqli_fetch_assoc($st_ave_query);
									$st_average = number_format($first_ave['average'],2); 
									if($st_average < 40){
										echo "<td style = 'color: #e84024'>$st_average</td>";
									}else{
										echo "<td>$st_average</td>";
									}
									
									//average for 2nd term
									
									$nd_ave = "SELECT `average` FROM `$class2` WHERE ID = '$id'";
									$nd_ave_query = mysqli_query($Son, $nd_ave); 
									$second_ave = mysqli_fetch_assoc($nd_ave_query);
									$nd_average = number_format($second_ave['average'],2); 
									if($nd_average < 40){
										echo "<td style = 'color: #e84024'>$nd_average</td>";
									}else{
										echo "<td>$nd_average</td>";
									}
									
									//average for 3rd term
									
									$rd_ave = "SELECT `average` FROM `$class3` WHERE ID = '$id'";
									$rd_ave_query = mysqli_query($Son, $rd_ave); 
									$third_ave = mysqli_fetch_assoc($rd_ave_query);
									$rd_average = number_format($third_ave['average'],2); 
									if($rd_average < 40){
										echo "<td style = 'color: #e84024'>$rd_average</td>";
									}else{
										echo "<td>$rd_average</td>";
									}
									
									echo "</tr>"; 
									
							echo "</table>"; 
							//Calculating the average of averages (Cumulative Average)
									//creating temporary table 
									$tempo = "tempo".$class;
							$sess = "CREATE TABLE IF NOT EXISTS `$tempo` (ave double);";
							$sess_query = mysqli_query($Son, $sess); 
							
							$sessional = array($st_average, $nd_average, $rd_average);
							foreach($sessional as $averaging){
								
									if($averaging > 0){
									$insert = "INSERT INTO `$tempo` (ave) VALUES ('$averaging')";
									$insert_query = mysqli_query($Son, $insert);
								}
							}
							// fetching average 
							$nal = "SELECT AVG(ave) AS sess FROM `$tempo`"; 
							$nal_query = mysqli_query($Son, $nal);
							$session = mysqli_fetch_assoc($nal_query);
							$actual = number_format($session['sess'],2);
							echo "<div class = 'nal'>";
							if($actual < 40){
								echo "<b class = 'session'>Sessional Average:</b> &emsp;  <strong style = 'color: #e84024;' class = 'sessional'>$actual</strong>";
							}else{
								echo "<b class = 'session'>Sessional Average:</b> &emsp; <strong style = 'color:#17a05e;' class = 'sessional'>$actual</strong>";
							}
							echo "</div>";
							//destroying temporary table
								$drop = "DROP TABLE `$tempo`";
								$drop_query = mysqli_query($Son, $drop);
				?>
			
				</div>
						
				
				
				
		</div>
			<div class = "right">
				<b class = "right">&copy; <i>TishbehSoft</i>, <?php echo date('Y');?></b>
			<?php
					if($thePhone != ''){
						echo "<i> &emsp; School Contact: $thePhone </i>";
					}
			?>
			</div>
</body>
</html>