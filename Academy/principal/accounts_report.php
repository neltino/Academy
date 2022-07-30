<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Accounts Report:.</title>
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
						font-family: teen;
						src: url(../myfont/teen.ttf);
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
		table{
			background: #ffffff;
			border: 2px solid #6ac239;
			border-collapse: collapse;
			margin-left: 35%;
			width: 30%;
		}
		th{
			border: 2px solid #6ac239;
		}
		td{
			border: 1px solid #000000;
			text-align: right;
		}
		h4{
			color: #f03939;
		}
		table caption h4{
			color: yellow;
			font-family: teen;
		}
	#printer{
		float: right;
		margin-right: 50px;
	}
	#printer i{
		color: yellow;
	}
	#printer i:hover{
		color: pink;
		cursor: pointer;
	}
	#printer i span{
		font-family: cac;
	}
	 @media print{
		 .noprint{display:none;}
		table caption h4{color: #000000;}
		 table{margin-left: 0px;}
		 
	 }
	 @media only screen and (max-width: 768px){
			table{width: 94%; margin-left: 5%;}
			
			}

	
	</style>
</head>
<body>

				
		<div class = "noprint">
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Sessional Summary of Income</h1>
				</div>
			<?php include 'asideprincipal.php';?>
			<br />
			<div id = "printer">
				<i onclick = "window.print()" class = "fas fa-print fa-2x"><span>print</span></i>
			</div>
		</div>
		<br />
				
		<?php
				
				
				include '../all_conn.php';
				$item = "SELECT `payment` FROM `burs_info` ";
				$item_query = mysqli_query($Father, $item);
				$item_query1 = mysqli_query($Father, $item);
				
				
				echo "<table>";
				echo "<caption><h4>1ST TERM INCOME SUMMARY</h4></caption>";
				while($pay = mysqli_fetch_assoc($item_query)){
					$payment = $pay['payment'];
					echo "<th>$payment(&#8358;)</th>";
				}
				echo "<tr>";
					$total = 0;
					$i = 1;
				while($term1 = mysqli_fetch_assoc($item_query1)){
						$payment = $term1['payment'];
					
								//selecting sum
							$sum = "SELECT SUM(`$payment`) AS total FROM `account1` ";
							$sum_query = mysqli_query($Father, $sum);
							$summing = mysqli_fetch_assoc($sum_query);
							$summ1 = $summing['total'];
							$summ = number_format($summing['total'],2);
							echo "<td>$summ</td>";
							$total = $total + $summ1;
							$i++;
				}
					echo "</tr>";
					echo "<tr>";
					$total = number_format($total,2);
								echo "<td colspan = '$i' style = 'text-align: center;'><b>Total: &emsp; &emsp; &#8358;$total</b></td>";
								
					echo "</tr>";
				echo "</table>";
				echo "<br /><br />";
				
				
//Second TERM 
				$item = "SELECT `payment` FROM `burs_info` ";
				$item_query2 = mysqli_query($Father, $item);
				$item_query3 = mysqli_query($Father, $item);

		echo "<table>";
				echo "<caption><h4>2ND TERM INCOME SUMMARY</h4></caption>";
				while($pay = mysqli_fetch_assoc($item_query2)){
					$payment = $pay['payment'];
					echo "<th>$payment(&#8358;)</th>";
				}
				echo "<tr>";
					$total = 0;
					$i = 1;
				while($term1 = mysqli_fetch_assoc($item_query3)){
						$payment = $term1['payment'];
					
								//selecting sum
							$sum = "SELECT SUM(`$payment`) AS total FROM `account2` ";
							$sum_query = mysqli_query($Father, $sum);
							$summing = mysqli_fetch_assoc($sum_query);
							$summ1 = $summing['total'];
							$summ = number_format($summing['total'],2);
							echo "<td>$summ</td>";
							$total = $total + $summ1;
							$i++;
				}
					echo "</tr>";
					echo "<tr>";
					$total = number_format($total,2);
								echo "<td colspan = '$i' style = 'text-align: center;'><b>Total: &emsp; &emsp; &#8358;$total</b></td>";
								
					echo "</tr>";
				echo "</table>";
				echo "<br /><br />";
		
		
		//Third TERM 
				$item = "SELECT `payment` FROM `burs_info` ";
				$item_query4 = mysqli_query($Father, $item);
				$item_query5 = mysqli_query($Father, $item);

		echo "<table>";
				echo "<caption><h4>3RD TERM INCOME SUMMARY</h4></caption>";
				while($pay = mysqli_fetch_assoc($item_query4)){
					$payment = $pay['payment'];
					echo "<th>$payment(&#8358;)</th>";
				}
				echo "<tr>";
					$total = 0;
					$i = 1;
				while($term1 = mysqli_fetch_assoc($item_query5)){
						$payment = $term1['payment'];
					
								//selecting sum
							$sum = "SELECT SUM(`$payment`) AS total FROM `account3` ";
							$sum_query = mysqli_query($Father, $sum);
							$summing = mysqli_fetch_assoc($sum_query);
							$summ1 = $summing['total'];
							$summ = number_format($summing['total'],2);
							echo "<td>$summ</td>";
							$total = $total + $summ1;
							$i++;
				}
					echo "</tr>";
					echo "<tr>";
					$total = number_format($total,2);
								echo "<td colspan = '$i' style = 'text-align: center;'><b>Total: &emsp; &emsp; &#8358;$total</b></td>";
								
					echo "</tr>";
				echo "</table>";
		
		
		?>
	
	
	
	
</body>
</html>


