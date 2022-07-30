<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Password Reset Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css">
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/gabriola.ttf);
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
			h4{
				color:#2799ff; 
				text-align: center;
				font-size: 2vw;
				font-family: Gabriola;
			}
			@media only screen and (max-width: 768px){
				h2{font-size: 5vw; margin-top: 40%;}
				h4{font-size: 3vw; margin-top: 40%;}
			}
			
	</style>
</head>
<body>
	
</body>
</html>
<?php

	//Checking if necessary files exist.
	if(file_exists('palrinc.htpasswd') && file_exists('minad.htpasswd') && file_exists('sarbus.htpasswd') && file_exists('smaxe.htpasswd')){
							
				
	
			
			if(isset($_POST['newsub_princ'])){
							$oldprinc1 = $_POST['old_princ1'];
							$oldprinc2 = $_POST['old_princ2'];
							
							$principal = file('palrinc.htpasswd');
							 $principal1 = trim($principal[0]);
							 $principal2 = trim($principal[1]);
							 $principal3 = trim($principal[2]);
							 $principal4 = trim($principal[3]);

				
							if($oldprinc1 == $principal1 && $oldprinc2 == $principal2 ){
									$myfile = fopen('palrinc.htpasswd', 'w');
									fwrite($myfile, trim($_POST['new_princ1'])."\n");
									fwrite($myfile, trim($_POST['new_princ2'])."\n");
									fwrite($myfile,$principal3."\n");
									fwrite($myfile,$principal4);
									fclose($myfile);
									
									
								echo "<h2><strong>New Username and New Password Reset Successful!</strong></h2>";
								header("Refresh: 3, url = 'reset.php' ");
							}else{
								echo "<h2><strong>Old Username and Old Password for Principal did not match!</strong></h2>";
								header("Refresh: 3, url = 'reset.php' ");
							}
				
			}elseif(isset($_POST['newsub_admin'])){
							$oldadmin1 = $_POST['old_admin1'];
							$oldadmin2 = $_POST['old_admin2'];
							
							$admin = file('minad.htpasswd');
							$admin1 = trim($admin[0]);
							$admin2 = trim($admin[1]);
							$admin3 = trim($admin[2]);
							$admin4 = trim($admin[3]);
							
							if($oldadmin1 == $admin1 && $oldadmin2 == $admin2){
							$myfile = fopen('minad.htpasswd', 'w');
							fwrite($myfile, trim($_POST['new_admin1'])."\n");
							fwrite($myfile, trim($_POST['new_admin2'])."\n");
							fwrite($myfile, $admin3."\n");
							fwrite($myfile, $admin4);
							fclose($myfile);
							echo "<h2><strong>New Username and New Password Reset Successful!</strong></h2>";
							header("Refresh: 3, url = 'reset.php' ");
						}else{
							echo "<h2><strong>Old Username and Old Password for Admission Officer did not match!</strong></h2>"; 
							header("Refresh: 3, url = 'reset.php' ");
						}
				
			}elseif(isset($_POST['newsub_bus'])){
						$oldbus1 = $_POST['old_bus1'];
						$oldbus2 = $_POST['old_bus2'];
						
						$bursar = file('sarbus.htpasswd');
						$bursar1 = trim($bursar[0]);
						$bursar2 = trim($bursar[1]);
						$bursar3 = trim($bursar[2]);
						$bursar4 = trim($bursar[3]);
						
						if($oldbus1 == $bursar1 && $oldbus2 == $bursar2){
							$myfile = fopen('sarbus.htpasswd', 'w');
							fwrite($myfile, trim($_POST['new_bus1'])."\n");
							fwrite($myfile, trim($_POST['new_bus2'])."\n");
							fwrite($myfile,$bursar3."\n");
							fwrite($myfile,$bursar4);
							fclose($myfile);
							echo "<h2><strong>New Username and New Password Reset Successful!</strong></h2>";
							header("Refresh: 3, url = 'reset.php' ");
						}else{
									echo "<h2><strong>Old Password and Old Username for Bursar did not match!</strong></h2>";
									header("Refresh: 3, url = 'reset.php' ");
								}
						
			}elseif(isset($_POST['newsub_exam'])){
						$oldexam1 = $_POST['old_exam1'];
						$oldexam2 = $_POST['old_exam2'];
						
						$exam = file('smaxe.htpasswd');
						$exam1 = trim($exam[0]);
						$exam2 = trim($exam[1]);
						$exam3 = trim($exam[2]);
						$exam4 = trim($exam[3]);
						
						if($oldexam1 == $exam1 && $oldexam2 == $exam2){
							$myfile = fopen('smaxe.htpasswd', 'w');
							fwrite($myfile, trim($_POST['new_exam1'])."\n");
							fwrite($myfile, trim($_POST['new_exam2'])."\n");
							fwrite($myfile,$exam3."\n");
							fwrite($myfile,$exam4);
							fclose($myfile);
							echo "<h2><strong>New Username and New Password Reset Successful!</strong></h2>";
							header("Refresh: 3, url = 'reset.php' ");
						}else{
									echo "<h2><strong>Old Password and Old Username for Examination Officer did not match!</strong></h2>";
									header("Refresh: 3, url = 'reset.php' ");
								}
						
			}
			
	
			
	}else{
		echo "<h2><strong>Please, set Username and Password for the following user(s) first:  </strong></h2>";
		$a = "";
		if(!file_exists('palrinc.htpasswd')){
			if(!file_exists('minad.htpasswd') || !file_exists('sarbus.htpasswd') || !file_exists('smaxe.htpasswd')){
				$a = $a = "Principal, ";
			}else{
				$a = $a = "Principal";
			}
		}
		$b = "";
		if(!file_exists('minad.htpasswd')){
			if(!file_exists('sarbus.htpasswd') || !file_exists('smaxe.htpasswd')){
				$b = "Admission Officer, ";
			}else{
				$b = "Admission Officer";
			}
		}
		$c = "";
		if(!file_exists('sarbus.htpasswd')){
			if(!file_exists('smaxe.htpasswd')){
				$c = "Bursar, ";
			}else{
				$c = "Bursar";
			}
		}
		$d = "";
		if(!file_exists('smaxe.htpasswd')){
			$d = "Examination Officer";
		}
		
		
		$All = $a.$b.$c.$d;
		
		echo "<h4><em>$All</em></h4>";
		echo "<h2><strong>You will be redirected shortly...</strong></h2>";
		header("Refresh:5, url = 'set.php'");
	}
	
	
	
	
?>