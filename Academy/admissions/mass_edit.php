<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Mass Edit:.</title>
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
		
		table{
			background: #ffffff;
			border-collapse: collapse;
			border: solid 2px #000000;
			font-family: teen;
			margin-top: 5%;
			margin-left: 25%;
		}
		table caption{
			color: yellow;
		}
		th{
			border: solid 2px #000000;
			color: #4a8af4;
		}
		td{
			border: solid 2px #000000;
		}
		form{
			
			margin-left: 18%;
		}
		input[type=checkbox]{
			cell-padding: 1%;
			border: solid 1px #6ac239;
		}
		select{
			float: left;
			margin-top: -7.5%;
			border: 2px solid #7bca3d;
			border-radius: 3px;
			cursor: pointer;
			font-family: teen;
			background: white;
		}
		
		input[type=submit]{
			
			border: none;
			background: #7bca3d;
			color: #ffffff;
			border-radius: 3px;
			font-family: teen;
			padding: 0 1%;
			margin-left: 12%;
			float: left;
			margin-top: -7.4%;
			cursor: pointer;
		}
		h3{
			text-align: center;
			font-size: 2vw;
			margin-top: 5%;
			font-family: teen;
			color: yellow;
		}
		input[type=submit]:hover{
			background: #4b8bf4;
		}
		@media print{
			select, input[type=submit]{display:none;}
			table{margin-left: 0;}
			table caption{color: indigo;}
		}
		@media only screen and (max-width: 768px){
			form{margin-left: -32%;}
			input[type=submit], select{float: none; margin-top: 1%; margin-left: 30%; width: 65%;}
			h3{font-size: 5vw;}
			
			}
		
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Mass Class Edit</h1>
				</div>
			<?php include 'asideadmin.php';?>
			
			<?php include '../all_conn.php' ;
					$select = "SELECT class, Surname, FirstName, OtherNames, AdmissionNumber FROM `students` ORDER BY class ASC";
					$select_query1 = mysqli_query($Father, $select);
					$select_query2 = mysqli_query($Father, $select);
					if(mysqli_fetch_assoc($select_query1) == NULL){
						echo "<h3>No Student Registered!</h3>";
						
						
						die();
					}
					
			?>
			
		<form action="mass_edit_action.php" method = "POST" enctype = "multipart/form-data" id='meeh'> 
			<table>
					<caption>Please select students whose classes are to be updated en masse!</caption>
						<th>S/&#x2116;</th>
						<th>Check/Un-check</th>
						<th>Class</th>
						<th>Name</th>
						<th>Admission Number</th>
				
				
					<?php
							$i = 1;
							while($row = mysqli_fetch_assoc($select_query2)){
								echo "<tr>";
										echo "<td>$i.</td>";
										echo "<td><input type='checkbox' name = 'admin[]' value = '$row[AdmissionNumber]'/></td>";
										echo "<td>$row[class]</td>";
										$name = $row['Surname']." ".$row['FirstName']." ".$row['OtherNames'];
										echo "<td>$name</td>";
										echo "<td>$row[AdmissionNumber]</td>";
								echo "</tr>";
								$i++;
							}
					?>
				
			
			
			</table>
					<select name = "new" required> 
							<option value="">Select Class</option>
								<?php
								include '../all_conn.php';
								//selecting classes
								$classes = "SELECT `classes` FROM `admin_info`";
								$classes_query = mysqli_query($Father, $classes);
								$class = mysqli_fetch_assoc($classes_query);
								
								
								if($class['classes'] == NULL || $class['classes'] == "" || $class['classes'] == " "){
									echo "<option value=''>Classes: not set.</option>";
								}else{
									$clas = str_replace(" ", "",chop($class['classes'], ","));
									//exploding 
									$explode = explode(",",$clas);
									foreach($explode as $ex){
										echo "<option value='$ex'>$ex</option>";
									}
								}
								
						?>
					</select>
					<input type="submit" value = "Change Class" />
		</form>
</body>
</html>