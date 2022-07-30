<?php
		
		include '../all_conn.php';
		//creating table
		$tab = "CREATE TABLE IF NOT EXISTS`admin_info` (
			`ID` int(11) NOT NULL AUTO_INCREMENT,
			`classes` text NOT NULL,
			`houses` text NOT NULL,
			`reg` text NOT NULL,
			PRIMARY KEY (ID)
			)";
		$tab_query = mysqli_query($Father, $tab);
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../img/soft.png" />
	<title>.:Basic Info:.</title>
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
				background-size: cover;
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
		form{
			font-family: Gabriola;
			width: 52%;
			margin-left: 25%;
			font-size: 1.2;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 1vw;
			font-weight: bold;
			font-style: italic;
		}
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 5px;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			font-weight: bold;
			border-radius: 10%;
			padding: 0.5%;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
		}
		input[type=text]{
			background: radial-gradient( #ffffff,#c5e8f5);
		}
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		table{
			border-collapse: collapse;
			margin-left: 25%;
			background: whitesmoke;
			color: indigo;
			width: 52%;
			border-radius: 5px;
			font-family: teen;
			font-size: 1.2vw;
		}
		
		table th{
			border-bottom: 2px solid indigo;
			text-align: left;
			padding-left: 1%;
			padding-right: 5px;
			
		}
		table td{
			padding-bottom: 1%;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 1%;
		}
		table caption{
			font-weight: bold;
			color: indigo;
		}
		table input[type=submit]{
			border:none;
			background: green;
			color: white;
			border-radius: 2px;
			padding: 0 5%;
			cursor: pointer;
		}
		table input[type=submit]:hover{
			background: blue;
		}
		table td input[type=submit]:first-child{
			margin-top: 3px;
		}
		h3 i{
			color: yellow;
		}
		@media print{
			form, h3 i, table th:last-child{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
		@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 2%; font-size: 5vw;}
				table{width: 98%; margin-left: 2%; font-size: 3vw;}
				input[placeholder]{font-size: 2vw;}
			}
		
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Registration Info</h1>
				</div>
			<?php include 'asideadmin.php';?>
			<div id="please">
					<h3><i>Please supply the following information:</i></h3>
				</div>	
		
	<form action="basic_info_action.php" method = "POST" enctype = "multipart/form-data"> 
		<fieldset> 
				<legend> Basic Info:</legend>
				<label for="classes">Classes:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "classes" required placeholder = " type in classes and separate by comma. e.g. SS1, SS2, SS3" />
				<label for="houses">Sports Houses:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "houses" required placeholder = " type in all items and separate by comma. e.g. Blue House, Red House, Green House" />
				<label for="reg">Admission Number Format/Initials:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "reg" required placeholder = " e.g. TSA for Tishbeh Soft Academy"/> <br />
				<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  />
				
		
		</fieldset>
	
	
	</form>
	<br />
	<?php
			//checking that admission info ! empty
			
			$check = "SELECT `classes` FROM `admin_info`";
			$check_query = mysqli_query($Father, $check);
			
				if($checking = mysqli_fetch_assoc( $check_query) != NULL){
					$send = "SELECT * FROM `admin_info` ";;
					$send_query = mysqli_query($Father, $send);
					$value = mysqli_fetch_assoc($send_query);
					echo "<table >";
								echo "<caption>Registration Info</caption>";
								echo "<th>Info</th>";
								echo "<th>Supplied Value</th>";
								echo "<th>Edit</th>";
								
								echo "<tr>";
											echo "<td class = 'bold'>Classes:</td>";
											echo "<td class = 'bold'>$value[classes]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'one' /></td>";
											echo "</form>";
											
											
								echo "</tr>";
								
								
								
								echo "<tr>";
											echo "<td class = 'bold'>Sports Houses:</td>";
											echo "<td class = 'bold'>$value[houses]</td>";
											
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'two' /></td>";
											echo "</form>";
										
								echo "</tr>";
								
								
								
								echo "<tr>";
											echo "<td class = 'bold'>School Initials:</td>";
											echo "<td class = 'bold'>$value[reg]</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$value[ID]' hidden />";
													echo "<td class = 'bold'><input type='submit' value = 'Edit' name = 'three' /></td>";
													
											
								echo "</tr>";
								
					echo "</table>";
					
					
				}
	
	?>
			<br /><br />
</body>
</html>