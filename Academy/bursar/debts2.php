<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Debts:.</title>
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
			color: yellow;
			font-size: 2vw;
			font-family: teen;
		}
	
	 
	 table{
		 background: #ffffff;
		 border-collapse: collapse;
		 border: 2px solid;
		 margin-left: 35%;
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
		 margin-left: 10%;
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
	 @media print{
		 .noprint{display:none;}
		 table{margin-left:150px;}
		 h2,h4{margin-top: 0px;}
		 h2,h3,h4,caption,table,th, h3 i{color: #000000;}
		 h3{margin-top: -55px;}
	 }
	 @media only screen and (max-width: 768px){
				table{margin-left: 1%; width: 98%; font-size: 3vw;}
				h3 i{font-size: 5vw;}
			}
	 </style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Debts</h1>
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
			echo "<br /> <br /> <h3><i>2nd Term Debts</i></h3>";
			while($pay = mysqli_fetch_assoc($item_query)){
				$payment = $pay['payment'];
				$amount = $pay['amount'];
				//selecting payment debtors 
				$debt = "SELECT Class, Surname, FirstName, OtherNames, `$payment` FROM `account2` WHERE `$payment` < $amount ORDER BY Class ASC "; //change
				$debt_query = mysqli_query($Father, $debt);
				
				echo "<table>";
							echo "<caption>";
									echo strtoupper($payment);
							echo "</caption>";
							echo "<th>S/&#x2116;</th>";
							echo "<th>Class</th>";
							echo "<th>Name</th>";
							echo "<th>Part Payment(&#8358;)</th>";
							echo "<th>Balance(&#8358;)</th>";
							//fetching Info
								$i = 1;
								$sum = 0;
								while($row = mysqli_fetch_assoc($debt_query)){
										$class = $row['Class'];
										$names = $row['Surname']." ".$row['FirstName']." ".$row['OtherNames'];
										$part = $row[$payment];
										$balance = $amount-$part;
										$sum = $balance + $sum;
										$part = number_format($row[$payment],2);
										$balance = number_format($balance, 2);
									echo "<tr>";
												echo "<td>$i.</td>";
												echo "<td>$class</td>";
												echo "<td>$names</td>";
												echo "<td style = 'text-align: right;'>$part</td>";
												echo "<td style = 'text-align: right;'>$balance</td>";
									echo "</tr>";
									$i++;
										
								}
							//totaling
							
							$sum = number_format($sum,2);
							echo "<tr>";
										echo "<td colspan = '4'><b>Total</b></td>";
										
										echo "<td style = 'text-align: right;'><b>$sum</b></td>";
							echo "</tr>";
				echo "</table>";
				echo "<br /> <br /> <br />";
				
			}
	
	
	?>
</body>
</html>
