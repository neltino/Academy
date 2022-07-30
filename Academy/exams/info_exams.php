<?php
		
		include '../all_conn.php';
		//creating table
		$tab = "CREATE TABLE IF NOT EXISTS`info_exams` (
			`ID` int(11) NOT NULL AUTO_INCREMENT,
			`reportsheet` text NOT NULL,
			`caexams` text NOT NULL,
			`psycho` text NOT NULL,
			`numca` int NOT NULL,
			`phone` text NULL,
			PRIMARY KEY (ID)
			)";
		$tab_query = mysqli_query($Father, $tab);
		
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../img/soft.png" />
	<title>.:Exams Info:.</title>
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		@font-face{
						font-family: cac;
						src: url(../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(../myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
			body{
				background: url(../img/abstract.jpg) repeat;
				background-position:  center;
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
		font-size: 2vw;
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
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
		}
		form{
			font-family: Gabriola;
			width: 32%;
			margin-left: 35%;
		}
		form input[placeholder]{
			font-family: teen;
			
			font-weight: bold;
			font-style: italic;
		}
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 5px;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			padding: 3px;
			border-radius: 5px;
			font-family: teen;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
			font-size: 1.3vw;
		}
		select, input[type=text]{
			font-family: teen;
			background: radial-gradient(#ffffff,#b6dcfb);
		}
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		table{
			border-collapse: collapse;
			margin-left: 35%;
			background: whitesmoke;
			color: indigo;
			width: 32%;
			border-radius: 5px;
			font-family: teen;
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: left;
		}
		table td{
			padding-bottom: 0.5%;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 5px;
		}
		table caption{
			color: indigo;
		}
		table input[type=submit]{
			border:none;
			background: green;
			color: white;
			border-radius: 2px;
			padding: 0 5px;
		}
		table input[type=submit]:hover{
			background: blue;
		}
		table input[type=submit]:first-child{
			margin-top: 3px;
		}
		h3 i{
			color: yellow;
		}
		#info{
			float: right;
			width: 30%;
			margin-top: -3.5%;
			font-family: teen;
			font-size: 1vw;
			
		}
		#info span{
			margin-top: 5.5%;
		}
		#info h4{
			font-family: teen;
			text-align: center;
			font-size: 1.2vw;
			color: white;
		}
		#info h5{
			font-family: teen;
			text-align: left;
			font-size: 1vw;
			color:  yellow;
		}
		#info ol li{
			text-align: justify;
		}
		
		#info li b{
			color: yellow;
		}
		@media print{
			form, h3 i, table th:last-child, #info{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
		@media only screen and (max-width: 768px){
				h3 i{font-size: 4vw;}
				#info, form, table{width: 98%; margin-left: 1%;}
				#info{font-size: 3vw; margin-right: 1%;}
				#info h4{font-size: 4vw;}
				#info h5{font-size: 3vw;}
				#info span{margin-top:29%; margin-right: 1%;}
				form label, table{font-size:  4vw;}
				
				@media only screen and (orientation: landscape){
					#info span{margin-top:16.5%; margin-right: 1%;}
				}
			}
	
	</style>
</head>
<body>		
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Examination Info</h1>
				</div>
			<?php include 'asideexams.php';?>
			<div id="please">
					<h3><i>Please supply the following information; all fields are required:</i></h3>
				</div>	
				
				<div id = 'info' class="w3-panel w3-blue">
						<span onclick="this.parentElement.style.display='none'"class="w3-button w3-display-topright">&times;</span>
						<h4>How to fill this form appropriately</h4>
						<h5><u>Reportsheet Grade System Type</u></h5>
						<small>Used this to set the grade type on students' reportsheet. They are:
								<ol> 
									<li><b>Alphabetic Grade:</b> a non-competitive and  non-comparative grade system in which a student's overall performance is set to an alphabetic grade on the broadsheet and reportsheet. e.g. A, B, C, D or F</li>
									<li><b>Positional Grade:</b> a competitive and comparative grade system in which a student's overall performance is set to  a numeric position on the broadsheet and reportsheet. e.g. 1st, 2nd, 3rd, 4th, etc </li>
								</ol>
						</small>
						<h5><u>CA & Exams Grade System Type</u></h5>
						<small>Use this to set performance grade type for subject teachers. They are:
								<ol> 
									<li><b>Simple Alphabetic Grade:</b> a student's subject performance is set to a simple alphabetic grade. e.g. A, B, C, D or F</li>
									<li><b>Alphanumberic Grade:</b> a student's subject performance is set to an alphanumeric grade. e.g. A1, B2, B3, C4, C5, C6, D7 or F9 </li>
								</ol>
						</small>
						<h5><u>Psychomotor/Affective Domains Grade System</u> </h5>
						<small>Use this to set psychomotor/Affective domain grading. They are:
								<ol> 
									<li><b>Alphabetic Grade:</b> this uses alphabetic grades. Neatness, for instance, could have A = Excellent, B = Very good, C = Good, D = fair or F = Poor</li>
									<li><b>Numeric Grade:</b> this uses number grades. Neatness, for instance, could have 5 = Excellent, 4 = Very good, 3 = Good, 2 = fair or 1 = Poor</li>
									
								</ol>
						</small>
						
						<h5><u>Number of CAs Offered by your school</u></h5>
						<small>Use this to set the maximum and minimum number of CAs that subject teachers will record for each student. They are:
								<ol> 
									<li><b>2:</b> use this if your school offer 2 CAs</li>
									<li><b>3:</b> use this if your school offer 3 CAs</li>
									<li><b>4:</b> use this if your school offer 4 CAs</li>
									
								</ol>
						</small>
						
				</div>
		
	<form action="info_action.php" method = "POST" enctype = "multipart/form-data"> 
		<fieldset> 
				<legend> Exams Info:</legend>
				<label for="classes">Reportsheet Grade System Type:</label>
				<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name="report" required> 
						<option value="">Please Select Grade type</option>
						<option value="alphabetic">Alphabetic Grades</option>
						<option value="positional">Positional Grades</option>
				</select>
				<label for="houses">CA & Exams Grade system:</label>
				<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name="ca_exams" required>
						<option value="">Please Select Grade type</option>
						<option value="alphabetic">Alphabetic Grades</option>
						<option value="alphanumeric">Alphanumeric Grades</option>
				</select>
				<label for="reg">Psychomotor/Affective Domains Grading System:</label>
				<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" class = "w3-select w3-round w3-border-green" name="psycho" required > 
						<option value="">Please Select Grade type</option>
						<option value="alphabetic">Alphabetic Grades</option>
						<option value="numeric">Numeric Grades</option>
				</select>
				<label for="reg">Number of Continuous Assessments(CA) offered by the school:</label>
				<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left"  name="ca" required > 
						<option value="">Please Select quantity</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
				</select>
				<br />
				<label for="phone">School Contact Phone Number: </label>
				<input type="text" name = 'phone' class = "w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left" placeholder = 'e.g. 08106279274' />
				<br />
				<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  />
				
				
		</fieldset>
	
	
	</form>
	<br />
	<?php
	
			//checking that admission info ! empty
			
			$check = "SELECT `reportsheet` FROM `info_exams`";
			$check_query = mysqli_query($Father, $check);
			
				if($checking = mysqli_fetch_assoc( $check_query) != NULL){
					$send = "SELECT * FROM `info_exams` ";
					$send_query = mysqli_query($Father, $send);
					$value = mysqli_fetch_assoc($send_query);
					echo "<table >";
								echo "<caption>Examination Info</caption>";
								echo "<th>Info</th>";
								echo "<th>Supplied Value</th>";
								echo "<th>Edit</th>";
								
								echo "<tr>";
											echo "<td class = 'bold'>Reportsheet Grade type:</td>";
											echo "<td class = 'bold'>$value[reportsheet]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'rep' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'one' /></td>";
											echo "</form>";
											
											
								echo "</tr>";
								
								
								
								echo "<tr>";
											echo "<td class = 'bold'>CA & Exams:</td>";
											echo "<td class = 'bold'>$value[caexams]</td>";
											
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'exams' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'two' /></td>";
											echo "</form>";
										
								echo "</tr>";
								
								
								
								echo "<tr>";
											echo "<td class = 'bold'>Psycho/Affective Grade:</td>";
											echo "<td class = 'bold'>$value[psycho]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'psycho' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'three' /></td>";
													
											
								echo "</tr>";
								
								echo "<tr>";
											echo "<td class = 'bold'>Number of CAs:</td>";
											echo "<td class = 'bold'>$value[numca]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'ca' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'four' /></td>";
													
											
								echo "</tr>";
								
								echo "<tr>";
											echo "<td class = 'bold'>School Phone Contact:</td>";
											echo "<td class = 'bold'>$value[phone]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'phone' value = '$value[phone]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'five' /></td>";
													
											
								echo "</tr>";
								
					echo "</table>";
					
					
				}

	?>
			<br /><br />
</body>
</html>