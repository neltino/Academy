<?php
		$class = $_POST['class'];
?>


<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Comment Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			body{
				background: url(../img/abstract.jpg) repeat;
				background-size: cover;
			}
			
	#myhead h1{
		font-family: teen;
		
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
		margin-left: 20%;
		margin-top: 2%;
		background: white;
		font-family: teen;
		border-collapse: collapse;
		border: solid 2px indigo;
		font-size: 1vw;
	}
	table th{
		border: solid 2px indigo;
		padding: 0 1px;
	}
	table td{
		border: solid 1px indigo;
		padding: 0 1px;
	}
	
	h2, h3{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 1.5vw;
	}
	.long{
		width: 65%;
	}
	table input[type=text]{
		width: 100%;
		border-radius: 2%;
		border: 1px solid #87c540;
		margin-top: 0.5%;
	}
	input[type=submit]{
		margin-left: 40%;
		width: 20%;
		cursor: pointer;
		font-family: teen;
	}
		
	@media print{
		.noprint{display:none;}
		h2, h3, h4{color: #000000; margin-top: -5px;}
		
		
	}
	@page{
		size: A4 portrait;
	}
	@media only screen and (max-width: 768px){
			table{width: 94%; margin-left: 5%; font-size: 2vw;}
			
			}
	
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Comment for <?php echo $class;?></h1>
				</div>
							
			

<?php
	include 'asideprincipal.php';
	include '../teach_conn.php'; 
	include '../all_conn.php'; 
	$class = $_POST['class'];
	//checking if class exists!
	$new = strtolower(str_replace(" ","",$class."_2nd_term"));
	$query = "SHOW TABLES";
	$submit = mysqli_query($Son, $query);
	
	$a = "";
	while($answer = mysqli_fetch_assoc($submit)){
		$a.= $answer['Tables_in_teachers'];
		
	}
	$res = strchr($a, $new);
	if($res === False){
				echo "<h2>Sorry, This Class has no registered Class Members</h2>";
				echo "<h3>Ask the Form Teacher to register Class Members</h3>"; 
				
				die();
	} 
		//checking if an existing class has members in it!
		$qry = "SELECT name FROM `$new`";
		$sub = mysqli_query($Son, $qry);
		$ans = mysqli_fetch_assoc($sub);
		if($ans == NULL){
			echo "<h2>Sorry, This Class has no registered Class Members</h2>";
				echo "<h3>Ask the Form Teacher to register Class Members</h3>"; 
				
				die();
		}
?> 
		
<form action = "princ_comm_2.php" method = "POst" enctype = "multipart/form-data">
		<table> 
		
			<th>S/&#x2116;</th>
			<th>Full Name</th>
			<th>Grand Total</th>
			<th>Average</th>
			<?php
					$grade = "SELECT reportsheet FROM `info_exams` ";
					$grade_query = mysqli_query($Father, $grade);
					$result = mysqli_fetch_assoc($grade_query);
					$result = $result['reportsheet'];
					if($result == 'alphabetic'){
						echo "<th>Grade</th>";
					}else{
						echo "<th>Position</th>";
					}
			?>
			<th>Comment</th>
			<?php
				$names = "SELECT ID, name, grand, average, position, prin_com FROM `$new` ORDER BY average DESC";
				$names_query = mysqli_query($Son, $names);
				
				//comment options
				echo "<datalist id = 'comment'>";
											echo "<option value='An excellent result, keep it up!'>";
											echo "<option value='An excellent result, keep it up! The sky is your limit.'>";
											echo "<option value='An average result; you can do better.'>";
											echo "<option value='A good result; you can do better than this.'>";
											echo "<option value='A fair performance; try harder.'>";
											echo "<option value='A poor performance; work harder next term.'>";
											echo "<option value='A poor performance; sit up and work harder.'>";
											echo "<option value='A very good performance, you have the capacity to do better.'>";
											echo "<option value='A very great improvement, keep moving.'>";
											echo "<option value='A poor performance, wake up from your slumber.'>";
											echo "<option value='An average performance; your grades are dropping. Stop playing and work harder.'>";
											echo "<option value='A very poor performance; read harder.'>";
											echo "<option value='Promoted to next class.'>";
											echo "<option value='Promoted on trial.'>";
											echo "<option value='Repeat.'>";
											echo "<option value='Poor performance, you play too much.'>";
											echo "<option value='A good result, but you can do better than this.'>";
											echo "<option value='A very good improvement; do not relax, keep moving!'>";
											echo "<option value='An excellent result, but do not relax.'>";
											echo "<option value='A poor result, you are not making significant progress.'>";
											
				echo "</datalist>";
				$i = 1;
				while($nam = mysqli_fetch_assoc($names_query)){
					$id = $nam['ID'];
					$comment = $nam['prin_com'];
					$average = number_format($nam['average'],2);
					echo "<tr>";
							echo "<td>$i.</td>";
							echo "<td>$nam[name]</td>";
							echo "<td>$nam[grand]</td>";
							echo "<td>$average</td>";
							echo "<td>$nam[position]</td>";
							echo "<input  type= 'text' name = 'myclass' value = '$new' hidden />";
							echo "<input  type= 'text' name = 'id[]' value = '$id' hidden />";
							echo "<td class = 'long' ><input list = 'comment' type= 'text' name = 'com[]' value = '$comment' required /></td>";
								
					echo "</tr>";
					$i++;
				}
				
			
			?>
		
		</table>
		<br />
				<input class = 'w3-input w3-round w3-blue w3-hover-green' type="submit" />
				
</form>
		<br /><br /> 
		
			
</body>
</html>