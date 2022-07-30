<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Recovery Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		@font-face{
						font-family: cac;
						src: url(../myfont/cac.ttf);
					}		
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
				background: url(../img/abstract.jpg) no-repeat;
				background-size: cover;
				//background-position: center;
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
	#myhead h3{
		font-family: cac;
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
		width: 32%;
		margin-left: 40%;
		font-family: prestiji;
		color: whitesmoke;
	}
	fieldset{
		background: #dbe1f2;
		opacity: .9;
		border-radius: 2%;
		border: none;
	}
	form fieldset i{
		margin-left: 5%;
	}
	legend{
		padding: 1%;
	}
	input[type=submit]{
		font-family: prestiji;
		background: green;
		border-radius: 1%;
		color: whitesmoke;
		border: none;
	}
	input[type=submit]:hover{
		cursor: pointer;
		background: blue;
	}
	.things{
		text-align: center;
		
	}
	.things h4, h5{
		color: red;
		font-family: prestiji;
	}
	.things button{
		margin-left: 10%;
		font-family: prestiji;
		border: none;
		border-radius: 5%;
		background: green;
		color: whitesmoke;
		padding: 1% 2%;
	}
	.things button:hover{
		background: blue;
	}
	.things i{
		background: none;
		color: blue;
	}
	h2{
		font-family: Gabriola;
	}
	
	@media only screen and (max-width: 768px){
				form{width: 90%; margin-left: 5%;}
				#myhead h1{font-size: 4vw;}
				#myhead h3{font-size: 3vw;}
				.forget{ margin-left: 37%;}
				form fieldset i{font-size: 40vw;}
				
			}
	
	</style>
</head>
<body>
		<?php
		session_start();
		$uzer = $_SESSION['duser'];
	
		
	
								
					if($uzer == "principal" ){
						echo "<body style = 'background: #f0f0f0;'></body>";
						if(file_exists('palrinc.htpasswd')){
							$user = "Principal";
							$myfile = file('palrinc.htpasswd');
							$quest = $myfile[2];
							$ans = trim($myfile[3]);
							$tin1 = trim($myfile[0]);
							$tin2 = trim($myfile[1]);
							
							
									echo '<div id = "myhead" class = "w3-container w3-green" >';
													echo '<div class = "home">';
																echo '<span class = "fas fa-home fa-4x" onclick = "window.open(`../index.php`, `_self`)"></span>';
													echo '</div>';
													echo '<h1 class = "w3-center" > SECURITY QUESTION </h1>';
													echo '<h3 class = "w3-center" > &emsp;Please supply the answer to the following security question: </h3>';
										echo '</div>';
										echo '<h3 style = "text-align:center; color:blue; font-family: prestiji;">'.$quest.'</h3>';
										echo '<br />';
										echo '<form action="" method = "POST" enctype = "multipart/form-data">';
								
													echo '<input class = "w3-input w3-round w3-border-green" placeholder = "your answer here!"type="text" name = "myanswer" required autocomplete = "off" />';
													echo '<br /> ';
													echo '<input class = "w3-input" type="submit" />';
										echo '</form>';
										if(isset($_POST['myanswer'])){
											if($_POST['myanswer'] == $ans){
												echo "<div class = 'things'>";
															echo "<h4>Congratulations!</h4>";
															echo "<h5>Your Username is <i>$tin1</i></h5>";
															echo "<h5>Your Password is <i>$tin2</i></h5>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Login</button>";
												echo "</div>";
												
											}else{
												echo "<div class='things'>";
															echo "<h4>Incorrect Answer! Try Again</h4>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Logout</button>";
												echo "</div>";
											}
										}
							
							
						}else{
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>The Username and Password for Principal does not exist, please create user!  </strong></h2>";
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>You will be redirected shortly...</strong></h2>";
						header("Refresh:5, url = 'set.php'");
						die();
						}
					}
					if($uzer == "admin"){
						echo "<body style = 'background: #f0f0f0;'></body>";
						if(file_exists('minad.htpasswd')){
							$user = "Admission Officer";
						$myfile = file('minad.htpasswd');
						$quest = $myfile[2];
						$ans = trim($myfile[3]);
						$tin1 = trim($myfile[0]);
						$tin2 = trim($myfile[1]);
							
							
									echo '<div id = "myhead" class = "w3-container w3-green" >';
													echo '<div class = "home">';
																echo '<span class = "fas fa-home fa-4x" onclick = "window.open(`../index.php`, `_self`)"></span>';
													echo '</div>';
													echo '<h1 class = "w3-center" > SECURITY QUESTION </h1>';
													echo '<h3 class = "w3-center" > &emsp;Please supply the answer to the following security question: </h3>';
										echo '</div>';
										echo '<h3 style = "text-align:center; color:blue; font-family: prestiji;">'.$quest.'</h3>';
										echo '<br />';
										echo '<form action="" method = "POST" enctype = "multipart/form-data">';
								
													echo '<input class = "w3-input w3-round w3-border-green" placeholder = "your answer here!"type="text" name = "myanswer" required autocomplete = "off"/>';
													echo '<br /> ';
													echo '<input class = "w3-input" type="submit" />';
										echo '</form>';
										if(isset($_POST['myanswer'])){
											if($_POST['myanswer'] == $ans){
												echo "<div class = 'things'>";
															echo "<h4>Congratulations!</h4>";
															echo "<h5>Your Username is <i>$tin1</i></h5>";
															echo "<h5>Your Password is <i>$tin2</i></h5>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Login</button>";
												echo "</div>";
												
											}else{
												echo "<div class='things'>";
															echo "<h4>Incorrect Answer! Try Again</h4>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Logout</button>";
												echo "</div>";
											}
										}
							
						}else{
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>The Username and Password for Admission Officer does not exist, please create user!  </strong></h2>";
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>You will be redirected shortly...</strong></h2>";
						header("Refresh:5, url = 'set.php'");
						die();
						}
					}
					
					if($uzer == "bursar" ){
						echo "<body style = 'background: #f0f0f0;'></body>";
						if(file_exists('sarbus.htpasswd')){
							$user = "Bursar";
							$myfile = file('sarbus.htpasswd');
							$quest = $myfile[2];
							$ans = trim($myfile[3]);
							$tin1 = trim($myfile[0]);
							$tin2 = trim($myfile[1]);
							
							
									echo '<div id = "myhead" class = "w3-container w3-green" >';
													echo '<div class = "home">';
																echo '<span class = "fas fa-home fa-4x" onclick = "window.open(`../index.php`, `_self`)"></span>';
													echo '</div>';
													echo '<h1 class = "w3-center" > SECURITY QUESTION </h1>';
													echo '<h3 class = "w3-center" > &emsp;Please supply the answer to the following security question: </h3>';
										echo '</div>';
										echo '<h3 style = "text-align:center; color:blue; font-family: prestiji;">'.$quest.'</h3>';
										echo '<br />';
										echo '<form action="" method = "POST" enctype = "multipart/form-data">';
								
													echo '<input class = "w3-input w3-round w3-border-green" placeholder = "your answer here!"type="text" name = "myanswer" required autocomplete = "off" />';
													echo '<br /> ';
													echo '<input class = "w3-input" type="submit" />';
										echo '</form>';
										if(isset($_POST['myanswer'])){
											if($_POST['myanswer'] == $ans){
												echo "<div class = 'things'>";
															echo "<h4>Congratulations!</h4>";
															echo "<h5>Your Username is <i>$tin1</i></h5>";
															echo "<h5>Your Password is <i>$tin2</i></h5>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Login</button>";
												echo "</div>";
												
											}else{
												echo "<div class='things'>";
															echo "<h4>Incorrect Answer! Try Again</h4>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Logout</button>";
												echo "</div>";
											}
										}
							
						}else{
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>The Username and Password for Bursar does not exist, please create user!  </strong></h2>";
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>You will be redirected shortly...</strong></h2>";
						header("Refresh:5, url = 'set.php'");
						die();
						}
					}
					if($uzer == "exams" ){
						echo "<body style = 'background: #f0f0f0;'></body>";
						if(file_exists('smaxe.htpasswd')){
							$user = "Examination Officer";
							$myfile = file('smaxe.htpasswd');
							$quest = $myfile[2];
							$ans = trim($myfile[3]);
							$tin1 = trim($myfile[0]);
							$tin2 = trim($myfile[1]);
							
							
									echo '<div id = "myhead" class = "w3-container w3-green" >';
													echo '<div class = "home">';
																echo '<span class = "fas fa-home fa-4x" onclick = "window.open(`../index.php`, `_self`)"></span>';
													echo '</div>';
													echo '<h1 class = "w3-center" > SECURITY QUESTION </h1>';
													echo '<h3 class = "w3-center" > &emsp;Please supply the answer to the following security question: </h3>';
										echo '</div>';
										echo '<h3 style = "text-align:center; color:blue; font-family: prestiji;">'.$quest.'</h3>';
										echo '<br />';
										echo '<form action="" method = "POST" enctype = "multipart/form-data">';
								
													echo '<input class = "w3-input w3-round w3-border-green" placeholder = "your answer here!"type="text" name = "myanswer" required autocomplete = "off" />';
													echo '<br /> ';
													echo '<input class = "w3-input" type="submit" />';
										echo '</form>';
										if(isset($_POST['myanswer'])){
											if($_POST['myanswer'] == $ans){
												echo "<div class = 'things'>";
															echo "<h4>Congratulations!</h4>";
															echo "<h5>Your Username is <i>$tin1</i></h5>";
															echo "<h5>Your Password is <i>$tin2</i></h5>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Login</button>";
												echo "</div>";
												
											}else{
												echo "<div class='things'>";
															echo "<h4>Incorrect Answer! Try Again</h4>";
															echo "<button onclick = 'window.open(`../outlog.php`, `_parent`)'>Logout</button>";
												echo "</div>";
											}
										}
							
						}else{
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>The Username and Password for Examination Officer does not exist, please create user!  </strong></h2>";
						echo "<h2 style = 'color:#e60012; text-align: center;'><strong>You will be redirected shortly...</strong></h2>";
						header("Refresh:5, url = 'set.php'");
						die();
						}
					}
				

		
										
		
?>

		
			
</body>
</html>
