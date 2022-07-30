<?php
	session_start();

	$name = $_SESSION["username"];
	$class = $_SESSION["class"];
	$id = $_SESSION["id"];
	$subject = $_SESSION["subject"];
	$new = strtolower(str_replace(" ","", $class."_1st_term"));

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject Teachers' Corner:.</title>
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
		border-radius: 100px;
		background-size: cover;
	}

	#myhead h1{
		font-family: teen;
		font-size: 2vw;
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
		h3 i{
			color: #ffffff;
			font-size: 2vw;
			font-family: teen;
		}
		.all{
			margin-left: 33%;
			margin-top: 10%;
		}
		.all button{
			font-family: teen;
			width: 20%;
			text-align: center;
			padding: 1.5%;
			font-size: 1.1vw;
		}
		marquee{
			position: relative;
			font-family: Gabriola;
			font-size: 2vw;
			color: yellow;
			z-index: -1;
		}
		@media only screen and (max-width: 768px){
				#myhead h4{font-size: 2.5vw;}
				marquee{font-size: 4vw;}
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
					<h1 class = "w3-center" >SUBJECT TEACHERS' DASHBOARD</h1>
					 
					<h4>User: <em><?php echo $name;?></em> &emsp; &emsp;Current Class: <em><?php echo $class?></em> &emsp; &emsp; Subject: <em><?php echo ucwords(strtolower($subject));?></em></h4>
		</div>
		
		

		
		
		<?php
			include 'asidesub.php';
			
			include '../../all_conn.php';
			include '../../teach_conn.php';
			$query = "SELECT password1, password2 FROM users_sub WHERE ID = '$id' ";
			$submit = mysqli_query($Father, $query);
			$answer = mysqli_fetch_assoc($submit);
			if($answer !== NULL && ($answer['password1'] == $answer['password2'])){
				echo "<marquee ><i style = 'color: #ffffff;'>$name</i>, please consider changing your default password for security reasons!</marquee>";
			}
			
		?>
	<div class = "all">
				<div class = "navig">
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="change_pass.php" '>Change Password</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="plain.php" '>Plain CA & Exams Sheet</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="records.php" '>CA & Exam Record</button>
			
	</div>
	
	</div>
</body>
</html>