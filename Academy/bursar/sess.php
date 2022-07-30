<?php
		ini_set('max_execution_time', 0);
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Sessional Report:.</title>
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
		
	 table{
		 background: #ffffff;
		 border-collapse: collapse;
		 border: 2px solid;
		 margin-left: 5%;
		 font-family: teen;
		 margin-top: 2%;
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
	 button i span{
		 font-family: cac;
	 }
	
	 .sess{
		 margin-left: 42%;
		 font-family: teen;
	 }
	 @media print{
		 .noprint, .sess{display:none;}
		 table{margin-left:0;}
		 h2,h4{margin-top: 0px;}
		 h2,h3,h4,caption,table,th, h3 i{color: #000000;}
		 h3{margin-top: -55px;}
		 .bold b{margin-left: 0;}
	 }
	 @media only screen and (max-width: 768px){
				table{margin-left: 1%; width: 98%; font-size: 3vw;}
				h3 i{font-size: 5vw;}
				.sess{margin-left: 20%;}
			}
	 </style>
	 </head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Sessional Payment Report</h1>
				</div>
	
			<div class="noprint"> 
				<button onclick = "window.print()" ><i class = "fas fa-print fa-2x"><span>print<span></i></button>
			</div>
	<?php
			include '../all_conn.php';
			include 'asidebursar.php';
			
						
			//selecting payment items
			$item = "SELECT `payment` FROM `burs_info` ";
			$item_query = mysqli_query($Father, $item);
			
			$all = "";
			while($pay = mysqli_fetch_assoc($item_query)){
				$payment = $pay['payment'];
				$all.=$payment.",";
				
			}
			if($all == ""){
				echo "<h3>There are no no payment items; please create one from <em>Basic Info</em> on Previous Page!</h3>";
				echo "&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; <button class = 'ton' onclick = 'window.location.href=`../login.php` '>Previous Page</button>";
				die();
				
			}
			$all = chop($all, ",");
			//exploding
			$explode = explode(",", $all);
			
	?>
			
		
		<?php
			echo "<table>";
					echo "<caption>Sessional Payment Summary</caption>";
					echo "<th>S/&#x2116;</th>";
					echo "<th>Name</th>";
					echo "<th>Class</th>";
			
			foreach($explode as $item){
				
				echo "<th colspan = '3'>$item</th>";
			
			}
			
			echo "<tr>";
						echo "<td></td>";
						echo "<td></td>";
						echo "<td></td>";
					foreach($explode as $list){
						echo "<td>1st Term</td>";
						echo "<td>2nd Term</td>";
						echo "<td>3rd Term</td>";
					}
			echo "</tr>";
					$names = "SELECT AdmissionNumber, Surname, FirstName, OtherNames, Class FROM `account1` ORDER BY Class ASC";
					$names_query = mysqli_query($Father, $names);
					$i = 1;
					while($naming = mysqli_fetch_assoc($names_query)){
						echo "<tr>";
									$name1 = $naming['Surname'];
									$name2 = $naming['FirstName'];
									$name3 = $naming['OtherNames'];
									$nam = $name1." ".$name2." ".$name3;
									$cla = $naming['Class'];
									$admin = $naming['AdmissionNumber'];
									echo "<td>$i.</td>";
									echo "<td>$nam</td>";
									echo "<td>$cla</td>";
									
									foreach($explode as $orders){
										$count = "SELECT `$orders` FROM `account1` WHERE AdmissionNumber = '$admin' ";
										$count_query = mysqli_query($Father, $count);
										$counting = mysqli_fetch_assoc($count_query);
										$ting = number_format($counting[$orders],2);
										$ting1 = $counting[$orders];
										echo "<td class = 'right'>$ting</td>";
										
										$count = "SELECT `$orders` FROM `account2` WHERE AdmissionNumber = '$admin' ";
										$count_query = mysqli_query($Father, $count);
										$counting = mysqli_fetch_assoc($count_query);
										$ting = number_format($counting[$orders],2);
										$ting2 = $counting[$orders];
										echo "<td class = 'right'>$ting</td>";
										
										$count = "SELECT `$orders` FROM `account3` WHERE AdmissionNumber = '$admin' ";
										$count_query = mysqli_query($Father, $count);
										$counting = mysqli_fetch_assoc($count_query);
										$ting = number_format($counting[$orders],2);
										$ting3 = $counting[$orders];
										echo "<td class = 'right'>$ting</td>";
										
									}
									
						echo "</tr>";
						$i++;
						
					}
					echo "<tr>";
								echo "<td colspan = '3'><b>Termly Totals</b></td>";
								$grand = 0;
							foreach($explode as $tot){
								$tota = "SELECT SUM(`$tot`) AS `total` FROM `account1` ";
								$tota_query = mysqli_query($Father, $tota);
								$total = mysqli_fetch_assoc($tota_query);
								$totaling1 = $total['total'];
								$totaling11 = number_format($total['total'],2);
								echo "<td class = 'right'>$totaling11</td>";
								
								$tota = "SELECT SUM(`$tot`) AS `total` FROM `account2` ";
								$tota_query = mysqli_query($Father, $tota);
								$total = mysqli_fetch_assoc($tota_query);
								$totaling2 = $total['total'];
								$totaling11 = number_format($total['total'],2);
								echo "<td class = 'right'>$totaling11</td>";
								
								$tota = "SELECT SUM(`$tot`) AS `total` FROM `account3` ";
								$tota_query = mysqli_query($Father, $tota);
								$total = mysqli_fetch_assoc($tota_query);
								$totaling3 = $total['total'];
								$totaling11 = number_format($total['total'],2);
								echo "<td class = 'right'>$totaling11</td>";
								
								$sum = $totaling1 + $totaling2 + $totaling3;
								$grand = $sum + $grand;
						}
					echo "</tr>";
					
					echo "<tr>";
								$grand = number_format($grand,2);
								$count = count($explode);
								$count = ($count*3) ;
								echo "<td colspan = '3'><b>Grand Total</b></td>";
								echo "<td colspan = '$count'style = 'text-align: center;' ><b>$grand</b></td>";
					echo "</tr>";
					
			
			echo "</table>";
		
		?>
		<br />
		<div class="sess">
				<button class = "w3-button w3-green w3-hover-blue w3-round"  onclick = "window.location.href='clear_sessional.php' ">Clear Sessional Record</button>
		</div>
</body>
</html>
