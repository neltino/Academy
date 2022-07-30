<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Student ID Card:.</title>
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
				
				background-position: center;
				
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
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
	
		.all{
			margin-left: 30%;
			font-family: prestiji;
			margin-top: 10%;
		}
		.all button{
			margin-left: 5%;
			width: 30%;
		}
		
		@media only screen and (max-width: 768px){
			.all{margin-left: 20%}
			.all button{margin-left: 0; font-size: 3vw; width: 40%;}
			
			}
		
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Student ID Card</span></h1>
				</div>
			<?php include 'asideadmin.php';?>
	<br /><br />	
	<div class = "all">
		<button class = "w3-button w3-blue w3-hover-green w3-round-large w3-border" onclick = "window.location.href='single.php'">Single Student</button>
		<button class = "w3-button w3-blue w3-hover-green w3-round-large w3-border" onclick = "window.location.href='multiple.php'">Multiple Students</button>
		 
		 
	</div>
</body>
</html>