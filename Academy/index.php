<?php
		ini_set('max_execution_time', 0);
	//settings...
	if(file_exists('psd/chronos.htpasswd')){
		
		$check = file('psd/chronos.htpasswd');
		$verify = trim($check[0]);
		
		if($verify == "kairos"){
	
			 $pin1 = trim($check[1]);
			 $pin2 = trim($check[2]);
			 $pin3 = trim($check[3]);
			 $pin4 = trim($check[4]);
			 $pin5 = trim($check[5]);
			 $pin6 = trim($check[6]);
	
			$link = mysqli_connect("localhost", "$pin1", "");
	
	//creating dbs
			$db = "CREATE DATABASE $pin4";
			$sub = mysqli_query($link, $db);
			$db = "CREATE DATABASE $pin5";
			$sub = mysqli_query($link, $db);
			$db = "CREATE DATABASE $pin6";
			$sub = mysqli_query($link, $db);
	//creating user
			$user = "CREATE USER '$pin3'@'localhost' IDENTIFIED BY '$pin4'";
			$usersub = mysqli_query($link, $user);
	//granting
			$grant = "GRANT ALL ON *.* TO '$pin3'@'localhost' WITH GRANT OPTION";
			$grantsub = mysqli_query($link, $grant);
	//importing 
			
			$file = 'psd/academy.sql';
			if($fp = file_get_contents($file)){
				$var_array = explode(';', $fp);
				
				foreach($var_array as $value){
					mysqli_query($link, $value);
				}
			}
	
	//resetting...
	
			if (@mysql_connect("localhost", "$pin1", "")) {
			mysql_select_db("mysql");

			mysql_query("SET PASSWORD = PASSWORD('$pin2')");  
			mysql_query("FLUSH PRIVILEGES");
			mysql_close();
		} 
	//rewriting...
	
		$myfile = fopen("psd/chronos.htpasswd", "w") or die("Unable to open file!");
		$txt = "chronos";
		fwrite($myfile, $txt);
		fclose($myfile);
			
		}
		
	}


?>


<! DOCTYPE html>
<html lang = "en" >
	<head>
			<meta charset="UTF-8">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<link rel="icon" href="img/soft.png" />
			<title>.:Home:.</title>
			<link href = "w3/w3css.css" rel = "stylesheet" >
			<link href = "css/all.css" rel = "stylesheet" >
			<style>
					@font-face{
						font-family: Gabriola;
						src: url(myfont/Gabriola.ttf);
					}
					@font-face{
						font-family: teen;
						src: url(myfont/teen.ttf);
					}
					@font-face{
						font-family: Anydore;
						src: url(myfont/Anydore.otf);
					}
					@font-face{
						font-family: Avengers;
						src: url(myfont/Avengers.ttf);
					}
					@font-face{
						font-family: Aerolite;
						src: url(myfont/Aerolite.otf);
					}
					@font-face{
						font-family: Adine;
						src: url(myfont/Adine.ttf);
					}
					@font-face{
						font-family: Andaluzia;
						src: url(myfont/Andaluzia.ttf);
					}
					@font-face{
						font-family: Aulyars;
						src: url(myfont/Aulyars.otf);
					}
					@font-face{
						font-family: caboge;
						src: url(myfont/caboge.otf);
					}
					@font-face{
						font-family: cac;
						src: url(myfont/cac.ttf);
					}
					@font-face{
						font-family: Donatello;
						src: url(myfont/Donatello.otf);
					}
					@font-face{
						font-family: Lemonada;
						src: url(myfont/Lemonada.ttf);
					}
					@font-face{
						font-family: Quesat;
						src: url(myfont/Quesat.otf);
					}
					@font-face{
						font-family: zeyada;
						src: url(myfont/zeyada.ttf);
					}
					@font-face{
						font-family: zeferino;
						src: url(myfont/zeferino.ttf);
					}
					@font-face{
						font-family: zipty;
						src: url(myfont/zipty.otf);
					}
					@font-face{
						font-family: prestiji;
						src: url(myfont/prestiji.otf);
					}
					
					body{
						background: url(img/kimon.jpg) repeat;
						background-size: cover;
						background-position: center;
						
						
					}
					
					nav{
						font-family: Gabriola;
						margin-left: 0;
						margin-top: 1%;
						margin-left: 13%;
					}
					
					nav ul{
						
						padding: 0px;
						margin: 0px;
						list-style: none;	
					}
					nav ul li{
						
						float: left;
						width: 15%;
						height: 6.5%;
						background: #000000;
						opacity: .8;
						line-height: 2.2;
						text-align: center;
						font-size: 1.3vw;
						
					}
					
					
					nav ul li a{
						color: #ffffff;
						text-decoration: none;
						display: block;
					}
					nav ul li a:hover{
						background: green;
					}
					
					
					nav ul li button{
						display: none;
						width: 99.5%;
						cursor: pointer;
						background: black;
						color: white;
						border:none;
						text-align: left;
						padding-left: 10%;
					}
					nav ul li:hover button{
						display: block;
					}
					nav ul li span{
						width: 99.5%;
						cursor: pointer;
						background: black;
						color: white;
						border:none;
						text-align: left;
					}
					nav ul li span:hover{
						background: green;
					}
					nav ul li:last-child span{
						border-top-right-radius: 5px;
					}
					
					nav ul li button:hover{
						background: green;
					}
					nav ul li:first-child{
						border-top-left-radius: 5px;
					}
					
					nav ul li:first-child ul li{
						border-top-left-radius: 0px;
						border-bottom-left-radius: 0px;
						
					}
					
					
					nav ul li:nth-child(2) ul li{
						border-top-left-radius: 0px;
						border-bottom-left-radius: 0px;
					}
					
					
					nav ul li:first-child a:hover{
						border-top-left-radius: 5px;
						
					}
					
					
					nav ul li:first-child ul li a:hover{
						border-top-left-radius: 0px;
						border-bottom-left-radius: 0px;
					}
					
					nav ul li:nth-child(2) ul li a:hover{
						border-top-left-radius: 0px;
						border-bottom-left-radius: 0px;
					}
					
					nav ul li:last-child{
						border-top-right-radius: 5px;
					}
					
					
					nav ul li:nth-child(2) ul li:last-child{
						border-top-right-radius: 0px;
						
					}
					
					nav ul li:nth-child(2) ul li:last-child a:hover{
						border-top-right-radius: 0px;
					}
					
					
					nav ul li:last-child a:hover{
						border-top-right-radius: 5px;
					}
					
					nav ul li:first-child ul li{
						border-top-right-radius: 0px;
						border-bottom-right-radius: 0px;
						
					}
					
					nav ul li:first-child ul li a:hover{
						border-top-right-radius: 0px;
						border-bottom-right-radius: 0px;
						
					}
					nav i{
						color:#ffffff;
					}
					
				*{
					margin: 0px;
					padding: 0px;
				}
				#sidebar{
					position: fixed;
					width:15%;
					height: 100%;
					font-family: Gabriola;
					background: black;
					opacity: .8;
					font-size: 1vw;
					margin-left: -15%;
					padding: 0;
				}
				#sidebar.active{
					margin-left: 0;
				
				}
				
				#sidebar ul li{
				
					padding-left:2px;
				}
				#sidebar ul li a{
					text-decoration: none;
				}
				#sidebar .toggle{
					position: absolute;
					left:100%;
					top: -5px;
					cursor: pointer;
				}
				#sidebar .toggle span{
					display: block;
					width: 30px;
					height: 5px;
					background: #fe5b07;
					margin: 5px 0px; 
					font-weight: bold;
				}
				
				#sidebar img{
					width: 100%;
				}
				.container{
					width: 100%;
					font-size: 1vw;
				}
				.container button{
					width: 100%;
					text-align: left;
					background: green;
					border: none;
					outline: none;
					color: white;
					padding: 5px;
					cursor: pointer;
					font-size: 1.3vw;
					
				}
				.container button:hover, button.accordion.is-open{
					background-color: orange;
					transition: background-color 0.3s linear;
				}
				button.accordion::after{
					font-family: 'Font Awesome 5 Free';
					font-weight: 900;
					content: '\f103';
					font-size: 14px;
					float: right;
				}
				button.accordion.is-open::after{
					content: '\f101';
				}
				.accordion-content{
					padding: 0px 5px;
					border-left: solid 2px red;
					color: white;
					max-height: 0px;
					overflow: hidden;
				}
				
				.accordion-content button{ 
					border: none;
					background: none;
					cursor: pointer;
				}
				.accordion-content button:hover{
					background: grey;
					width: 100%;
				}
				.middle{
					float: left;
					margin-top: 7%;
					margin-left: 10%;
					padding: 0;
				}
				h1.easy{
					font-family: zeferino;
					color: white;
					margin-top: auto;
					font-size: 20vw;
					text-shadow: 5px 5px 5px #2a5598;
				}
				.middle h2{
					color: white;
					font-family: zeyada;
					text-shadow: 5px 5px 5px #ff1b2d;
					font-weight: bold;
					font-size: 1.5vw;
					text-align: center;
					margin-left: 10%;
				}
				.middle h2 span{
					font-family: prestiji;
					text-shadow: 5px 5px 5px #fa751b;
					text-align: center;
				}
				.easy img{
					width: 200px;
					height: 200px;
				}
				.middle table{
					margin-top: 2%;
				}
				.buttons{
					font-size: 1vw;
					margin-left: 5%;
				}
				.buttons button{
					width: 33%;
					font-family: prestiji;
					padding: 1% 0;
					float: left;
					
				}
				.buttons h4{
					color: white;
					font-family: Aerolite;
					text-align: center;
					text-shadow: 2px 2px 2px #2a5699;
					
				}
				table{
					border-collapse: collapse;
					border: none;
					float: left;
					margin-left: 20%;
				}
			table td{
				border: none;
				line-height: 0.2;
			}
			#alert{
				display: none;
				z-index: 1;
				width: 60%;
				height: 70%;
				margin-top: 5%;
				margin-left: 20%;
				margin-right: 20%;
				border-radius: 5px;
				position: absolute;
				opacity: .9;
				background: black;
				color: white;
				text-align: right;
			}
			#alert span{
				font-size: 3vw;
				cursor: pointer;
				padding-right: 5px;
				text-align: center;
			}
			#alert span:hover{
				color: green;
				background: white;
				border-radius: 7%;
				margin-right: 5px;
			}
			#alertcont table{
				color: white;
				width: 70%;
				margin-left: 15%;
				margin-top: 5%;
				height: 40%;
				font-family: teen;
			}
			#alertcont table caption{
				text-align: left;
				margin-left: 19%;
				color: #a8518a;
				font-size: 3vw;
				font-family: Gabriola;
			}
			#alertcont table td{
				padding-left: 20%;
			}
			
			@media only screen and (max-width: 768px){
				#sidebar.active{width: 60%; opacity: 1;}
				.container button{width: 100%; font-size: 5vw;}
				.middle{margin-left: -5%;}
				h1.easy{font-size: 35vw;}
				.middle h2{font-size: 4vw; margin-left: 30%;}
				.middle h2 span{font-size: 4vw;}
				.buttons{width: 100%; font-size: 4vw; margin-left: 15%; margin-top:30%;}
				.buttons button{width: 100%; margin-top: 2%;}
				#alert{width: 98%; margin-left: 1%; font-size: 4vw;}
				#alert table{margin-left: 0;}
				#alert table caption, #alert span{font-size: 6vw;}
				#alert table td{padding-left: 10px; font-size: 4vw;}
				nav{display: none;}
				
				@media only screen and (orientation: landscape){
					#sidebar{position: absolute; height: auto;}
					.container button{font-size: 3vw;}
					
				}
			}
			
			
			</style>
	</head>
	<body>	
				<div id="alert" > 
				<span title = 'close' onclick = 'show()'>&times;</span>
						<div id="alertcont" > 
								<table> 
										<caption>&copy; TishbehSoft, 2019</caption>
										<tr> 
											<td>Product:</td>
											<td>Tishbehsoft Academy+</td>
											
										</tr>
										<tr> 
											<td>Version:</td>
											<td>3.0.0</td>
											
										</tr>
										<tr> 
											<td>Phone:</td>
											<td>08106279274</td>
											
										</tr>
										<tr> 
											<td>email:</td>
											<td><i>tishbehcustomercare@hotmail.com</i></td>
											
										</tr>
								</table>
						</div>
				
				</div>
		<div class = 'col1'>
			<nav>
					<ul>
							<li><a href = '#'><i class = "fas fa-users">  </i> Login <i class = "fas fa-angle-down"></i></a>
									<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "principal" > Principal</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "admin"> Admissions Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "exams" > Examination Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "bursar" > Bursar</button>
										</form>
										<form action="teachers/form.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "form" > Form Teacher</button>
										</form>
										<form action="teachers/sub.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "subject" > Subject Teacher</button>
										</form>

							</li>
							<li><a href = '#'><i class = "fas fa-cog fa-fw"></i> Settings <i class = "fas fa-angle-down"></i></a>
							
											<form action="psd/set.php" method = "POST" enctype = "multipart/form-data">
												<button type = "submit" name = "form" > Set Password</button>
											</form>
											<form action="psd/reset.php" method = "POST" enctype = "multipart/form-data">
												<button type = "submit" name = "subject" > Reset Password</button>
											</form>	
							</li>
							<li><a href = '#'><i class = "fas fa-download"></i> Downloads <i class = "fas fa-angle-down"></i></a>
							
											
												<button onclick = "window.open('guides/installation_guide.pdf', '_blank')" > Installation Guide</button>
											
												<button onclick = "window.open('guides/academy+userguide.pdf', '_blank')" > User Guide</button>
											
							</li>
							
							<li><span style = 'display: block; text-align: center;' onclick = 'show()'  ><i class = "fas fa-info"></i> Info </span></li>
							<li><span style = 'display: block; text-align: center;' onclick = "window.location.href='end.html'"><i class = "fas fa-book"></i> Terms &amp; Conditions </span></li>
							
					</ul>
			</nav>
	</div>
	<br />
	
	<div> 
		
		<div id = "sidebar" class = '' > 
			<div class="toggle" onclick = "myToggle()"> 
					<span></span>
					<span></span>
					<span></span>
			</div>
			<img class = "easy" src="img/easy.png" alt="Tishbehsoft Logo"/>
					<div class = "container"> 
							<button class = "accordion"><i class = "fas fa-users"></i> Login</button>
								<div class = "accordion-content">
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "principal" > Principal</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "admin"> Admissions Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "exams" > Examination Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "bursar" > Bursar</button>
										</form>
										<form action="teachers/form.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "form" > Form Teacher</button>
										</form>
										<form action="teachers/sub.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "subject" > Subject Teacher</button>
										</form>
								</div>
							<button class = "accordion"><i class = "fas fa-cog fa-fw"></i> Settings</button>
									<div class = "accordion-content"> 
											<form action="psd/set.php" method = "POST" enctype = "multipart/form-data">
												<button type = "submit" name = "form" > Set Password</button>
											</form>
											<form action="psd/reset.php" method = "POST" enctype = "multipart/form-data">
												<button type = "submit" name = "subject" > Reset Password</button>
											</form>								
									</div>
								
							<button onclick = 'show()'><i class = "fas fa-info"></i> Info</button>
							<button onclick = "window.location.href='end.html'"><i class = "fas fa-book"></i> Terms &amp; Conditions</button>
							
							<button class = "accordion"><i class = "fas fa-download"></i> Downloads</button>
									<div class = "accordion-content"> 
											
												<button onclick = "window.open('guides/installation_guide.pdf', '_blank')" > Installation Guide</button>
											
											
												<button onclick = "window.open('guides/academy+userguide.pdf', '_blank')" > User Guide</button>
															
									</div>
					
					</div>
					
			
			</div>
		
			
		
		
		</div>
	
	
	
		
		<div class = "w3-container w3-cell-middle">
						<div class="middle"> 
								
								<table>
										<tr> 
												<td></td>
												<td><h2>TishbehSoft</h2>
								</td>
												<td><h2><span>Plus</span></h2></td>
										</tr>
										<tr>
											<td colspan='3'><h1 class = "easy"> Academy</h1></td>
											
										</tr>
								</table>
								
								
								
									<div class="buttons"> 
													<h4>Login As</h4>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "principal" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Principal</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "admin" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Admissions Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "exams" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Examination Officer</button>
										</form>
										<form action="myindex.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "bursar" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Bursar</button>
										</form>
										<form action="teachers/form.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "form" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Form Teacher</button>
										</form>
										<form action="teachers/sub.php" method = "POST" enctype = "multipart/form-data">
											<button type = "submit" name = "subject" class = "w3-button w3-blue w3-hover-green w3-round-large w3-border"> Subject Teacher</button>
										</form>
											
									</div>
									<br /> <br />
									<br /> <br />
						</div>
		</div>
	
	

			
				
						
		<script> 
				function myToggle(){
					document.getElementById('sidebar').classList.toggle('active');
				}
	 
				var accordions = document.getElementsByClassName("accordion");
					for(var i = 0; i < accordions.length; i++){
						accordions[i].onclick = function(){
							this.classList.toggle('is-open');
							var content = this.nextElementSibling;
							if(content.style.maxHeight){
									// accordion is opened
									content.style.maxHeight = null;
							} else {
									//accordion is closed
									content.style.maxHeight = content.scrollHeight + "px";
							}
						}
					}
					function show(){
						let toShow = document.getElementById("alert");
						let aside = document.getElementById("sidebar");
							if(toShow.style.display == 'none'){
								toShow.style.display='block';
								aside.style.display='none';
							}else{
								toShow.style.display='none';
								aside.style.display='block';
							}
					}
					
					
		
		</script>
				
		
		
	</body>
</html>