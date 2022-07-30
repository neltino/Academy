<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Create Subject Teachers:.</title>
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
		h3{
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
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
		input[type=text], select{
			background: radial-gradient(#ffffff,#b6dcfb);
			font-family: teen;
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
			font-size: 18px;
		}
		
		input[type=submit], input[type=text]{
			font-family: teen;
		}
		input[type=submit]{
			cursor: pointer;
		}
		h3 i{
			color: #ffffff;
		}
		h2{
			text-align: center;
			font-family: Gabriola;
			color: yellow;
			font-size: 2vw;
		}
		table{
			border-collapse: collapse;
			margin-left: 20%;
			background: whitesmoke;
			color: indigo;
			width: 70%;
			border-radius: 5px;
			font-family: teen;
			border: 2px solid indigo;
			margin-top: 1%;
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
			border: 2px solid indigo;
		}
		table tr td:first-child{
			font-weight: bold;
		}
		table tr td{
			border: 2px solid indigo;
		}
		table caption{
			color: indigo;
		}
		table input[type=submit]{
			border:none;
			background: green;
			color: white;
			border-radius: 2px;
			padding: 0 5px;
			margin: 1px 0;
		}
		table input[type=submit]:hover{
			background: blue;
		}
		h3 i{
			color: yellow;
		}
		h3{
			margin-top: 3%;
			color: yellow;
			font-family: Gabriola;
		}
		form h4{
			color: red;
			text-align: center;
			font-family: teen;
			font-size: 1.2vw;
		}
		span{
			font-family: teen;
		}
		.clear input[type=submit]{
			width: 95%;
			margin-left: 2.5%;
			margin-top: 1%;
		}
		.response input[type=submit], .response button{
			
			font-family: teen;
		}
		.response button{
			float: left;
			
		}
		
		small{
			display: none;
		}
		caption i{
			float: right;
			color: yellow;
		}
		caption i:hover{
			color: fuchsia;
			cursor: pointer;
		}
		caption i span{
			font-family: Gabriola;
			font-size: 12pt;
		}
		input[type=radio]{
			margin-left: 20%;
			cursor: pointer;
		}
		#some, #all{
			display: none;
		}
		#some fieldset, #all fieldset{
			border-top: none;
		}
		form:first-child{
			position: static;
			z-index: -2;
			margin-bottom: -2.2%;
		}
		@media print{
			.noprint{display: none;}
			h2, h3{color: #000000;}
			body{font-size: 9pt;}
			table{margin-left: 0px; color: black; border: 2px solid black; width: 100%;}
			form, h3 i, table th:last-child, #info{display:none}
			table caption{color: black;}
			table caption i{visibility:hidden;}
			small{display: inline; text-align: center;}
			.myform{display: none;}
		}
		@page{
			size: A4 portrait;
		}
		
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form h4{font-size: 4vw;}
			h2{font-size: 5vw; margin-top: 9%;}
			h3{margin-top: 7%;}
			form input[placeholder]{font-size: 3vw;}
			h3 i{font-size: 5vw;}
			table{width: 98%; margin-left: 1%; font-size: 2vw;}
			
			}
		
		
		
	</style>
</head>
<body>

<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Create Subject Teachers</h1>
				</div>
			<?php include 'asideexams.php';?>
			
		<?php
		include '../all_conn.php';
				if(isset($_POST['reset'])){
					echo "<h2>Are you sure you want to clear the Subject Teachers' details?</h2>";
					echo "<br /> <br />";
					echo "<form action='' method = 'POST' enctype = 'multipart/form-data'>";
							echo "<div class = 'response'> ";
							echo "<input class = 'w3-input w3-round w3-green w3-hover-blue' type='submit' name = 'yes' value = 'Yes'  />";
							
					echo "</form>";
						echo "<button class = 'w3-input w3-round w3-green w3-hover-blue' onclick = 'window.location.href=users_sub'>No</button>";
					echo "</div>";
					die();
				}
				if(isset($_POST['yes'])){
					$clearing = "TRUNCATE TABLE `users_sub`; ";
					$clearing_quary = mysqli_query($Father, $clearing);
					
				}
		
		?>
			
		<div class="noprint">
			<h3>Create users who would have access rights as Subject teachers!</h3>
		</div>
		<div class = "myform">
			<form name = 'checker' action="" onchange = 'checking()'> 
					<fieldset> 
							<legend>Subject Teacher Type</legend>
							<h4>Please specify if the user have access right to enter a subject or all subjects!</h4>
							<input  class = 'w3-radio' type="radio" name = 'test' value = 'some' /> <span>By subject</span>
							<input  class = 'w3-radio' type="radio" name = 'test' value = 'all' /> <span>All subjects</span>
							<br />
							<br />
					</fieldset>
			</form>
		<form name = 'some' action="create_action_sub.php" method = "POST" enctype = "multipart/form-data" id = "some"> 
			<fieldset> 
					<legend>Create User - By subject</legend>
					<label for="username">Full Name:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "name" placeholder = "Type full name e.g. Azriel John" required />
					
						<input type = "text" value="Subject Teacher" name="status" hidden />
					
					
					<label for="class">Select Class(es)</label> <br />
					<?php
						
						$my_classes = "SELECT classes FROM classes ORDER BY classes ASC";
						$my_query1 = mysqli_query($Father, $my_classes);
						$my_query2 = mysqli_query($Father, $my_classes);
						
						if(mysqli_fetch_assoc($my_query1) == NULL){
							echo "<h4>Please Create Classes!</h4>";
							die();
						}else{
							while($my_result = mysqli_fetch_assoc($my_query2)){
								echo "<input class = 'w3-check' type='checkbox' value = '$my_result[classes]' name = 'my_class[]'/> <span>$my_result[classes]</span> <br />";
							}
						}
						
						echo "<label for='subjects'>Select Subject</label>";
						echo "<br />";
						
						$my_subject = "SELECT subject FROM subjects ORDER BY subject ASC";
						
						$query1 = mysqli_query($Father, $my_subject);
						$query2 = mysqli_query($Father, $my_subject);

						
						if(mysqli_fetch_assoc($query1) == NULL){
							echo "<h4>Please Create Subjects!</h4>";
							die();
						}else{
							echo "<select class = 'w3-select w3-round' name='my_sub' required >";
							echo "<option value=''>Select Subject</option>";
							while($my_result_sub = mysqli_fetch_assoc($query2)){
								echo "<option value='$my_result_sub[subject]'>$my_result_sub[subject] </option>";
							}
							echo "</select>";
						}
				
					?>
				<br />	<br />		
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" name = "single" />
					
			
			</fieldset>
		</form>
		
		
		<form name = 'all' action="create_action_sub.php" method = "POST" enctype = "multipart/form-data" id = "all"> 
			<fieldset> 
					<legend>Create User - All subjects</legend>
					<label for="username">Full Name:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "name" placeholder = "Type full name e.g. Azriel John" required />
					
						<input type = "text" value="Subject Teacher" name="status" hidden />
					
					
					<label for="class">Select Class(es)</label> <br />
					<?php
						
						$my_classes = "SELECT classes FROM classes ORDER BY classes ASC";
						$my_query1 = mysqli_query($Father, $my_classes);
						$my_query2 = mysqli_query($Father, $my_classes);
						
						if(mysqli_fetch_assoc($my_query1) == NULL){
							echo "<h4>Please Create Classes!</h4>";
							die();
						}else{
							echo "<select class = 'w3-select w3-round' name = 'my_class' required >";
								echo "<option value=''>Select Class</option>";
							while($my_result = mysqli_fetch_assoc($my_query2)){
								echo "<option value = '$my_result[classes]'>$my_result[classes]</option>";
							}
							echo "</select>";
						}
						echo "<br /> <br />";
						
						
						$my_subject = "SELECT subject FROM subjects ORDER BY subject ASC";
						
						$query1 = mysqli_query($Father, $my_subject);
						$query2 = mysqli_query($Father, $my_subject);

						
						if(mysqli_fetch_assoc($query1) == NULL){
							echo "<h4>Please Create Subjects!</h4>";
							die();
						}else{
							echo "<select class = 'w3-select w3-round' name='my_sub' required hidden >";
							echo "<option value='All'>All Subjects</option>";
							
						}
				
					?>
				<br />	<br />		
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" name = "suball" />
					
			
			</fieldset>
		</form>
		
		
		
		
		
		</div>
				
</div>
			<?php
				include '../all_conn.php';
					
				$query = "SELECT ID, name, username, status, password1, classes, subject FROM users_sub WHERE status = 'Subject Teacher' ORDER BY name ASC";
				$submit1 = mysqli_query($Father,$query);
				$submit2 = mysqli_query($Father,$query);
				
				if(mysqli_fetch_assoc($submit1) != NULL){
				//Clearing Subject Teachers' table...
						echo "<div class = 'noprint' >";
								echo "<div class='clear'>";
								echo "<br /><br />";
						echo "<form action= '' method = 'POST' enctype = 'multipart/form-data'>";
								echo "<input type='text' name = 'reset' value = 'clear' hidden />";
								echo "<input class = 'w3-input w3-round w3-green w3-hover-blue' type='submit' value = 'Clear Subject Teachers' Table' />";
						echo "</form>";
							echo "</div>";
						echo "</div>";
						
					echo "<table>";
						echo "<caption>Users - Subject Teachers <i onclick = 'window.print()' class = 'fas fa-print fa-2x'><span>print</span></i></caption>";
						echo "<th>S/&#x2116</th>";
						echo "<th>Name</th>";
						echo "<th>Username</th>";
						echo "<th>Status</th>";
						echo "<th>Default Password</th>";
						echo "<th>Class(es)</th>";
						echo "<th>Subject</th>";
						echo "<th class = 'noprint'>Edit User</th>";
						echo "<th class = 'noprint'>Delete User</th>";
						$i = 1;
						while($answer = mysqli_fetch_assoc($submit2)){
							echo "<tr>";
									echo "<td>$i.</td>";
									echo "<td>".$answer['name']."</td>";
									echo "<td>"."<small><u>username</u> <br /></small>".$answer['username']."</td>";
									echo "<td>".$answer['status']."</td>";
									echo "<td>"."<small><u>password</u> <br /></small>".$answer['password1']."</td>";
									echo "<td>".$answer['classes']."</td>";
									echo "<td>".ucwords(strtolower($answer['subject']))."</td>";
										echo "<form action= 'create_edit_sub.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td class = 'noprint' style = 'text-align: center;'>"."<input name = 'edit' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Edit' />"."</td>";
										echo "</form>";
									echo "<form action= 'create_delete_sub.php' method = 'POST' enctype = 'multipart/form-data' >";
										echo "<td class = 'noprint' style = 'text-align: center;'>"."<input name = 'delete' hidden value = '$answer[ID]' type='text' />"."<input type='submit' value = 'Delete' />"."</td>";
										echo "</form>";
									
							echo "</tr>";
							$i++;
						}
					
					
					
					echo "</table>";
				}
				
			
			
			?>
			
			<br /><br /> 
			<br /><br /> 
			
			<script type="text/javascript"> 
					function checking(){
						let check = document.forms["checker"]["test"].value;
						if(check != ""){
								if(check == "some"){
									let case1 = document.getElementById("some").style.display="block";
									let case2 = document.getElementById("all").style.display="none";
								}else{
									let case1 = document.getElementById("all").style.display="block";
									let case2 = document.getElementById("some").style.display="none";
								}
						}
						
					}
			
			</script>
	
	
</body>
</html>