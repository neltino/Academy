<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd term payment:.</title>
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
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
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
			margin-top: 5%;
		}
		h3 i{
			color: yellow;
			font-size: 2vw;
		}
		form{
			margin-left: 40%;
			width: 22%;
			font-family: teen;
		}
		form select{
			background: white;
			width: 80%;
			cursor: pointer;
		}
		
		@media only screen and (max-width: 768px){
				h3 i{font-size: 6vw;}
				form{width: 98%; margin-left: 1%;}
				
			}
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Payment</h1>
				</div>
			<?php include 'asidebursar.php';?>
			<div id="please">
					<h3><i>Please select a class</i></h3>
				</div>	
	
	<form name = "myform" action = "class_list2.php" method = "POST" enctype = "multipart/form-data">
				<select onchange = "myfunct()" class = "w3-select w3-border-green w3-round" name = "class" required >
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
	
	<script>
			function myfunct(){
				myform.submit();
			}
	</script>
	
	
	
	
</body>
</html>