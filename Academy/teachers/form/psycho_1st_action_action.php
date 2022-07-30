<?php
		session_start();
		include '../../all_conn.php';
		include '../../teach_conn.php';
		$class = $_SESSION['class'];
		$new = strtolower(str_replace(" ", "", $class."_psycho_1st_term")); //change
		$wen = strtolower(str_replace(" ", "", $class."_1st_term")); //change
		
		
		$name = trim($_POST['name']);
		
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<title>.:1st Term Psycho Remark:.</title>
	<style type="text/css"> 
				body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
			}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/gabriola.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
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
	form{
		width: 25%;
		margin-top: 2%;
		margin-left: 38%;
		font-family: teen;
	}
	table{
			border-collapse: collapse;
			
			background: whitesmoke;
			color: indigo;
			border-radius: 2%;
			font-family: teen;
			font-size: 1vw;
			width: 100%;
			
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 5px;
		}
		table caption{
			color: red;
			font-size: 1.5vw;
		}
		table input[type=submit]{
			border:none;
			background:none;
			color: brown;
			cursor: pointer;
		}
		table input[type=submit]:hover{
			color: green;
		}
	h3{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 1.5vw;
		margin-top: 5%;
	}
	table select, input[type=submit]{
		cursor: pointer;
	}
	h5{
		font-family: teen;
		font-size: 0.8vw;
		color: red;
		background: white;
	}
	.but button{
		margin-left: 38%;
		width: 25%;
		margin-top: 1%;
		font-family: teen;
	}
	@media only screen and (max-width: 768px){
				h3{font-size: 4vw; margin-top: 9%;}
				form, .but button{margin-bottom: 120%;}
				form, .but button{width:98%; margin-left: 1%;}
			}
	</style>
</head>
<body>
	
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >1st Term Psychomotor-Affective Status</h1> 
				</div>
				<?php include 'asideform.php' ; 
						//selecting domain items..
						
						$co = "Select `domain` FROM `domains` ";
					$co_query = mysqli_query($Father, $co);
					
					$item = '';
					while($cooing = mysqli_fetch_assoc($co_query)){
						$item.=$cooing['domain'].",";
					}
					
					
					$item = trim($item, ",");
					
					
					$explode = explode(",", $item);
				
						
					$motor = $_POST['motor'];
					
						$id = $_POST['id'];
						
						$count = 0;
						foreach($explode as $loading){
							
							
							$ok = $motor[$count];
							$update = "UPDATE `$new` SET `$loading` = '$ok' WHERE ID = '$id'";
							$update_query = mysqli_query($Son, $update);
							$count++;
							
						}
						echo "<h3>Update Successful!</h3>";
				
				//picking next student...
					//selecting last student
					$max = "SELECT ID, name FROM `$wen` WHERE ID =(SELECT MAX(ID)  FROM `$wen`)";
					$max_query = mysqli_query($Son, $max);
					$next = mysqli_fetch_assoc($max_query);
					$next_std = trim($next['name']);
					
					$next_id = $next['ID'];
					
					//fetching current student's ID
					$current = "SELECT ID FROM `$wen` WHERE name = '$name' ";
					$current_query = mysqli_query($Son, $current);
					$cur_id = mysqli_fetch_assoc($current_query);
					$mycurrent = $cur_id['ID'];
					
					
					if($next_std == $name){
						echo "<div class='but'>";
						echo "<button class = 'w3-button w3-green w3-hover-green w3-round' >This is the last student</button>";
						echo "</div>";
					}else{
						//picking the next student 
						$thenext = "SELECT ID, name FROM `$wen` ";
						$thenext_query = mysqli_query($Son, $thenext);
						$whose_next = '';
						while($mynext = mysqli_fetch_assoc($thenext_query)){
							if($mynext['ID'] > $mycurrent){
								$whose_next = $mynext['name'];
								break;
							}
						}
						$whose_next = trim($whose_next);
						echo "<form action='psycho_1st_action.php' method = 'POST' enctype = 'multipart/form-data'>
						
								<input type='text' name = 'name' value = '$whose_next' hidden />
								<input class = 'w3-input w3-round w3-blue w3-hover-green' type='submit' value = 'Next Student' />
						</form>";
						
					}
					
				?>
</body>
</html>
