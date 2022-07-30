<?php
	include '../all_conn.php';
		
		$find = $_POST['id'];
		$las = $_POST['class'];
	
	$query = "SELECT Surname, FirstName, OtherNames, Class, TransactionDate FROM account3 WHERE AdmissionNumber = '$find'";
	$result = mysqli_query($Father, $query);
	
	$row = mysqli_fetch_array($result);
		
		$surname = $row['Surname'];
		$firstname = $row['FirstName'];
		$othernames = $row['OtherNames'];
		$class = $row['Class'];
		$date = $row['TransactionDate'];
		
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Payment 3rd Term:.</title>
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

			body{
				background: url(../img/abstract.jpg) repeat;
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
	strong span{
		color: blue;
	}
	h3 i{
		color: #ffffff;
		font-family: Gabriola;
		font-size: 2vw;
		text-align: center;
	}	
	legend{
		
		color: #ffffff;
		background: #4caf50;
		border-radius: 5px;
		padding: 3px;
	}
	
	fieldset{
		border-radius: 10px;
		border: #83b800 solid 2px;
		background: #ffffff;
	}
	form{
		
		margin-left: 25%;
		width: 60%;
		font-family: teen;
		font-size: 1vw;
	}
	h3, h4{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 2vw;
	}
	
	label{
		font-weight: bold;
	}
	input[type=number]{
		text-align: right;
	}
	.borderno{
		border:none;
		font-weight: bold;
		color: #4b8bf4;
	}
	.noborder{
		border:none;
		font-weight: bold;
		text-align: center;	
		
	}
	
	table{
		margin-left: 0;
		border-collapse: collapse;
		width: 100%;
	}
	th{
		color: #fa7821;
		text-align: center;
	}
	
	input[type=submit]{
		border:none;
		background: green;
		color: #ffffff;
		font-family: teen;
		width: 70%;
		cursor: pointer;
		margin-left: 15%;
		margin-top: 1%;
	}
	
	input[type=submit]:hover{
		background: #4a8af4;
	}
	
	em{
		color: magenta;
	}
	
	h3 i{
		color: yellow;
		font-size: 2w;
	}
	input[type=text]{
		width: 100%;
	}
	
	.special{
		border: solid 1px #4caf50; width: 100%;
		border-radius: 2px;
	}
	@media only screen and (max-width: 768px){
				h3 i{font-size: 5vw; margin-top: 10%;}
				form{margin-left: 1%; width: 98%; padding: 0; font-size: 3vw;}
				
			}
	</style>
</head>
<body>
		<?php
				$col = "SHOW COLUMNS FROM `account3` "; //change
				$col_query = mysqli_query($Father, $col);
				$listen = "";
				while($column = mysqli_fetch_assoc($col_query)){
					$column = $column['Field'];
					if($column != "SerialNo" && $column != "Surname" && $column != "FirstName" && $column != "AdmissionNumber" && $column != "OtherNames" && $column != "Class" && $column != "TransactionDate" ){
						$listen.=$column.",";
					}
				}
				if($listen == ""){
					echo "<h4>There are no payment items available yet, please create one!</h4>";
					echo "<h4>...You will be redirected shortly!</h4>";
						header("Refresh:5, url='basic_info.php'");
					die();
					
				}
			//correcting table
			$listen = trim($listen, ",");
					$exp = explode(",", $listen);
					
			$list = "";
				$burs = "SELECT `payment` FROM `burs_info`";
				$burs_query = mysqli_query($Father, $burs);
				
				while($bursing = mysqli_fetch_assoc($burs_query)){
					$dthing = $bursing['payment'];
					foreach($exp as $listening){
						
						if($listening == $dthing){
							$list.= $dthing.",";
						}
					}
				}
			?>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >3rd Term Payment</h1>
		</div>
		<?php include 'asidebursar.php';?>
		
			<h3><i>Please Supply information for <em>'New Payment'</em> fields only!</i></h3>
		
	<form action="3rdterm_update.php" method = "POST" enctype = "multipart/form-data">
	
		<fieldset> 
		<legend><strong>Payment Details</strong></legend>
			<p><strong>Full Name: &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; <span><?php echo $surname. " ". $firstname. " ". $othernames ?></span></strong></p>
			<p><strong>Admission Number: &emsp; &emsp; &ensp;<span><?php echo $find; ?></span></strong></p>
			<p><strong>Class: &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &emsp;&emsp; &ensp;<span><?php echo $class; ?></span></strong></p>
			<?php
				$type = "SELECT `type` FROM `info_sch`";
				$type_query1 = mysqli_query($Father, $type);
				$type_query2 = mysqli_query($Father, $type);
				$that = mysqli_fetch_assoc($type_query1);
				$then = mysqli_fetch_assoc($type_query2);
				
				
				if((trim($that['type']) == "Boarding") || (trim($then['type']) == "Day and Boarding")){
					$mytype = "SELECT type FROM `account3` WHERE AdmissionNumber = '$find' ";
					$mytype_query = mysqli_query($Father, $mytype);
					$truetype = mysqli_fetch_assoc($mytype_query);
					$typ = $truetype['type'];
					echo '<p><strong>Student type: &emsp;&emsp; &emsp;&emsp; &emsp;<span>'.$typ.'</span></strong></p>';
					
				}
		
		?>
			<input hidden type="text" name = "AdmissionNumber" value = "<?php echo $find; ?>" />
			<input hidden type="text" name = "las" value = "<?php echo $las; ?>" />
			<strong>Last Transaction Date: &emsp; <span><?php 
							if($date == "0000-00-00"){
								$date = "No Transaction yet!";
							}else{
								$date = $date;
							}
			echo $date; ?> </span> </strong>
			
				<table> 
					<th>Payment Item</th>
					<th>Previous Payment</th>
					<th>New Payment</th>
					<th>Total Payment</th>
					<?php
					$list = trim($list, ",");
					
					$explode = explode(",", $list);
					foreach($explode as $list){
					//selecting previous payment
						$previous = "SELECT `$list` FROM `account3` WHERE AdmissionNumber = '$find'"; //change 
						$previous_query = mysqli_query($Father, $previous);
						$pre = mysqli_fetch_assoc($previous_query);
						
					//selecting maximum value 
						$max = "SELECT `amount` FROM `burs_info` WHERE payment = '$list' ";
						$max_query = mysqli_query($Father, $max);
						$maxi = mysqli_fetch_assoc($max_query);
						$maxim = $maxi['amount'];
						
						$little = strtolower(str_replace(" ", "", $list));
						$little1 = $little."1";
						$little2 = $little."2";
						$little3 = $little."3";
						
					$vious = $pre[$list];
					
						echo "<tr>";
									if($list != "type"){
											
										if(isset($typ) && $typ == "Day" && $list == "Boarding Fee"){
											echo "<td><input type='text' value = '$list' class = 'noborder' readonly /></td>";
												echo "<td style = 'text-align: center;'>Not Applicable</td>";
												echo "<td style = 'text-align: center;'>Not Applicable </td>";
												echo "<td style = 'text-align: center;'>Not Applicable </td>";
										}else{
											echo "<td><input type='text' name = 'list[]' value = '$list' class = 'noborder' readonly /></td>";
												echo "<td><input id = '$little1' class = 'borderno' type='number' value = '$vious' readonly /></td>";
												echo "<td><input id = '$little2' type='number'  max = '$maxim' onKeyPress = '$little()' onKeyUp = '$little()' class = 'special' /></td>";
												echo "<td><input name = 'amount[]' id = '$little3' class = 'borderno' type='number' min = '0' max = '$maxim' readonly  onKeyPress = '$little()' onKeyUp = '$little()' /></td>";
										}
											
									}
									
									
						echo "</tr>";
						//outputing sum function
						echo "<script type='text/javascript'>";
									echo "function $little(){";
										echo " var $little1 = document.getElementById('$little1');";
										echo " var a = $little1.value;";
										
										echo " var $little2 = document.getElementById('$little2');";
										echo " var b = $little2.value;";
										
										echo " var total = document.getElementById('$little3');";
										echo " total.value = (Number(a) + Number(b));";
									echo "}";
						echo "</script>";
						
					}
						
					
					?>
					
				
				
				</table>
			
			
			<input hidden type="date" value = "<?php echo date("Y-m-d"); ?>" name = "TransactionDate"/> <br /><br />
			<input class = 'w3-input w3-round w3-green w3-hover-blue' type="submit" value = "Update Payment"/>
		</fieldset>
	</form>
		<form action="class_list3.php" method = "POST" type = "multipart/form-data" class = "can" >
				<input type="text" name = 'prev' value = "<?php echo $las;?>" hidden />
				<input  type="submit" value = "Previous Page" class = 'w3-input w3-round w3-green w3-hover-blue' />
		</form>
</body>
</html>