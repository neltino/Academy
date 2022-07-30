<?php
		session_start();
		$class = $_SESSION['class'];
		$myclass = strtolower(str_replace(" ", "",$class."_3rd_term")); //change
		include '../../teach_conn.php';
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Sessional Sing&Mul:.</title>
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
			font-size: 2vw;
		}
		
		nav{
			margin-left:35%;
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
				nav{margin-left: 0; width: 100%; margin-bottom: 95%;}
				nav button{width: 98%; margin-left: 1%; font-size: 4vw; margin-top: 1%;}
				h3{font-size: 4vw;}
			}
		
	</style>
</head>
<body>
			
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Sessional Single and Multiple Reportsheet</h1> 
					
				</div>
		<?php include 'asideform.php';
			//checking if there are registered members
			$reg = "SELECT `name` FROM `$myclass` ";
			$reg_query = mysqli_query($Son, $reg);
			$checking = mysqli_fetch_assoc($reg_query);
			if($checking['name'] == NULL){
				echo "<h3>Please register class students first!</h3>";
				die();
			}
			$col = "DESCRIBE `$myclass` ";
			$col_query = mysqli_query($Son, $col);
			$ans = '';
			while($column = mysqli_fetch_assoc($col_query)){
				$columing = $column['Field'];
				if(strchr($columing, "Total_") == True){
					$ans.= $columing;
					break;
				}
			}
			if($ans == ''){
				echo "<h3>No Subjects have been recorded yet!</h3>";
				die();
			}
			
		?>
		<h3>Please select Sessional Reportsheet Option for print!</h3>
			<nav>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="sessional.php" '>Single Sessional Reportsheet</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="sessional_mul.php" '>Multiple Sessional Reportsheet</button>
				
				
			</nav>
</body>
</html>