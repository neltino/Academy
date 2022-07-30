<!DOCTYPE HTML>
<html lang="en-US">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
	<meta charset="UTF-8">
	<title>.:Edit Info:.</title>
	<link rel="icon" href="../img/soft.png" />
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
				background: url(../img/abstract.jpg) no-repeat;
				background-size: cover;
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100px;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
		font-size: 28px;
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
			width: 600px;
			margin-left: 350px;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 14px;
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
			font-size: 18px;
		}
		select, input[type=text]{
			font-family: teen;
			background: radial-gradient(#ffffff,#b6dcfb)
		}
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		
		h3 i{
			color: #ffff00;
		}
		
		@media print{
			form, h3 i, table th:last-child, #info{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
	
	</style>
	
</head>
<body>
		
		
		<?php
			if(isset($_POST['one'])){
				$label = 'Reportsheet Grade System Type:';
				$name = 'reportsheet';
			}elseif(isset($_POST['two'])){
				$label = 'CA & Exams Grade system:';
				$name = 'ca_exams';
			}elseif(isset($_POST['three'])){
				$label = 'Psychomotor/Affective Domains Grading System:';
				$name = 'psycho';
			}elseif(isset($_POST['four'])){
				$label = 'Number of Continuous Assessments(CA) offered by the school:';
				$name = 'ca';
			}elseif(isset($_POST['five'])){
				$label = 'School Phone Contact:';
				$name = 'phone';
			}
			
		?>
		
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Examination Info</h1>
				</div>
			<?php include 'asideexams.php';?>
			<div id="please">
					<h3><i>Please supply the following information:</i></h3>
				</div>	
		<form action="info_update_action.php" method = "POST" enctype = "multipart/form-data"> 
			<fieldset> 
					<legend>Edit Item:</legend>
					<label><?php echo $label;?></label>
					
					
							<?php
								if(isset($_POST['one'])){
									
								echo '<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name ="'.$name.'" required>';
									echo "<option value=''>Please Select Grade type</option>
											<option value='alphabetic'>Alphabetic Grades</option>
											<option value='positional'>Positional Grades</option>";
								echo '</select>';
								}elseif(isset($_POST['two'])){
								echo '<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name ="'.$name.'" required>';
									echo '<option value="">Please Select Grade type</option>
											<option value="alphabetic">Alphabetic Grades</option>
											<option value="alphanumeric">Alphanumeric Grades</option>';
								echo "</select>";
								}elseif(isset($_POST['three'])){
									echo '<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name ="'.$name.'" required>';
									echo '<option value="">Please Select Grade type</option>
											<option value="alphabetic">Alphabetic Grades</option>
											<option value="numeric">Numeric Grades</option>';
									echo '</select>';
								}elseif(isset($_POST['four'])){
									echo '<select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name ="'.$name.'" required>';
									echo '<option value="">Please Select quantity</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>';
									echo '</select>';
								}elseif(isset($_POST['five'])){
									echo "<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type='text' name = '".$name."' value = '$_POST[phone]' autofocus />";
								}
							
							
							?>
					
					</select>
							
					 <br /> <br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit"  />
					
			
			</fieldset>
		</form>
		
</body>
</html>