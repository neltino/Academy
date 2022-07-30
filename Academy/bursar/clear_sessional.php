<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Clear Sessional Record:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			body{
				background: #f0f0f0;
			}
			h3{
				color: #f03939;
				font-style: italic;
				text-align: center;
			}
			input[type=submit]{
			 background: #7bca3d;
			 border: none;
			 font-weight: bold;
			 border-radius: 5px;
			 width: 150px;
			 height: 30px;
			 margin-left: 50px;
			 color: #ffffff;
			 font-family: Times New Roman, Ariel;
		 }
		 input[type=submit]:hover{
			 background: #4989f4;
		 }
		 .all{
			 margin-left: 400px;
		 }
		 span{
			 color: #4989f4;
		 }
		 
	
	</style>
</head>
<body>
		<h3>Are you Sure you want to clear <span>1st term, 2nd term and 3rd term</span> records?</h3> <br /><br />
		<form action="clear_sessional_action.php" method = "POST" enctype = "multipart/form-data"> 
				<div class = "all">
					<input type="submit" name = "Yes" value = "Yes" />
					<input type="submit" name = "No" value = "No" />
				</div>
		</form>
		
</body>
</html>