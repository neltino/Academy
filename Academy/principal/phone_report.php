<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Parents' Contact:.</title>
	<link rel="icon" href="../img/soft.png" />
	<link href = "../w3/w3css.css" rel = "stylesheet" >
	<link href = "../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
	@font-face{
						font-family: prestiji;
						src: url(../myfont/prestiji.otf);
					}
			@font-face{
						font-family: Lemonada;
						src: url(../myfont/Lemonada.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../myfont/teen.ttf);
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

	form{
		margin-left: 40%;
		font-family: prestiji;
		width: 32%;
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
	h2, h3, h4{
		text-align: center;
		color: yellow;
		font-family: Gabriola;
		font-size: 2vw;
	}
	h3{
		font-size: 3vw;
		color: yellow;
		margin-top: 15%;
	}
	 		a{
			text-decoration: none;
			color: #ef3939;
		}
		a:hover{
			color: #ffffff;
		}
		li{
			list-style: none;
			font-weight: bold;
			font-family: teen;
		}
		
		ul{
			
			background: #ffffff;
			width: 20%;
			border-radius: 5px;
			margin-left: 40%;
			border: 2px solid #6ac239;
			text-align: justify;
			padding-left: 2%;
		}
		
		li a{
			color: #6ac239;
			
		}
		li a:hover{
			color: #dc4c40;
		}
		
		@media only screen and (max-width: 768px){
			 h3{font-size: 6vw;}
			 h4{font-size: 4vw; margin-top: 7%;}
			 ul{width: 90%; margin-left: 5%;}
			
			}
		

	</style>
</head>
<body>

	<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Parents' Contact for Bulk SMS</h1>
				</div>
							
			
			
	
	
						<?php
								include 'asideprincipal.php';
								include '../all_conn.php';
								//selecting classes
								$classes = "SELECT `classes` FROM `admin_info`";
								$classes_query = mysqli_query($Father, $classes);
								$class = mysqli_fetch_assoc($classes_query);
								
								
								if($class['classes'] == NULL || $class['classes'] == "" || $class['classes'] == " "){
									echo "<h3>No student has been registered yet!</h3>";
									
									die();
								}else{
									
									echo "<h4>The Links below provide bulk SMS contacts of parents/guardians in text format. Please Click to download!</h4>";
									echo "<ul>";
									//selecting all contacts 
										$all = "SELECT `Phone` FROM `students` ";
										$all_query = mysqli_query($Father, $all);
										$contact = "";
										while($alling = mysqli_fetch_assoc($all_query)){
											$contact.=$alling['Phone'].",";
										}
										$contact = chop($contact, ",");
										$all_contact = fopen("sms\all_parents.txt", "w");
											fwrite($all_contact, $contact);
										fclose($all_contact);
										echo "<li><a href='sms/all_parents.txt' download >All Parents' Contact</a></li>";
								
								//contacts for classes
									$clas = str_replace(" ", "",chop($class['classes'], ","));
									//exploding 
									$explode = explode(",",$clas);
									foreach($explode as $ex){
										$others = "SELECT `Phone` FROM `students` WHERE Class = '$ex' ";
										$others_query = mysqli_query($Father, $others);
										
										$liste = "";
										while($list = mysqli_fetch_assoc($others_query)){
											$liste.=$list['Phone'].",";
										}
										if($liste == ""){
											echo "<li>$ex: No Parents' Contact</li>";
										}else{
											$liste = chop($liste, ",");
											$lass = fopen("sms/$ex.txt", "w");
											fwrite($lass, $liste);
											fclose($lass);
											echo "<li><a href='sms/$ex.txt' download >$ex Parents' Contacts</a></li>";
											
										}
										
									}
								echo "</ul>";
								}
								
						?>
					
				
	
	
	
</body>
</html>