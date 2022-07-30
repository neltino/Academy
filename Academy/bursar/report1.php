<?php
		ini_set('max_execution_time', 0);
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:1st Term Report:.</title>
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
			color: #ffff00;
			font-size: 2vw;
			font-family: teen;
		}
	
	 
	 table{
		 background: #ffffff;
		 border-collapse: collapse;
		 border: 2px solid;
		 margin-left: 40%;
		 font-family: teen;
	 }
	 caption{
		 color: #ffff00;
		 font-weight: bold;
		 margin-bottom: 5px;
	 }
	 th{
		 color: royalblue;
		 border: solid 2px #000000;
	 }
	 td{
		 border: solid 1px #000000;
	 }
	 
	 .noprint button{
		 float: left;
		 margin-left: 15%;
		border: none;
		background: none;
	 }
	 .noprint button:hover{
		 cursor: pointer;
	 }
	 .noprint button i:hover{
		 color: magenta;
	 }
	 .noprint button i span{
		 font-family: cac;
	 }
	 .bold b{
		 margin-left: 25%;
		 font-family: teen;
	 }
	 @media print{
		 .noprint{display:none;}
		 table{margin-left:150px;}
		 h2,h4{margin-top: 0px;}
		 h2,h3,h4,caption,table,th, h3 i{color: #000000;}
		 h3{margin-top: -55px;}
		 .bold b{margin-left: 0;}
	 }
	 @media only screen and (max-width: 768px){
				table{margin-left: 1%; width: 98%; font-size: 3vw;}
				h3 i{font-size: 5vw;}
				.bold b{margin-left: 0;}
			}
	 </style>
</head>
<body>
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >1st Term Payment Report</h1>
				</div>
	
			<div class="noprint"> 
				<button onclick = "window.print()" ><i class = "fas fa-print fa-2x"><span>print<span></i></button>
			</div>
			
		
		
	<?php
		include 'asidebursar.php';
		include '../all_conn.php';
			//selecting payment items
			$item = "SELECT `payment`, `amount` FROM `burs_info` ";
			$item_query = mysqli_query($Father, $item);
			$tale = 0;
			echo "<br /> <br /><h3><i>1st Term Payment Report</i></h3>";
			while($pay = mysqli_fetch_assoc($item_query)){
				$payment = $pay['payment'];
				$amount = $pay['amount'];
				//selecting payment debtors 
				$debt = "SELECT Class, Surname, FirstName, OtherNames, `$payment` FROM `account1` ORDER BY Class ASC "; //change
				$debt_query = mysqli_query($Father, $debt);
				
				echo "<table>";
							echo "<caption>";
									echo strtoupper($payment);
							echo "</caption>";
							echo "<thead>";
									echo "<th>S/&#x2116;</th>";
									echo "<th>Class</th>";
									echo "<th>Name</th>";
									echo "<th>Amount Paid(&#8358;)</th>";
							echo "</thead>";
							
							//fetching Info
								$i = 1;
								
								while($row = mysqli_fetch_assoc($debt_query)){
										$class = $row['Class'];
										$names = $row['Surname']." ".$row['FirstName']." ".$row['OtherNames'];
										$part = $row[$payment];
										$part = number_format($row[$payment],2);
										
									echo "<tr>";
												echo "<td>$i.</td>";
												echo "<td>$class</td>";
												echo "<td>$names</td>";
												echo "<td style = 'text-align: right;'>$part</td>";
												
									echo "</tr>";
									$i++;
										
								}
								//calculating totals
								$totaling = "SELECT SUM(`$payment`) AS `total` FROM `account1`"; //change
								$total_query = mysqli_query($Father, $totaling);
								$to = mysqli_fetch_assoc($total_query);
								$total = $to['total'];
								$total = number_format($total, 2);
								echo "<tr>";
											echo "<td colspan = '3'><b>Total</b></td>";
											echo "<td style = 'text-align: right;'><b>$total</b></td>";
								echo "</tr>";
				echo "</table>";
				echo "<br />";
				
				$tale = $tale+$to['total'];
			}
			$tale = number_format($tale,2);
			echo "<div class='bold'>";
			echo "&emsp; &emsp; &emsp; &emsp; &emsp;<b>Total Income = &#8358;$tale</b>";
			echo "</div>";
	?>
</body>
</html>
