<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Subject Teacher's Login Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../myfont/cac.ttf);
					}
			@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
			body{
				background: url(../img/abstract.jpg) repeat;
				background-position: center;
				
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
		}
		h3 i{
			color: yellow;
			font-size: 2vw;
			font-family: teen;
		}
		form{
			width: 25%;
			margin-left: 37%;
		}
		select{
			font-family: teen;
			cursor: pointer;
			background: white;
		}
		h2{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			margin-top: 10%;
			font-size: 3vw;
		}
		@media only screen and (max-width: 768px){
				#myhead h1, h2{font-size: 5vw;}
				form{width: 98%; margin-left: 1%;}
			}
	
	</style>
</head>
<body>

		<div id = "myhead" class = "w3-container w3-blue" >
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 id = 'change' class = "w3-center" >Select Class</h1>
		</div>

	
		


<?php
		include '../all_conn.php';
		include '../teach_conn.php';
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);
		
		$query = "SELECT ID, name, username, password2, classes, subject FROM users_sub";
		$submit1 = mysqli_query($Father, $query);
		$submit2 = mysqli_query($Father, $query);
		
		if(mysqli_fetch_assoc($submit1) == NULL){
			
						echo "<h2>No user as Subject Teacher has been created yet!</h2>";
						header("Refresh:3, url=sub.php");
						die();
								
		}else{
			while($answer = mysqli_fetch_assoc($submit2)){
				
					
				if(($answer['username'] == $username) && ($answer['password2'] == $password)){
					
					if($answer['subject'] == "All"){
						//changing header 
								echo "<script> 
										
											let select = document.getElementById('change').innerHTML = 'Select Subject';
											
										
								</script>";
							//checking type 
							$class_sub = trim(str_replace(" ", "",$answer['classes']))."_subjects";
							$class_sub = strtolower(str_replace(" ", "", $class_sub));
							$mysub = "SELECT subfull FROM `$class_sub` ";
							$mysubquery = mysqli_query($Son, $mysub);
							
								if($mysubquery == false){
									echo "<h2>Sorry, no selected subject for this class.
									Login as form teacher and select subjects first!</h2>";
									header('Refresh: 5, url=sub.php');
									die();
								}else{
									
									$subj = mysqli_fetch_assoc($mysubquery);
									$thesub = $subj['subfull'];
									
									$imp = explode(",",$thesub);
										echo "<h3>Please Select a Subject</h3><br /><br />";
									echo " <form name = 'myform' onchange = 'myfunct()' action='intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data'>";
												echo "<input type='text' name = 'name' value = '$answer[name]' hidden />";
												echo "<input type='text' name = 'id' value = '$answer[ID]' hidden />";
												echo "<input type='text' name = 'class' value = '$answer[classes]' hidden />";
												echo "<input type='text' name = 'type' value = 'All' hidden />";
													
													echo "<select class = 'w3-select w3-round w3-border-green' name='sub' required>";
														echo "<option value=''>Select Subject</option>";
															foreach($imp as $val){
																echo "<option value='$val'>$val</option>";
															}
													echo "</select>";
													
											echo "<input type='text' name = 'forsub' hidden />";
													
										
										echo "</form>";
								}
						
					}else{
							$classes = explode(",", $answer['classes']);
							$counting = count($classes);
							$count = 0;
							echo "<h3>Please Select a Class</h3><br /><br />";
							echo " <form name = 'myform' onchange = 'myfunct()' action='intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data'>";
									echo "<input type='text' name = 'name' value = '$answer[name]' hidden />";
									echo "<input type='text' name = 'id' value = '$answer[ID]' hidden />";
									echo "<input type='text' name = 'sub' value = '$answer[subject]' hidden />";
									echo "<input type='text' name = 'type' value = 'One' hidden />";
										
										echo "<select class = 'w3-select w3-round w3-border-green' name='class' required>";
											echo "<option value=''>Select Class</option>";
												while($count < $counting){
													echo "<option value='$classes[$count]'>$classes[$count]</option>";
													$count++;
												}
										echo "</select>";
										
										echo "<input type='text' name = 'forclass'  hidden />";
										
										
							
							echo "</form>";
					}
					
					
					echo "<script> 
							function myfunct(){
								var x = document.forms['myform']['class'].value;
								if(x == ''){
									alert('Class cannot be empty. Please select a class!');
								} else {
									myform.submit();
								}
							}
							
					</script>";
					
					
					die();
				}
			}
			if(($answer['username'] !== $username) || ($answer['password2'] !== $password)){
				
			
						echo "<h2>Unrecognised User, Incorrect Username or Password!</h2>";
						header("Refresh: 3, url=sub.php");
								
			}
			
		}


?>
		
</body>
</html>