<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:1st Term Broadsheets:.</title>
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
				background: url(../img/abstract.jpg) no-repeat;
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
	.home{
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
		width: 20%;
		margin-left: 38%;
		
	}
	form select{
		margin-left: 15%;
		font-family: teen;
		background: white;
		cursor: pointer;
	}
	@media only screen and (max-width: 768px){
			form{width: 98%; margin-left: 1%;}
			form select{margin-left: 0;}
			h3 i{font-size: 6vw;}
			}
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >1st Term Broadsheet</h1>
				</div>
			<?php include 'asideexams.php';?>

			<h3><i>Please select class!</i></h3>
			<form name = "myform" action="broad_first.php" method = "POST"	enctype = "multipart/form-data">
			
				<select onchange = "myfunct()" class = "w3-select w3-round w3-border-green" name="class" required >
					<option value="">Select Class</option>
					<?php
						include '../all_conn.php';
						$query = "SELECT classes FROM classes ORDER BY classes ASC";
						$submit1 = mysqli_query($Father, $query);
						$submit2 = mysqli_query($Father, $query);
						if(mysqli_fetch_assoc($submit1) == NULL){
							echo "<option value=''>No Class Created Yet</option>";
						}else{
							while($answer=mysqli_fetch_assoc($submit2)){
								echo "<option value='$answer[classes]'>$answer[classes]</option>";
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