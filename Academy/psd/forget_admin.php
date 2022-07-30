<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Admin Password Rcovery:.</title>
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
				background: url(../img/abstract.jpg) repeat;
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
		width: 23%;
		margin-left: 40%;
		font-family: prestiji;
		color: whitesmoke;
	}
	fieldset{
		background: #dbe1f2;
		opacity: .9;
		border-radius: 1%;
		border: none;
	}
	form fieldset i{
		margin-left: 22%;
	}
	form select{
		cursor: pointer;
		background: #ffffff;
	}
	legend{
		padding: 1%;
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
			<div id = "myhead" class = "w3-container w3-green" >
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../index.php', '_self')"></span>
					</div>
						<h1 class = "w3-center" > ADMIN PASSWORD RECOVERY </h1>
						<h3 class = "w3-center" > &emsp;Welcome, please select the user you want to recover his/her username and password! </h3>
					</div>
			
			
			<br /><br />
			
			<form name = "myform"  action="int.php" method = "POST" enctype = "multipart/form-data">
					<select  onchange = "myfunct()" class = "w3-select w3-border-green w3-round" name="user" required>
								<option value="">Select User</option>
								<option value="principal">Principal</option>
								<option value="admin">Admission Officer</option>
								<option value="bursar">Bursar</option>
								<option value="exams">Examination Officer</option>
					</select>
			
			</form>
			<script> 
					function myfunct(){
						myform.submit();
					}
			</script>
</body>
</html>