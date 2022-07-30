<?php
		session_start();
		include '../../all_conn.php';
		include '../../teach_conn.php';
		$class = $_SESSION['class'];
		$new = strtolower(str_replace(" ", "", $class."_psycho_2nd_term")); //change
		$wen = strtolower(str_replace(" ", "", $class."_2nd_term")); //change
		
		
		$name = $_POST['name'];
		
		$sel = "SELECT * FROM `$new` WHERE name = '$name' ";
		$sel_query = mysqli_query($Son, $sel);
		$selection = mysqli_fetch_assoc($sel_query);
		
		if($selection['name'] == NULL){
			$insert = "INSERT INTO `$new` (name) VALUES ('$name')";
			$insert_query = mysqli_query($Son, $insert);
		}
		//repeating
		$sel = "SELECT * FROM `$new` WHERE name = '$name' ";
		$sel_query = mysqli_query($Son, $sel);
		$selection = mysqli_fetch_assoc($sel_query);
		
		
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<title>.:2nd Term Psycho Remark:.</title>
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
						src: url(../../myfont/gabriola.ttf);
					}
			
	
	#myhead h1{
		font-family: teen;
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
	form{
		width: 25%;
		margin-top: 2%;
		margin-left: 38%;
		font-family: teen;
	}
	table{
			border-collapse: collapse;
			
			background: whitesmoke;
			color: indigo;
			border-radius: 2%;
			font-family: teen;
			font-size: 1vw;
			width: 100%;
			
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 5px;
		}
		table caption{
			color: red;
			font-size: 1.5vw;
		}
		table input[type=submit]{
			border:none;
			background:none;
			color: brown;
			cursor: pointer;
		}
		table input[type=submit]:hover{
			color: green;
		}
	h3{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 1.5vw;
	}
	table select, input[type=submit]{
		cursor: pointer;
		background: white;
	}
	h5{
		font-family: teen;
		font-size: 0.8vw;
		color: red;
		background: white;
	}
	.but button{
		margin-left: 38%;
		width: 25%;
		margin-top: 1%;
		font-family: teen;
	}
	@media only screen and (max-width: 768px){
				h3{font-size: 4vw; margin-top: 9%;}
				form{margin-bottom: 90%;}
				form h5{font-size: 3.2vw;}
				table caption{font-size: 4vw;}
				form{width:98%; margin-left: 1%;}
				table{margin-left: 1%; width: 98%;font-size: 4vw;}
			}
	</style>
</head>
<body>
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Psychomotor-Affective Remark for <?php echo $class; ?></h1> 
				</div>
				<?php include 'asideform.php' ;
					// checking grade type
					$grade = "SELECT `psycho` FROM `info_exams` ";
					$grade_query = mysqli_query($Father, $grade);
					$grading =  mysqli_fetch_assoc($grade_query);
					
					if($grading['psycho'] == "alphabetic"){
						$mygrade = "A, B, C, D, E";
						$key = "Key: &emsp; A = Excellent, B = Very Good, C = Good, D = Pass, E = Poor";
					}elseif($grading['psycho'] == "numeric"){
						$mygrade = "5, 4, 3, 2, 1";
						$key = "Key: &emsp; 5 = Excellent, 4 = Very Good, 3 = Good, 2 = Pass, 1 = Poor";
					}
					$plodex = explode(",", $mygrade);
					
					$co = "Select domain FROM domains";
					$co_query = mysqli_query($Father, $co);
					
					$item = '';
					while($cooing = mysqli_fetch_assoc($co_query)){
						$item.= $cooing['domain'].",";
					}
					$item = trim($item, ",");
					$explode = explode(",", $item);
				?>
				
				
				<h3>Please fill the fields below appropriately!</h3>
				<form action="psycho_2nd_action_action.php" method = 'POST' enctype = 'multipart/form-data'>
				
					<input name = 'id' type="text" value = '<?php echo $selection['ID']?>'  hidden />
					<input name = 'name' type="text" value = '<?php echo $selection['name']?>' hidden />
				<table> 
					<caption><?php echo $name; ?></caption>
					<th>Domain Item</th>
					<th>Grade</th>
					<?php
							foreach($explode as $ex){
								echo "<tr>";
											echo "<td>$ex</td>";
											echo "<td>";
														echo "<select class = 'w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left' name='motor[]' required >";
																echo "<option value='$selection[$ex]'>$selection[$ex]</option>";
																foreach($plodex as $plode){
																	echo "<option value='$plode'>$plode</option>";
																}
														echo "</select>";
											echo "</td>";
								echo "</tr>";
							}
					?>
				
				</table> 
				<h5><?php echo $key;?></h5>
				
				<input class = 'w3-input w3-round w3-blue w3-hover-green' type="submit" />
				</form>
				
</body>
</html>
