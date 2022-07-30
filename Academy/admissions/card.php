<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Students' ID Card</title>
	<link rel="icon" href="../img/soft.png" />
	
	<style type="text/css"> 
		
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
		@media print{
			.noprint{display: none;}
		}
		@media only screen and (max-width: 768px){
				.back1{font-size: 10pt;}
				button, input[type=submit]{width: 120px;}
			}
		
	</style>
	
</head>
<body>
	
<?php

	include '..\all_conn.php';
	
	$ID = $_POST['id'];
	
	
	$qry = "SELECT Passport, Surname, FirstName, OtherNames, Phone, Class, House FROM students WHERE AdmissionNumber = '$ID' ";
	$result = mysqli_query($Father, $qry);
	
	$row = mysqli_fetch_array($result);
	
	
		$pass = '<img class = "dcard" src = "data:image/jpeg; base64,' .base64_encode($row['Passport']).'"height = "80" width = "60" />';
		$surname = $row['Surname'];
		$firstname = $row['FirstName'];
		$OtherNames = $row['OtherNames'];
		$space = " ";
		$phone = $row['Phone'];
		$class = $row['Class'];
		$house = $row['House'];
		
		
	
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
		
	//Card validity period selection
	
		
		?>

<div class = "all">
		<div class = 'idcard'>
			<span><?php echo $logo;?></span>
			<div class = "inner1"> 
			<br />
					<strong class = "school" ><?php echo strtoupper($school);?></strong> <br />
					<?php echo "<em style = 'color: #ffaf02; font-weight: bold; font-size: 9pt; margin-top: -10px;'>$address</em>"; ?>
						<header> 
								<h3>STUDENT IDENTITY CARD</h3>
						</header>
					<nav>
							<?php echo "<pre class = 'passport'>$pass</pre>";?>
							<br /><br />
							<strong>Name:</strong> <br />
							<strong>Admission Number:</strong> <br />
							<strong>Sports House:</strong> <br />
							<strong>Validity:</strong>
							
							<bdi>
								<?php echo ucwords($surname. " ".$firstname." ".$OtherNames);?> <br />
								<?php echo strtoupper($ID);?> <br />
								<?php echo $house;?> <br />
								<?php echo "<strong><em>3 years from the date overleaf</em></strong>";?>
								
							</bdi>
							
					</nav>
			</div>
		<?php echo str_repeat($school." ", 80); ?>
		</div>
			
		<div class = "back"> 
					<div class = "back1"> 
							 
							<p> &emsp; This Identity card is the property of the institution whose name and address is borne overleaf and can be
								withdrawn without notice. The card is <strong><em>not transferable</em></strong> and may be used only by the person whose name and photograph
								is printed overleaf.
							</p>
							<p>&emsp; If found, please return to <?php echo "<strong>$school</strong>";?>, or contact the phone number below:</p>
							<p><b>Parent/Guardian's Contact: &emsp; <?php echo "<strong>$phone</strong>"?> </b></p>
							<p><b>Authorised Signature:____________ &nbsp; Date:____________</b></p>
					</div>
				<?php echo str_repeat($school." ", 80); ?>
		</div>
		<br /> <br />
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
		
		 &#x2702;
		<hr /> 
		<div class = "noprint">
				<br />
				<button onclick = "window.print()">Print</button>
				<form action="singling.php" method = "POST" enctype = "multipart/form-data">
					<input type="text" name = "prev" value = "<?php echo $_POST['class']?>" hidden />
					<input type="submit" value = "Previous Page" />
				</form>
		<div>
</div>
		
		
		
		
	
	

</body>
</html>