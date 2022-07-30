<?php
		session_start();
		include '../../teach_conn.php';
		
		$class = $_SESSION['class'];
		$myclass = strtolower(str_replace(" ", "",$class."_3rd_term")); //change
		$comment = str_replace("'", "",$_POST['comm']);
		$id = $_POST['id'];
		
		$update = "UPDATE `$myclass` SET teach_com = '$comment' WHERE ID = '$id' ";
		$update_query = mysqli_query($Son, $update);
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Comment Result:.</title>
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
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
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
	#myhead h1 span{
		color: yellow;
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
			font-size: 1.7vw;
		}
		h2{
			color: yellow;
			text-align: center;
			font-family: Gabriola;
			font-size: 2vw;
		}
		form, button{
			margin-left: 40%;
			width: 20%;
			font-family: teen;
		}
		input[type=submit]{
			cursor: pointer;
		}
		@media only screen and (max-width: 768px){
				h2{font-size: 5vw; margin-top: 9%;}
				form, button{width:98%; margin-left: 1%;}
			}
		
	</style>
</head>
<body>
			<br /><br />
		<?php
			echo "<h2>Comment Entry Successful!</h2>";
			//fetching the last/highest id
			$max = "SELECT ID FROM `$myclass` WHERE ID = (SELECT MAX(ID)  FROM `$myclass`)"; 
			$maxquery = mysqli_query($Son, $max);
			$maximum = mysqli_fetch_assoc($maxquery);
			$highest_id = $maximum['ID'];
			
			//selecting the next id after the current one
			$identity = "SELECT ID, name FROM `$myclass` ORDER BY ID ASC ";
			$identity_query = mysqli_query($Son, $identity);
			$a = "";
			$b = "";
			while($row = mysqli_fetch_assoc($identity_query)){
				$current_id = $row['ID'];
				$current_name = $row['name'];
					if($current_id > $id){
						$a.=$current_id;
						$b.=$current_name;
						break;
					}
			}
			echo "<div class='container'>";
			
					if($id < $highest_id){
						//sending back to the previous page
					echo "<form action='class_com_3.php' method = 'POST' enctype = 'multipart/form-data'>";//change
								echo "<input type='text' name = 'id' value = '$a' hidden />";
								echo "<input type='text' name = 'name' value = '$b' hidden />";
								echo "<input class = 'w3-input w3-blue w3-round w3-hover-green' type='submit' value = 'Next Student' />";
								
					echo "</form>";
						echo "<br /><br />";
						echo "<button onclick = 'window.location.href=`comm_3.php`' class = 'w3-button w3-blue w3-round w3-hover-green'>Comment Page</button>"; //change
					}elseif($id == $highest_id){
						echo "<h2>This is the last Student</h2>";
						echo "<br /><br />";
						echo "<button onclick = 'window.location.href=`comm_3.php`' class = 'w3-button w3-blue w3-round w3-hover-green'>Comment Page</button>"; //change
					}
			echo "</div>";
		?>
</body>
</html>