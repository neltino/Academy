<?php
		include '../all_conn.php';
		 $id = $_POST['id'];
		 $pay = $_POST['pay'];
		 
		 
		
		
		//selecting
		$select = "SELECT * FROM `burs_info` WHERE `ID` = '$id' ";
		$select_query = mysqli_query($Father, $select);
		$selecting = mysqli_fetch_assoc($select_query); 
		

?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<title>.:Bursar Info Edit:.</title>
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
				background: url(../img/abstract.jpg) no-repeat;
				background-size: cover;
				
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100px;
		background-size: cover;
	}

	#myhead h1{
		font-family: Lemonada;
		font-size: 28px;
	}
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
		h3{
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
		}
		form{
			font-family: Gabriola;
			width: 500px;
			margin-left: 450px;
			font-size: 18px;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 14px;
			font-weight: bold;
			font-style: italic;
		}
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 5px;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			font-weight: bold;
			border-radius: 5px;
			padding: 0px 10px;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
		}
		input[type=text], input[type=number]{
			background: radial-gradient( #ffffff,#c5e8f5);
			font-family: teen;
		}
		input[type=submit]{
			font-family: teen;
		}
		</style>
</head>
<body>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Payment Items Edit</h1>
				</div>
			<?php include 'asidebursar.php';?>
			<div id="please">
					<h3><i>Please edit the items below:</i></h3>
				</div>	
		<form action="info_update_action.php" method = "POST" enctype = "multipart/form-data">
			<fieldset> 
				<legend> Edit </legend>
				<input type="text" name = 'id'  value = "<?php echo $id;?>" hidden />
				<label>Payment</label>
				<input class = "w3-input w3-round w3-border" type="text" name = 'payment'  value = "<?php echo trim($selecting['payment']);?>" required />
				<input type="text" name = 'old'  value = "<?php echo trim($selecting['payment']);?>" required hidden />
				<label for="">Amount</label>
				<input class = "w3-input w3-round w3-border" type="number" name = 'amount'  value = "<?php echo trim($selecting['amount']);?>" required />
				<br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit"  class = 'sub' />
				
			</fieldset>
		
		
		</form>
	
</body>
</html>