<?php
		
		include '../all_conn.php';
		//creating table
		$tab = "CREATE TABLE IF NOT EXISTS`burs_info` (
			`ID` int(11) NOT NULL AUTO_INCREMENT,
			`payment` text NOT NULL,
			`amount` text NOT NULL,
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
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<title>.:Basic Info:.</title>
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
		form{
			font-family: Gabriola;
			width: 32%;
			margin-left: 35%;
			font-size: 1.2vw;
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
			border-radius: 5px;
			padding: 0px 5px;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
		}
		input[type=text], input[type=number]{
			background: radial-gradient( #ffffff,#c5e8f5);
		}
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		table{
			border-collapse: collapse;
			margin-left: 450px;
			background: whitesmoke;
			color: indigo;
			width: 500px;;
			border-radius: 5px;
			font-family: teen;
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
		}
		table td{
			padding-bottom: 0.5%;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 5px;
		}
		table caption{
			font-weight: bold;
			color: yellow;
		}
		table input[type=submit]{
			border:none;
			background: #4caf50;
			color: white;
			border-radius: 2px;
			width: 60px;
		}
		table input[type=submit]:hover{
			background: #2196f3;
		}
		h3 i{
			color: yellow;
		}
		table td{
			text-align: left;
		}
		
		@media print{
			form, h3 i, table th:last-child, table input[type=submit], table th:nth-child(4){display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
		
		@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 1%; font-size: 4vw;}
				form input[placeholder]{font-size: 3vw;}
				h3{font-size: 5vw;}
				table{margin-left: 1%; width: 98%; font-size: 3vw;}
			}
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Payment Info</h1>
				</div>
			<?php include 'asidebursar.php';?>
			<div id="please">
					<h3><i>Please supply the following information:</i></h3>
				</div>	
	
		
	<form action="burs_info_action.php" method = "POST" enctype = "multipart/form-data"> 
		<fieldset> 
				<legend> Basic Info:</legend>
				<label for="classes">Payment Item:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "payment" required placeholder = " e.g. School Fee" />
				<label for="houses">Amount:</label>
				<input class = "w3-input w3-round w3-border" type="number" name = "amount" required placeholder = " e.g. 27000" /> <br />
				
				<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  />
		
		</fieldset>
	
	
	</form>
	<br /><br /> <br /><br />
	<?php
			//checking that admission info ! empty
			
			$check = "SELECT * FROM `burs_info`";
			$check_query1 = mysqli_query($Father, $check);
			$check_query2 = mysqli_query($Father, $check);
			
				if($checking = mysqli_fetch_assoc( $check_query1) != NULL){
					$send = "SELECT * FROM `burs_info` ";
					$send_query = mysqli_query($Father, $send);
					$value = mysqli_fetch_assoc($send_query);
					echo "<table>";
								echo "<caption>Payment Info</caption>";
								echo "<th>S/&#x2116; </th>";
								echo "<th>Payment Item</th>";
								echo "<th>Amount</th>";
								echo "<th>Edit</th>";
								echo "<th>Delete</th>";
								$i = 1;
								while($row = mysqli_fetch_assoc($check_query2)){
									echo "<tr>";
											$pay = $row['payment'];
											$id = $row['ID'];
											$amount = number_format($row['amount'],0);
											
											echo "<td class = 'bold'>$i.</td>";
											echo "<td class = 'bold'>$pay</td>";
											echo "<td style = 'text-align: right;' class = 'bold'>$amount &emsp;</td>";
											echo "<form action='info_update.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$id' hidden />";
													echo "<input type='text' name = 'pay' value = '$pay' hidden />";
													echo "<td class = 'bold'>&emsp; &emsp;<input type='submit' value = 'Edit' name = 'one' /></td>";
											echo "</form>";
											
											echo "<form action='info_delete.php' method = 'POST' enctype = 'multipart/form-data'>";
													echo "<input type='text' name = 'id' value = '$id' hidden />";
													echo "<input type='text' name = 'pay' value = '$pay' hidden />";
													echo "<td class = 'bold'>&emsp; &emsp;<input type='submit' value = 'Delete'  /></td>";
											echo "</form>";
											
											
								echo "</tr>";
									$i++;
								}
								
								
								
								
								
					echo "</table>";
					
					
				}
	
	?>
	
</body>
</html>