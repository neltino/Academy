<?php
		ini_set('max_execution_time', 0);
		session_start();
		if(isset($_POST['change'])){
			$class = $_POST['change'];
		}else{
			$class = $_POST['class'];
		}
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Broadsheet:.</title>
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
	#myhead h1{
		font-family: teen;
	}
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
		
		
	h2,h3,h4,h5{
			color:#ef3939;
			text-align: center;
			font-family: teen;
			font-size: 2vw;
		}
		h3{
			font-size: 1.5vw;
		}
		.what button{
			margin-left: 35%;
			font-size: 1vw;
			font-family: teen;
		}
		p{
			color: #2196f3;
			font-family: teen;
			margin-left: 5%;
		}
		p b{
			color: red;
			font-family: teen;
		}
		form{
			width: 20%;
			margin-left: 2%;
			margin-bottom: 5px;
		}
		form select{
			background: white;
			font-weight: bold;
		}
		table{
			border-collapse: collapse;
			border: 2px solid #000000;
			background: #ffffff;
			font-family: teen;
			margin-left: 2%;
			font-size: 14px;
		}
		th{
			border: 2px solid #000000;
			background-color: #DBEAF9;
		}
		
		td{
			border: 1px solid #000000;
			text-align: right;
			padding-right: 2px;
		}
		tr td{
			cursor: pointer;
		}
		.thick{
			border-right: solid 2px #000000;
		}
		
		.noprint button span{
			font-family: cac;
		}
		.noprint button{
			margin-left: 40%;
			font-size: 1.5vw;
		}
		.mytable{
			overflow-x: auto;
		}
		
		
		@media print{
		table{margin-left: 0; max-width: 100%;}
		.what, .noprint, p{display: none;}
		.mytable{overflow-x: visible;}
		form{display: none;}
	}	
	
	@media only screen and (max-width: 768px){
			#myhead h1{font-size: 4.5vw;}
			h2{font-size: 3.5vw;}
			.what button{ font-size: 4vw; margin-left: 1%; width: 98%;}
			.noprint button{width: 98%; margin-left: 1%; font-size: 5vw;}
			form{font-size: 4.5vw; width: 98%; margin-left: 1%; }
			h2{font-size: 5vw;}
			h3{font-size: 3vw;}
	}
		
			
	
	</style>
</head>
<body>

<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Broadsheet for <span id = 'theClass' ><?php echo $class;?></span></h1> 
					
		</div>
		<?php 	
				
				include '../teach_conn.php';
				include '../all_conn.php';
				
				$myclass = strtolower(str_replace(" ", "", $class."_2nd_term")); //change
			//checking if class exist
				$query = "SHOW TABLES";
				$submit = mysqli_query($Son, $query);
				
				$a = "";
				while($ans = mysqli_fetch_assoc($submit)){
					if(strcmp($ans['Tables_in_teachers'], $myclass) == 0){
						$a.= $ans['Tables_in_teachers'];
					}
				}
				
				if($a == ""){
						echo "<h2>Sorry, No Class member has been registered for this class!</h2>";
						header("Refresh: 4, url=broad2.php"); //change
						die();
				}
				//checking if an existing class has members in it!
					
					$qry = "SELECT name FROM `$myclass`";
					$sub = mysqli_query($Son, $qry);
					$ans = mysqli_fetch_assoc($sub);
					if($ans == NULL){
						echo "<h2>Sorry, No Class member has been registered for this class!</h2>";
						header("Refresh: 4, url=broad2.php"); //change
						die();

					}
				include 'asideexams.php';
				
				//checking school reportsheet grade type and number of ca
				$rep = "SELECT `reportsheet`, `numca` FROM `info_exams` ";
				$rep_query1 = mysqli_query($Father, $rep);
				$rep_query2 = mysqli_query($Father, $rep);
				$rep_query3 = mysqli_query($Father, $rep);
				
				$value1 = mysqli_fetch_assoc($rep_query1);
				$value2 = mysqli_fetch_assoc($rep_query2);
				$value3 = mysqli_fetch_assoc($rep_query3);
				if(($value1['reportsheet'] == NULL) || ($value1['reportsheet'] == "") ){
					echo "<h3>Please inform the examination officer to set the reportsheet grade type the school uses!</h3>";
					die();
				}
				$myca = $value2['numca'];
				
			
			
			?>
			<br />
			<p>
			<b>Subject(s) not yet entered into Broadsheet:</b>
			<?php
				//selecting class subjects...
					$mysub = strtolower(str_replace(" ", "", $class."_subjects"));
					$sub = "SELECT subjects FROM `$mysub`";
					$sub_query = mysqli_query($Son, $sub);
					$answer = mysqli_fetch_assoc($sub_query);
					
				//selecting table fields
					$fields = "DESCRIBE `$myclass`";
					$fields_query = mysqli_query($Son, $fields);
						$field = mysqli_fetch_assoc($fields_query);
					
						$b = "";
					while($field = mysqli_fetch_assoc($fields_query)){
						$b.= $field['Field'].",";
					}
					
					$c = "";
					$explode = explode(",",$answer['subjects']);
					$count = count($explode);
					$parameter = 0;
					for($i=0; $i< $count; $i++){
						$search = strchr($b, $explode[$i]."_");
						if($search == false){
							$c.= $explode[$i].",";
						}else{
							$parameter++;
						}
					}
					if($parameter == $count){
						echo "<b>All Subjects have been entered!</b>";
					}else{
						
							
								$plode = explode(",", $c);
								$counting = count($plode);
							//selecting subject names from abbreviation
							for($i=0; $i<($counting - 1); $i++){
									$ject = $plode[$i];
								$nosub = "SELECT subject FROM subjects WHERE abbreviation = '$ject'";
								$nosub_query = mysqli_query($Father, $nosub);
								$nosubject = mysqli_fetch_assoc($nosub_query);
								$lower = strtolower($nosubject['subject']);
								echo $upper = ucwords($lower);
								
								if($i < ($counting - 2) ){
									echo ", ";
								}
							}
					}
					
					//selecting other fields
						 $columns = "SHOW columns FROM `$myclass` ";
						 $columns_query = mysqli_query($Son, $columns);
						 
						 $column = "";
						 while($col = mysqli_fetch_assoc($columns_query)){
							 $field = $col['Field'];
							 
							 if(strchr($field,"_pos") == True){
								 $chi = chop($field,"_pos");
								 $column.= $chi.",";
							 }							 
							 }
							 if($column == ""){
								echo "<h2>Sorry, no subject has been recorded yet!</h2>";
								die();
							
							 }
				
			
			?>
		</p>
		<div class = 'what'>
			<button onclick = 'myReload()' title = 'Calculate/recalculate totals, averages, positions or grades' id = 'butt' class = 'w3-button w3-blue w3-round w3-hover-green'>Recalculate Grand Totals, Averages & <?php
				if($value2['reportsheet'] == "alphabetic"){
					$what = "Grade";
				}else{
					$what = "Position";
				}
				echo $what;
			?></button>
		</div>
			<?php
			
			
		//fetching school name 
			$kull = "SELECT school FROM info_sch";
			$kull_query = mysqli_query($Father, $kull);
			$skull = mysqli_fetch_assoc($kull_query);
			if($skull == NULL){
				$myschool = "School Name Not Set Yet!";
			}else{
				$myschool = $skull['school'];
			}
	
			?>
			<h2><?php echo strtoupper($myschool);?></h2>
			<h3>2ND TERM BROADSHEET FOR <?php 
			$session = date('F');
			if($session == "January" || $session == "February" || $session == "March" || $session == "April" || $session == "May" || $session == "June" || $session == "July"){
				$yr = date('Y');
				$acad = $yr - 1 ."/". $yr;
			}else{
				$yr = date('Y');
				$acad = $yr ."/". ($yr+1);
			}
			
			echo $class.  " &emsp; &emsp; $acad ACADEMIC SESSION";?> </h3>
			<form name = 'theform' action="" method = 'POST' enctype = 'multipart/form-data'>
				<select onchange = "thefunct()" class = "w3-select w3-round w3-border-green" name="change" required > 
					<option value="">Change Class</option>
						<?php
						
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
					
					?>
				
				</select>
				
			</form>
			<script>
					function thefunct(){
						var x = document.forms["theform"]["change"].value;
						if(x == ""){
							alert('Please select a valid class!');
						}else{
							theform.submit();
						}
					}
			</script>
<div class = 'mytable'>
			<table class = 'w3-striped' > 
					<th>S/&#x2116;</th>
					<th>Name</th>
					<th>Gender</th>
					<?php
						
						$new_col = chop ($column, ",");
						$array = explode(",",$new_col);
						foreach($array as $arr){
							$ray = "SELECT subject FROM subjects WHERE abbreviation = '$arr' ORDER BY subject ASC";
							$ray_query = mysqli_query($Father, $ray);
							$raying = mysqli_fetch_assoc($ray_query);
							$ragin = ucwords(strtolower($raying['subject']));
							if($myca == 2){
								echo "<th colspan = 5>$ragin</th>";
							}elseif($myca == 3){
								echo "<th colspan = 6>$ragin</th>";
							}elseif($myca == 4){
								echo "<th colspan = 7>$ragin</th>";
							}
						}
					
					?>
					<th>G.Total</th>
					<th>Average</th>
					<th><?php echo $what;?></th>
					
					<?php
						echo "<tr>";
									echo "<td class = 'thick'></td>";
									echo "<td class = 'thick'></td>";
									echo "<td class = 'thick' colspan = 1></td>";
								foreach($array as $dial){
									if($myca == 2){
										echo "<td><b>CA<sub>1</sub></b></td>";
										echo "<td><b>CA<sub>2<sub/></b></td>";
										
										echo "<td><b>Total CA</b></td>";
										echo "<td><b>Exam</b></td>";
										echo "<td class = 'thick'><b>Total</b></td>";
									}elseif($myca == 3){
										echo "<td><b>CA<sub>1</sub></b></td>";
										echo "<td><b>CA<sub>2<sub/></b></td>";
										echo "<td><b>CA<sub>3</sub></b></td>";
										echo "<td><b>Total CA</b></td>";
										echo "<td><b>Exam</b></td>";
										echo "<td class = 'thick'><b>Total</b></td>";
									}elseif($myca == 4){
										echo "<td><b>CA<sub>1</sub></b></td>";
										echo "<td><b>CA<sub>2<sub/></b></td>";
										echo "<td><b>CA<sub>3</sub></b></td>";
										echo "<td><b>CA<sub>4</sub></b></td>";
										echo "<td><b>Total CA</b></td>";
										echo "<td><b>Exam</b></td>";
										echo "<td class = 'thick'><b>Total</b></td>";
									}
							}
							echo "<td class = 'thick'></td>";
							echo "<td class = 'thick'></td>";
							echo "<td class = 'thick'></td>";
							
						
						echo "</tr>";
							
						//selecting data
						$naming = "SELECT name, gender, grand, average, position FROM $myclass ORDER BY name ASC ";
						$naming_query = mysqli_query($Son, $naming);
						$j = 1;
						while($namz = mysqli_fetch_assoc($naming_query)){
							$name = $namz['name'];
							$gen = $namz['gender'];
							
							
							echo "<tr class = 'w3-hover-khaki'>";
							echo "<td style = 'text-align: right; padding-left: 0px;' class = 'thick'><b>$j.</b></td>";
							echo "<td style = 'text-align: left; padding-left: 3px;' class = 'thick'><b>$name</b></td>";
							echo "<td style = 'text-align: center;' class = 'thick'><b>$gen</b></td>";
							foreach($array as $item){
								
								$pin1 = $item."_ca1";
								$pin2 = $item."_ca2";
								$pin3 = $item."_ca3";
								$pin4 = $item."_ca4";
								$pin5 = $item."_ca_total";
								$pin6 = $item."_exam";
								$pin7 = "Total_".$item;
								
								$bd = "SELECT`$pin1`, `$pin2`, `$pin3`, `$pin4`, `$pin5`, `$pin6`, `$pin7`, grand, average, position FROM `$myclass` WHERE name = '$name' ";
								$bd_query = mysqli_query($Son, $bd);
								while($broad = mysqli_fetch_assoc($bd_query)){
									if($myca == 2){
											if(($broad[$pin1] == 0) && ($broad[$pin2] == 0) && ($broad[$pin6] == 0)){
											echo "<td></td>";
											echo "<td></td>";
											
											echo "<td></td>";
											echo "<td></td>";
											echo "<td class = 'thick'></td>";
										
									}else{
											if($broad[$pin1] < 7){
																echo "<td style = 'color:#ef3939;'>$broad[$pin1]</td>";
															}else{
																echo "<td>$broad[$pin1]</td>";
															}
															if($broad[$pin2] < 7){
																echo "<td style = 'color:#ef3939;'>$broad[$pin2]</td>";
															}else{
																echo "<td>$broad[$pin2]</td>";
															}
															
															if($broad[$pin5] < 15){
																echo "<td style = 'color:#ef3939;'>$broad[$pin5]</td>";
															}else{
																echo "<td>$broad[$pin5]</td>";
															}
															
															if($broad[$pin6] < 35){
																echo "<td style = 'color:#ef3939;'>$broad[$pin6]</td>";
															}else{
																echo "<td>$broad[$pin6]</td>";
															}
															if($broad[$pin7] < 40){
																echo "<td style = 'color:#ef3939; border-right: solid 2px #000000;'>$broad[$pin7]</td>";
															}else{
																echo "<td class = 'thick'>$broad[$pin7]</td>";
															}
									}
									
									}elseif($myca == 3){
										if(($broad[$pin1] == 0) && ($broad[$pin2] == 0) && ($broad[$pin3] == 0) && ($broad[$pin6] == 0)){
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td class = 'thick'></td>";
										
									}else{
											if($broad[$pin1] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin1]</td>";
															}else{
																echo "<td>$broad[$pin1]</td>";
															}
															if($broad[$pin2] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin2]</td>";
															}else{
																echo "<td>$broad[$pin2]</td>";
															}
															if($broad[$pin3] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin3]</td>";
															}else{
																echo "<td >$broad[$pin3]</td>";
															}
															if($broad[$pin5] < 15){
																echo "<td style = 'color:#ef3939;'>$broad[$pin5]</td>";
															}else{
																echo "<td>$broad[$pin5]</td>";
															}
															
															if($broad[$pin6] < 35){
																echo "<td style = 'color:#ef3939;'>$broad[$pin6]</td>";
															}else{
																echo "<td>$broad[$pin6]</td>";
															}
															if($broad[$pin7] < 40){
																echo "<td style = 'color:#ef3939; border-right: solid 2px #000000;'>$broad[$pin7]</td>";
															}else{
																echo "<td class = 'thick'>$broad[$pin7]</td>";
															}
									}
									
									}elseif($myca == 4){
														if(($broad[$pin1] == 0) && ($broad[$pin2] == 0) && ($broad[$pin3] == 0) && ($broad[$pin6] == 0)){
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td></td>";
											echo "<td class = 'thick'></td>";
										
									}else{
											if($broad[$pin1] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin1]</td>";
															}else{
																echo "<td>$broad[$pin1]</td>";
															}
															if($broad[$pin2] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin2]</td>";
															}else{
																echo "<td>$broad[$pin2]</td>";
															}
															if($broad[$pin3] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin3]</td>";
															}else{
																echo "<td >$broad[$pin3]</td>";
															}
															if($broad[$pin4] < 5){
																echo "<td style = 'color:#ef3939;'>$broad[$pin4]</td>";
															}else{
																echo "<td >$broad[$pin4]</td>";
															}
															
															if($broad[$pin5] < 15){
																echo "<td style = 'color:#ef3939;'>$broad[$pin5]</td>";
															}else{
																echo "<td>$broad[$pin5]</td>";
															}
															
															if($broad[$pin6] < 35){
																echo "<td style = 'color:#ef3939;'>$broad[$pin6]</td>";
															}else{
																echo "<td>$broad[$pin6]</td>";
															}
															if($broad[$pin7] < 40){
																echo "<td style = 'color:#ef3939; border-right: solid 2px #000000;'>$broad[$pin7]</td>";
															}else{
																echo "<td class = 'thick'>$broad[$pin7]</td>";
															}
									}
									}
									
									
								}
							}
								if($namz['grand'] == 0){
									echo "<td class = 'thick'></td>";
								}else{
									echo "<td class = 'thick'>$namz[grand]</td>";
								}
								
										$num = number_format($namz['average'],2);
								if($num == 0){
									echo "<td class = 'thick'></td>";
								}else{
										if($num < 40){
										echo "<td style = 'color: #ef3939; border-right: solid 2px #000000;'>$num</td>";
									}else{
										echo "<td class = 'thick'>$num</td>";
									}
								}
									if($namz['position'] == ""){
										echo "<td class = 'thick'></td>";
									}else{
										echo "<td style = 'text-align: center;' >$namz[position]</td>";
									}
						echo "</tr>";
						
						$j++;
						}
					?>
			
			
			</table>
</div>
				<br />
		<div class = "noprint">
				<button class = 'fas fa-print fa-2x w3-button w3-round w3-blue w3-hover-green' onclick = "window.print()"><span> print</span></button>
		<div>
		<br />
		<script>
				function myReload(){
				
							if(window.XMLHttpRequest){
								var request = new XMLHttpRequest();
							}else{
								var request = new ActiveXobject("Microsoft.XMLHTTP");
							}
							var myClass = document.getElementById("theClass").innerHTML;
							
							
							request.open("POST", "calculate2.php", true); //change
							request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
							request.send("class="+myClass);
							
							request.onreadystatechange = function(){
								location.reload(false);
							}
							
					}
			
		
		</script>
</body>
</html>