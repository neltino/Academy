<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Password Reset:.</title>
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
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
		@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
		body{
				background: #f0f0f0;
				font-family: gabriola;
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
		font-size: 3vw;
	}
	form{
		width: 17%; 
		font-size: 1.1vw;
	}
		.bus{
			float: left;
			margin-left: 4%;
		}
		
		.prince{
			float: left;
			margin-left: 10%;
		}
		
		.admin{
			float: left;
			margin-left: 4%;
		}
		.exams{
			float: left;
			margin-left: 4%;
		}
		.tips{
			color:#ffff00;
			margin-top: 22%;
			margin-left: 10%;
			font-family: teen;
			text-align: justify;
			font-size: 1vw;
			width: 90%;
		}
		.tips h4{
			font-family: prestiji;
			text-align: center;
			margin-left: 0;
		}
		ol{margin-left: 20%;}
	
	.home span{
		float: left;
		color: whitesmoke;
	}
	.home span:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
	
	fieldset{
		background: #9cc7e1;
		opacity: 0.9;
		border-radius: 5px;
		border: none;
	}
	legend{
		background: #4caf50;
		border-radius: 5px;
		padding: 2px;
		color: whitesmoke;
		font-size: 1.2vw;
		width: 90%;
		text-align: center;
	}
	input[placeholder]{
		font-weight: bold;
	}
	input[type=submit]{
		cursor: pointer;
	}
	
	@media only screen and (max-width: 768px){
		#myhead h1{font-size: 4vw;}
		p strong h4{font-size: 5vw;}
		form{width: 98%; font-size: 5vw; margin-top: 1%;}
		.prince, .bus, .admin, .exams{margin-left: 1%;}
		.tips{width: 98%; margin-left: 1%;}
		.tips ol li{font-size: 4vw;}
		form legend{font-size: 5vw;}
		ol{font-size: 3vw; margin-left: 0; width:100%}
		input[type=submit]{font-size: 5vw;}
			}
	
	
	</style>
	<title>.:Password Reset:.</title>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-green" >
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../index.php', '_self')"></span>
							<h1 class = "w3-center">RESET PASSWORD</h1>
					</div>
						
			</div>
			<br />
	<form class = "prince"action="ResetAction.php" method = "POST" enctype = "multipart/form-data">
		<fieldset> 
			<legend>Principal's</legend>
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Username" type="text" name = "old_princ1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Password" type="password" name = "old_princ2" required /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Username" type="text" name = "new_princ1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Password" type="password" name = "new_princ2" required /> <br />
			<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit" name = "newsub_princ"/>
			
		
		</fieldset>
		
	</form>
	
	
	<form class = "admin" action="ResetAction.php" method = "POST" enctype = "multipart/form-data">
		<fieldset> 
			<legend>Admission Officer's</legend>
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Username" type="text" name = "old_admin1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Password" type="password" name = "old_admin2" required /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Username" type="text" name = "new_admin1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Password" type="password" name = "new_admin2" required /> <br />
			<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  name = "newsub_admin"/>
			
		
		</fieldset>
		
	</form>
	
	<form class = "exams" action="ResetAction.php" method = "POST" enctype = "multipart/form-data">
		<fieldset> 
			<legend>Examination Officer's</legend>
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Username" type="text" name = "old_exam1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Password" type="password" name = "old_exam2" required /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Username" type="text" name = "new_exam1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Password" type="password" name = "new_exam2" required /> <br />
			<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  name = "newsub_exam"/>
		
		</fieldset>
		
	</form>
	
	
	<form class = "bus" action="ResetAction.php" method = "POST" enctype = "multipart/form-data">
		<fieldset> 
			<legend>Bursar's</legend>
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Username" type="text" name = "old_bus1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "Old Password" type="password" name = "old_bus2" required /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Username" type="text" name = "new_bus1" required autocomplete="off" /> <br />
			
			<input class = "w3-input w3-round w3-border-green" placeholder = "New Password" type="password" name = "new_bus2" required /> <br />
			<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  name = "newsub_bus"/>
			
		
		</fieldset>
		
	</form>
	
	
	
		<br /><br /> <br /><br />
	
	<div class = "tips">
			<h4><u>Password Security Tips</u></h4>
			<ol> 
				<li>Don't let your browser 'remember' (that is, save) your username and password.</li>
				<li>Avoid using your information available to the public as password. e.g. phone number, date of birth, nickname, etc.</li>
				<li>Don't write/store your username and password where others can assess it. e.g. paper, on phone, etc.</li>
				<li>Do not include <em><u>'space'</u></em> in your username or password.</li>
				<li>Your username and Password are case-sensitive (that is, capital letters are different from small letters).</li>
				<li>Advisably, mix letters and numbers for stronger password. </li>
				<li>Advisably, change your username and/or password regularly(say, monthly).</li>
				<li>Lastly, the longer your password, the harder to guess!</li>
			</ol>
	</div>
	
	
	</body>
</html>