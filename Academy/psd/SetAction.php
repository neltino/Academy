<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Password Set Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			
			body{
				background: #f0f0f0;
			}
			h2{
				color:#e60012; 
				text-align: center;
				font-size: 2vw;
				font-family: teen;
			}
			
			@media only screen and (max-width: 768px){
				h2{font-size: 5vw; margin-top: 40%;}
			
			}
			
	</style>
</head>
<body>
	
</body>
</html>
<?php
	if(isset($_POST['sub_princ'])){
		if(file_exists('palrinc.htpasswd')){
			echo "<h2><strong>Password has already been set for this user. Please Login or go to Reset Password!</strong></h2>";
			header('Refresh: 3, url="set.php"');
		} else{
			$myfile = fopen('palrinc.htpasswd', 'w');
			fwrite($myfile, trim($_POST['princ'])."\n");
			fwrite($myfile, trim($_POST['princ_pass'])."\n");
			fwrite($myfile, trim($_POST['quest'])."\n");
			fwrite($myfile, trim($_POST['answer']));
			fclose($myfile);
			
			echo "<h2> <strong>Username and Password for Principal successfully created! </strong></h2>";
			header('Refresh: 3, url="set.php"');
		}
	}

	
	if(isset($_POST['sub_admin'])){
		if(file_exists('minad.htpasswd')){
			echo "<h2><strong>Password has already been set for this user. Please Login or go to Reset Password!</strong></h2>";
			header('Refresh: 3, url="set.php"');
		} else{
			$myfile = fopen('minad.htpasswd', 'w');
			fwrite($myfile, trim($_POST['admin'])."\n");
			fwrite($myfile, trim($_POST['admin_pass'])."\n");
			fwrite($myfile, trim($_POST['quest'])."\n");
			fwrite($myfile, trim($_POST['answer']));
			fclose($myfile);
			
			echo "<h2> <strong>Username and Password for Admission Officer successfully created! </strong></h2>";
			header('Refresh: 3, url="set.php"');
		}
	}
	
	
	if(isset($_POST['sub_bus'])){
		if(file_exists('sarbus.htpasswd')){
			echo "<h2><strong>Password has already been set for this user. Please Login or go to Reset Password!</strong></h2>";
			header('Refresh: 3, url="set.php"');
		} else{
			$myfile = fopen('sarbus.htpasswd', 'w');
			fwrite($myfile, trim($_POST['bus'])."\n");
			fwrite($myfile, trim($_POST['bus_pass'])."\n");
			fwrite($myfile, trim($_POST['quest'])."\n");
			fwrite($myfile, trim($_POST['answer']));
			fclose($myfile);
			
			echo "<h2> <strong>Username and Password Bursar successfully created! </strong></h2>";
			header('Refresh: 3, url="set.php"');
		}
	}
	
	if(isset($_POST['sub_exams'])){
		if(file_exists('smaxe.htpasswd')){
			echo "<h2><strong>Password has already been set for this user. Please Login or goto Reset Password!</strong></h2>";
			header('Refresh: 3, url="set.php"');
		} else{
			$myfile = fopen('smaxe.htpasswd', 'w');
			fwrite($myfile, trim($_POST['exams'])."\n");
			fwrite($myfile, trim($_POST['exams_pass'])."\n");
			fwrite($myfile, trim($_POST['quest'])."\n");
			fwrite($myfile, trim($_POST['answer']));
			fclose($myfile);
			
			echo "<h2> <strong>Username and Password for Examination Officer successfully created! </strong></h2>";
			header('Refresh: 3, url="set.php"');
		}
	}

	
	
?>