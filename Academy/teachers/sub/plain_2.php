<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Plain CA & Exams:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(../../myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(../../myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(../../myfont/prestiji.otf);
					}
			body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
				
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
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
		h3{
			color: #ffff00;
			text-align: center;
			font-family: Gabriola;
		}

		form{
			width: 25%;
			margin-left: 37%;
		}
		select{
			font-family: teen;
			background: white;
			cursor: pointer;
		}
		.noprint button{
			margin-left: 45%;
			font-family: teen;
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
					<h1 class = "w3-center" >2nd Term Plain CA & Exam Sheet</h1>
		</div>
		<?php include 'asidesub.php'; ?>
			<h3>Please select Class!</h3>
			<form name = 'myform' onchange = 'myfunct()' action="plain_2_action.php" method = "POST"	enctype = "multipart/form-data">
			
				<select class = 'w3-select w3-round w3-border-green' name="class" required >
					<option value="">Select Class</option>
					<?php
						include '../../all_conn.php';
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
				function myfunct(){
					var x = document.forms["myform"]["class"].value;
					if(x == ""){
						alert("Class cannot be empty. Please selecct a valid class");
					}else{
						myform.submit();
					}
				}
			</script>
			
			
</body>
</html>