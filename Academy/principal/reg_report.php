<?php
		include 'principal_conn.php';
		$sql = "SELECT * FROM students";
	$result = mysqli_query($Father,$sql);
	$total = $result->num_rows;
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>All Registered Students</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
		body{
		 background: #f0f0f0;	 
	 }

	table{
			background: #ffffff;
			border-radius: 2px;
			color: #000000;
		}
	h2,h3{
		color: #2c9cff;
		font-family: Georgia;
		text-align: center;
	}
	td{
		font-size: 10pt;
		border-left: 1px;
		border-top: 1px;
		
		
	}
	
	th{
		color: #2c9cff;
		font-size: 10pt;
		border-left: 1px;
		border-top: 1px;
		
	}
		
	 </style>
</head>
<body>
<h2>Easysoft International College</h2>
<h3> <strong>All Registered Students List </strong></h3>
<p><?php echo "<strong style = 'color:#e60012; float: left; margin-top: 20px;'>Total Registered Students: ".$total ?></p>

	<table border = "1" width = "2024" cellpadding = "0" span = "5px"> 
	
		
		
		<br />
			<tr> 
				<th>S/No.</th>
				<th>Passport</th>
				<th>Admission Number</th>
				<th>Surname</th>
				<th>First Name</th>
				<th>Other Names</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Nationality</th>
				<th>State of Origin</th>
				<th>LGA</th>
				<th>Class</th>
				<th>House</th>
				<th>Parent/Guardian</th>
				<th>Phone Number</th>
				<th>Email</th>
				<th>Address</th>
			
			</tr>
			
	<?php
		while($students=mysqli_fetch_assoc($result)){
				echo "<tr>";
				
				echo "<td>".$students['SerialNo']."</td>";
				echo "<td>".'<img class = "dcard" src = "data:image/jpeg; base64,' .base64_encode($students['Passport']).'"height = "50" width = "40" />'."</td>";
				echo "<td>".$students['AdmissionNumber']."</td>";
				echo "<td>".$students['Surname']."</td>";
				echo "<td>".$students['FirstName']."</td>";
				echo "<td>".$students['OtherNames']."</td>";
				echo "<td>".$students['Gender']."</td>";
				echo "<td>".$students['DOB']."</td>";
				echo "<td>".$students['Nationality']."</td>";
				echo "<td>".$students['State']."</td>";
				echo "<td>".$students['LGA']."</td>";
				echo "<td>".$students['Class']."</td>";
				echo "<td>".$students['House']."</td>";
				echo "<td>".$students['Parent_Guardian']."</td>";
				echo "<td>".$students['Phone']."</td>";
				echo "<td>".$students['Email']."</td>";
				echo "<td>".$students['Address']."</td>";
				
				echo "</tr>";
			}
	?>
	
	

	</table>
			
			<br /> <br />
		<button ><a href = 'admissions_report.php' style = 'text-decoration:none; color: #ff0000;'><strong>Previous Page</strong></a></button>
		<input type="button" onClick="window.print()" value="Print Report" style = "font-weight: bold; color:#ff0000;"/>
</body>
</html>
