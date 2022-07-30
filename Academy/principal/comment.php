<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Principal's Comment:.</title>
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
				background-size: cover;
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
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
		text-align: center;
		font-family: Gabriola;
	}
	h3 i{
		color: yellow;
	}
	nav{
		margin-left: 30%;
		margin-top: 5%;
	}
	nav button{
		width: 20%;
		border-radius: 1%;
		font-family: prestiji;
	}
	@media only screen and (max-width: 768px){
			nav button{width: 100%; font-size: 5vw; margin-top: 1%;}
			nav {margin-left: 1%; width: 98%;}
			
			}
	
	
			
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Result Comments</h1>
				</div>
			<?php include 'asideprincipal.php';?>
			
			
			<h3><i>Please Select Current Term for Comment!</i></h3>
				<br /><br />
			<nav>
					<button class = "w3-button w3-blue w3-hover-green" onclick="window.open('com_1.php', '_self')">1st Term</button>
					<button class = "w3-button w3-blue w3-hover-green" onclick="window.open('com_2.php', '_self')">2nd Term</button>
					<button class = "w3-button w3-blue w3-hover-green" onclick="window.open('com_3.php', '_self')">3rd Term</button>
			</nav>
				
				
			
	
</body>
</html>