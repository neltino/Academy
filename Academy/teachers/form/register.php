<?php
		session_start();
		$class = $_SESSION['class'];
		$myclass = $_SESSION['class'];
		$new = strtolower(str_replace(" ", "",$class."_1st_term"));
		
		include '../../teach_conn.php';
		$query = "SHOW tables";
		$submit1 = mysqli_query($Son, $query);
		$submit2 = mysqli_query($Son, $query);
		
		$result = mysqli_fetch_assoc($submit1);
		
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Class Registration:.</title>
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
		h3{
			color: white;
			text-align: center;
			font-family: Gabriola;
		}
		
					
			h2,h3,h4{
				color: royalblue;
				text-align: left;
				font-family: teen;
				font-size: 1vw;
			}
			form{
				font-family: teen;
				margin-left: 35%;
				margin-top: 1%;
				width: 37%;
				font-size: 1vw;
				
			}
			fieldset{
				background: white;
				border-radius: 2%;
			}
			legend{
				background: #4caf50;
				border-radius: 5px;
				padding: 0 1%;
				color: white;
				font-family: teen;
			}
		
			table{
				background: #ffffff;
				border: 2px solid #000000;
				border-collapse: collapse;
				width: auto;
				font-family: teen;
				margin-left: 35%;
				font-size: 1vw;
			}
			th{
				text-align: center;
				border: solid 2px #000000;
				color: fuchsia;
				
			}
			td{
				border: solid 1px #000000;
				border-top: solid 2px #000000;
			}
			caption{
				color: indigo;
				text-align: center;
				font-family: teen;
				font-size: 1.3vw;
			}
			input[type=submit]{
				cursor: pointer;
			}
			table input[type=submit]{
				border: none;
				background: #4caf50;
				color: white;
				border-radius: 3px;
				margin: 1px 0;
			}
			table input[type=submit]:hover{
				background: #2196f3;
			}
			form i{
				color: red;
			}
			label{
				color: #2196f3;
			}
			form select{
				margin-top: 1%;
				background: white;
			}
			form input[type=text], input[type=number]{
				margin-top: 1%;
			}
			form input[placeholder]{
				color: grey;
			}
			
		@media print{
			.noprint{display: none;}
			h2{margin-top: -10px;}
			table{margin-left: 80px;}
		}
		
		@media only screen and (max-width: 768px){
			form{width: 98%; margin-left: 1%; margin-top: 10%; font-size: 4vw;}
			table{width: 98%; margin-left: 1%; font-size: 3vw;}
			table caption{font-size: 4vw;}
			em h3{font-size: 4vw;}
			input[type=radio]{margin-left: 0;}
		}
	
	</style>
</head>
<body>
	<div class = "noprint">
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Register Class Members</h1> 
					
		</div>
		<?php include 'asideform.php' ?>

			<?php
			//in case no table has been registered yet
				if($result == NULL){
					echo "<h2>Register Class Subjects First! <br />...You will redirected shortly!</h2>";
					header("Refresh: 3, url=select_sub.php");
					
					die();
				}
			//checking if class exists
	
					$a = "";
				while($ans = mysqli_fetch_assoc($submit2)){
					 if(strcmp($ans["Tables_in_teachers"],$new) == 0){
						 $a.= $ans["Tables_in_teachers"];
					 }
				}
				 
				 
				 if($a == ""){
					 echo "<h2>Please Register Class Subjects First!</h2>";
					echo "<br /><br />" ;
					echo "<a href='select_sub.php'><button>Register Class Subjects</button></a>";
					header("Refresh: 3, url=my_form.php");
					die();
				 }
				
			
	
	
		$sel = "SELECT COUNT(*) AS `total` FROM `$new` ";
		$sel_query = mysqli_query($Son, $sel);
		$to = mysqli_fetch_assoc($sel_query);
		$tot = $to['total'];
		
		if($tot < 500){
					echo "<form action='register_action.php' method = 'POST' enctype = 'multipart/form-data'>";
								echo "<fieldset>";
								
									echo "<legend> Register Class Members</legend>";
									echo "<em><h3>Please note that items marked <i>*</i> are required!</h3></em>";
									
									echo "<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type='text' name = 'name[]'  placeholder = 'Surname*' required/> ";
									
									echo "<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type='text' name = 'name[]' placeholder = 'First Name*' required/> ";
									
									echo "<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type='text' name = 'name[]' placeholder = 'Other Names' />";
									
									echo "<select class = 'w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left' name='dob[]' required >";
										echo '<option value="">Day of Birth* </option>';
												for($p = 1; $p <= 31; $p++){
													echo "<option value='$p'>$p</option>";
												}
									echo '</select> ';
									
									echo '<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left"  name="dob[]" required>';
											echo '<option value="">Month of Birth*</option>';
											echo '<option value="January">January</option>';
											echo '<option value="February">February</option>';
											echo '<option value="March">March</option>';
											echo '<option value="April">April</option>';
											echo '<option value="May">May</option>';
											echo '<option value="June">June</option>';
											echo '<option value="July">July</option>';
											echo '<option value="August">August</option>';
											echo '<option value="September">September</option>';
											echo '<option value="October">October</option>';
											echo '<option value="November">November</option>';
											echo '<option value="December">December</option>';
									
									echo '</select> ';
									echo '<input class = "w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left" type="number" name = "dob[]" placeholder ="Year of Birth*   e.g. 2002" min = "1" required />';
									
									echo "Gender*: &emsp;";
									echo '<input class = "w3-radio " type="radio" name ="gender" value = "M" required  /> Male &emsp;';
									echo '<input class = "w3-radio" type="radio" name ="gender" value = "F" required  /> Female';
									echo "<br />";
									
									echo '<input class = "w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left" type="text" name = "phone" placeholder = "Parent\'s Phone Number" />';
									echo "<br />";
									echo '<input class = "w3-input w3-round w3-green w3-hover-blue"  type="submit" value = "Register"/>';
								
								
								echo '</fieldset>';
						
						
						
						echo '</form>';
						
						
		}else{
			echo "<h2>Sorry, you cannot register more students because your class size cannot exceed 500 students!</h2>";
		}


?>
			<br />
						 			
						
						
	</div>
	<?php
		//displaying registered students
		
		$table = "SHOW tables";
		$table_query = mysqli_query($Son, $table);
		$b = "";
		while($tab = mysqli_fetch_assoc($table_query)){
			$b.= $tab['Tables_in_teachers'];
		}
		
			$look = strchr($b, $new);
			
			
			if($look == true){
				
						$students = "SELECT `ID`, `name`, `gender`,`DOB`, `phone` FROM `$new` ORDER BY name ASC";
						$student_query1 = mysqli_query($Son,$students);
						$student_query2 = mysqli_query($Son,$students);
						
						$dent = mysqli_fetch_assoc($student_query1);
						
						if($dent != NULL){
							
							echo "<table>";
										echo "<caption>$class Registered Students</caption>";
									echo "<th>S/&#x2116</th>";
									echo "<th>Full name</th>";
									echo "<th>Gender</th>";
									echo "<th>Date of Birth</th>";
									echo "<th>Parent's Phone &#x2116;</th>";
									echo "<th class = 'noprint'>Edit</th>";
									echo "<th class = 'noprint'>Delete</th>";
									$i = 1;
									while($value = mysqli_fetch_assoc($student_query2)){
										
										echo "<tr>";
												echo "<td>$i.</td>";
												echo "<td>$value[name]</td>";
												echo "<td style = 'text-align: center;'>$value[gender]</td>";
												echo "<td>$value[DOB]</td>";
												echo "<td>$value[phone]</td>";
												echo "<form action='edit_reg_stud.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$value[ID]' hidden/>";
												echo "<td class = 'noprint' style = 'padding: 0 3px;' ><input type='submit' value = ' Edit ' /></td>";
												echo "</form>";
												
												echo "<form action='delete_reg_stud.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$value[ID]' hidden/>";
												echo "<td class = 'noprint' style = 'padding: 0 3px;'><input type='submit' value = ' Delete ' /></td>";
												echo "</form>";
												
										
										echo "</tr>";
										$i++;
										
									}
										
									
							echo "</table>";
						}
		
				
						
						
			}
		
		
	
	?>
		<br /><br />
</body>
</html>