<?php
	session_start();
	include '../../teach_conn.php';
	
	$class = $_SESSION['class'];
	$new1 = strtolower(str_replace(" ", "",$class."_1st_term"));
	$new2 = strtolower(str_replace(" ", "",$class."_2nd_term"));
	$new3 = strtolower(str_replace(" ", "",$class."_3rd_term"));
	$id = $_POST['id'];
	
	$query = "SELECT name, gender, DOB, phone FROM `$new1` WHERE ID = '$id' ";
	$submit = mysqli_query($Son, $query);
	$answer = mysqli_fetch_assoc($submit);

	$name = explode(" ",$answer['name']);
	$date = explode(",",$answer['DOB']);
	
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit Student:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
		body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
			}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/gabriola.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			#myhead h4{
		font-family: Aulyars;
		font-size: 2vw;
		text-align: center;
	}
	#myhead em{
		color: yellow;
		font-family: zipty;
	}
	#myhead h1{
		font-family: teen;
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
			width: 32%;
			margin-left: 38%;
			font-family: teen;
			margin-top: 1%;
		}
		form fieldset{
			background: white;
			border-radius: 5px;
		}
		legend{
			border-radius: 5px;
			background: #4caf50;
			color: white;
		}
		form label{
			color: #0000ff;
			font-weight: bold;
		}
		form input[type=submit]{
			cursor: pointer;
			margin-top: 1%;
		}
		form select{
			background: white;
		}
		em h3{
			color: #0000ff;
			font-size: 1.5vw;
		}
		em h3 i, form i{
			color: red;
		}
		
	@media only screen and (max-width: 768px){
		#myhead h1, h2{font-size: 5vw;}
		
			form{width: 98%; margin-left: 1%; margin-top: 9%;}
			em h3{font-size: 4vw;}
		}
	
	
	</style>

</head>
<body>
			<div class = "noprint">
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Class Members</h1> 
					
		</div>
		<?php include 'asideform.php';?>
		
						<form action="reg_edit_action.php" method = "POST" enctype = "multipart/form-data">
								<fieldset> 
								
									<legend> Edit Student Details</legend>
									<em><h3>Please note that items marked <i>*</i> are required!</h3></em>
									<label for="Surname">Surname:<i>*</i></label>
									<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type="text" name = "name[]"  value = "<?php echo $name[0]?>" required/>
									<label for="first_name">First Name:<i>*</i></label>
									<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type="text" name = "name[]" value = "<?php echo $name[1]?>" required/>
									<label for="others">Other Names:</label>
									<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type="text" name = "name[]" value = "<?php echo $name[2]?>" />
									<label for="DOB">Date of Birth:<i>*</i></label> <br />
									<span>Day:</span><select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name="dob[]"required >
										<option value="<?php echo $date[0];?>"><?php echo $date[0];?></option>
										<?php
											for($p = 1; $p <= 31; $p++){
													echo "<option value='$p'>$p</option>";
												}
										?>
									</select>
									<span>Month:</span><select class = "w3-select w3-round w3-border-green w3-border-top w3-border-right w3-border-left" name="dob[]" required>
											<option value="<?php echo $date[1];?>"><?php echo $date[1];?></option>
											<option value="January">January</option>
											<option value="February">February</option>
											<option value="March">March</option>
											<option value="April">April</option>
											<option value="May">May</option>
											<option value="June">June</option>
											<option value="July">July</option>
											<option value="August">August</option>
											<option value="September">September</option>
											<option value="October">October</option>
											<option value="November">November</option>
											<option value="December">December</option>
									
									</select>
									<span>Year:</span><input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type="text" name = "dob[]" placeholder ="e.g. 2002" value = "<?php echo $date[2];?>"required />
									
									<label for="Gender">Gender: <i>*</i> </label>
									<?php
										if($answer['gender'] == "M"){
											echo "<input type='radio' name ='gender' value = 'M' required checked /> Male";
											echo "<input type='radio' name ='gender' value = 'F' required /> Female";
										}else{
											echo "<input class = 'w3-radio' type='radio' name ='gender' value = 'M' required  /> Male";
											echo "<input class = 'w3-radio' type='radio' name ='gender' value = 'F' required  checked /> Female";
										}
									
									
									?>
									<br />
									<label for="">Parent's Phone &#x2116; </label>
									<input class = 'w3-input w3-round w3-border-green w3-border-top w3-border-right w3-border-left' type="text" name = "phone" value = "<?php echo $answer['phone']; ?>"  />
									<input type="text" name = "id" value = "<?php echo $id; ?>" hidden />
								
								<input class = "w3-input w3-green w3-round w-hover-blue" type="submit"/>
								
								</fieldset>
						
						
						
						</form>
						
	
</body>
</html>