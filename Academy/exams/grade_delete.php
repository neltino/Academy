<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Grade Delete :.</title>
	<link rel="icon" href="../img/soft.png" />
	<style>
			body{
				background: #f0f0f0;
			}
			.logout{
			text-decoration: none;
			text-align: center;
			background: linear-gradient(#2c9cff, #000000);
			border-radius: 10px;
			color: #ffffff;
			font-weight: bold;
			width: 70px;
			height: 20px;
			border: #83b800 solid 2px;
			font-family: Georgia;
			float: right;
			margin-right: 50px;
		}
		.logout:hover{
			text-decoration: none;
			text-align: center;
			background: linear-gradient(#83b800, #000000);
			border-radius: 10px;
			color: #ffffff;
			font-weight: bold;
			width: 70px;
			height: 20px;
			border: #ffffff solid 2px;
			font-family: Georgia;
			float: right;
			margin-right: 50px;
		}
		img{
			margin-left: 450px;
		}
		h3{
			color:#ef3939;
			text-align: center;
			margin-left: 100px;
		}
		form{
			
			margin-left: 250px;
			width: 800px;
		}
		
		
		
		input[type=submit]{
			background: linear-gradient(#2990ec,#646c7d);
			border: none;
			color: #ffffff;
			font-weight: bold;
			border-radius: 5px;
		}
		input[type=submit]:hover, [type=reset]:hover{
			background: #6ac239;
		}
		input[type=submit]{
			margin-left: 350px;
		}
		button{
			float: left;
			margin-left: 700px;
			margin-top: -53px;
			background: linear-gradient(#2990ec,#646c7d);
			border: none;
			color: #ffffff;
			font-weight: bold;
			border-radius: 5px;
		}
		button:hover{
			background: #6ac239;
		}
		.button{
				background: #ffffff; border: 1px solid #6ac239; border-radius: 3px; color: #ef3939; font-weight: bold; margin-left: 620px; margin-top: 20px;
				font-family: Times New Roman;
			}
			.button:hover{
				background: #6ac239;
				color: #ffffff;
			}
			
	</style>
	
</head>
<body>
<a class = "logout"href = "../outlog.php">Logout</a>
		<img src="../img/grade_delete.png" alt="Delete Class" />
		<?php
			include '../all_conn.php';
			$id = $_POST['delete'];
			$query = "SELECT grade FROM grades WHERE ID = '$id'";
			$submit = mysqli_query($Father, $query);
			$result = mysqli_fetch_assoc($submit);
			echo "<h3>Are you sure you want to delete <i style = 'color:#2990ec;'>'$result[grade]'</i> ?</h3>";
		
		?>
		
		
		<form action="grade_delete_action.php" method = "POST" enctype = "multipart/form-data"> 
			
					
					<input type="text" name = "id"  value = '<?php echo $id ?>' hidden />
					 <br /> <br />
					<input type="Submit" value = "Yes" />
		</form>
		<br /><br />
			<a href="grades.php"><button>No</button></a>
			<a href="grades.php"><button class = "button">Previous Page</button></a>
</body>
</html>