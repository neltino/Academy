<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Create Classes:.</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
			margin-top: 2%;
		}
		form{
			font-family: Gabriola;
			width: 32%;
			margin-left: 35%;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 1vw;
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
			font-size: 1.2vw;
		}
		
		input[type=submit]{
			font-family: teen;
		}
		table{
			border-collapse: collapse;
			margin-left: 35%;
			background: whitesmoke;
			color: indigo;
			width: 32%;
			border-radius: 5px;
			font-family: teen;
		}
		table td{
			padding-bottom: 0.5%;
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
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
			margin-top: 2px;
		}
		table input[type=submit]:hover{
			background: blue;
		}
		
		h3 i{
			color: yellow;
		}
		
		
		@media print{
			form, h3 i, table th:last-child, #info{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form input[placeholder]{font-size: 4vw;}
			h3 i{font-size: 5vw;}
			table{width: 98%; margin-left: 1%;}
			}
	
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Create Classes</h1>
				</div>
			<?php include 'asideexams.php';?>
			<div id="please">
					<h3><i>Create classes for Subject Teachers and Form Teachers!</i></h3>
				</div>	
	<div class = "myform">
		<form action="classes_action.php" method = "POST" enctype = "multipart/form-data"> 
			<fieldset> 
					<legend>Create Classes:</legend>
					<label for="class">Class:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "class" placeholder = "Type class name e.g. SS 1A" required autofocus />
					 <br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" />
					
			
			</fieldset>
		</form>
		</div>
		<br />
		
			<?php
				include '../all_conn.php';
				$query = "SELECT ID, classes FROM classes ORDER BY classes ASC";
				$submit1 = mysqli_query($Father,$query);
				$submit2 = mysqli_query($Father,$query);
				
				if(mysqli_fetch_assoc($submit1) != NULL){
					
						
					echo "<table>";
						echo "<caption>Classes</caption>";
						echo "<th>Class</th>";
						echo "<th>Edit Class</th>";
						echo "<th>Delete Class</th>";
						while($answer = mysqli_fetch_assoc($submit2)){
							echo "<tr>";
									echo "<td>".$answer['classes']."</td>";
										echo "<form action= 'classes_edit.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td style = 'text-align: center;'>"."<input name = 'edit' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Edit' />"."</td>";
										echo "</form>";
									echo "<form action= 'classes_delete.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td style = 'text-align: center;'>"."<input name = 'delete' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Delete' />"."</td>";
										echo "</form>";
									
							echo "</tr>";
						}
					
					
					
					echo "</table>";
				}
				
			
			
			?>
			
</body>
</html>