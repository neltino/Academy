<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Single ID Card:.</title>
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
			margin-left: 40%;
			margin-top: 0px;
			font-family: teen;
		}
	select{
		max-width: 35%;
		margin-top: 10%;
		background: white;
		cursor: pointer;
	}

	h3{
		text-align: center;
		font-family: Gabriola;
		font-size: 2vw;
	}
	h3 i{
		color: yellow;
		font-size: 2vw;
	}
	@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			select{min-width: 100%; }
			h3 i{font-size: 5vw;}
			}
	
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Single Student ID Card</h1>
				</div>
			<?php include 'asideadmin.php';?>
			<div id="please">
					<h3><i>Please select a class:</i></h3>
				</div>	
	
	<form name = "myform" action = "singling.php" method = "POST" enctype = "multipart/form-data">
				<select onchange = "myfunct()" class = "w3-select w3-round w3-border-green" name = "class" required >
						<option value="" >Select a Class</option>
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
				
	</form> 
	<br /><br /> 
			
	
	<script>
			function myfunct(){
				myform.submit();
			}
	</script>
	
</body>
</html>