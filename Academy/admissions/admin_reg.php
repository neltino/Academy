<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Registration Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			body{
				background: #f0f0f0;
			}
	</style>
</head>
<body>
	
</body>
</html>
<?php
include '../all_conn.php';

		$myquery = "SELECT Surname, FirstName, Class, DOB, State FROM students";
		$myresult = mysqli_query($Father, $myquery);
		
		while($row = mysqli_fetch_array($myresult)){
			
			$val1 = $row['Surname'];
			$val2 = $row['FirstName'];
			$val3 = $row['Class'];
			$val4 = $row['DOB'];
			$val5 = $row['State'];
		}
		
	 
	if($_FILES['Passport']['size'] < 30720 && $_FILES['Passport']['type'] == "image/jpeg"){
		
		$Passport = addslashes(file_get_contents($_FILES['Passport']['tmp_name']));
		$AdmissionNumber = str_replace("'", "",$_POST['AdmissionNumber']);
		$Surname = str_replace("'", "",$_POST['Surname']);
		$FirstName = str_replace("'", "",$_POST['FirstName']);
		$OtherNames = str_replace("'", "",$_POST['OtherNames']);
		$Gender = str_replace("'", "",$_POST['Gender']);
		$DOB = $_POST['DOB'];
		$Nationality = str_replace("'", "",$_POST['Nationality']);
		$State = str_replace("'", "",$_POST['State']);
		$LGA = str_replace("'", "",$_POST['LGA']);
		$Class = $_POST['Class'];
		$House = $_POST['House'];
		if(isset($_POST['type'])){
			$Type = $_POST['type'];
		}else{
			$Type = "";
		}
		$Parent_Guardian = str_replace("'", "",$_POST['Parent_Guardian']);
		$Phone = str_replace("'", "",$_POST['Phone']);
		$Email = str_replace("'", "",$_POST['Email']);
		$Address = trim(str_replace("'", "",$_POST['Address']));
		
		
		
		
						if($val1 == $Surname && $val2 == $FirstName && $val3 == $Class && $val4 == $DOB && $val5 == $State){
								echo "<h2 style = 'color: #e60012; text-align: center;'><strong>This particular student has already been registered!</strong></h2>";
								echo "<br /><br />";
								header('Refresh: 3, url = register.php');
								}else{
	
					$sql = "INSERT INTO students (Passport, AdmissionNumber, Surname, FirstName, OtherNames, Gender, DOB, Nationality, State, LGA, Class, House, type, Parent_Guardian, Phone, Email, Address) 
										  VALUES ('$Passport', '$AdmissionNumber', '$Surname', '$FirstName', '$OtherNames','$Gender', '$DOB', '$Nationality', '$State','$LGA', '$Class', '$House', '$Type', '$Parent_Guardian', '$Phone', '$Email', '$Address')";
					mysqli_query($Father, $sql); 
					 
					$sql1 = "INSERT INTO account1 (AdmissionNumber, Surname, FirstName, OtherNames, Class, type) 
					VALUES ('$AdmissionNumber', '$Surname', '$FirstName', '$OtherNames', '$Class', '$Type')";
					mysqli_query($Father, $sql1); 
					
					$sql2 = "INSERT INTO account2 (AdmissionNumber, Surname, FirstName, OtherNames, Class, type) 
					VALUES ('$AdmissionNumber', '$Surname', '$FirstName', '$OtherNames', '$Class', '$Type')";
					mysqli_query($Father, $sql2); 
					
					$sql3 = "INSERT INTO account3 (AdmissionNumber, Surname, FirstName, OtherNames, Class, type) 
					VALUES ('$AdmissionNumber', '$Surname', '$FirstName', '$OtherNames', '$Class', '$Type')";
					mysqli_query($Father, $sql3); 
					
					header("Location: register.php");
					} 
			
		
	}else{
		echo "<h2 style = 'color:#e60012; text-align: center;'><strong>Picture type must be less than 30kb and of type .jpg or .JPEG! <br /> Please check the picture size and/or type!</strong></h2>";
		header('Refresh:3, url=register.php');
	}
	
	
?>