<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Register Student:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	
	<style type="text/css"> 

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
		margin-left: 6.5%;
		width: 45%;
	}
	input[type=radio]{
		margin-left: 14%;
	}
	select{
		margin-left: 10.5%;
		font-family: teen;
		font-weight: bold;
		width: 45%;
		height: 30px;
		margin-top: 0.7%;
		background: radial-gradient(#ffffff, #c5e8f5);
	}
	
	#blue{
		margin-left: 10%;
	}
	
	select:last-child{
		margin-left: 9.3%;
	}
	
	
	
	textarea{
		margin-left: 4.5%;
		height: 100px;
		width: 45%;
		margin-top: 3px;
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
	h4{
		color: yellow;
		text-align: center;
		font-family: Gabriola;
		font-size: 1.5vw;
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
		margin-left: 22%;
	}
	
	@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 2%; font-size: 4vw;}
				label{position: absolute; font-size: 3vw; margin-top: 2%}
				input[type=text],input[type=file], textarea, input[type=date], input[type=email]{width: 70%; margin-left: 30%}
				input[type=radio]{margin-left: 5%}
				#rad{margin-left: 30%}
				select{margin-left: 21%; width: 70%;}
				#blue{margin-left: 29.5%;}
				select:last-child{margin-left: 29%;}
				input[type=submit], input[type=reset]{width: 30%; margin-left: 3%;}
				input[type=submit]{margin-left: 30%;}
				#mypassport{position: relative; width: 44%; margin-bottom: 1%;}
				#lab{display:none;}
				h4{font-size: 4vw;}
				
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
					<h1 class = "w3-center" >Register Students</h1>
				</div>
			<?php include 'asideadmin.php';?>
	
	<?php
		include '../all_conn.php';
		$query = "SELECT * FROM students";
		$myquery = mysqli_query($Father, $query);
		
		if(!$Father){
			echo "<h4>Sorry, couldn't communicate with database!</h4>";
			die();
		}
		
		
		

		
		$tal = "SELECT SerialNo FROM students WHERE SerialNo = (SELECT MAX(SerialNo)  FROM `students`)"; 
		$talquery = mysqli_query($Father, $tal);
		$totaling = mysqli_fetch_assoc($talquery);
		
		if($totaling == NULL){
			$total = 0;
		}else{
			 $total = $totaling['SerialNo'];
		}
		
		$newtotal = $total + 1;
		$serial = sprintf("%03d",$newtotal);
		
		$count = "SELECT COUNT(*) FROM `students`";
		$count_query = mysqli_query($Father, $count);
		$counting = mysqli_fetch_assoc($count_query);
		if($counting == NULL){
			$total = 0;
		}else{
			$total = $counting['COUNT(*)'];
		}
		
		
		echo "<p style = 'color:yellow;'> <strong>Total Registered Students: <span style = 'color: red;' >$total</span></strong> </p>";
		//presetting admission number.
			$thismonth = date('m');
			if($thismonth == "01" || $thismonth == "02" || $thismonth == "03" || $thismonth == "04" || $thismonth == "05" 
			|| $thismonth == "06" || $thismonth == "07" || $thismonth == "08"){
				
				$thisyear = date('y') - 1;
				$nextyear = $thisyear + 1;
				
			} elseif($thismonth == "09" || $thismonth == "10" || $thismonth == "11" || $thismonth == "12"){
				$thisyear = date('y');
				$nextyear = $thisyear + 1;
				
			}
			
		
		
		
	
	?>
	
	<h4>Please note that fields marked <em>*</em> must be supplied.</h4>
	<form action= "admin_reg.php" Method = "POST" enctype = "multipart/form-data">
		<fieldset>
		<legend>Student Info</legend>
		<div id = "mypassport" > 
						<img width = "140" height = "140" src=""  id = "port" />
		
					</div>
					<br />
		<label id = 'lab' for="passport">Upload Passport: <em>*</em></label> <br />
		
		<input class = "w3-round w3-border" id = "pass" name = "Passport" type = "file" multiple accept = "image/*" required /> <br /> 
		
					
		<label for = "AdmissionNumber">Admission Number:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" type="text" name = "AdmissionNumber" required value = <?php 
			//selecting school initial
			$ini = "SELECT `reg` FROM `admin_info`";
			$ini_query1 = mysqli_query($Father, $ini);
			$ini_query2 = mysqli_query($Father, $ini);
			
			if(mysqli_fetch_assoc($ini_query1) == NULL){
				echo "No_School_Initial";
			}else{
				$initial = mysqli_fetch_assoc($ini_query2);
				echo str_replace(" ", "",strtoupper($initial['reg']) )."/".$thisyear.$nextyear."/".$serial;
			}
		
		 ?> />
		
		<label for="surname">Surname: <em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" name = "Surname" required />
		
		<label for="firstname">First Name:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" name = "FirstName" type="text" required />
		
		<label for="Other Names">Other Names:</label>
		<input class = "w3-input w3-round w3-border" type="text" name = "OtherNames"/>
		
		<label for="Gender">Gender:<em>*</em></label>
		<input id = 'rad' class = "w3-radio" type="radio" name = "Gender" required value = "Male"/> <span> Male</span>
		<input class = "w3-radio" type="radio" name = "Gender" required value = "Female" /> <span>Female</span>
		<br /> <br />
		<label for="DOB"> Date of Birth:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="date" name = "DOB" required />
		
		<label for="Nationality"> Nationality:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" name = "Nationality" requrired />
		
		<label for="State">State of Origin:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text"name = "State" required />
		
		<label for="LGA">LGA: <em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" name = "LGA" required />
		
		<label for="class">Class: <em>*</em></label>
		&emsp; &ensp; <select class = "w3-round w3-border" name = "Class" required >
			<option value="" > Select Class</option>
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
		<label for="Sports">Sports House<em>*</em></label> 
		<select class = "w3-round w3-border" name="House" id = 'blue' required>
		
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
		</select> <br />
		<?php
				$type = "SELECT `type` FROM `info_sch`";
				$type_query1 = mysqli_query($Father, $type);
				$type_query2 = mysqli_query($Father, $type);
				$type_query3 = mysqli_query($Father, $type);
				
				if($type_query3 == true){
						$that = mysqli_fetch_assoc($type_query1);
						$then = mysqli_fetch_assoc($type_query2);
						
						
						if((trim($that['type']) == "Boarding") || (trim($then['type']) == "Day and Boarding")){
							
							echo '<label >Student Type: <em>*</em> </label>';
							echo "<select   class = 'w3-round w3-border'  name='type' required >
									<option value=''>Select Student Type</option>
									<option value='Day'>Day Student</option>
									<option value='Boarder'>Boarding Student</option>
							</select>";
						}
				}
		
		?>
		
		</fieldset>
		<br />
		<fieldset> 
		<legend>Parent/Guardian Info</legend>
		<label for="Parent_Guardian">Parent/Guardian's Name:<em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" name = "Parent_Guardian" required />
		 
		<label for="Phone Number">Phone Number: <em>*</em></label>
		<input class = "w3-input w3-round w3-border" type="text" name = "Phone"required/>
		
		<label for="email">E-mail:</label>
		<input class = "w3-input w3-round w3-border" type="email" name = "Email"/>
		
		<label for="address">Residential Address:<em>*</em></label>
		<textarea class = "w3-round w3-border" name="Address" cols = "15" rows = "10" wrap = "hard" >
		</textarea>
		
		<br /> <br />
		<input class = "w3-input w3-round w3-green w3-hover-blue"  type="submit" value = "Register"/>
		<input class = "w3-input w3-round w3-green w3-hover-blue"  type="reset"  value = "Clear"/>
		<br /> <br />
		</fieldset> 
		<br />
		
	</form>
			

<script> 
						document.getElementById("pass").onchange = function(){
							var reader = new FileReader();
							reader.onload = function(e){
								document.getElementById("port").src = e.target.result;
							}
							reader.readAsDataURL(this.files[0]);
						}
					</script>
			
</body>
</html>