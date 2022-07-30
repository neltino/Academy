<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit Class:.</title>
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
			}
			

	i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-position: center;
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
		}
		form{
			font-family: Gabriola;
			width: 32%;
			margin-left: 35%;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 1vw;
			font-weight: bold;
			font-style: italic;
		}
		input[type=text]{
			background: radial-gradient(#ffffff,#b6dcfb);
			font-family: teen;
		}
		fieldset{
			border: 2px solid #8dd242;
			background: #ffffff;
			border-radius: 5px;
		}
		legend{
			background: #4caf50;
			color: #ffffff;
			padding: 3px;
			border-radius: 5px;
			font-family: teen;
		}
		label{
			color: #0ba6f4;
			font-weight: bold;
			font-size: 1.2vw;
		}
		
		input[type=submit]{
			font-family: teen;
			cursor: pointer;
		}
		
		
		@media print{
			form, h3 i, table th:last-child, #info{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
		
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form input[placeholder]{font-size: 4vw;}
			h3 i{font-size: 5vw;}
			
			}
	
	</style>
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Class</h1>
				</div>
			<?php include 'asideexams.php';?>
			<div id="please">
					
				</div>	
		<?php
			include '../all_conn.php';
			$id = $_POST['edit'];
			$query = "SELECT classes FROM classes WHERE ID = '$id'";
			$submit = mysqli_query($Father, $query);
			$result = mysqli_fetch_assoc($submit);
			echo "<h3><strong>Edit <i style = 'color:magenta; font-family: teen;'>$result[classes] </i>?</strong></h3>";
		
		?>
		
		
		<form action="classes_edit_action.php" method = "POST" enctype = "multipart/form-data"> 
			<fieldset> 
					<legend>Edit Class</legend>
					<label for="username">Class:</label>
					<input class = "w3-input w3-round w3-border" type="text" type="text" name = "classes" value = '<?php echo $result["classes"]?>'  required  autofocus/>
					<input type="text" name = "id"  value = '<?php echo $id ?>' hidden />
					 <br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" value = "Edit" />
					
			
			</fieldset>
		</form>
		
</body>
</html>