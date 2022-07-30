<?php
	session_start();
		include 'all_conn.php';
		$database = "CREATE DATABASE IF NOT EXISTS `academy` ";
		$db_query = mysqli_query($Father, $database);
	
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Welcome:.</title>
	<link rel="icon" href="img/soft.png" />
	<link href = "w3/w3css.css" rel = "stylesheet" >
	<link href = "css/all.css" rel = "stylesheet" >
	<style type="text/css">
	body{
				background:url(../img/scott.jpg) repeat;
				
				background-position: center;
			
		}
					
					@font-face{
						font-family: Gabriola;
						src: url(myfont/Gabriola.ttf);
					}
					@font-face{
						font-family: teen;
						src: url(myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Quentin;
						src: url(myfont/Quentin.ttf);
					}
					@font-face{
						font-family: blue;
						src: url(myfont/blue.ttf);
					}
					
					@font-face{
						font-family: elder;
						src: url(myfont/elder.ttf);
					}
					
					@font-face{
						font-family: evident;
						src: url(myfont/Evident.otf);
					}
					
					@font-face{
						font-family: cameo;
						src: url(myfont/cameo.ttf);
					}
					
					@font-face{
						font-family: caboge;
						src: url(myfont/caboge.otf);
					}
					@font-face{
						font-family: cac;
						src: url(myfont/cac.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(myfont/prestiji.otf);
					}
		

	#myhead h1{
		font-family: blue;
		font-size: 3vw;
	}
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
	
	
	
					
	
	</style>
</head>
<body>
	
	<?php
	
		if(isset($_POST['change'])){
			$whereto ="backup/db_backup.php";
				
			}else{
				$whereto = "outlog.php";
			}
		
	// Checking date for correct transaction. The minimum date is 1st July, 2017.
	
		$crnt = time();
		
	if($crnt < 1530396000){
		echo "<strong><h1 style = 'color: #e60012; text-align: center; font-family: Gabriola; font-size: 32pt;'>Your date and time is  incorrect, please reset to proceed!</h1></strong>";
		echo "<strong><h1 style = 'color: #e60012; text-align: center; font-family: Gabriola; font-size: 32pt;'>If you see this message each time you attempt to login, have your technician change your CMOS Battery!</h1></strong>";
	} else{
		
				
				
				if($crnt > 1598911200){
					echo "<h1 style = 'color:#ef3939; text-align: center; font-family: Gabriola; font-size: 32pt;'>Sorry, this software is out of date!</h1>";
				echo "<h3 style = 'color:#ef3939; text-align: center; font-family: Gabriola; font-size: 32pt;'>Please, contact 08106279274 for upgrade and reset!</h3>";
				}else{
		
		
		
			// Checking if Login Details are set				
					if(file_exists('psd/palrinc.htpasswd') && file_exists('psd/minad.htpasswd') && file_exists('psd/sarbus.htpasswd') && file_exists('psd/smaxe.htpasswd')){
						
							$username = $_SESSION['username'];
							$password = $_SESSION['password'];
							
							$principal = file('psd/palrinc.htpasswd');
							$principal1 = trim($principal[0]);
							$principal2 = trim($principal[1]);
							
							$admin = file('psd/minad.htpasswd');
							$admin1 = trim($admin[0]);
							$admin2 = trim($admin[1]);
							
							$bursar = file('psd/sarbus.htpasswd');
							$bursar1 = trim($bursar[0]);
							$bursar2 = trim($bursar[1]);
							
							$exams = file('psd/smaxe.htpasswd');
							$exams1 = trim($exams[0]);
							$exams2 = trim($exams[1]);
							
			//Checking & Determining who logs In
							if($username == $principal1 && $password == $principal2 ){
								$checker = "";
								include 'principal.php';
								
								
								
							}elseif($username == $admin1 && $password == $admin2){
								$checker = "";
								include 'admissions.php';
								
								
							}elseif($username == $bursar1 && $password == $bursar2){
								$checker = "";
								include 'bursar.php';
								
								
							}elseif($username == $exams1 && $password == $exams2){
								$checker = "";
								include 'exams.php';
								$user = "exams";
								
								
							}else{
								echo "<h2 style = 'color:#e60012; text-align: center; font-family: Gabriola; font-size: 32pt;'>Incorrect Username or Password. <br /> Please Try Again!</h2>";
								header("Refresh: 3, url='myindex.php'");
								
							}
							 if(isset($user)){
									if(!isset($_POST['change'])){
										echo "<form name = 'feeds' action='' method = 'POST' enctype = 'multipart/form-data'>";
											echo "<input type='text' name = 'change' value = 'exams' hidden />";
									echo "</form>";
									}
								 
								 echo "<script type='text/javascript'>";
										echo "function submitform(){feeds.submit()}";
								echo "</script>";
								echo "<script type='text/javascript'>";
										echo "window.onload = submitform;";
								echo "</script>";
							 }
							
					} else{
						echo "<h2 style = 'color:#e60012; text-align: center;'>Sorry, you need to set <u style = 'color: blue'>Username</u> and <u style = 'color: blue;'>Password</u> for the following user(s) before you can login:</h2>";
						
								if(!file_exists('psd/palrinc.htpasswd')){
									echo  "<h5 style = 'color: blue; text-align: center;'><i>Principal</i></h5> ";
								}
								if(!file_exists('psd/minad.htpasswd')){
									echo "<h5 style = 'color: blue; text-align: center;'><i>Admission Officer</i></h5> ";
								}
								if(!file_exists('psd/sarbus.htpasswd')){
									echo "<h5 style = 'color: blue; text-align: center;'><i>Bursar</i></h5> ";
								}
								if(!file_exists('psd/smaxe.htpasswd')){
									echo "<h5 style = 'color: blue; text-align: center;'><i>Examination Officer </i></h5> ";
								}
									
							
						echo "<h2 style = 'color:#e60012; text-align: center;'>You will be redirected shortly....!</h2>";
						header("Refresh: 5, url='psd/set.php'");
					}
				}
					
	}
?>
</body>
</html>