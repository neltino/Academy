<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Payment Report:.</title>
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
		h3{
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
		}
		h3 i{
			color: yellow;
			font-size: 2vw;
		}
	nav{
			margin-left: 30%;
		}
		nav button{
			width: 20%;
			font-family: teen;
			margin-top: 5%;
		}
		
		@media only screen and (max-width: 768px){
				nav{margin-left: 0;}
				nav button{width: 98%; margin-left: 1%; margin-top: 1%;}
				h3 i{font-size: 6vw;}
			}
			
	
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Payment Report</h1>
				</div>
			<?php include 'asidebursar.php';?>
			<div id="please">
					<h3><i>Please select term</i></h3>
				</div>	
	<nav>
		<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='report1.php' ">1st Term</button>
		<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='report2.php' ">2nd Term</button>
		<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='report3.php' ">3rd Term</button>
	</nav>
	<br />
	

	
</body>
</html>