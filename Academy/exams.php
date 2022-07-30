<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Examination Officer's Domain</title>
		<style type="text/css">
	
		nav{
			margin-left: 5%;
		}
		nav button{
			width: 25%;
			font-family: prestiji;
			margin-top: 2%;
			font-size: 1.2vw;
			margin-left: 5%;
			text-align: center;
		}
		nav button:last-child{
			margin-left: 35.5%;
			
		}
		
		@media only screen and (max-width: 768px){
				nav button{font-size: 4vw; width: 98%; margin-left: 1%;}
				nav{margin-left:0; width:}
				nav button:last-child{margin-left: 1%;}
				
			}
				
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('<?php echo $whereto;?>', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Examination Officer's Domain</h1>
			</div>
			<?php include 'exams/asideexams.php'; ?>
			<br />
			<br />
			<br />
	<nav>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/info_exams.php"' >Exam Info</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/classes.php"' >Create Classes</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/subjects.php"' >Create Subjects</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/users.php"' >Create Users</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/domains.php"' >Psychomotor/Affective Domains</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/broad.php"' >Broadsheets</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="exams/summary.php"' >Speech & Prize</button>
	</nav>
	
	
</body>
</html>