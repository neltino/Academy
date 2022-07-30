<?php

include '../all_conn.php';

		$sql = "SELECT * FROM account1 ORDER BY Class";
		$result = mysqli_query($Father,$sql);
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>All Students Transaction (1st Term)</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
		body{
		 background: #f0f0f0;	 
	 }

	table{
			background: #ffffff;
			border-radius: 2px;
			margin-left: 100px;
		}
	table th,h2{
		color: #2c9cff;
		font-family: Georgia;
	}
	
	li{
		list-style: none;
		float: left;
		font-weight: bold;
	}
	
	.list{
		background: #ffffff;
		width: 1024px;
		height: 20px;
		margin-left: 100px;
		margin-top: -15px;
	}
	td{
		font-size: 10pt;
		border-left: 1px;
		border-top: 1px;
		
	}
	
	th{
		font-size: 10pt;
		border-left: 1px;
		border-top: 1px;
	}
	input,button{
		margin-left: 100px;
	}
		
	 </style>
</head>
<body>
	<table border = "1" width = "1024" cellpadding = "0" span = "0"> 
	<caption><h2>Easysoft International College</h2></caption>
		<caption> <strong>All Students Transaction Details[1st Term] </strong></caption> 
		
		<br />
			<tr> 
				<th>Admission Number</th>
				<th>Surname</th>
				<th>First Name</th>
				<th>Other Names</th>
				<th>Class</th>
				<th>School Fee</th>
				<th>P. T. A </th>
				<th>Practicals</th>
				<th>O t h e r s</th>
				<th>Last Transaction Date</th>
				
			
			</tr>
			
	<?php
					while($row=mysqli_fetch_assoc($result)){
				
				echo "<tr>";
				
				echo "<td>".$row['AdmissionNumber']."</td>";
				echo "<td>".$row['Surname']."</td>";
				echo "<td>".$row['FirstName']."</td>";
				echo "<td>".$row['OtherNames']."</td>";
				echo "<td>".$row['Class']."</td>";
				echo "<td>".$row['SchoolFee']."</td>";
				echo "<td>".$row['PTA']."</td>";
				echo "<td>".$row['Practicals']."</td>";
				echo "<td>".$row['Others']."</td>";
				echo "<td>".$row['TransactionDate']."</td>";
				
				echo "</tr>";
			}
			
			
				
	?>

	</table>
	
	<?php
	
			$sum = "SELECT SUM(SchoolFee), SUM(PTA), SUM(Practicals), SUM(Others) FROM account1";
			$mysum = mysqli_query($Father, $sum);
			$ans = mysqli_fetch_row($mysum);
	
	?>
	<div class = "list">
	<ul> 
		<li style = "margin-left: -10px;">Totals:</li>
		<li style = "margin-left: 450px;"><?php echo $ans[0];?></li>
		<li style = "margin-left: 45px;"><?php echo $ans[1]; ?></li>
		<li style = "margin-left: 40px;"><?php echo $ans[2]; ?></li>
		<li style = "margin-left: 50px;"><?php echo $ans[3]; ?></li>
	
	</ul> 
	<br />
		<p style = "background: #ffffff;"><strong>Grand Total: <?php echo $ans[0]+ $ans[1]+ $ans[2] + $ans[3]; ?></strong></p>
	</div>
	
	<br /><br /> <br />
	<input type="button" onClick="window.print()" value="Print Transaction" style = "font-weight: bold; color:#ff0000;"/>
	<button><a href="term1.php" style = "text-decoration: none; font-weight: bold; color: #ff0000;">Back to Search Page</a></button>
	</body>
	
	</html>
	