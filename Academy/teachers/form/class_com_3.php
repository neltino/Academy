<?php
		session_start();
		include '../../teach_conn.php';
		include '../../all_conn.php';

		$id = $_POST['id'];
		$class = $_SESSION['class'];
		$myclass = strtolower(str_replace(" ", "",$class."_3rd_term")); //change
		$name = $_POST['name'];

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:3rd Term Teacher's Comment</title>
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
	#myhead h1 span{
		color: yellow;
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 1.7vw;
		}
		h2{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
		}
		b{
			margin-left: 20%;
			color: #ff1b2d;
			font-size: 1.5vw;
			font-family: Gabriola;
		}
		em{
			color: yellow;
			font-family: teen;
		}
		table{
			margin-left: 35%;
			font-family: teen;
			background: white;
			border-radius: 2%;
			width: 30%;
			font-size: 1.11vw;
			border-collapse: collapse;
		}
		table th{
			text-align: left;
			color: indigo;
			border-bottom: solid 2px indigo;
		}
		table td{
			padding: 0 2%;
		}
		form{
			margin-left: 30%;
			width: 40%;
			font-family: teen;
			font-size: 1.2vw
		}
		input[type=submit]{
			width: 50%;
			margin-left: 25%;
			cursor: pointer;
		}
		input[type=text]{
			font-size: 1vw;
		}
		@media only screen and (max-width: 768px){
				h3,h2{font-size: 5vw; margin-top: 9%;}
				table{margin-left: 1%; width: 98%;font-size: 4vw;}
				form{width:98%; margin-left: 1%; margin-bottom: 90%;}
				input[type=text]{font-size: 4vw;}
				input[type=submit]{font-size: 4vw; width: 100%; margin-left: 0;}
			}
		
		
	</style>
</head>
<body>
	<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >3rd Term Result Summary for <span><?php echo $name;?></span></h1> 
					
				</div>
				
	<?php
			include 'asideform.php';
			echo "<br />
			<br />
			<br />";
			//selecting Column Totals
			$fields = "SHOW columns FROM `$myclass` ";
			$fields_query = mysqli_query($Son, $fields);
			$a = "";
			while($field = mysqli_fetch_assoc($fields_query)){
				$column = $field['Field'];
				if(strchr($column, "Total_") == True || strchr($column, "_grade" ) == True){
					$a.= $column.",";
				}
			}
			$b = chop($a, ",");
			$explode = explode(",", $b);
			
			//selecting data from Subject Totals
			$totals = "SELECT $b, grand, average, position, teach_com FROM `$myclass` WHERE ID = '$id' ";
			$totals_query = mysqli_query($Son, $totals);
			$totals_query2 = mysqli_query($Son, $totals);
			$teach_co = mysqli_fetch_assoc($totals_query2);
			$co = $teach_co['teach_com'];
			
			echo "<table>";
					echo "<th>Subject</th>";
					echo "<th>Total</th>";
					echo "<th>Subject Grade</th>";
					while($total = mysqli_fetch_assoc($totals_query)){
						$check = 0;
						foreach($explode as $val){
							
							//Getting subjects
							$sub = str_replace("Total_", "",$val);
							$gra = $sub."_grade";
							
							
							$ject = "SELECT subject FROM subjects WHERE abbreviation = '$sub' ";
							$ject_query = mysqli_query($Father, $ject);
							$jectval = mysqli_fetch_assoc($ject_query);
							$mysubject = ucwords(strtolower($jectval['subject']));
							echo "<tr>";
										echo "<td>$mysubject</td>";
										if($total[$val] != 0){
											echo "<td>$total[$val]</td>";
											echo "<td style = 'text-align: center;'>$total[$gra]</td>";
										}else{
											echo "<td></td>";
											echo "<td></td>";
										}
							echo "</tr>";
							if(strchr($val, "Total") == True){
								$check+= $total[$val];
							}
						}
						
						// Other fields
							echo "<tr>";
										echo "<td style = 'font-weight: bold; color: magenta;' >Grand Total</td>";
										echo "<td style = 'font-weight: bold;'>$total[grand]</td>";
							echo "</tr>";
							
							echo "<tr>";
										$average = number_format($total['average'], 2);
										
										echo "<td style = 'font-weight: bold; color: magenta;'>Average</td>";
										if($average < 40){
											echo "<td style = 'font-weight: bold; color: red;' >$average</td>";
										}else{
											echo "<td style = 'font-weight: bold;' >$average</td>";
										}
							echo "</tr>";
							
							echo "<tr>";
										//selecting gradetype
										$type = "SELECT `reportsheet` FROM `info_exams` ";
										$type_query = mysqli_query($Father, $type);
										$typeof = mysqli_fetch_assoc($type_query);
										$typ = $typeof['reportsheet'];
										if($typ == 'alphabetic'){
											 echo "<td style = 'font-weight: bold; color: magenta;' >Overall Grade</td>";
										}else{
											echo "<td style = 'font-weight: bold; color: magenta;' >Position</td>";
										}
										echo "<td style = 'font-weight: bold;'>$total[position]</td>";
							echo "</tr>";
					}
			echo "</table>";
			
	?>
		<br /><br /> 
		<form action="class_comm_3_update.php" method = "POST" enctype = "multipart/form-data">
				<input type="text" name = "id" value = "<?php echo $id; ?>" hidden />
			
				<input class = 'w3-input w3-round w3-border-green' type="text" name = "comm" list = "suggest" required value = '<?php echo $co;?>' placeholder = 'Type your comment here!' />
			<datalist id = "suggest"> 
					<option value="An excellent performance; keep it up!">An excellent performance; keep it up!</option>
					<option value="You tried in other subjects, but your score in Mathematics is poor!">You tried in other subjects, but your score in Mathematics is poor!</option>
					<option value="You tried in other subjects, but your score in English Language is poor!">You tried in other subjects, but your score in English Language is poor!</option>
					<option value="Good performance, but work harder on Mathematics and English Language!">Good performance, but work harder on Mathematics and English Language!</option>
					<option value="Average result; improve on the following subject(s):">Average result; improve on the following subject(s):</option>
					<option value="A very good result, but improve on the following subject(s):">A very good result, but improve on the following subject(s):</option>
					<option value="An excellent result, but improve on the following subject(s):">An excellent result, but improve on the following subject(s):</option>
					<option value="An excellent result; you will do better in science!">An excellent result; you will do better in sciences</option>
					<option value="An excellent result; you will do better in Arts!">An excellent result; you will do better in Arts</option>
					<option value="An excellent result; you will do better as a Commercial student!">An excellent result; you will do better as a Commercial student!</option>
					<option value="Poor performance, I advise you repeat!">Poor result, I advise you repeat!</option>
					<option value="A very poor performance, I advise you repeat!">Poor result, I advise you repeat!</option>
					<option value="Poor performance, but I recommend promotion on trial!">Poor performance, but I recommend promotion on trial!</option>
					
			</datalist>
				<br />
				<input class = 'w3-input w3-blue w3-round w3-hover-green' type="submit" />
				
		
		</form>
	
</body>
</html>