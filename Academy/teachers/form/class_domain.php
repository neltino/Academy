<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Psychomotor-Affective Domain:.</title>
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
						font-family: zipty;
						src: url(../../myfont/zipty.otf);
					}
					
			@font-face{
						font-family: Aulyars;
						src: url(../../myfont/Aulyars.otf);
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			margin-top: 5%;
		}
		
		nav{
			margin-left:25%;
			width: 100%;
		}
		nav button{
			font-family: teen;
			width: 20%;
			text-align: center;
			padding: 1.5%;
			font-size: 1.1vw;
		}
		
		@media only screen and (max-width: 768px){
				nav{margin-left: 0; width: 100%; margin-bottom: 90%;}
				nav button{width: 98%; margin-left: 1%; font-size: 4vw; margin-top: 1%;}
			}
		
		
	</style>
</head>
<body>
			
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Psychomotor-Affective Remark</h1> 
					
		</div>
		<?php include 'asideform.php' ?>
				<h3>Please select a term</h3>
			<nav>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="psycho_first.php" '>1st Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="psycho_second.php" '>2nd Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="psycho_third.php" '>3rd Term</button>
				
			</nav>
</body>
</html>