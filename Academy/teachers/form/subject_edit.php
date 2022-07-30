<?php
	session_start();
	$class = $_SESSION["class"];

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit Class Subjects:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			body{
				background: url(../../img/abstract.jpg) no-repeat;
				background-size: cover;
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
				border-radius: 2%;
			}
			legend{
				background: #4caf50;
				border-radius: 5px;
				padding: 0 1%;
				color: white;
				font-family: teen;
			}
			input[type=submit]{
				cursor: pointer;
			}
			@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 1%;}
			}
	</style>
</head>
<body>
						<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Class Selected Subjects</h1> 
					
					</div>
					<?php include 'asideform.php' ?>
		
			<form action="class_subject_edit.php" method = "POST" enctype = "multipart/form-data"> 
				<fieldset> 
						<legend>Edit Selected Subjects</legend> 
						<label for="">Select/Deselect Subject(s):</label> <br /><br />
						<?php
							include '../../all_conn.php';
							include '../../teach_conn.php';
							
							$query = "SELECT subject, abbreviation FROM subjects ORDER BY abbreviation ASC  ";
							$submit_query1 = mysqli_query($Father, $query);
							$submit_query2 = mysqli_query($Father, $query);
							$submit_query3 = mysqli_query($Father, $query);
							
							if(mysqli_fetch_assoc($submit_query1) == NULL){
								echo "<h4>No Registered Subjects!</h4>";
							}else{
								$new = strtolower(str_replace(" ", "",$class."_subjects"));
								
								$chek = "SELECT subjects FROM `$new` ";
								$chek_query = mysqli_query($Son, $chek);
								
								$view = mysqli_fetch_assoc($chek_query);
								
								$plode = $view['subjects'];
								$ploding = explode(",", $plode);
								$counting = count($ploding);
								
								
								while($answer = mysqli_fetch_assoc($submit_query2)){
									
									 $subject = $answer['subject'];
									 $abb = $answer['abbreviation'];
									 
									
									foreach($ploding as $value){
										if($abb == $value){
											echo "<input class = 'w3-check' type='checkbox' value = '$abb' name = 'my_sub[]' checked />"." ".$subject;
											echo "<br />";
										}
										
									}
									
								$res = strchr($plode,$abb);
								if($res === false){
									 echo "<input class = 'w3-check' type='checkbox' value = '$abb' name = 'my_sub[]'  />"." ".$subject;
									 echo "<br />";
								}
									
								
							}
							
							
							
							
								
							
								
								
								
						}
						
						
						?>
						<input type="text" name = "id" value = "<?php echo $_POST['id']?>" hidden />
						<br />
						<input class = 'w3-input w3-green w3-round w3-hover-blue' type="submit" />
						
				</fieldset>
			
			</form>
			
			
			
</body>
</html>