<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:2nd Term Comment:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			
			@font-face{
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
			@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
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

	form{
		margin-left: 40%;
		font-family: prestiji;
		width: 32%;
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
		text-align: center;
		color: white;
		font-family: Gabriola;
		font-size: 1.5vw;
	}
	h3 i{
		color: yellow;
	}
	form select{
		background: white;
		cursor: pointer;
	}
	@media only screen and (max-width: 768px){
			form{width: 90%; margin-left: 5%;}
			h3 i{font-size: 5vw;}

			}
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >2nd Term Result Comment</h1>
				</div>
							
			<?php include 'asideprincipal.php';?>
			
				<h3><i>Please Select Class!</i></h3> <br /><br />
		<form name = 'myform' action="prin_com_2_action.php" method = "POST"	enctype = "multipart/form-data">
			<select onchange = "myfunct()" name="class" class = "w3-input w3-border-green w3-round" required >
				<option value="">Select Class</option>
					<?php
					include '../all_conn.php';
						
						//selecting classes
						
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