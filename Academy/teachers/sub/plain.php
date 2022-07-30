<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Plain CA & Exams:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
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
						font-family: Lemonada;
						src: url(../../myfont/Lemonada.ttf);
					}
			body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
				
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
			color:#ffff00;
			text-align: center;
			font-family: Gabriola;
			font-size: 2.3vw;
		}
		
		.all{
			margin-left: 30%;
			margin-top: 8%;
		}
		.all button{
			width: 20%;
			font-family: teen;
			padding: 1.5%;
		}
		
		@media only screen and (max-width: 768px){
				h3{font-size: 6vw;}
				.all{margin-left: 0; width: 100%;}
				.all button{width: 98%; margin-left: 1%; font-size: 4vw; margin-top: 1%;}
			}
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Plain CA & Exam Sheet</h1>
		</div>
		<?php
			include 'asidesub.php';
		?>
			
			<h3>Please select a term</h3>
			
			<div class="all">
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="plain_1.php" '>1st Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="plain_2.php" '>2nd Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="plain_3.php" '>3rd Term</button>
			</div>
	
</body>
</html>