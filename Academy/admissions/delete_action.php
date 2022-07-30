<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Confirm Delete:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<style type="text/css"> 
	@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
					}
			body{
				background: #f0f0f0;
				font-family: teen;
			}
			
			h3{
				margin-top: 10%;
				text-align: center;
				color:#e93838;
				font-family: teen;
			}
			
			input[type=submit]{
				font-weight: bold;
				margin-top: 1%;
				width: 25%;
				margin-left: 37%;
				font-family: teen;
				cursor: pointer;
			}
			
			@media only screen and (max-width: 768px){
				h5{font-size: 4vw;}
				h1{font-size: 1vw;}
				table{width: 98%; margin-left: 2%; font-size: 3vw;}
			}
	</style>
</head>
<body>
	<?php
			include '../all_conn.php';
			$id = $_POST['id'];
			$class = $_POST['class'];
			$select = "SELECT Surname, FirstName, OtherNames FROM `students` WHERE AdmissionNumber = '$id'";
			$select_query = mysqli_query($Father, $select);
			$student = mysqli_fetch_assoc($select_query);
			$name = $student['Surname']." ".$student['FirstName']." ".$student['OtherNames'];
			
			echo "<h3>Are you sure you want to delete <em style = 'color: #4a8af4; '>$name</em> ? </h3>";
	?>
	<form action="delete_confirm.php" method = "POST" enctype = "multipart/form-data">
			<input type="text" name = "id" value = "<?php echo $id ?>" hidden />
			<input class = 'w3-input w3-green w3-round w3-hover-blue' type="submit" value ="Yes" />
	</form>
	<form action="deleting.php" method = "POST" enctype = "multipart/form-data" >
			<input type="text" name = "prev" value = "<?php echo $class ?>" hidden />
			<input class = 'w3-input w3-green w3-round w3-hover-blue' type="submit" value ="No" />
	</form>
	
</body>
</html>