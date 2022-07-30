<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Multiple Students ID Card</title>
	<link rel="icon" href="../img/soft.png" />
	
	<style type="text/css"> 
		
		@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
		.dcard{
			float: left;
			margin-left: 415px;
			margin-top: 80px;
			position: absolute;
		}
		
		.idcard{
			float: left;
			border: 2px solid #000000;
			height: 230px;
			width: 400px;
			border-radius: 15px;
			text-align: justify;
			color: #f0f0f0;
			overflow: hidden;
			padding: 2px;
			margin-left: 5px;
			
		}
		.inner1{
			margin-top: -15px;
			position: absolute;
			color: #0074c5;
			text-align: center;
			margin-left: 70px;
			opacity: 1.9;
			font-family: Times New Roman;
			width: 300px;
			padding: -5px;
		}
		span{
			float: left;
			margin-left: -410px;
			margin-top: -80px;
		}
		nav{
			
			text-align: left;
			color: #000000;
			margin-left: -65px;
			margin-top: 10px;
			font-size: 11pt;
		}
		header{

			background: #4a8af4;
			border-radius: 10px;
			text-align: center;
			color: #ffffff;
			width: 255px;
			margin-left: 10px;
			margin-top: -10px;
		}
		.school{
			font-size: 11pt;
			font-family: Georgia, Times New Roman;
		}
		bdi{
			
			float: right;
			position: absolute;
			color: #000000;
			font-weight: bold;
			font-family: Arial Times New Roman;
			margin-left: 90px;
			text-align: left;
			margin-top: -53px;
			
		}
		.passport{
			float: left;
			position: absolute;
			margin-top: -130px;
			margin-left: -80px;
		}
		.back{
			
			float: left;
			border: 2px solid #000000;
			height: 230px;
			width: 400px;
			border-radius: 15px;
			text-align: justify;
			color: #f0f0f0;
			overflow: hidden;
			padding: 2px;
			margin-left: 10px;
			font-size: 11pt;
		}
		.back1{
			
			position: absolute;
			color: #000000;
			text-align: justify;
			opacity: 1.9;
			font-family: Times New Roman;
			width: 370px;
			padding: 5px;
		}
		button{
			
			margin-top: 20px;
			width: 100px;
			font-weight: bold; color: #ef3939; background: #ffffff; margin-left: 0px; border: 2px solid #8dd242; border-radius: 5px;
			font-family: Times New Roman;
			cursor: pointer;
		}
		button:hover{
			background: #6ac239;
			color: #ffffff;
		}
		hr{
			float: right;
			position: absolute;
			border: 1px dashed #000000;
			width: 850px;
			margin-left: 15px;
			margin-top: -10px;
			
			
		}
		.all{
			width: 24cm;
		}
		input[type=submit]{
			float: left;
			border: none;
			background: #ffffff;
			border-radius: 5px;
			color:#ef3939;
			font-family: Times New Roman, Arial;
			font-weight: bold;
			border: 2px solid #8dd242;
			width: 100px;
			margin-top: -22px;
			margin-left: 150px;
			cursor: pointer;
		}
		input[type=submit]:hover{
			background: #6ac239;
			color: #ffffff;
		}
		h2{
			color: yellow;
			text-align: center;
			margin-top: 15%;
			font-family: teen;
			font-size: 2vw;
		}
		.noprint{
			margin-left: 300px;
		}
		@page {
			size: A4 portrait;
		}
		@media print{
			.noprint{display: none;}
			.all{margin-top: 40px;}
		}
		@media only screen and (max-width: 768px){
				.back1{font-size: 10pt;}
				button, input[type=submit]{width: 120px;}
				h2{font-size: 5vw;}
			}
		
	</style>
	
</head>
<body>
	<?php
	$class = $_POST['class'];
	include '..\all_conn.php';
	
			$qry = "SELECT Passport, Surname, FirstName, OtherNames, Phone, Class, House, AdmissionNumber FROM students WHERE class = '$class' ";
				$result1 = mysqli_query($Father, $qry);
				$result2 = mysqli_query($Father, $qry);
				
				if(mysqli_fetch_assoc($result1) == NULL){
					echo "<body style = 'background: url(../img/abstract.jpg) repeat; background-position:center;'></body>";
					echo "<h2>Sorry, this class has no registered members!</h2>";
					header("Refresh: 3, url='multiple.php'");
				die();
					
				}
	
	?>
			<div class = "noprint">
							<br />
							<button onclick = "window.print()">Print</button>
							<form action="multiple.php" method = "POST" enctype = "multipart/form-data">
								<input type="text" name = "prev" value = "<?php echo $_POST['class']?>" hidden />
								<input type="submit" value = "Previous Page" />
							</form>
					</div>
			<br />

<?php

	
	
	
	
	//Selecting School name
		$sch = "SELECT * FROM `info_sch` ";
		$school_query = mysqli_query($Father, $sch );
		$schooling = mysqli_fetch_assoc($school_query);
		
		if($schooling == NULL){
			$school = "School Name Not set!";
			$address = "No Address";
			$logo = "";
		}else{
			$school = $schooling['school'];
			$address = $schooling['address'];
			$logo = '<img class = "dcard" src = "data:image/jpeg; base64,' .base64_encode($schooling['logo']).'"height = "80" width = "60" />';
		}
	
//page
		echo "<div class = 'all'>";
				
				
				
				while($row = mysqli_fetch_array($result2)){
					
					$pass = '<img class = "dcard" src = "data:image/jpeg; base64,' .base64_encode($row['Passport']).'"height = "80" width = "60" />';
					$surname = $row['Surname'];
					$firstname = $row['FirstName'];
					$OtherNames = $row['OtherNames'];
					$space = " ";
					$phone = $row['Phone'];
					$class = $row['Class'];
					$house = $row['House'];
					$ID = $row['AdmissionNumber'];
					
					//font 
			echo "<div class = 'idcard'>";
			echo "<span>$logo</span>";
			echo "<div class = 'inner1'> ";
					echo "<br />";
					$school = strtoupper($school);
					echo "<strong class = 'school' >$school</strong> <br />";
					echo "<em style = 'color: #ffaf02; font-weight: bold; font-size: 9pt; margin-top: -10px;'>$address</em>";
						echo "<header> ";
								echo "<h3>STUDENT IDENTITY CARD</h3>";
						echo "</header>";
					echo "<nav>";
							echo "<pre class = 'passport'>$pass</pre>";
							echo "<br /><br />";
							echo "<strong>Name:</strong> <br />";
							echo "<strong>Admission Number:</strong> <br />";
							echo "<strong>Sports House:</strong> <br />";
							echo "<strong>Validity:</strong>";
							
							echo "<bdi>";
								echo ucwords($surname. " ".$firstname." ".$OtherNames);
								echo "<br />";
								echo strtoupper($ID);
								echo "<br />";
								echo $house;
								echo "<br />";
								echo "<strong><em>3 years from the date overleaf</em></strong>";
								
							echo "</bdi>";
							
					echo "</nav>";
						echo "</div>";
						echo str_repeat(ucwords(strtolower($school) )." ", 80);
					echo "</div>";
					
				// back 
				
					echo "<div class = 'back'> ";
					echo "<div class = 'back1'>";
							 
							echo "<p> &emsp; This Identity card is the property of the institution whose name and address is borne overleaf and can be
								withdrawn without notice. The card is <strong><em>not transferable</em></strong> and may be used only by the person whose name and photograph
								is printed overleaf.
							</p>";
							echo "<p>&emsp; If found, please return to <strong>$school</strong>, or contact the phone number below:</p>";
							echo "<p><b>Parent/Guardian's Contact: &emsp; <strong>$phone</strong> </b></p>";
							echo "<p><b>Authorised Signature:____________ &nbsp; Date:____________</b></p>";
					echo "</div>";
				echo str_repeat(ucwords(strtolower($school) )." ", 80);
				echo "</div>";
				echo "<br /> <br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br /> 
				<br />
				<br />
				<br /> 
				&#x2702 
				<hr />";
				echo "<br />
				<br /> <br /> <br />";
				
					}
				
	echo "</div>";	
		
	
		
		?>


		
		
		
		
		
		
	


</body>
</html>