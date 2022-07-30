<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Logout:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			body{
				background: #f0f0f0;
			}
			h3{
				text-align: center;
				color: red;
				font-size: 2vw;
			}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			h3{
				margin-top: 5%;
				font-size:2vw;
				font-family: teen;
			}
			form{
				width: 20%;
				font-family: teen;
				margin-left: 40%;
			}
			form input[type=submit]{
				margin-top: 1%;
				cursor: pointer;
			}
			
			@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 1%;}
				h3{font-size: 4vw;}
			}
			
			
	</style>
</head>
<body>
			<h3>Would You Like to Backup before you logout?</h3>
			
			<form action="" method = "POST" enctype = "multipart/form-data">
				
				<div class = "yes">
						<input class = 'w3-input w3-round w3-green w3-hover-blue' type="submit" name = "Yes" value = "Yes"/>
						<input class = 'w3-input w3-round w3-green w3-hover-blue' type="submit" name = "No" value = "No"/>
				</div>
				
		
		</form>
		
		
			<?php
		
		if(isset($_POST['Yes'])){
			
			
			$mydate = date('l');
			
							$date = date('d-m-Y');
							$file = "_backup";
							
							passthru('C:\xampp\mysql\bin\mysqldump --login-path=hostalias academy --hex-blob>'.$date."_academy".$file.'.sql');
							
							passthru('C:\xampp\mysql\bin\mysqldump --login-path=hostalias teachers --hex-blob>'.$date."_teachers".$file.'.sql');
							
							passthru('C:\xampp\mysql\bin\mysqldump --login-path=hostalias subjects --hex-blob>'.$date."_subjects".$file.'.sql');
							
							
							header('Location: ../index.php');
							
		}elseif(isset($_POST['No'])){
			header('Location: ../index.php');
		}

?>

</body>
</html>