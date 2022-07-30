<?php
	session_start();

	$name = $_SESSION["username"];
	$class = $_SESSION["class"];
	$id = $_SESSION["id"];
	$new = strtolower(str_replace(" ","", $class."_1st_term"));

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Form Teachers' Corner:.</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
			
			@font-face{
						font-family: zipty;
						src: url(../../myfont/zipty.otf);
					}
					
			@font-face{
						font-family: Aulyars;
						src: url(../../myfont/Aulyars.otf);
					}
			body{
				background: url(../../img/abstract.jpg) repeat;
				background-position: center;
				
			}
			i{
		color: whitesmoke;
		background: green;
		border-radius: 100%;
		background-size: cover;
	}

	#myhead h1{
		font-family: teen;
		font-size: 2vw;
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
	.home {
		float: left;
		color: whitesmoke;
	}
	.home:hover{
		cursor: pointer;
		color: #dbe1f2;
	}
		h3{
			color: white;
			text-align: center;
			font-family: Gabriola;
		}
		h3 i{
			color: #ffffff;
			font-size: 2vw;
			font-family: teen;
		}
		.all{
			margin-left: 20%;
			margin-top: 10%;
			width: 80%;
		}
		.all button{
			font-family: teen;
			width: 20%;
			text-align: center;
			font-size: 1.2vw;
			margin-top: 2%;
		}
		marquee{
			font-family: Gabriola;
			font-size: 1.5vw;
		}
		marquee b{
			color: yellow;
		}
		aside{
			z-index: 1;
		}
		form{
			width: 20%;
			margin-left: 40%;
		}
		@media only screen and (max-width: 768px){
				#myhead h4, marquee{font-size: 4vw;}
				.all{width: 100%; margin-left: 0;}
				.all button{width: 98%; margin-left: 1%; font-size: 4vw;}
			}
	
	</style>
</head>
<body>
					<div id = "myhead" class = "w3-container w3-blue">
								<div class = "home">
									<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
								</div>
								<h1 class = "w3-center" >FORM TEACHERS' DASHBOARD</h1>
								 
								<h4>User: <em><?php echo $name;?></em> &emsp; &emsp; &emsp; &emsp;Current Class: <em><?php echo $class?></em> </h4>
					</div>
		

		<?php
			include 'asideform.php';
			include '../../all_conn.php';
			include '../../teach_conn.php';
			//marquee for change of password
			$query = "SELECT password1, password2 FROM users_form WHERE ID = '$id' ";
			$submit = mysqli_query($Father, $query);
			$answer = mysqli_fetch_assoc($submit);
			if($answer !== NULL && ($answer['password1'] == $answer['password2'])){
				echo "<div class = 'w3-container w3-brown'>";
						echo "<marquee><b>$name</b>, please consider changing your default password for security reasons!</marquee>";
				echo "</div>";
			}
			//checking if class exists
			$tab = "SHOW TABLES";
			$tab_query = mysqli_query($Son, $tab);
			$able = "";
			while($table = mysqli_fetch_assoc($tab_query)){
				if(strcmp($table['Tables_in_teachers'],$new) == 0){
					$able.=$table['Tables_in_teachers'];
				}
				
			}
			if($able != ""){
					//marquee for Birthdays
					$table = "SHOW tables";
					$table_query = mysqli_query($Son, $table);
					$a = "";
					while($ble = mysqli_fetch_assoc($table_query)){
						$a.=$ble['Tables_in_teachers'];
					}
						$res = strchr($a, $new);
						if($res !== False){
							
									$month = date('F');
					
					$birthday = "SELECT name, DOB FROM `$new` WHERE DOB LIKE '%$month%' ORDER BY DOB ASC";
					$birth_query1 = mysqli_query($Son, $birthday);
					$birth_query2 = mysqli_query($Son, $birthday);

					$check = mysqli_fetch_assoc($birth_query1);
					
					$count = 1;
					
					$verify = "SELECT COUNT(name) AS counting FROM `$new` WHERE DOB LIKE '%$month%'";
					$verify_query = mysqli_query($Son, $verify);
					$myval = mysqli_fetch_array($verify_query);
					
					$counting = $myval['counting'];
					
					
					
					if($check !== NULL){
						echo "<div class = 'w3-container w3-brown'>";
							echo "<marquee>";
								echo "<b>Student Birthdays for the Month of $month: </b>";
								while($birth = mysqli_fetch_assoc($birth_query2)){
									echo $birth['name']. " ";
									$plode = explode(",",$birth['DOB']);
									 $plode = $plode[0];
									 if($plode == 1 || $plode == 21 || $plode == 31){
										 $th = "st";
									 }elseif($plode == 2 || $plode == 22){
										 $th = "nd";
									 }else{
										 $th = "th";
									 }
									 echo $plode.$th;
									 if($count < $counting){
										 echo ",";
										 $count++;
									 }
									 echo " ";
									
									
								}
							echo "</marquee>";
						echo "</div>";
					}
							
						}
				
			}
			
		
		?>
	<div class = "all">
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="change_pass.php"' >Change Password</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="select_sub.php"' >Select Class Subjects</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="register.php"' >Register Class Members</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="class_domain.php"' >Psychomotor-Affective </button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="broadsheet.php"' >Broadsheets</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="comment.php"' >Form Teacher Comment</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="reportsheet.php"' >Termly Reportsheet</button>
			<button class = 'w3-button w3-round w3-blue w3-hover-green' onclick = 'window.location.href="singmul_sessional.php"' >Sessional Reportsheet</button>
		
	</div>
				<?php
				
				//checking num of classes assigned
				$check = "SELECT `classes` FROM `users_form` WHERE ID = '$id'";
				$check_query = mysqli_query($Father, $check);
				$value = mysqli_fetch_assoc($check_query);
				$num = $value['classes'];
				$exp = explode(",", $num);
				$count = count($exp);
				if($count > 1){
					
			
				//for change of class
				echo "<br /><br />";
					echo "<form name = 'myform' onchange = 'myfunct()' action='../intermediate.php' method = 'POST' enctype = 'multipart/form-data' class = 'newform'>";
					echo "<select class = 'w3-select w3-round w3-border-green' name = 'class'>";
						echo "<option value=''>Select to Change Class </option>";
						
							foreach($exp as $ex){
								echo "<option value='$ex'>$ex</option>";
							}
					echo "</select> &nbsp;";
							echo "<input type='text' name = 'name' value = '$name' hidden />";
							echo "<input type='text' name = 'id' value = '$id' hidden />";
							
							echo "<input type='text' value = 'change' name = 'change' hidden />";// change
					echo "</form>";
					
					echo "<script>
							function myfunct(){
								var x = document.forms['myform']['class'].value;
								if(x == ''){
									alert('Class cannot be empty, please select a valid class');
								}else{
									myform.submit();
								}
							}
					</script>";
				}
				echo "<br /><br />";
			?>
				
					
				
	
</body>
</html>