<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Broadsheets:.</title>
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
				background: url(../img/abstract.jpg) repeat;
				background-position: center;
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100px;
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
		h3{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
			margin-top: 3%;
		}
		h3 i{
			color: yellow;
		}
		.all{margin-left: 40%;}
		.all button{
			width: 40%;
			font-family: teen;
		}
		
			
		@media only screen and (max-width: 768px){
			.all{margin-left: 0;}
			.all button{width: 98%; margin-left: 1%; margin-top: 1%;}
			h3{font-size: 6vw; margin-top: 10%;}
			}
		
	</style>
</head>
<body>

			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Broadsheets</h1>
				</div>
			<?php include 'asideexams.php';?>

			<h3><i>Please select a term!</i></h3>
	
	<div class = "all">
			<button class = "w3-input w3-round w3-blue w3-hover-green" onclick = 'window.location.href="broad1.php" '>1st Term</button> 
			<button class = "w3-input w3-round w3-blue w3-hover-green" onclick = 'window.location.href="broad2.php" '>2nd Term</button>
			<button class = "w3-input w3-round w3-blue w3-hover-green" onclick = 'window.location.href="broad3.php" '>3rd Term</button>
			
	</div>
	
	
</body>
</html>