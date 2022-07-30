<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Info Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css">
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			body{
				background: #f0f0f0;
				font-family: Gabriola;
			}
			h4{
				margin-top: 5%;
				text-align: center;
				color: red;
				font-size: 4vw;
			}
			
	</style>
</head>
<body>
	
</body>
</html>

<?php
	include '../all_conn.php';
	
			//creating table
			$table = "CREATE TABLE IF NOT EXISTS `info_sch` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				logo blob NOT NULL,
				school text NOT NULL,
				address text NOT NULL,
				type text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$table_query = mysqli_query($Father, $table);
			
			//checking if table is empty before inserting defaults
			$def = "SELECT school, address, type FROM `info_sch`";
			$def_query = mysqli_query($Father, $def);
			
			if(mysqli_fetch_assoc($def_query) == NULL){
				
				//inserting defaults
						$default = "INSERT INTO `info_sch` (logo, school, address, type) VALUES ('','','', '')";
						$default_query = mysqli_query($Father, $default);
			}
	
	if(!empty($_FILES['logo']['size']) && $_FILES['logo']['size'] < 30720 && $_FILES['logo']['type'] == "image/jpeg"){
		
		 $logo = addslashes(file_get_contents($_FILES['logo']['tmp_name']));
		 $name = str_replace("'", "",$_POST['name']);
		 $address = str_replace("'","",$_POST['address']);
		 $school = str_replace("'","",$_POST['school']);
		 $update = "UPDATE `info_sch` SET logo = '$logo', school = '$name', address = '$address', type = '$school' WHERE ID = 1 ";
		 $update_query = mysqli_query($Father, $update);
		 echo "<h4>Success!</h4>";
		header("Refresh: 3, url = 'info.php' ");
		 
	}elseif(empty($_FILES['logo']['size']) && isset($_POST['name']) && isset($_POST['address'])){
						 $name = str_replace("'", "",$_POST['name']);
						 $address = str_replace("'","",$_POST['address']);
						 $school = str_replace("'","",$_POST['school']);
						 $update = "UPDATE `info_sch` SET school = '$name', address = '$address', type = '$school' WHERE ID = 1 ";
						 $update_query = mysqli_query($Father, $update);
						 echo "<h4>Update Successful!</h4>";
						header("Refresh: 3, url = 'info.php' ");
	}else{
		echo "<h4 style = 'color:#e60012; text-align: center;'><strong>Picture type must be less than 30kb and of type .jpg or .JPEG! <br /> Please check the picture size and/or type!</strong></h4>";
		header("Refresh: 3, url = 'info.php' ");
	}

?>