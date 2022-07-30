<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>:Password Recovery:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
	@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(../../myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(../../myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(../../myfont/prestiji.otf);
					}
			body{
				background: url(../../img/abstract.jpg);
				background-size: cover;
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
		}
		h3 i{
			color: #ffffff;
			font-size: 2vw;
			font-family: teen;
		}
		form{
			width: 32%;
			margin-left: 35%;
		}
		select{
			font-family: teen;
			background: white;
			cursor: pointer;
		}
		.noprint button{
			margin-left: 45%;
			font-family: teen;
		}
		
		@media only screen and (max-width: 768px){
				form{width: 90%; margin-left: 5%;}
				#myhead h1{font-size: 3vw;}
				#myhead h3{font-size: 3vw;}
				.noprint button{margin-left: 30%;}
				
				
			}
	</style>
</head>
<body>
<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Subject Teacher Password Recovery</h1>
		</div>
	
		<h3>Please Select Subject Teacher</h3><br />
		
		<form name = 'myform' onchange = 'myfunct()' action = "recovery_sub.php" method = "POST" enctype = "multipart/form-data">
		<?php
				include '../../all_conn.php';
				
				$query = "SELECT ID, subject, name FROM users_sub ORDER BY name ASC" ;
				$submit_query = mysqli_query($Father, $query);
		
			echo "<select class = 'w3-select w3-round w3-border-green' name='user' required >";
					echo "<option value=''><b>Select User</b></option>";
					while($ans = mysqli_fetch_assoc($submit_query)){
						$name = $ans['name'];
						$id = $ans['ID'];
						$subject = $ans['subject'];
						
						echo "<option value='$id'>Name: $name &#10230; Subject: $subject</option>";
					}
			echo "</select>";
		
		?>
		
		</form>
		<br /><br />
		<div class="noprint"> 
				<button class = 'w3-button w3-green w3-hover-blue w3-round' onclick = "window.location.href='../sub.php'" >Previous Page</button>
			</div>
		
		<script>
			function myfunct(){
				var x = document.forms["myform"]["user"].value;
				if(x == ""){
					alert("Please Select a valid user first!");
				} else {
					myform.submit();
				}
			}
		</script>
	
</body>
</html>