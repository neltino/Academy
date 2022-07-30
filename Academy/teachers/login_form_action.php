<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	
	<title>.:Form Teachers' Login:.</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
	
		body{
				background: url(../img/abstract.jpg) repeat;
				background-position: center;
			}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/gabriola.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../myfont/cac.ttf);
					}
			#myhead h4{
						font-family: Aulyars;
						font-size: 2vw;
						text-align: center;
					}
			#myhead em{
				color: yellow;
				font-family: zipty;
			}
			.home {
				float: left;
				color: whitesmoke;
			}
			.home:hover{
				cursor: pointer;
				color: #dbe1f2;
			}
			h1{
				font-family: teen;
			}
	
			h3{
				color: white;
				text-align: center;
				font-family: Gabriola;
			}
			h2{
				color: yellow;
				text-align: center;
				font-family: Gabriola;
				font-size: 2vw;
			}
			form{
				width: 25%;
				margin-left: 40%;
				font-family: teen;
			}
			select{
				cursor: pointer;
				background: white;
			}
			@media only screen and (max-width: 768px){
				#myhead h1, h2{font-size: 5vw;}
				form{width: 98%; margin-left: 1%;}
			}
	
	</style>
</head>
<body>
<script type="text/javascript">
	
				function myfunct(){
					var x = document.forms["myform"]["class"].value;
					if(x == ""){
						alert("Class cannot be empty. Please select class");
					}else{
						myform.submit();
					}
				}
	</script>
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Assigned Class(es)</h1> 
				</div>
		
	


<?php
		include '../all_conn.php';
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		
		$query = "SELECT ID, name, username, password2, classes FROM users_form";
		$submit1 = mysqli_query($Father, $query);
		$submit2 = mysqli_query($Father, $query);
		
		if(mysqli_fetch_assoc($submit1) == NULL){
			
			
						echo "<h2>No user as Form Teacher has been created yet!</h2>";
						//header("Refresh: 3, url=form.php");
						die();
								
		}else{
			while($answer = mysqli_fetch_assoc($submit2)){
					
				if(($answer['username'] == $username) && ($answer['password2'] == $password)){
					$classes = explode(",", $answer['classes']);
					$counting = count($classes);
					$count = 0;
					
					echo " <form name = 'myform' onchange = 'myfunct()' action='intermediate.php' method = 'POST' enctype = 'multipart/form-data'>";
							echo "<input type='text' name = 'name' value = '$answer[name]' hidden />";
							echo "<input type='text' name = 'id' value = '$answer[ID]' hidden />";
								echo "<h2>Please Select Class!</h2>"."<br /> <br />";
								echo "<select class = 'w3-select w3-round w3-border-green' name='class'>";
										echo "<option value=''>Select a class </option>";
										while($count < $counting){
											echo "<option value='$classes[$count]'>$classes[$count]</option>";
											$count++;
										}
								echo "</select>";
				
					
					echo "</form>";
					die();
				}
			}
			if(($answer['username'] !== $username) || ($answer['password2'] !== $password)){
			
						echo "<h2>Unrecognised User, Incorrect Username or Password!</h2>";
						header("Refresh: 3, url=form.php");
						die();
								
			}
			
		}

	
?>
	
		
</body>
</html>