<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Principal's Domain:.</title>
	<link rel="icon" href="img/soft.png" />
	
	<style type="text/css">
	
		nav{
				margin-left: 30%;
				font-family: prestiji;
			}
			nav button{
				width: 20%;
				margin: 3%;
			}
			#mid{
				margin-left: 15%;
			}
			
		@media only screen and (max-width: 768px){
			nav button{font-size: 4vw; width: 98%; margin-left: 1%;}
			nav{margin-left:0; width:}	
			#mid{margin-left: 1%;}
			#myhead h1{font-size: 10vw;}
			}
			
			
			
	</style>
			
		
			
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('<?php echo $whereto;?>', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Principal's Domain</h1>
			</div>
			<?php include 'principal/asideprincipal.php'; ?>
			<br />
			<br />
			<br />
	
	<nav>
	 
			 <button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.open('principal/info.php', '_parent')" >School Info</button>
			 <button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.open('principal/comment.php', '_parent')" >Comments</button> <br />
			 <button id = "mid" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.open('principal/phone_report.php', '_parent')" >Phone Contacts</button> <br />
			 <button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.open('principal/admissions_report.php', '_parent')" >Admissions</button>
			 <button class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.open('principal/accounts_report.php', '_parent')" >Accounts</button>
	 

	
	</nav>
</body>
</html>
