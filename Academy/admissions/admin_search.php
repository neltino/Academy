<?php
		include '../all_conn.php';

							
						$find = $_POST['id'];
						$query = "SELECT * FROM students WHERE AdmissionNumber = '$find' LIMIT 1";
						
						$search = mysqli_query($Father, $query);	
						
						while($row = mysqli_fetch_assoc($search)){
							$Surname = $row['Surname'];
							$FirstName = $row['FirstName'];
							$OtherNames = $row['OtherNames'];
							$Gender = $row['Gender'];
							$DOB = $row['DOB'];
							$Nationality = $row['Nationality'];
							$State = $row['State'];
							$LGA = $row['LGA'];
							$Class = $row['Class'];
							$House = $row['House'];
							$Type = $row['Type'];
							$Parent_Guardian = $row['Parent_Guardian'];
							$Phone = $row['Phone'];
							$Email = $row['Email'];
							$Address = trim($row['Address']);
							
						}
?>



<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Search Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style>
			@font-face{
						font-family: cac;
						src: url(../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(../myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
			body{
				background: url(../img/abstract.jpg) repeat;
				background-size: cover;
				background-position: center;
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
		font-size: 2vw;
	}
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
	
	form{
		margin-left: 20%;
		width: 55%;
		font-size: 1.1vw;
	}
	input[type = 'text'], [type = 'date'], [type = 'tel'], [type = 'email'] {
		margin-left: 21%;
		width: 45%;
		border: #83b800 solid 2px;
		font-family: teen;
		height: 30px;
		margin-top: 5px;
		background: radial-gradient(#ffffff, #c5e8f5);
	}
	input[type = 'file']{
		margin-left: 14%;
		width: 45%;
	}
	input[type=radio]{
		margin-left: 14%;
	}
	select{
		margin-left: 14%;
		font-family: teen;
		font-weight: bold;
		width: 45%;
		height: 30px;
		margin-top: 0.7%;
		background: radial-gradient(#ffffff, #c5e8f5);
	}
	
	textarea{
		margin-left: 5%;
		height: 100px;
		width: 45%;
		margin-top: 0.5%;
		background: radial-gradient(#ffffff, #c5e8f5);
	}
	label{
		float: left;
		font-weight: bold;
		color: #2b57a6;
		font-family: Gabriola;
		font-size: 1.33vw;
		margin-top: 0.8%;
	}
	
	legend{
		color: #ffffff;
		background: #4caf50;
		border-radius: 5px;
		font-family: prestiji;
		padding: 3px;
	}
	
	fieldset{
		border-radius: 3%;
		border: #83b800 solid 2px;
		background: #ffffff;
	}
	em{
		color: red;
	}
	h3{
		color: yellow;
		text-align: center;
		font-family: Gabriola;
		font-size: 2vw;
	}
	h1 span{
		color: pink;
		font-family: teen;
	}
	form span{
		font-family: teen;
		font-weight: bold;
	}
	
	p{
		margin-left: 20%;
		font-family: teen;
	}
	#mypassport{
			background:url(../img/anonymous.png) no-repeat;
			float: left;
			position: absolute;
			margin-left: 42%;
			border-radius: 5px;
			border: solid 1px #2c9cff;
			width: 10.5%;
			height: 22.5%;
		}
	input[type=submit], input[type=reset]{
		width: 17%;
		font-family: teen;
		float: left;
		margin-left: 5%;
		cursor: pointer;
	}
	input[type=submit]{
		margin-left: 35%;
	}
	#bor{margin-left: 10%;}
	
	@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 2%; font-size: 4vw;}
				label{position: absolute; font-size: 3vw; margin-top: 2%}
				input[type=text],input[type=file], textarea, input[type=date], input[type=email]{width: 70%; margin-left: 30%}
				input[type=radio]{margin-left: 5%}
				#rad{margin-left: 30%}
				select{margin-left: 28.5%; width: 70%;}
				#cla{margin-left: 26.5%;}
				#hou{margin-left: 27.5%;}
				#bor{margin-left: 29.5%;}
				input[type=submit]{width: 40%; margin-left: 40%;}
				#mypassport{position: relative; width: 44%; margin-bottom: 1%;}
				#lab{display:none;}
				h3{font-size: 4vw;}
				
				@media only screen and (orientation: landscape){
					#mypassport{width: auto;}
					
				}
				
			}
	
	</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Updating Student Info with Admission Number: <span><?php echo $find;?></span></h1>
				</div>
			<?php include 'asideadmin.php';?>
	<br /><br />
	
	<form action="updating.php" method = "POST" enctype = "multipart/form-data">
		<input type="text" name = 'prev' value = "<?php echo $Class;?>" hidden />
		<input class = "w3-input w3-round w3-green w3-hover-blue"  type="submit" value = "Previous Page" />
	</form>
	<br /> <br />
	<h3>Supply the latest student info for any or all of these fields!</h3>	
	<form action= "to_update.php" Method = "POST" enctype="multipart/form-data" >

		<fieldset>
			<legend>Student Update Info</legend>
				<br />
				<div id = "mypassport" > 
														<img width = "140" height = "140" src=""  id = "passport" />
										
													</div>
													
				<label id = 'lab' for="pass">Passport:</label>
				<input class = "w3-round w3-border" id = "pass" type="file" name = "port"  />
			
				<script type="text/javascript"> 
														document.getElementById("pass").onchange = function(){
															var reader = new FileReader();
															reader.onload = function(e){
																document.getElementById("passport").src = e.target.result;
															}
															reader.readAsDataURL(this.files[0]);
														}
													</script>
												
				
				
				
				<br /><br />
				<input hidden type="text" name="num" value = "<?php echo $find ?>" />
				
				<label for="surname">Surname:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "Surname" value = "<?php echo $Surname ?>" />
				
				<label for="firstname">First Name:</label>
				<input class = "w3-input w3-round w3-border" name = "FirstName" type="text"  value = "<?php echo $FirstName ?>" />
				
				<label for="Other Names">Other Names:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "OtherNames" value = "<?php echo $OtherNames ?>" />
				
				<label for="Gender">Gender:</label>
				&nbsp;<select class = "w3-round w3-border" name = "Gender">
					<option default><?php echo $Gender ?></option>
					<option>Male</option>
					<option>Female</option>
				</select>
				 <br />
				<label for="DOB"> Date of Birth: </label>
				<input class = "w3-input w3-round w3-border" type="date" name = "DOB" value = "<?php echo $DOB ?>" />
			
				<label for="Nationality"> Nationality:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "Nationality" value = "<?php echo $Nationality ?>" />
				
				<label for="State">State of Origin:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "State" value = "<?php echo $State ?>" />
			
				<label for="LGA">LGA: </label>
				<input class = "w3-input w3-round w3-border" type="text" name = "LGA" value = "<?php echo $LGA ?>" />
				
				<label for="class">Class: </label>
				&nbsp; &nbsp;<select id = 'cla' class = "w3-round w3-border" name = "Class"  >
					<option default > <?php echo $Class ?></option>
					<?php
								//selecting classes
								$classes = "SELECT `classes` FROM `admin_info`";
								$classes_query = mysqli_query($Father, $classes);
								$class = mysqli_fetch_assoc($classes_query);
								
								
								if($class['classes'] == NULL || $class['classes'] == "" || $class['classes'] == " "){
									echo "<option value=''>Classes: not set.</option>";
								}else{
									$clas = str_replace(" ", "",chop($class['classes'], ","));
									//exploding 
									$explode = explode(",",$clas);
									foreach($explode as $ex){
										echo "<option value='$ex'>$ex</option>";
									}
								}
								
						?>
				</select>
				<br />
				<label for="house">House:</label>
				
				&nbsp; <select id = 'hou' class = "w3-round w3-border" name = "House"  >
					<option default > <?php echo $House; ?></option>
						<?php 
		
					$classes = "SELECT `houses` FROM `admin_info`";
					$classes_query = mysqli_query($Father, $classes);
					$class = mysqli_fetch_assoc($classes_query);
					
					
					if($class['houses'] == NULL || $class['houses'] == "" || $class['houses'] == " "){
						echo "<option value=''>Classes: not set.</option>";
					}else{
						$clas = ucwords(chop($class['houses'], ","));
						//exploding 
						$explode = explode(",",$clas);
						foreach($explode as $ex){
							echo "<option value='$ex'>$ex</option>";
						}
					}
		
		
		?>
				</select>
				<br />
		<?php
		
				$type = "SELECT `type` FROM `info_sch`";
				$type_query1 = mysqli_query($Father, $type);
				$type_query2 = mysqli_query($Father, $type);
				$that = mysqli_fetch_assoc($type_query1);
				$then = mysqli_fetch_assoc($type_query2);
				
				
				if((trim($that['type']) == "Boarding") || (trim($then['type']) == "Day and Boarding")){

					echo '<label >Student Type:</label>';
					echo "<select  id = 'bor'  class = 'w3-round w3-border'  name='type' required >
							<option value='$Type'>$Type</option>
							<option value='Day'>Day Student</option>
							<option value='Boarder'>Boarding Student</option>
					</select>";
					echo "<br />";
				}
				
		
		
		?>
		
				<label for="Parent_Guardian">Parent/Guardian's Name:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "Parent_Guardian" value = "<?php echo $Parent_Guardian ?>" />
				
				<label for="Phone Number">Phone Number:</label>
				<input class = "w3-input w3-round w3-border" type="text" name = "Phone" value = "<?php echo $Phone ?>"/>
			
				<label for="email">E-mail:</label>
				<input class = "w3-input w3-round w3-border" type="email" name = "Email" value = "<?php echo $Email ?>" />
				
				<label for="address">Residential Address:</label> 
				
						<textarea class = "w3-round w3-border" name="Address" cols = "10" rows = "10" wrap = "hard"><?php echo $Address; ?></textarea>
				<br /><br /> 
				<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit" value = "Update" />
			</fieldset>
			<br />
			
	</form>
	<br />
	<br />
	
	
</body>
</html>