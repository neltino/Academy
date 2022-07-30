<?php
	session_start();
	$id = $_SESSION['id'];
	include '../../all_conn.php';
	$details = "SELECT password2, question, answer FROM `users_sub` WHERE ID = '$id'";
	$details_query = mysqli_query($Father, $details);
	$value = mysqli_fetch_assoc($details_query);
?>


<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Change Password:.</title>
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
						font-family: cac;
						src: url(../../myfont/cac.ttf);
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
						font-family: zipty;
						src: url(../../myfont/zipty.otf);
					}
					@font-face{
						font-family: prestiji;
						src: url(../../myfont/prestiji.otf);
					}
			@font-face{
						font-family: Aulyars;
						src: url(../../myfont/Aulyars.otf);
					}
			body{
				background: url(../../img/abstract.jpg) no-repeat;
				background-size: cover;
				
			}
			i{
		color: whitesmoke;
		background: green;
		border-radius: 100px;
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
		color: gold;
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
			color: white;
			text-align: center;
			font-family: Gabriola;
		}
		h3 i{
			color: hotpink;
			font-size: 2vw;
			font-family: teen;
		}
		form{
			margin-left: 30%;
			width: 40%;
		}
		input[type=text]{
			font-family: teen;
			background: radial-gradient(#ffffff, #b2d5e4);
		}
		label{
			color: #0000d9;
			font-family: Gabriola;
			font-size: 1.4vw;
		}
		legend{
			color: white;
			background: #4caf50;
			padding: 1%;
			font-family: teen;
			border-radius: 5px;
		}
		fieldset{
			background: whitesmoke;
			border-radius: 2%;
		}
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		ol{
			margin-left: 25%;
			font-family: teen;
			font-size: 1.1vw;
			color: yellow;
		}
		h3 u{
			color: yellow;
		}
		@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 1%; margin-top: 5%;}
				form label{font-size: 5vw;}
				ol{font-size: 4vw; margin-left: 5%;}
			}
		
	</style>
</head>
<body>
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Change Password</h1>
					 
					
		</div>
		
		<?php
			include 'asidesub.php';
		?>
		<br />
			<form action="update_pass_action.php" method = "POST" enctype = "multipart/form-data">
				<fieldset> 
						<legend>Update Password</legend>
						<input type="text" name = 'id' value = "<?php echo $id;?>" hidden />
						<label for="new">Type New Password:</label>
						<input class = "w3-input w3-round w3-border-green"  type="text" name = 'new1' required placeholder = " Type New password" value = '<?php echo $value['password2'];?>' autocomplete=off /> 
						<label for="new2">Retype New Password:</label>
						<input class = "w3-input w3-round w3-border-green" type="text" name = 'new2' required placeholder = " Retype New password" value = '<?php echo $value['password2'];?>' autocomplete=off /> 
						
						<label for="qestion">Type Secrete Question:</label>
						<input class = "w3-input w3-round w3-border-green" type="text" name = "question" required  placeholder = " e.g. What happened on October 21st" value = '<?php echo $value['question'];?>' autocomplete=off />
						<label for="answer">Supply the answer to the Question Above</label>
						<input class = "w3-input w3-round w3-border-green" type="text" name = "answer"  required placeholder = " e.g. employed" value = '<?php echo $value['answer'];?>' autocomplete=off /> 
						<br />
						<input class = "w3-input w3-green w3-round w3-hover-blue" type="submit"  /> 
						
				
				</fieldset>
			
			</form>
			<br />
			<h3><u>Security Tips</u></h3>
				<ol>
					<li>Your password should be <i><u>'one-word'</u></i> containing NO space.</li>
					<li>Your password should contain letters and numbers.</li>
					<li>Your security question should NOT be information available to the public. e.g. year of birth, child's tribal name, etc.</li>
					<li>Your password is case-sensitive; small letters are NOT the same as capital letters!</li>
			
				</ol>
				<br /><br />
</body>
</html>