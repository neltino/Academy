<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Form Teacher's Login:.</title>
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
					
					
		body{
				background: url(../img/study.png) repeat;
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
		width: 22%;
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
		margin-left: 25%;
		font-size: 10vw;
	}
	legend{
		padding: 1%;
	}
	.forget{
		font-family: prestiji;
		margin-left: 46%;
		color: #ffffff;
	}
	.forget span:hover{
		cursor: pointer;
		color: lawngreen;
	}
	form input[type=submit]{
		cursor: pointer;
	}
	form small{
		font-family: teen;
		color: #e08374;
		float: left;
		cursor: pointer;
		margin-left: 88%;
		margin-top: -10%;
		background: #ffffff;
		position: relative;
	}
	form small:hover{
		color: #2196f3;
	}
	@media only screen and (max-width: 768px){
				form{width: 90%; margin-left: 5%;}
				#myhead h1, #myhead h3{font-size: 5vw;}
				.forget{color: #4caf50; margin-left: 37%;}
				form fieldset i{font-size: 40vw;}
				
			}
	
	</style>
</head>
<body>
				<div id = "myhead" class = "w3-container w3-green" >
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../index.php', '_self')"></span>
					</div>
						<h1 class = "w3-center" > FORM TEACHERS' LOGIN </h1>
						<h3 class = "w3-center" > &emsp;Welcome, please login! </h3>
					</div>
			
			
			<br /><br />
			
			
		<form action="login_form_action.php" method = "POST" enctype = "multipart/form-data">
		<fieldset>
		<legend class = "w3-green w3-round">Login Details</legend>
							<i class = "fas fa-user-circle"></i>
			<br />
			<br />
		
		<input  class = "w3-input w3-round w3-border-green" placeholder = "username" name = "username" type="text" required autocomplete="off" autofocus />
		<br />
		
		
		<input id = 'mypass' class = "w3-input w3-round w3-border-green" placeholder = "password" name = "password" type="password" required /> <small id = 'show' onclick = "showfunct()">Show</small>
		<br />
		
		<input class = "w3-input w3-green w3-round w3-hover-blue" type="submit" value = "Login"/>

		</fieldset>
		</form>
		<div class="forget"> 
					<span onclick = "window.open('form/forget_form.php', '_self')">Forget password?</span>
		</div>
			

		<script>
					function showfunct(){
						show = document.getElementById('show').innerHTML;
						if(show == 'Show'){
							show = document.getElementById('show').innerHTML = 'Hide';
							disp = document.getElementById('mypass').type='text';
						}else{
							show = document.getElementById('show').innerHTML = 'Show';
							disp = document.getElementById('mypass').type='password';
						}
					}
			
		</script>
		
</body>
</html>