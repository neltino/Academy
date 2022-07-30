<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Password Update Result:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<style type="text/css"> 
		@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			
	
		body{
			background: #f0f0f0;
			
		}
		h2{
			text-align: center;
			color: red;
			margin-top: 10%;
			font-family: Gabriola;
			font-size: 2vw;
		}
		@media only screen and (max-width: 768px){
				h2{font-size: 5vw; margin-top: 10%;}
			}
	
	
	</style>
</head>
<body>
	
</body>
</html>


<?php
		include '../../all_conn.php';
		
		$id = trim($_POST['id']);
		$new1 = trim($_POST['new1']);
		$new2 = trim($_POST['new2']);
		$question = trim($_POST['question']);
		$answer = trim($_POST['answer']);
		
			if($new1 == $new2){
				$query = "UPDATE users_form SET password2 = '$new1', question = '$question', answer = '$answer'  WHERE ID = '$id'";
				$submit = mysqli_query($Father, $query);
				echo "<h2>Password Reset Successful!</h2>";
				header("Refresh: 3, url=my_form.php");
				
			}else{
				
				echo "<h2>Sorry, The new password and the retyped new password do not match!
				<br /> ...please, retype passwords!</h2>";
				header("Refresh: 3, url=change_pass.php");
				
				
			}
		


?>