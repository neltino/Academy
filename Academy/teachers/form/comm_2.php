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
	<title>.:2nd Term Comment:.</title>
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
			margin-left: 40%;
			font-family: teen;
			background: white;
			border-radius: 5px;
			border-collapse: collapse;
		}
		table th{
			text-align: left;
			color: indigo;
			border-bottom: solid 2px indigo;
			padding: 0 2%;
		}
		table td{
			padding: 0 2%;
		}
		input[type=submit]{
			border: none;
			background: none;
			cursor: pointer;
			color: #560000;
			font-size: 1.1vw;
		}
		input[type=submit]:hover{
			color: #2196f3;
			font-size: 1.11vw;
		}
		.nocom{
			color: red;
		}
		.com{
			color: #00b300;
		}
		@media only screen and (max-width: 768px){
				h3,h2{font-size: 5vw; margin-top: 9%;}
				form{width:98%; margin-left: 1%; font-size: 4vw;}
				table{margin-left: 1%; width: 98%;font-size: 4vw;}
				input[type=submit], input[type=submit]:hover{font-size: 4vw;}
			}
	</style>
</head>
<body onload = 'funct()' >
	<?php
		//checking if database is empty!
		
				if($result == NULL){
					 echo "<h2>Please Register Class Subjects First!</h2>";
					echo "<h3>...you will be redirected shortly to register class subjects!</h3>";
					header("Refresh: 4, url=select_sub.php");
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
					header("Refresh: 4, url=select_sub.php");
					die();
				 }
				 
				 //checking if an existing class has members in it!
					$qry = "SELECT name FROM `$myclass`";
					$sub = mysqli_query($Son, $qry);
					$ans = mysqli_fetch_assoc($sub);
					if($ans == NULL){
						echo "<h2>Sorry, This Class has no registered Class Members</h2>";
						echo "<h3>...you will be redirected shortly to register class members!</h3>";
					header("Refresh: 4, url=register.php");
						die();

					}
				
			?>

			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Comment for <?php echo $class;?></h1> 
					
				</div>
			
		<?php
				include 'asideform.php';
				
				//selecting class subjects...
					$mysub = strtolower(str_replace(" ", "", $class."_subjects"));
					$sub = "SELECT subjects FROM `$mysub`";
					$sub_query = mysqli_query($Son, $sub);
					$answer = mysqli_fetch_assoc($sub_query);
					
					
				//selecting class fields
					$fields = "DESCRIBE `$myclass`";
					$fields_query = mysqli_query($Son, $fields);
					$fields_query2 = mysqli_query($Son, $fields);
					
					
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
						echo "<b>The Following subject(s) should be entered first before you can comment: </b>";
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
							
						die();
							
					}
	//checking for changes on totals
		$implode = explode(",", $b);
		$theField = '';
		foreach($implode as $imp){
			if(strchr($imp, "Total_") == True){
				$theField.= $imp.",";
			}
		}
		$theField = chop($theField, ",");
		$check = "SELECT ID, $theField, grand FROM $myclass";
		$check_query = mysqli_query($Son, $check);
		$lode = explode(",", $theField);
		$not = '';
		while($checking = mysqli_fetch_assoc($check_query)){
			$id = $checking['ID'];
			$mytotal = 0;
			foreach($lode as $implo){
				$mytotal+= $checking[$implo];
			}
			
			if((int)$checking['grand'] != $mytotal){
				$not = "NotEqual";
				break;
			}
			
		}
		if($not != ''){
			echo "<h2 style = 'color: red;'>Changes have been made on Scores <br /> 
			...Please wait... <br /> 
			...Recalculating....</h2>";
			echo "<form name = 'myform'  action = 'calculate2.php' method = 'POST' enctype = 'multipart/form-data'> 
					<input type='text' value = '$not' name = 'sub'  hidden/>
					
				</form>";
				
			echo "<script> 
							function funct(){
								var x = document.forms['myform']['submit'];
								if(x != ''){
									myform.submit();
								}
								
							}
				</script>";
		}
		
			//selecting class members for display
			$students = "SELECT ID, name, teach_com FROM `$myclass` ORDER BY ID ASC";
			$students_query = mysqli_query($Son, $students);
			
			echo "<h3><i>Please click on a name to comment or edit comment!</i></h3>";
			
			echo "<table>";
					echo "<th>Name</th>";
					echo "<th>Comment Status</th>";
					
					while($stud = mysqli_fetch_assoc($students_query)){
						$name = $stud['name'];
						$id = $stud['ID'];
						$comm = $stud['teach_com'];
						echo "<tr>";
								//first form for entry
								echo "<form action = 'class_com_2.php' method = 'POST' enctype = 'multipart/form-data'>";
								echo "<input type='text' value = '$id' name = 'id' hidden/>";
								echo "<input type='text' value = '$name' name = 'name' hidden/>";
								echo "<input type='text' value = '$myclass' name = 'myclass' hidden/>";
								echo "<td style = 'text-align: left;'><input type='submit' value = '$name' class = 'name' title = 'Click to comment or edit' /></td>";
								echo "</form>";
									if($comm == ""){
										echo "<td style = 'color: #ef3939;'>No Comment</td>";
									}else{
										echo "<td style = 'color: #138614;'>Commented &#x2714;</td>";
									}
								
						echo "</tr>";
					}
			echo "</table>";
		?>
			
				
	
</body>
</html>