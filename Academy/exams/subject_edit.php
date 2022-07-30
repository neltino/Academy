<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit Subject:.</title>
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
			width: 32%;
			margin-left: 35%;
			margin-top: 5%;
		}
		input[placeholder]{
			font-family: teen;
			font-size: 1vw;
			font-weight: bold;
			font-style: italic;
		}
		input[type=text]{
			background: radial-gradient(#ffffff,#b6dcfb);
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
		
		input[type=submit], input[type=text]{
			font-family: teen;
		}
		input[type=submit]{
			cursor:pointer;
		}
		
		h3 i{
			color: yellow;
		}
		h2{
			text-align: center;
			font-family: teen;
			color: indigo;
		}
		@media print{
			.noprint{display: none;}
			h2, h3{color: #000000;}
			body{font-size: 9pt;}
			table{margin-left: 0px; color: black; border: 2px solid black;}
			form, h3 i, table th:last-child, #info{display:none}
			table caption{color: black;}
			table th, td{border: 2px solid black;}
			
		}
		@page{
			size: A4 portrait;
		}
		
		@media only screen and (max-width: 768px){
		form{width: 98%; margin-left: 1%;}
			form label{font-size: 5vw;}
			form input[placeholder]{font-size: 4vw;}
			h3 i{font-size: 5vw;}
			table{width: 98%; margin-left: 1%; font-size: 3vw;}
			}
		
		
	
	</style>		
</head>
<body>
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit Subject</h1>
				</div>
			<?php include 'asideexams.php';?>

		<?php
			include '../all_conn.php';
			$id = $_POST['edit'];
			$query = "SELECT subject, abbreviation FROM subjects WHERE ID = '$id'";
			$submit = mysqli_query($Father, $query);
			$result = mysqli_fetch_assoc($submit);
			
		
		?>
		
		<h3><i>Please edit the subject name or abbreviation</i></h3>
		<form action="subject_edit_action.php" method = "POST" enctype = "multipart/form-data"> 
			<fieldset> 
					<legend>Edit Subject:</legend>
					<label for="username">Subject:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "subject" value = '<?php echo $result["subject"];?>'  required />
					<label for="abbr">Abbreviation:</label>
					<input class = "w3-input w3-round w3-border" type="text" name = "abbreviation" value = "<?php echo $result["abbreviation"];?>" required/>
					
					<input type="text" name = "id"  value = '<?php echo $id ?>' hidden />
					 <br />
					 
					 <input type = "text" name = "oldsub" value = '<?php echo $result["subject"];?>'  hidden />
					 <input type = "text" name = "oldabb" value = "<?php echo $result["abbreviation"];?>" hidden />
					 
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" />
					
			
			</fieldset>
		</form>
		
</html>