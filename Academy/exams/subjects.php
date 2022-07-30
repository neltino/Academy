<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Create Subjects:.</title>
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
		h3{
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
		}
		form{
			font-family: Gabriola;
			width: 40%;
			margin-left: 30%;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 1;
			font-weight: bold;
			font-style: italic;
		}
		input[type=text]{
			background: radial-gradient(#ffffff,#b6dcfb);
		}
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 5px;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			padding: 3px;
			border-radius: 5px;
			font-family: teen;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
			font-size: 1.1vw;
		}
		
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		table{
			border-collapse: collapse;
			margin-left: 30%;
			background: whitesmoke;
			color: indigo;
			width: 40%;
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
			text-align: center;
		}
		
		table caption{
			color: indigo;
			font-weight: bold;
		}
		input[type=submit]{
			cursor: pointer;
		}
		table input[type=submit]{
			border:none;
			background: green;
			color: white;
			border-radius: 2px;
			padding: 0 5px;
			margin-top: 1px;
		}
		table input[type=submit]:hover{
			background: blue;
		}
		h3 i{
			color: yellow;
		}
		h2{
			text-align: center;
			font-family: teen;
			color: indigo;
			font-size: 2vw;
		}
		@media print{
			.noprint{display: none;}
			h2, h3{color: #000000;}
			body{font-size: 9pt;}
			table{margin-left: 0px; color: black; border: 2px solid black;}
			form, h3 i, table th:last-child, #info{display:none}
			table caption{color: black;}
			table th, td{border: 2px solid black;}
			
		}
		@page{
			size: A4 portrait;
		}
		
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form input[placeholder]{font-size: 4vw;}
			h3 i{font-size: 5vw;}
			table{width: 98%; margin-left: 1%; font-size: 3vw;}
			h2{font-size: 4vw;}
			}
		
		
	
	</style>		
		
	
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Create Subjects</h1>
				</div>
			<?php include 'asideexams.php';?>

			<h3><i>Here, Create all subjects offerred by the school!</i></h3>
			
	<div class = "myform">
		<form action="subject_action.php" method = "POST" enctype = "multipart/form-data"> 
			<fieldset> 
					<legend>Create Subject:</legend>
					<label for="subject">Subject:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "subject" placeholder = "e.g. English Language" required  autofocus />
					<label for="abbr">Abbreviation:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "abbreviation" placeholder = "e.g. ENG" required maxlength = "3" />
					 <br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" />
					
			
			</fieldset>
		</form>
	</div>
	
			 
</div>	
		
			<?php
					
			
				include '../all_conn.php';
				//fetching school name
					$cool = "SELECT school FROM `info_sch` ";
					$cool_query = mysqli_query($Father, $cool);
					$skull = mysqli_fetch_assoc($cool_query);
					if($skull == NULL){
						$school = "SCHOOL NAME NOT YET SET!";
					}else{
						$school = strtoupper($skull['school']);
					}
				
				$query = "SELECT ID, subject, abbreviation FROM subjects ORDER BY subject ASC";
				$submit1 = mysqli_query($Father,$query);
				$submit2 = mysqli_query($Father,$query);
				
				if(mysqli_fetch_assoc($submit1) != NULL){
					
						echo "<h2>$school</h2>";
						
					echo "<table>";
						echo "<caption>School Subjects</caption>";
						echo "<th>S/&#x2116</th>";
						echo "<th>Subjects</th>";
						echo "<th>Abbreviation</th>";
						echo "<th class = 'noprint'>Edit Subject</th>";
						echo "<th class = 'noprint'>Delete Subject</th>";
						$i = 1;
						while($answer = mysqli_fetch_assoc($submit2)){
							echo "<tr>";
									echo "<td>$i.</td>";
									echo "<td>".$answer['subject']."</td>";
									echo "<td style = 'text-align: center;'>".$answer['abbreviation']."</td>";
										echo "<form action= 'subject_edit.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td class = 'noprint' style = 'text-align: center;'>"."<input name = 'edit' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Edit' />"."</td>";
										echo "</form>";
									echo "<form action= 'subject_delete.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td class = 'noprint' style = 'text-align: center;'>"."<input name = 'delete' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Delete' />"."</td>";
										echo "</form>";
									
							echo "</tr>";
							$i++;
						}
					
					
					
					echo "</table>";
				}
				
			
			
			?>
			<br />
</body>
</html>