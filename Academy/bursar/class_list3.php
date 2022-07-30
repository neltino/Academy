<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:3rd Term Payment Class List:.</title>
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
	
		h2{
			font-family: Gabriola;
			color: yellow;
			text-align: center;
			font-size: 2vw;
			margin-top: 20%;
		}
		h3{
			color: magenta;
			text-align: center;
			margin-top: 0;
			font-family: teen;
			font-weight: bold;
		}
		
		h5{
			text-align: center;
			color: yellow;
			font-family: teen;
			font-size: 1.5vw;
			margin-top: 3%;
		}
		table{
			border-collapse: collapse;
			background: #ffffff;
			border: solid 2px #000000;
			margin-left: 37%;
			font-family: teen;
		}
		th{
			border: 2px solid #000000;
			color: #4c8bf4;
		}
		td{
			border: 1px solid #000000;
		}
		caption{
			font-weight: bold;
			color: yellow;
		}
		input[type=submit]{
			background: none;
			border: none;
			font-weight: bold;
			color: green;
			cursor: pointer;
		}
		input:hover[type=submit]{
			color: #ef3939;
		}
		@media only screen and (max-width: 768px){
				h2{font-size: 4vw;}
				form{width: 98%; margin-left: 1%;}
				table{font-size: 3vw; margin-left: 1%; width: 98%;}
				h5{font-size: 4vw; margin-top: 7%;}
			}
	</style>
</head>
<body>
	<?php
		include '../all_conn.php';
		if(isset($_POST['prev'])){
			$class = $_POST['prev'];
		}else{
			 $class = $_POST['class'];
		}
		
	?>
	<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >3rd Term Class List for <?php echo $class; ?></h1>
	</div>
	<?php	
		$select = "SELECT AdmissionNumber, Surname, FirstName, OtherNames, class FROM `account3` WHERE class LIKE '$class' ORDER BY Surname ASC ";
		$select_query1 = mysqli_query($Father, $select);
		$select_query2 = mysqli_query($Father, $select);
		
		if($null = mysqli_fetch_assoc($select_query1) == NULL){
			echo "<h2>Sorry, this class has no registered members!</h2>";
			header("Refresh:3, url='term3.php'");
			die();
		}else{
			include 'asidebursar.php' ;
			echo "<h5>Click an Admission Number to record payment!</h5>";
			echo "<table>";
						echo "<caption>$class Class List</caption>";
						echo "<th>S/&#x2116;</th>";
						echo "<th>Admission Number</th>";
						echo "<th>Full Name</th>";
						echo "<th>Class</th>";
						$i = 1;
						while($info = mysqli_fetch_assoc($select_query2)){
						
							echo "<tr>";
										echo "<td>$i.</td>";
										echo "<td>";
													echo "<form action='3rdterm.php' method = 'POST' enctype = 'multipart/form-data' >";
													
																echo "<input type='text' name = 'id' value = '$info[AdmissionNumber]' hidden />";
																echo "<input type='text' name = 'class' value = '$class' hidden />";
																echo "<input title = 'Click to edit student info' type='submit' value = '$info[AdmissionNumber]' />";
													echo "</form>";
										echo "</td>";
										echo "<td>$info[Surname] $info[FirstName] $info[OtherNames]</td>";
										echo "<td>$info[class]</td>";
							echo "</tr>";
							$i++;
						}
						
			echo "</table>";
			
		}
?>
</body>
</html>