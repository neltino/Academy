<?php
	session_start();
	include '../../all_conn.php';
	$query = "SELECT subject, abbreviation FROM subjects ORDER BY subject ASC";
	$submit1 = mysqli_query($Father, $query);
	$submit2 = mysqli_query($Father, $query);
	
	$class = $_SESSION["class"];
	
?>


<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Select Class Subjects:.</title>
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
				
			}
			fieldset{
				background: white;
				border-radius: 5px;
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
				margin-left: 20%;
				margin-right: 20%;
				
			}
			th{
				text-align: center;
				border: solid 2px #000000;
				color: fuchsia;
				
			}
			td{
				border: solid 1px #000000;
				border-top: solid 2px #000000;
				padding: 0 3px;
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
				border-radius: 5px;
			}
			table input[type=submit]:hover{
				background: #2196f3;
			}
			h3{color: yellow; font-family: gabriola; text-align: center; font-size: 2vw;}
			@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 1%; margin-top:9%}
				table{width: 98%; margin-left: 1%; margin-bottom: 90%;}
				table input[type=submit]{width: 98%; margin-left: 1%;}
				table caption{font-size: 4vw;}
				h3{font-size: 5vw;}
			}
			
	</style>
</head>
<body>
			
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Select Class Subjects</h1> 
					
		</div>
		<?php include 'asideform.php' ?>
			<h3>Select only the subjects offered by your class!</h3>
			<form action="select_sub_action.php" method = "POST" enctype = "multipart/form-data">
					<fieldset> 
					<legend>Select Subjects</legend>
					<input type="text" name = 'myclass' value = "<?php echo $class;?>" hidden />
					
				<?php
						if(mysqli_fetch_assoc($submit1) == NULL){
							echo "<select name='no_sub'>";
								echo "<option value='no subject'>No Registered Subject yet!</option>";
							echo "</select>";
						}else{
							while($answer = mysqli_fetch_assoc($submit2)){
								echo "<input class = 'w3-check' type = 'checkbox' name = 'class[]' value = '$answer[abbreviation]' />". " ".$answer['subject'];
								echo "<input type = 'text' name = 'sub[]' value = '$answer[subject]' hidden />";
								echo "<br />";
							}
						}
				
				?>
				<br />
						<input class = 'w3-input w3-green w3-round w3-hover-blue' type="submit"/>
						
					</fieldset>
			</form>
			<br />
			
			
				<?php
						include '../../teach_conn.php';
						$special = "SHOW tables";
						$special_query1 = mysqli_query($Son, $special);
						$special_query2 = mysqli_query($Son, $special);
						
						$result = mysqli_fetch_array($special_query1);
						
				
	if($result !== NULL){
						while($display = mysqli_fetch_assoc($special_query2)){
							
						
							$new = strtolower(str_replace(" ", "",$class)."_subjects");
							
							if($display["Tables_in_teachers"] == $new){
								
									


										$display = "SELECT * FROM `$new` ";
										$display_query1 = mysqli_query($Son, $display);
										$display_query2 = mysqli_query($Son, $display);
						
										$checking = mysqli_fetch_assoc($display_query1);
						
										if($checking !== NULL){	
												
											echo "<table >";
												echo "<caption>Registered Subjects for $class</caption>";
														echo "<th>Class</th>";
														echo "<th>Registered Subjects</th>";
														echo "<th>Edit </th>";
									
									
													echo "<tr>";
														while($value = mysqli_fetch_assoc($display_query2)){
															echo "<td>$value[class]</td>";
															echo "<td>$value[subfull]</td>";
															echo "<form action='subject_edit.php' method = 'POST' enctype = 'multipart/form-data' >";
															echo "<td><input type='submit' value = ' Edit '/></td>";
															echo "</form>";
												
												
														}
													echo "</tr>";
											echo "</table>";
											
										}
				
				


									break;



									
							}
							
						}
						
					
	}				
						
				?>
				<br />
				
				
</body>
</html>