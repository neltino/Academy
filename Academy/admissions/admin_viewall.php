<?php
		include '../all_conn.php';
		$sql = "SELECT * FROM students ORDER BY class ASC";
	$result = mysqli_query($Father,$sql);
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>All Registered Students</title>
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
			border-collapse: collapse;
			background: #ffffff;
			border-radius: 2px;
			border: 2px solid #000000;
			margin-left: 1%;
			font-family: teen;
			font-size: 1vw;
			float: left;
		}
	table th{
		color: indigo;
		font-size: .8vw;
		text-align: center;
		border: 2px solid #000000;
	}
	td{
		border: solid 1px #000000;
	}
	
	caption{
		color: indigo;
	}
	
	h2,h3{
		text-align: center;
		font-family: teen;
		color: yellow;
		font-size: 2vw;
	}
	h3{margin-top: 10%;}
	em{
		color: #yellow;
	}
	b{
		margin-left: 1%;
		color: indigo;
		font-family: prestiji;
	}
	.noprint button{
		margin-left: 5%;
	}
	.noprint i{
		background: none;
		cursor: pointer;
		float: left;
		margin-left: 5%;
		color: yellow;
	}
	.noprint i:hover{
		color: magenta;
	}
	.noprint span{
		font-family: cac;
	}
	@media print{
		.noprint{display:none;}
		table, b{margin-left: 0px;}
		caption h2{
			color: magenta;
		}
	}
	
	@media only screen and (max-width: 768px){
			table{width: 99%; margin-left: 1%; font-size: 1vw;}
			table th{font-size: 1vw;}
			table caption{font-size: 3vw;}
			h3{font-size: 5vw;}
			}
		
		
	 </style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" > Admissions Report</h1>
				</div>
			<?php include 'asideadmin.php';?>

<div class = 'noprint'>
	<?php
	
			$count = "SELECT COUNT(*) AS count FROM `students`";
			$count_query = mysqli_query($Father, $count);
			$counting = mysqli_fetch_assoc($count_query);
			 $cou = $counting['count'];
			 
			 if($cou =='0'){
				 
				 echo "<h3>No Student has been registered yet!</h3>";
				 die();
			 }
			 echo "<i class = 'fas fa-print fa-2x' onclick = 'window.print()'><span>print</span></i>";
	?></em></b>
</div>
	<b>Total Registered Students: <em><?php echo $cou;?></em></b>
		<?php
			//selecting school name
			$sch = "SELECT `school` FROM `info_sch`";
			$sch_query = mysqli_query($Father, $sch);
			$skul = mysqli_fetch_assoc($sch_query);
			if($skul == NULL){
				$school = "SCHOOL NAME NOT SET!";
			}else{
				$school = strtoupper($skul['school']);
			}
			
			
		?>
			
	<table> 
		<caption><h2><?php echo $school;?></h2></caption>
		<caption> <strong>All Registered Students</strong></caption>
		<br />
			<tr> 
				<th>S/&#x2116;</th>
				<th>Passport</th>
				<th>Admission Number</th>
				<th>Class</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Date of Birth</th>
				<th>Nationality</th>
				<th>State of Origin</th>
				<th>LGA</th>
				<th>Sports House</th>
				<th>Parent/Guardian</th>
				<th>Phone Number</th>
				<th>E-mail</th>
				<th>Address</th>
			
			</tr>
			
	<?php
			$i = 1;
		while($students=mysqli_fetch_assoc($result)){
				echo "<tr>";
				
				echo "<td>$i.</td>";
				echo "<td>".'<img class = "dcard" src = "data:image/jpeg; base64,' .base64_encode($students['Passport']).'"height = "50" width = "40" />'."</td>";
				echo "<td>".$students['AdmissionNumber']."</td>";
				echo "<td>".$students['Class']."</td>";
				echo "<td>".$students['Surname']." ".$students['FirstName']." ".$students['OtherNames']. "</td>";
				echo "<td>".$students['Gender']."</td>";
				echo "<td>".$students['DOB']."</td>";
				echo "<td>".$students['Nationality']."</td>";
				echo "<td>".$students['State']."</td>";
				echo "<td>".$students['LGA']."</td>";
				echo "<td>".$students['House']."</td>";
				echo "<td>".$students['Parent_Guardian']."</td>";
				echo "<td>".$students['Phone']."</td>";
				echo "<td>".$students['Email']."</td>";
				echo "<td style = 'text-align:left;'>"."&ensp;".$students['Address']."</td>";
				
				echo "</tr>";
				$i++;
			}
	?>
	
	

	</table>
			<br /> <br />
	<div class='noprint'>
	
		<i class = 'fas fa-print fa-2x' onClick="window.print()"  ><span>print</span></i>
	</div>
</body>
</html>
