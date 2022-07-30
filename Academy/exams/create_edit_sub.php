<?php
	include '../all_conn.php';
	
	 $id = $_POST['edit'];
	 
	 
	 $query = "SELECT name, username, status, password1, classes, subject FROM users_sub where ID = '$id'";
	 $submit = 	mysqli_query($Father, $query);
	 $result = mysqli_fetch_assoc($submit);
	  
	  ?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit User Details:.</title>
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
			font-size: 1.2vw;
		}
		
		input[type=submit], input[type=text]{
			font-family: teen;
		}
		input[type=submit]{
			cursor: pointer;
		}
		
		h2{
			text-align: center;
			font-family: Gabriola;
			color: yellow;
		}
		
		h3 i{
			color: yellow;
		}
		h3{
			color: yellow;
			font-family: Gabriola;
			margin-top: 1%;
			text-align: center;
		}
		h4{
			color: yellow; 
			font-family: Gabriola;
			text-align: center;
			}
		form h4{
			color: red;
			text-align: center;
			font-family: teen;
			font-size: 1.4vw;
		}
		span{
			font-family: teen;
		}
		em{
			color: red;
		}
		#change{
			position: static;
			z-index: -2;
			margin-bottom: -2.2%;
			
		}
		#some, #all{
			//display: none;
		}
		#some fieldset, #all fieldset{
			border-top: none;
		}
		
		@media print{
			.noprint{display: none;}
			h2, h3{color: #000000;}
			body{font-size: 9pt;}
			table{margin-left: 0px; color: black; border: 2px solid black;}
			form, h3 i, table th:last-child, #info{display:none}
			table caption{color: black;}
			
			small{display: inline; text-align: center;}
		}
		@page{
			size: A4 portrait;
		}
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form h4{font-size: 4vw;}
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
					<h1 class = "w3-center" >Edit Subject Teachers</h1>
				</div>
			<?php include 'asideexams.php';?>
	
	<h3>Edit user '<i style = 'color:red;'><?php echo $result["name"];?> </i>'</h3>
	<h4>Please note that changes to default password will only be effected if and only if the user has not already changed his/her default password!</h4>
	
	
			
				<form name = 'checker' action='' onchange = 'checking()' id = 'change'> 
					<fieldset> 
							<legend>Edit - Subject Teacher Type</legend>
							<h4>You may change the subject teacher type!</h4>
							<?php
									if($result['subject'] == "All"){
										echo "<input  class = 'w3-radio' type='radio' name = 'test' value = 'some' /> <span>By subject</span>
											 <input  class = 'w3-radio' type='radio' name = 'test' value = 'all' checked /> <span>All subjects</span>";
										echo "<h4 id = 'cal' hidden >more</h4>";
									}else{
										echo "<input  class = 'w3-radio' type='radio' name = 'test' value = 'some' checked /> <span>By subject</span>
											 <input  class = 'w3-radio' type='radio' name = 'test' value = 'all'  /> <span>All subjects</span>";
											 echo "<h4 id = 'cal' hidden >one</h4>";
									}
							?>
							
							<br />
							<br />
					</fieldset>
			</form>
				
				
			
			
	<form action='create_edit_sub_action.php' method = 'POST' enctype = 'multipart/form-data' id = "all">
	 
		<fieldset>
			<legend>Edit User - All Subjects</legend>
			<input type='text' name = 'id' value = '<?php echo $id;?>' hidden />
			<label for='user'>Full Name: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'name' value = '<?php echo $result["name"];?>'/>
			<label for='user'>Username: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'username' value = '<?php echo $result["username"];?>'/>
			 
				<input type="text" name = "status" hidden value = "<?php echo $result['status']?>" />
					
			 <label for='Password'>Default Password: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'password' value = '<?php echo $result["password1"];?>'/>
			
			<input type= 'text' name = 'lasses' value = '<?php echo $result["classes"];?>' hidden />
			<input type= 'text' name = 'subjee' value = '<?php echo $result["subject"];?>' hidden />
		
					<label for="class" class = "ok">Select Class(s):</label> <br />
					<?php
						include '../all_conn.php';
						$my_classes = "SELECT classes FROM classes ORDER BY classes ASC";
						$my_query1 = mysqli_query($Father, $my_classes);
						$my_query2 = mysqli_query($Father, $my_classes);
						
						if(mysqli_fetch_assoc($my_query1) == NULL){
							echo "<h4>Please create classes!</h4>";
							die();
						}else{
							
							
								$chek = "SELECT classes FROM users_sub WHERE ID = '$id' ORDER BY classes ASC ";
								$chek_query = mysqli_query($Father, $chek);
								$view = mysqli_fetch_assoc($chek_query);
								$plode = $view['classes'];
								$ploding = explode(",", $plode);
								$counting = count($ploding);
								$count = 0;
							
							
							echo "<select class = 'w3-select w3-round' name = 'my_class'>";
									echo "<option value='$plode'>$plode</option>";
									while($answer = mysqli_fetch_assoc($my_query2)){
										
										echo "<option value='$answer[classes]'>$answer[classes]</option>";
										
									}
							echo "</select>";
						}
						
			
						
						$my_subject = "SELECT subject FROM subjects ORDER BY subject ASC";
						
						$query1 = mysqli_query($Father, $my_subject);
						$query2 = mysqli_query($Father, $my_subject);

						
						if(mysqli_fetch_assoc($query1) == NULL){
							echo "<h4>Please create subjects!</h4>";
							die();
							
						}else{
							
							
							echo "<select class = 'w3-select w3-round' name='my_sub' required hidden>";
							echo "<option value='All'>All subject</option>";
							
							
							echo "</select>";
								
							}
							
							
						
					?>
							<br /><br />
			
		<input class = "w3-input w3-round w3-green w3-hover-blue" type='submit' name = "all"/>
		
		</fieldset>
		
	</form>
	
	
	
	
	<form action='create_edit_sub_action.php' method = 'POST' enctype = 'multipart/form-data' id = "some">
	 
		<fieldset>
			<legend>Edit User - By Subject</legend>
			<input type='text' name = 'id' value = '<?php echo $id;?>' hidden />
			<label for='user'>Full Name: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'name' value = '<?php echo $result["name"];?>'/>
			<label for='user'>Username: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'username' value = '<?php echo $result["username"];?>'/>
			 
				<input type="text" name = "status" hidden value = "<?php echo $result['status']?>" />
					
			 <label for='Password'>Default Password: </label>
			<input class = "w3-input w3-round w3-border" type= 'text' name = 'password' value = '<?php echo $result["password1"];?>'/>
			
			<input type= 'text' name = 'lasses' value = '<?php echo $result["classes"];?>' hidden />
			<input type= 'text' name = 'subjee' value = '<?php echo $result["subject"];?>' hidden />
		
					<label for="class" class = "ok">Select Class(s):</label> <br />
					<?php
						include '../all_conn.php';
						$my_classes = "SELECT classes FROM classes ORDER BY classes ASC";
						$my_query1 = mysqli_query($Father, $my_classes);
						$my_query2 = mysqli_query($Father, $my_classes);
						
						if(mysqli_fetch_assoc($my_query1) == NULL){
							echo "<h4>Please create classes!</h4>";
							die();
						}else{
							
							
								$chek = "SELECT classes FROM users_sub WHERE ID = '$id' ORDER BY classes ASC ";
								$chek_query = mysqli_query($Father, $chek);
								$view = mysqli_fetch_assoc($chek_query);
								$plode = $view['classes'];
								$ploding = explode(",", $plode);
								$counting = count($ploding);
								$count = 0;
							
							
							
							while($answer = mysqli_fetch_assoc($my_query2)){
								
								foreach($ploding as $value){
									if($value == $answer['classes']){
										echo "<input class = 'w3-check' type='checkbox' value = '$answer[classes]' name = 'my_class[]' checked /><span>$answer[classes]</span><br />";
									}
									
								}
								if( $ploding[$count] !== $answer['classes']){
										echo "<input class = 'w3-check' type='checkbox' value = '$answer[classes]' name = 'my_class[]'  /><span>$answer[classes]</span><br />";
									}elseif(($count < $counting) && ($counting - $count != 1)){
									$count++;
								}
								
							}
						}
						
						
						echo "<label for='subjects'>Select Subject</label>". "<br />";
						
						$my_subject = "SELECT subject FROM subjects ORDER BY subject ASC";
						
						$query1 = mysqli_query($Father, $my_subject);
						$query2 = mysqli_query($Father, $my_subject);

						
						if(mysqli_fetch_assoc($query1) == NULL){
							echo "<h4>Please create subjects!</h4>";
							die();
							
						}else{
							$sub_select = "SELECT subject FROM users_sub WHERE ID = '$id' ORDER BY subject ASC ";
							$sub_select_query = mysqli_query($Father, $sub_select);
							$selected = mysqli_fetch_assoc($sub_select_query);
							
							echo "<select class = 'w3-select w3-round' name='my_sub' required >";
							echo "<option value=''>select subject</option>";
							while($item = mysqli_fetch_assoc($query2)){
								
								if($selected['subject'] == $item['subject']){
									echo "<option value='$selected[subject]' selected > $selected[subject]</option>";
								}else{
									echo "<option value='$item[subject]'  > $item[subject]</option>";
								}
							}
							
							echo "</select>";
								
							}
							
							
						
					?>
							<br /><br />
			
		<input class = "w3-input w3-round w3-green w3-hover-blue" type='submit' name = "one"/>
		
		</fieldset>
		
	</form>
		<br /><br />
		
			<script type="text/javascript"> 
					
					let verify = document.getElementById("cal").innerHTML;
					function checking(){
						if(verify == "more"){
							let hide = document.getElementById("all").style.display='none';
						let showing = document.getElementById("some").style.display='block';
						
							let chang = document.getElementById("cal").innerHTML="one";
							verify = chang;
						}else if(verify == "one"){
							let hide = document.getElementById("some").style.display='none';
						let showing = document.getElementById("all").style.display='block';
							
							let chang = document.getElementById("cal").innerHTML="more";
							verify = chang;
						}
						
						
						
						
					}
					
					
					
					
					
					if(verify == "more"){
						let hide = document.getElementById("some").style.display='none';
						let showing = document.getElementById("all").style.display='block';
					}else if(verify == "one"){
						let hide = document.getElementById("all").style.display='none';
						let showing = document.getElementById("some").style.display='block';
					}
					
					
			</script>
	
</body>
</html>
