<?php
	session_start();
	
	$id = $_SESSION['id'];
	include '../../all_conn.php';

	
	$query = "SELECT username, name, question, answer, password2 FROM users_sub WHERE ID = '$id' ";
	$submit = mysqli_query($Father, $query);
	
	$ans = mysqli_fetch_assoc($submit);

?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Recover Password</title>
	<link rel="icon" href="../../img/soft.png" />
	<link href = "../../w3/w3css.css" rel = "stylesheet" >
	<link href = "../../css/all.css" rel = "stylesheet" >
	<style type="text/css"> 
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
					}
			@font-face{
						font-family: Gabriola;
						src: url(../../myfont/Gabriola.ttf);
					}
			@font-face{
						font-family: teen;
						src: url(../../myfont/teen.ttf);
					}
					
					@font-face{
						font-family: Lemonada;
						src: url(../../myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(../../myfont/Quesat.otf);
					}
					
					@font-face{
						font-family: prestiji;
						src: url(../../myfont/prestiji.otf);
					}
	body{
			background: #f0f0f0;
			
		}
	

	#myhead h1{
		font-family: Lemonada;
		font-size: 2vw;
	}
	#myhead h3{
		font-family: Gabriola;
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
	form{
		margin-left: 32%;
		width: 40%;
	}
	form select{
		background: white;
	}
	h4{
		text-align: center;
		color: red;
		font-family: teen;
		margin-top: 10%;
		font-size: 1.2vw;
	}
	form h4{
		font-family: prestiji;
		color: red;
		text-align: center;
	}
	h4 i{
		color: blue;
	}
	b{
		font-family: teen;
	}
	input[type=submit], input[placeholder]{
		font-family: teen;
	}
	form input[type=submit]{
		cursor: pointer;
	}
	h5{
		color: red;
		text-align: center;
		font-family: teen;
		margin-top: 2%;
	}
	h5 i{
		color: blue;
	}
	button{
		text-align: center;
		font-family: teen;
		margin-left: 46%;
	}
	u{
		color: royalblue;
	}
	@media only screen and (max-width: 768px){
				form{width: 90%; margin-left: 5%;}
				#myhead h1{font-size: 4vw;}
				#myhead h3{font-size: 3vw;}
				h4{font-size: 3vw;}
				
			}
		
	
	</style>
</head>
<body>
		<?php
			if($ans['question'] == ""){
				echo "<h4>You do not have a recovery Question. Please ask the Examination Officer for your default <u>username</u> and <u>password</u> !</h4>";
				header("Refresh: 5, url=../logout_sub.php");
				
				die();
			}
	?>
		<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Recovery Question</h1>
					<h3><?php echo $ans['name']; ?>, welcome. Please supply the answer to your security question!</h3>
		</div>
		
		
		<br />
		
		<?php  
			
				
			echo "<form action='' method = 'POST' enctype = 'multipart/form-data' >";
				
					echo "<h4>Your secret question is: <i>$ans[question]</i> ?</h4>";
					echo "<input class = 'w3-input w3-round w3-border-green' placeholder = 'Your answer here!' type='text' name = 'result' required autocomplete = 'off'/> <br /> ";
					echo "<input class = 'w3-input w3-round w3-green w3-hover-blue' type='submit'  value = 'Get Password'/>";
			echo "</form>";
			
				if(isset($_POST['result'])){
					$result = trim($_POST['result']);
						if($result == $ans['answer']){
					echo "<h5 style = 'color: #4caf50;'>Congratulations!</h5>";
					echo "<h5>Your Username is: <i> $ans[username]</i></h5>";
					echo "<h5>Your Password is: <i> $ans[password2]</i></h5>";
					
					echo "<button class = 'w3-button w3-round w3-green w3-hover-blue' onclick = 'window.location.href=`../logout.php`'>Login</button>";
					
				}elseif($result !== $ans['answer']){
					echo "<h5>Incorrect answer. Please try again!</h5>";
					echo "<br />";
					echo "<button class = 'w3-button w3-round w3-green w3-hover-blue' onclick = 'window.location.href=`../logout.php`'>Logout</button>";
					
				}
					
				}
						
		?>
		
		
</body>
</html>