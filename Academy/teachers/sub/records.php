<?php
	session_start();
	$id = $_SESSION['id'];
	$name = $_SESSION['username'];
	$type = $_SESSION['type'];
	$class = $_SESSION['class'];
	
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Ca & Exam Records:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
		
			@font-face{
						font-family: zipty;
						src: url(../../myfont/zipty.otf);
					}
					
			@font-face{
						font-family: Aulyars;
						src: url(../../myfont/Aulyars.otf);
					}
			body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
				
			}
			i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: teen;
		font-size: 2vw;
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
		h3{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
		}
		
		.all{
			margin-left: 33%;
			margin-top: 10%;
		}
		.all button{
			font-family: teen;
			width: 20%;
			text-align: center;
			padding: 1.5%;
			font-size: 1.1vw;
		}
		form{
			width: 32%;
			margin-left: 35%;
		}
		form select{
			background: white;
			cursor: pointer;
		}
		@media only screen and (max-width: 768px){
				#myhead h4{font-size: 2.5vw;}
				form{width: 98%; margin-left: 1%; font-size: 4vw;}
				.all{margin-left: 0; width: 100%;}
				.all button{width: 98%; margin-left: 1%; font-size: 4vw; margin-top: 1%;}
			}
		
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >CA & Exam Records</h1>
		</div>
		<?php
			include 'asidesub.php';
		?>
			
			<h3>Please select a term</h3>
			
			<div class="all">
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="record_1.php" '>1st Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="record_2.php" '>2nd Term</button>
				<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="record_3.php" '>3rd Term</button>
			</div>
			<br /><br />
<div id = "myhead" class = "w3-container w3-blue">
					
					<h1 id = 'changing' class = "w3-center" >Change Class</h1>
		</div>
		
		<h3 id = 'hide' >If a previously selected class has no members, change class here!</h3>
			<?php
		include '../../all_conn.php';
		include '../../teach_conn.php';
			if($type == "All"){
						echo "<br />";
					echo "<script> 
							let change = document.getElementById('changing').innerHTML='Change Subject';
							let hid = document.getElementById('hide').style.display = 'none';
					</script>";
				$new = strtolower(str_replace(" ", "", $class))."_subjects";
				$query = "SELECT `subfull` FROM `$new` ";
				$submit = mysqli_query($Son, $query);
				
				$allsub = mysqli_fetch_assoc($submit);
				$allsubjects = explode(",", $allsub['subfull']);
							
							echo " <form name = 'myform' onchange = 'myfunct()' action='../intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data'>";
									echo "<input type='text' name = 'name' value = '$name' hidden />";
									echo "<input type='text' name = 'id' value = '$id' hidden />";
									echo "<input type='text' name = 'class' value = '$class' hidden />";
									echo "<input type='text' name = 'type' value = 'All' hidden />";
										
										echo "<select class = 'w3-select w3-round w3-border-green' name='sub' required>";
											echo "<option value=''>Change Subject</option>";
												foreach($allsubjects as $all){
													echo "<option value='$all'>$all</option>";
												}
										echo "</select>";
									
							
							echo "</form>";
			}else{
				
				$query = "SELECT ID, name, username, password2, classes, subject FROM users_sub WHERE ID = '$id' ";
				$submit1 = mysqli_query($Father, $query);
				$submit2 = mysqli_query($Father, $query);
				
				
					while($answer = mysqli_fetch_assoc($submit2)){
						
							$classes = explode(",", $answer['classes']);
							$counting = count($classes);
							$count = 0;
							
							echo " <form name = 'myform' onchange = 'myfunct()' action='../intermediate_sub.php' method = 'POST' enctype = 'multipart/form-data'>";
									echo "<input type='text' name = 'name' value = '$answer[name]' hidden />";
									echo "<input type='text' name = 'id' value = '$answer[ID]' hidden />";
									echo "<input type='text' name = 'sub' value = '$answer[subject]' hidden />";
									echo "<input type='text' name = 'change' value = 'change' hidden />";
									echo "<input type='text' name = 'type' value = 'One' hidden />";
										
										echo "<select class = 'w3-select w3-round w3-border-green' name='class' required>";
											echo "<option value=''>Select Class</option>";
												while($count < $counting){
													echo "<option value='$classes[$count]'>$classes[$count]</option>";
													$count++;
												}
										echo "</select>";
								
					echo "</form>";
			}
					
			
				
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


?>

			
			
			
			
	
</body>
</html>