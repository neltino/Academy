<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Payment Info Delete:.</title>
	<link rel="icon" href="../img/soft.png" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css"> 
			body{
				background: url(../img/abstract.jpg) no-repeat;
				background-size: cover;
				background-position: center;
				
			}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			h3{
				margin-top: 80px;
				text-align: center;
				color: #ffffff;
				font-family: Gabriola;
				font-size: 28px;
			}
			h4{
				margin-top: 20px;
				text-align: center;
				color: #ffffff;
				font-size: 24px;
				font-family: Gabriola;
			}
			em{
				color: red;
			}
			input[type=submit], button{
			border:none; 
			background: #4caf50;
			color: #ffffff;
			font-family: teen;
			border-radius: 5px;
			margin-left: 30px;
			width: 100px;
			height: 30px;
		}
		input[type=submit]:hover, button:hover{
			background: #2196f3;
		}
		button{
			float: left;
			position: absolute;
			margin-top: -30px;
			margin-left: 50%;
		}
		input[type=submit]{
			margin-top: 20px;
			margin-left: 40%;
		}
	</style>
</head>
<body>
			<?php

					$id = trim($_POST['id']);
					$pay = trim($_POST['pay']);
			?>
				<h3>Deleting <em><?php echo $pay ?></em> from payment options will make you loose previous payment data.</h3>
					<h4> Do you want to continue?</h4>
					
			<form action="info_delete_action.php" method = "POST" enctype = "multipart/form-data"> 
			
					<input type="text" name = "id"  value = "<?php echo $id; ?>" hidden />
					<input type="text" name = "pay"  value = "<?php echo $pay; ?>" hidden />
					
					<input type="submit" value = "Yes"/>
			
			</form>
			<button onclick = "window.location.href='basic_info.php' ">No</button>
</body>
</html>

