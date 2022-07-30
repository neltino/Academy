<?php
		
		session_start();
		$class = $_SESSION['class'];
		$myclass = $_SESSION['class'];
		$new = strtolower(str_replace(" ", "",$class."_1st_term"));
		$id = $_POST['id'];
		
		include '../../teach_conn.php';

	$query = "SELECT name FROM `$new` WHERE ID = '$id'";
	$submit = mysqli_query($Son, $query);
	$result = mysqli_fetch_assoc($submit);
	

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Delete Student:.</title>
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
		h2{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
		}
		form{
			width: 32%;
			margin-left: 38%;
			font-family: teen;
		}
		form input[type=submit]{
			cursor: pointer;
		}
		#button{
			max-width: 32%;
			margin-left: 38%;
			font-family: teen;
			cursor: pointer;
		}
		h2 i{
			color: magenta;
		}
	@media only screen and (max-width: 768px){
		#myhead h1, h2{font-size: 5vw;}
		
			form{width: 98%; margin-left: 1%;}
			#button{min-width: 98%; margin-left: 1%; margin-top: 2%; margin-bottom: 90%;}
		}
	
	</style>
</head>
<body>
		<div class = "noprint">
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Remove Class Members</h1> 
					
		</div>
		<?php include 'asideform.php';?>
		<h2>Are you sure you want to delete <i><?php echo $result['name'];?></i> ?</h2>
		<br /> <br /> 
		
		<form action="stud_delete.php" method = "POST" enctype = "multipart/form-data"> 
				<input type="text" name = "id" value = "<?php echo $id; ?>" hidden />
				
				<br />
				
				<input type="submit" value = "Yes" class = 'w3-input w3-round w3-blue w3-hover-green' />
				
		</form>
		<button id = 'button' onclick = 'window.location.href="register.php"'type='submit' class = 'w3-input w3-round w3-blue w3-hover-green' >No</button> 
		

	
</body>
</html>