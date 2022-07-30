<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Bursar's Domain:.</title>
	
	<style type="text/css">
		
		nav{
			margin-left: 30%;
			margin-top: 5%;
		}
		nav button{
			width: 25%;
			font-family: prestiji;
			margin-top: 2%;
			font-size: 1.2vw;
			margin-left: 5%;
			text-align: center;
		}
		#sess{
			margin-left: 20%;
		}
		form{
			width: 30%;
			margin-left: 35%;
			margin-top: 1%;
			font-family: teen;
		}
		fieldset{
			background: white;
			border-radius: 5px;
			border: solid 2px #4caf50;
		}
		legend{
			background: #4caf50;
			border-radius: 5px;
			padding: 0px 5px;
			color: white;
		}
		form h3{
			font-family: teen;
			font-size: 1vw;
			text-align: center;
			color: red;
		}
		input[type=number]{
			background: radial-gradient( #ffffff,#c5e8f5);
		}
		input[type=submit]{
			cursor: pointer;
		}
		
		@media only screen and (max-width: 768px){
			#myhead h1{font-size: 5vw;}
			form{width: 98%; margin-left: 1%;}
			form h3{font-size: 4vw; margin-top: 7%;}
			nav button{font-size: 4vw; width: 98%; margin-left: 1%;}
			nav{margin-left:0; width:}	
			#sess{margin-left: 1%;}
			@media only screen and (orientation: landscape){
				nav{margin-top: 5%;  margin-bottom: 2%;}
			}
			
			
			}
	
	</style>	
			
</head>
<body>
	
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('<?php echo $whereto;?>', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Bursar's Domain</h1>
			</div>
			
			<?php
			
			//checking if school type is boarding...
				$type = "SELECT `type` FROM `info_sch`";
				$type_query1 = mysqli_query($Father, $type);
				$type_query2 = mysqli_query($Father, $type);
				$type_query3 = mysqli_query($Father, $type);
				
				if(mysqli_fetch_assoc($type_query3) !== NULL){
					
							$that = mysqli_fetch_assoc($type_query1);
							$then = mysqli_fetch_assoc($type_query2);
							
							
							if((trim($that['type']) == "Boarding") || (trim($then['type']) == "Day and Boarding")){
								//checking if boarding fee exists
								$see = "SELECT `payment` FROM `burs_info`";
								$see_query = mysqli_query($Father, $see);

								$value = "";
								while($seeing = mysqli_fetch_assoc($see_query)){
									
									if($seeing['payment'] == 'Boarding Fee'){
										$value = $seeing['payment'];
									}
								}
								
								if($value == ""){
								echo "<form action = 'bursar/burs_info_action.php' method = 'POST' enctype = 'multipart/form-data'>
											<h3>Please set Boarding Fee First before continuing!</h3>
										<fieldset>
											<legend>Boarding Fee</legend>
											<input type='text' name = 'payment' hidden value = 'Boarding Fee' />
											<input class = 'w3-input w3-round w3-border' type='number' name = 'amount' placeholder = 'e.g. 31000' required /> <br />
											<input class = 'w3-input w3-round w3-green w3-hover-blue' type='submit' name = 'fee' />
										</fieldset>
								</form>";
								die();
							}
								
							}
				}
				
		include 'bursar/asidebursar.php';
		?>
			
			
	
	<nav>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="../bursar/basic_info.php"'>Basic Info</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="../bursar/payment.php" '>Make Payment</button> <br />
			<button id = 'sess' class = "w3-button w3-blue w3-hover-green w3-round" onclick ='window.location.href="../bursar/sess.php" '>Sessional Report</button> <br />
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="../bursar/debts.php"'>Debts</button>
			<button class = "w3-button w3-blue w3-hover-green w3-round" onclick = 'window.location.href="../bursar/report.php" '>Payment Report</button>
			
			
	</nav>
	
</body>
</html>