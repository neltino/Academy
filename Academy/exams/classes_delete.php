<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Delete Class:.</title>
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<link rel="icon" href="../img/soft.png" />
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
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
		}
		
	input[type=submit]{
		margin-left: 40%;
		width: 20%;
		
	}
	.no button{
		float: left;
		margin-left: 40%;
		width: 20%;
	}
	input[type=submit], .no button{
		font-family: teen;
	}
		@media print{
			form, h3 i, table th:last-child, #info{display:none}
			table{margin-left: 0}
			table caption{color: indigo;}
		}
	
	@media only screen and (max-width: 768px){
		h3{font-size: 5vw;}
		input[type=submit], .no button{ width: 98%; margin-left: 1%; margin-top: 1%;}
			
			}
	</style>
	
</head>
<body>
			
			<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Delete Class</h1>
				</div>
			<?php include 'asideexams.php';?>
		<?php
			include '../all_conn.php';
			$id = $_POST['delete'];
			$query = "SELECT classes FROM classes WHERE ID = '$id'";
			$submit = mysqli_query($Father, $query);
			$result = mysqli_fetch_assoc($submit);
			echo "<h3>Are you sure you want to delete <i style = 'color:magenta; font-family: teen;'> $result[classes]</i> ?</h3>";
		
		?>
		
	<div class = "all">
		<form action="classes_delete_action.php" method = "POST" enctype = "multipart/form-data"> 
			
					
					<input type="text" name = "id"  value = '<?php echo $id ?>' hidden />
					 <br /> <br />
					<input class = "w3-input w3-round w3-green w3-hover-blue" type="Submit" value = "Yes" />
		</form>
		<div class="no"> 
				<button class = "w3-input w3-round w3-green w3-hover-blue" onclick = "window.location.href='classes.php'">No</button>
		</div>
	</div>
</body>
</html>