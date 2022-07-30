<?php
		include '../all_conn.php';
		 $id = $_POST['id'];
		
		if(isset($_POST['one'])){
			$caption = "Classes:";
			$item = 'classes';
		}elseif(isset($_POST['two'])){
			$caption = "Sports Houses:";
			$item = 'houses';
		}elseif(isset($_POST['three'])){
			$caption = "Admission Number Format/Initials:";
			$item = 'reg';
		}
		//selecting
		$select = "SELECT `$item` FROM `admin_info` WHERE ID = '$id' ";
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
	<title>.:Admin Info Edit:.</title>
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
				background: url(../img/abstract.jpg) repeat;
				background-size: cover;
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
		h3{
			color: #ef3939;
			text-align: center;
			font-family: Gabriola;
		}
		form{
			font-family: Gabriola;
			width: 52%;
			margin-left: 25%;
			font-size: 1.1vw;
		}
		
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 1%;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			font-weight: bold;
			border-radius: 5%;
			width: 8%;
			padding-left: 1%;
			
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
		}
		input[type=text]{
			background: radial-gradient(#ffffff, #c5e8f5);
			font-family: teen;
		
		}
		input[type=submit]{
			font-family: teen;
		}
		h3 i{color: yellow;}
		
		@media only screen and (max-width: 768px){
				form{width: 98%; margin-left: 2%; font-size: 5vw;}
				legend{width: 10%;}
			}
		
		</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Basic Info</h1>
			</div>
			<?php include 'asideadmin.php';?>
			
			<div id="please">
					<h3><i>Please edit the following information:</i></h3>
			</div>	
		
		<form action="info_update_action.php" method = "POST" enctype = "multipart/form-data">
			<fieldset> 
				<legend>Edit</legend>
				<input name = 'id'  value = "<?php echo $id;?>"  hidden />
				
				<input type="text" name = 'caption'  value = "<?php echo $caption;?>" hidden /> 
				
				<label><?php echo $caption;?></label>
				<input class = "w3-input w3-round w3-border" type="text" name = 'classes'  value = " <?php echo $selecting[$item];?>" />
				<br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="submit" class = 'sub' />
			</fieldset>
		
		
		</form>
	
</body>
</html>