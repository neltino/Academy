<?php
		session_start();
		$class = $_SESSION['class'];
		
		include '../../teach_conn.php';
		include '../../all_conn.php';
		
		//checking if class has been created!
		$query = "SHOW tables";
		$submit1 = mysqli_query($Son, $query);
		$submit2 = mysqli_query($Son, $query);
		
		$result = mysqli_fetch_assoc($submit1);
		$myclass = strtolower(str_replace(" ", "",$class."_2nd_term")); //change
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Reportsheet:.</title>
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
			color: yellow;
			text-align: center;
			font-family: teen;
			font-size: 1.1vw;
		}
		h2{
			color: yellow;
			text-align: center;
			font-family: teen;
			font-size: 1.5vw;
		}
		b{
			margin-left: 20%;
			font-family: teen;
			color: red;
			font-size: 1vw;
		}
		em{
			color: yellow;
			font-family: teen;
			font-size: 1vw;
		}
		table{
			margin-left: 35%;
			font-family: teen;
			background: white;
			border-radius: 5px;
			width: 30%;
		}
		table th{
			border-bottom: solid 2px indigo;
			color: indigo;
		}
		table td{
			padding: 1%;
		}
		input[type=submit]{
			border: none;
			background: none;
			color: chocolate;
			font-size: 1.1vw;
		}
		input[type=submit]:hover{
			color: #60aa45;
			cursor: pointer;
			font-size: 1.1vw;
		}
		@media only screen and (max-width: 768px){
			h2, h3{font-size: 4vw;}
			h2{margin-top: 10%;}
			h3:last-child{margin-top: 10%;}
				table{margin-left: 0; width: 100%; margin-bottom: 95%;}
				table input[type=submit]{font-size: 4vw;}
				table input[type=submit]:hover{font-size: 4vw;}
				
			}
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Single Reportsheet for <?php echo $class;?> </h1> 
					
				</div>
	<?php
			//checking if db is empty!
		
				if($result == NULL){
					echo "<h2>Please Register Class Subjects First!</h2>";
					echo "<h3>...you will be redirected shortly to register class subjects!</h3>";
					header("Refresh:3, url=select_sub.php");
					die();
				}
					$d = "";
				while($ans = mysqli_fetch_assoc($submit2)){
					 if(strcmp($ans["Tables_in_teachers"], $myclass) == 0){
						 $d.= $ans["Tables_in_teachers"];
					 }
				}
				 
				 
				 if($d == ""){
					echo "<h2>Please Register Class Subjects First!</h2>";
					echo "<h3>...you will be redirected shortly to register class subjects!</h3>";
					header("Refresh:3, url=select_sub.php");
					die();
				 }
				 
				 //checking if an existing class has members in it!
					$qry = "SELECT name FROM `$myclass`";
					$sub = mysqli_query($Son, $qry);
					$ans = mysqli_fetch_assoc($sub);
					if($ans == NULL){
						echo "<h2>Please Register Class Members First!</h2>";
					echo "<h3>...you will be redirected shortly to register class members!</h3>";
					header("Refresh:3, url=register.php");
					die();

					}
				
			
				
				
				//selecting class subjects...
					$mysub = strtolower(str_replace(" ", "", $class."_subjects"));
					$sub = "SELECT subjects FROM `$mysub`";
					$sub_query = mysqli_query($Son, $sub);
					$answer = mysqli_fetch_assoc($sub_query);
					
					
				//selecting class fields
					$fields = "DESCRIBE `$myclass`";
					$fields_query = mysqli_query($Son, $fields);
					
					
						$b = "";
					while($field = mysqli_fetch_assoc($fields_query)){
						$b.= $field['Field'].",";
					}
						$explode = explode(",",$answer['subjects']);
						$count = count($explode);
					
					$c = "";
					
					$parameter = 0;
					foreach($explode as $ex){
						$search = strchr($b, $ex."_");
						if($search == false){
							$c.= $ex.",";
						}else{
							$parameter++;
						}
					}
					$viate = chop($c, ",");
					

					//checking if all registered subjects have been entered for a class
			
					if($parameter != $count){
						echo "<b>The Following subject(s) should be entered first before you print student reportsheet: </b>";
						$xplod = explode(",", $viate);
						$counting = count($xplod);
						$tin = 1;
						
						echo "<em>";
						
						foreach($xplod as $plod){
							$nosub = "SELECT subject FROM subjects WHERE abbreviation = '$plod'";
								$nosub_query = mysqli_query($Father, $nosub);
								$nosubject = mysqli_fetch_assoc($nosub_query);
								$lower = strtolower($nosubject['subject']);
								echo $upper = ucwords($lower);
								
								if($tin < $counting){
									echo ", ";
								}
								
								$tin++;
						}
						
						echo "</em>";
						header("Refresh:3, url=singmul_2.php");
						die();
							
					}
				
			
			include 'asideform.php';
		
			//selecting class members for display
			$students = "SELECT ID, name FROM `$myclass` ORDER BY ID ASC";
			$students_query = mysqli_query($Son, $students);
			echo "<h3><i>Please click on a name to print reportsheet!</i></h3>";
			
			echo "<table>";
					echo "<th>$class Class Members</th>";
					
					while($stud = mysqli_fetch_assoc($students_query)){
						$name = $stud['name'];
						$id = $stud['ID'];
						
						echo "<tr>";
								//first form for entry
								echo "<form action = 'class_reportsheet_2.php' method = 'POST' enctype = 'multipart/form-data'>";
								echo "<input type='text' value = '$id' name = 'id' hidden/>";
								echo "<input type='text' value = '$name' name = 'name' hidden/>";
								echo "<td style = 'text-align: left;'><input type='submit' value = '$name' class = 'name' title = 'Click to print Reportsheet' /></td>";
								echo "</form>";
									
								
						echo "</tr>";
					}
			echo "</table>";
		?>
			
			
	
</body>
</html>