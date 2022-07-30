<!DOCTYPE HTML>
	<html lang="en-US">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>.:Update Result:.</title>
		<link rel="icon" href="../img/soft.png" />
		<style type="text/css"> 
		
				@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
				body{
					background: url(../img/abstract.jpg) repeat;
					background-position: center;
				}
				h2,h3{
					text-align: center;
					color: red;
					font-family: Gabriola;
					font-size: 2vw;
				}
				h4{
					margin-top: 10%;
					color: yellow;
					text-align: center;
					font-family: Gabriola;
					font-size: 2vw;
				}
				@media only screen and (max-width: 768px){
					h2,h4{font-size: 5vw;}
				}
		</style>
	</head>
	<body>
				<?php
				include '../all_conn.php';
				
	//received data from update form
							$find = $_POST['num'];
							$a = str_replace("'", "", $_POST['Surname']);
							$b = str_replace("'", "", $_POST['FirstName']);
							$c = str_replace("'", "", $_POST['OtherNames']);
							$d = $_POST['Gender'];
							$e = $_POST['DOB'];
							$f = str_replace("'", "", $_POST['Nationality']);
							$g = str_replace("'", "",$_POST['State']);
							$h = str_replace("'", "",$_POST['LGA']);
							$i = $_POST['Class'];
							$n = $_POST['House'];
							if(isset($_POST['type'])){
								$o = $_POST['type'];
							}else{
								$o = '';
							}
							$j = str_replace("'", "",$_POST['Parent_Guardian']);
							$k = str_replace("'", "", $_POST['Phone']);
							$l = $_POST['Email'];
							$m = str_replace("'", "", $_POST['Address']);
							
							
						if(empty($_FILES['port']['name'])){ 
								
						$updatea = "UPDATE students SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Gender = '$d', DOB = '$e', Nationality = '$f', State = '$g', 
									LGA = '$h', Class = '$i', House = '$n', type = '$o', Parent_Guardian = '$j', Phone = '$k', Email = '$l', Address = '$m' WHERE AdmissionNumber = '$find' ";
						$resulta = mysqli_query($Father, $updatea);
						
						$update1 = "UPDATE account1 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result1 = mysqli_query($Father, $update1);
					
						$update2 = "UPDATE account2 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result2 = mysqli_query($Father, $update2);
					
						$update3 = "UPDATE account3 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result3 = mysqli_query($Father, $update3);
						
						
						} elseif(($_FILES['port']['name'] !== null) && ($_FILES['port']['size'] < 30720) && ($_FILES['port']['type'] == "image/jpeg")){
				
					$z = addslashes(file_get_contents($_FILES['port']['tmp_name']));
				
						$updateb = "UPDATE students SET Passport = '$z', Surname = '$a', FirstName = '$b', OtherNames = '$c', Gender = '$d', DOB = '$e', Nationality = '$f', State = '$g', 
									LGA = '$h', Class = '$i', House = '$n', type = '$o', Parent_Guardian = '$j', Phone = '$k', Email = '$l', Address = '$m' WHERE AdmissionNumber = '$find' ";
						$resultb = mysqli_query($Father, $updateb);
					
						$update1 = "UPDATE account1 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result1 = mysqli_query($Father, $update1);
					
						$update2 = "UPDATE account2 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result2 = mysqli_query($Father, $update2);
					
						$update3 = "UPDATE account3 SET Surname = '$a', FirstName = '$b', OtherNames = '$c', Class = '$i', type = '$o' WHERE AdmissionNumber = '$find' ";
						$result3 = mysqli_query($Father, $update3);	

				} 
			
			

			
				if(isset($resulta) || isset($resultb)){
					
							echo "<h2 >Student Info Update Successful! </h2>";
					
					header('Refresh:3; url = update.php');
				
				}else{
					
							echo "<h4 >The picture must be of type .jpg or .JPEG and must be less than 30kb. </h4>";
							echo "<br /><br />";
							echo "<h2 >Update: NOT SUCCESSFULL! </h2>";
					
					header('Refresh:3; url = update.php');
				}
				
				
	
	?>
	
	</body>
	</html>

