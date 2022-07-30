<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Admission Officer's Domain:.</title>
	
	<style type="text/css">
		
		
		
		nav{
			margin-left: 30%;
		}
		nav button{
			width: 25%;
			font-family: prestiji;
			margin-top: 2%;
			font-size: 1.2vw;
			margin-left: 5%;
			text-align: center;
		}
		#grade{
			margin-left: 20%;
			
		}
		
		@media only screen and (max-width: 768px){
				nav button{font-size: 4vw; width: 98%; margin-left: 1%;}
				nav{margin-left:0; width:}	
				#grade{margin-left: 1%;}
			}
		
		
	
	</style>	
			
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('<?php echo $whereto;?>', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Admission Officer's Domain</h1>
			</div>
			<?php include 'admissions/asideadmin.php'; ?>
			<br />
			<br />
			<br />
	
	
		<nav>
			<button id = "class" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/basic_info.php'" >Basic Info</button> 
			<button id = "subject" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/register.php'" >Register Students</button> <br />
			<button id = "grade" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/delete.php'" >Delete Student</button> <br />
			<button id = "user" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/update.php'" >Update Students Info</button>
			<button id = "domain" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/admin_viewall.php'" > All Registered Students</button> <br />
			<button id = "broadsheet" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='../admissions/idcard.php'" >Print Student ID Card</button>
			<button id = "summary" class = "w3-button w3-blue w3-hover-green w3-round" onclick = "window.location.href='admissions/mass_action.php'" >Sessional Action</button>
	</nav>
	
</body>
</html>