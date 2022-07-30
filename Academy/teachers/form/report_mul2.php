<?php
	session_start();
	ini_set('max_execution_time', 0);
	$class = $_SESSION['class'];
	$myclass = strtolower(str_replace(" ", "",$class."_2nd_term")); //change
	include '../../teach_conn.php';
	include '../../all_conn.php';
	//check if class is empty (no members) 
	
	//check if all subjects have been entered
	
	//preliminary & general info 
						//selecting total number of students in a class
						
						
						$max = "SELECT COUNT(*) AS 'ID' FROM `$myclass`"; 
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
					
							if($schooling != NULL){
								$school = $schooling['school']." ";
								$address = $schooling['address'];
								$logo = '<img class = "dlogo" src = "data:image/jpeg; base64,' .base64_encode($schooling['logo']).'"height = "50" width = "30" />';
							
								}else{
									$school = "School Name Not Set! ";
									$logo = "";
									$address = "";
								}
								
		
					
			//checking school grade type 
				$grade = "SELECT `reportsheet`, `psycho`, `phone`, `numca` FROM `info_exams` ";
				$grade_query = mysqli_query($Father, $grade);
				$grading = mysqli_fetch_assoc($grade_query);
				$theGrade = $grading['reportsheet'];
				$thePsycho = $grading['psycho'];
				$thePhone = $grading['phone'];
				$myca = $grading['numca'];
			//checking number of CAs 
						
						
						
					
			
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	
	<title>.:2nd Term Multiple Reportsheet:.</title> <!-- change -->
	<link rel="icon" href="../../img/soft.png" />
	
	<style type="text/css"> 
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			@font-face{
						font-family: elder;
						src: url(../../myfont/zipty.otf);
					}
			body{
				background: #f0f0f0;
				font-family: teen;
			}
			
			a{
				text-decoration: none;
				color: #ef3939;
			}
			a:hover{
				color: #ffffff;
			}
			
			button, input[type=submit]{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-top: 20px;
				font-family: Times New Roman; width: 100px;
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
				height: 230px;
				width: 20cm;
				border-radius: 8px;
				border: 2px solid #000000;
				margin-left: 16px;
				margin-top: 5px;
				text-align: center;
			}
			.header:first-child{
				height: 235px;
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
				font-family: teen;
				font-size: 10pt;
				background: #ffffff;
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
			.psycho{
				float: left;
				position: absolute;
				margin-left: 550px;
				margin-top: -20px;
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
				margin-top: 17.5cm;
				height: 150px;
				margin-left: 12px;
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
			.comment{
				background: #ffffff;
				font-family: Times New Roman;
				padding-top: 5px;
				margin-left: 9px;
			}
			.key{
				background: #ffffff;
				padding-left: 5px;
				margin-left: 10px;
			}
			.rate{
				font-size: 9pt;
			}
			.position{
				background: #ffffff;
				padding-left: 5px;
			}
			
			em{
				text-align: center;
				margin-left: 100px;
			}
			.right{
				font-weight: bold; margin-left: 500px;
			}
			.diff{
				float: left;
				position: absolute;
				margin-top: 5px;
				text-align: center; 
				color: #4b8bf5;
				background: #ffffff;
				width: 160px;
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
				font-family: teen;
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
				.right{
					text-align: center;
					margin-left: 250px;
					}
				.diff{color: #000000;}
				.td{color:#000000; font-weight: bold;}
				table:first-child{
					
				}
				
			}
			.header em{
				margin-left: 0;
			}
			.header h2{
				font-family: teen;
			}
			.noprint button{
				margin-left: 350px;
			}
			
			
	</style>
</head>
<body>
	<div class = "noprint">
		<h1>2nd Term Student Reportsheet</h1> <!-- change -->
		
		<button onclick = "window.location.href='singmul_2.php' ">Previous Page</button> <!-- change -->
		<button onclick = "window.print()">Print</button>
			
	</div>
	<br />
	
			<?php
			//selecting students 
				$student = "SELECT `ID`, `name` FROM `$myclass` ";
				$student_query = mysqli_query($Son, $student);
		
		while($studenting = mysqli_fetch_assoc($student_query)){
				$id = $studenting['ID'];
				$name = $studenting['name'];
				
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
				
				echo '<div class = "page">';
				
						
									
											echo "<div class = 'back_img'>";
											
												echo $cool =	str_repeat($school, 2000);
											echo "</div>";
									
						
				
				echo '<div class = "header">';
							
									//fetching school logo
									echo $logo;
									
						$sk = strtoupper($school);
						echo "<h2 class = 'title'>$sk</h2>";
						echo '<em>'. $address.'</em> <br /> <br />';
						
						echo "<div class = 'sheet'>STUDENT REPORTSHEET</div>";
						$mi = number_format($mini,2);
						$mx = number_format($best,2);
					echo "<p><b>Name:</b>&nbsp; $name &emsp; &emsp; <b>Class: &nbsp;</b> $class &emsp;&emsp;<b>Term: &nbsp;</b>2nd Term &emsp; <b> Age:</b>&nbsp; $real years</p>"; //change
					echo "<p><b>&#x2116; in Class:</b> &nbsp; $total &emsp; <b>Class Lowest Performance:</b> &nbsp; $mi &emsp;
					<b>Class Highest Performance:</b> &nbsp; $mx </p>";
					echo "&#x2116; of Times Opened: _______ &emsp; &#x2116; of Times Present: _______ &emsp; &#x2116; of Times Absent: _______";
				echo "</div>";
					echo '<div style = "margin-left: 5px;">';
				
						
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
					
					
					//displaying table
						echo "<table class = 'acad' id = '$name$id'>";
								echo "<th>S/&#x2116</th>";
								echo "<th>Subjects</th>";
								echo "<th>CA1</th>";
								echo "<th>CA2</th>";
					//checking number of CAs 
						$ca = "SELECT `numca` FROM `info_exams` ";
						$ca_query = mysqli_query($Father, $ca);
						$numca = mysqli_fetch_assoc($ca_query);
						$myca = $numca['numca'];
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
																
																x = document.getElementById('$name$id').style.visibility = 'hidden';
																
															
													</script>";
													continue;
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
												
										//for different CAs
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
											
											echo "</tr>";
											$i++;
										}
										
								
						echo "</table>";
					// Selecting Position 
					
								$pos = "SELECT position FROM `$myclass` WHERE ID = '$id'";
								$pos_query = mysqli_query($Son, $pos);
								$position = mysqli_fetch_assoc($pos_query);
								$zition = $position['position'];
					
						
						//Psychmotor/Affective Domain
					$psycho = strtolower(str_replace(" ", "",$class."_psycho_2nd_term")); //change
					
					//checking if table exists
						$psy_table = "SHOW TABLES";
						$psy_table_query = mysqli_query($Son, $psy_table);
						$y = "";
						while($psy = mysqli_fetch_assoc($psy_table_query)){
							$y.= $psy['Tables_in_teachers'].",";
						}
						if(strchr($y, $psycho) != False){
							$psy = "SHOW columns FROM `$psycho`";
					$psy_query = mysqli_query($Son, $psy);
					$b = "";
					while($psyche = mysqli_fetch_assoc($psy_query)){
						$fields = $psyche['Field'];
						if(($fields != "ID") && $fields != "name"){
							$b.=$fields.",";
						}
					}
					$affec = chop($b, ",");
					$plode = explode(",", $affec);
					echo "<br />";
			echo "<div class = 'psycho'>";
				//checking school grade type 
				$grade = "SELECT `reportsheet`, `psycho`, `phone` FROM `info_exams` ";
				$grade_query = mysqli_query($Father, $grade);
				$grading = mysqli_fetch_assoc($grade_query);
				$theGrade = $grading['reportsheet'];
				$thePsycho = $grading['psycho'];
				$thePhone = $grading['phone'];
				
				$ok0 = $name.$id."okey"; //for hiding
				
				if($theGrade == 'alphabetic'){
					echo "<b class = 'diff' id = '$ok0'>Overall Grade:  $zition</b>";
				}else{
					echo "<b class = 'diff' id = '$ok0'>Position:  $zition</b>";
				}
					
					$ok1 = $name.$id."abc"; //for hiding
					
					echo "<table  style = 'font-size: 9pt; margin-left: 10px;' id = '$ok1'>";
							echo "<th colspan=2>Psychmotor/Affective Domains</th>";
							echo "<tr>";
										echo "<td><b>Items</b></td>";
										echo "<td><b>Ratings</b></td>";
										
							echo "</tr>";
					foreach($plode as $affective){
						echo "<tr>";
								echo "<td>$affective</td>";
								$domain = "SELECT `$affective` FROM `$psycho` WHERE name = '$name'";
								$domain_query = mysqli_query($Son, $domain);
								$dom = mysqli_fetch_assoc($domain_query);
								$real = $dom[$affective];
									echo "<td style='text-align: center;'>$real</td>";
						echo "</tr>";
					}
					echo "</table>";
					
					
					
					echo "<br />";
					$ok2 = $name.$id."okeytwo";
						$ok3 = $name.$id."okeythree";
					echo "<div class = 'key' id = '$ok2'>";
						echo "<div class = 'rate'>";
						
						echo "<b >&emsp;<u>KEY TO RATINGS</u></b>";
								echo "<ul id = '$ok3'>";
								if($thePsycho == 'numeric'){
									
										echo "<li>5 &emsp; = &emsp; Excellent</li>";
										echo "<li>4 &emsp; = &emsp; Very Good</li>";
										echo "<li>3 &emsp; = &emsp; Average</li>";
										echo "<li>2 &emsp; = &emsp; Fair</li>";
										echo "<li>1 &emsp; = &emsp; Poor</li>";
								
								}else{
									
										echo "<li>A &emsp; = &emsp; Excellent</li>";
										echo "<li>B &emsp; = &emsp; Very Good</li>";
										echo "<li>C &emsp; = &emsp; Average</li>";
										echo "<li>D &emsp; = &emsp; Fair</li>";
										echo "<li>E &emsp; = &emsp; Poor</li>";
								
								}
								echo "</ul>";
						echo "</div>";
						}else{
							echo "<h3>Please Rate Student's Psychomotor/Affective domain items!</h3>";
						}
					
								
								
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
						
						echo "<b class = 'diff'>Total: &emsp; &emsp;  $tota</b>";
						echo "<br />";
						$ok4 = $name.$id."okeyfour";
						if($average < 40){
							echo "<b  class = 'diff' id = '$ok4'>Average: &emsp; <strong style = 'color: #e60c14'>$average</strong></b>";
						}else{
							echo "<b  class = 'diff' id = '$ok4'>Average: &emsp; <strong style = 'color: #208e24'>$average</strong></b>";
						}
				echo "</div>";
			echo "</div>";
						echo "<br /><br />";
						
						
						
					//comments & others
					$ok5 = $name.$id."okeyfive";
					echo "<div class = 'comment' style = 'padding-left: 5px;' id = '$ok5'>";
					//selecting form-teacher's comment
						$comm = "SELECT teach_com FROM `$myclass` WHERE ID = '$id'";
						$comm_query = mysqli_query($Son, $comm);
						$commenting = mysqli_fetch_assoc($comm_query);
						$comment = ucfirst($commenting['teach_com']);
						
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
					
					echo "</div>
				
						
								
						
				</div>
						
				
				
				
		</div>";
				
											
				
			$mydate = date('Y');
			echo '<b class = "right">&copy; <i>TishbehSoft</i>, '.$mydate. '</b>';
			
					if($thePhone != ''){
						echo "&emsp; <b>School Contact:</b> $thePhone";
					}	
				
				
				if($score_query == false){
													
					if(isset($ok0) && isset($ok1) && isset($ok2) && isset($ok3) && isset($ok4) ){
					echo "<script>
								
								x = document.getElementById('$name$id').style.visibility = 'hidden';
								a = document.getElementById('$ok0').style.visibility = 'hidden';
								b = document.getElementById('$ok1').style.visibility = 'hidden';
								c = document.getElementById('$ok2').style.visibility = 'hidden';
								d = document.getElementById('$ok3').style.visibility = 'hidden';
								e = document.getElementById('$ok4').style.visibility = 'hidden';
								f = document.getElementById('$ok5').style.visibility = 'hidden';
								
								
							
					</script>";
					}else{
							echo "<script>
									 r = document.getElementById('$ok5').style.visibility = 'hidden';
								  </script>";
					}
					continue;
				}
				if(strchr($y, $psycho) == False){
					echo "<script>
									 p = document.getElementById('$ok5').style.visibility = 'hidden';
					</script>";
				}
				
		}
		?>
		

		
				
</body>
</html>