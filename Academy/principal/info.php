<?php
	include '../all_conn.php';
	$table = "CREATE TABLE IF NOT EXISTS `info_sch` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				logo blob NOT NULL,
				school text NOT NULL,
				address text NOT NULL,
				type text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$table_query = mysqli_query($Father, $table);
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:School Info:.</title>
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
	
	form{
				width: 57%;
				margin-left: 22%;
				font-size: 1vw;
			}
	form input{
		font-family: prestiji;
	}
	
	.mylogo{
		float: right;
		background: url(../img/log.jpg) no-repeat;
		background-size: cover;
		background-position: center;
		margin-bottom: 1%;
	}
	h3, p{
		text-align: center;
		font-family: Gabriola;
		font-size: 1.3vw;
	}
	
	fieldset{
		border: none;
		background: linear-gradient(#2196f3, #ffffff);
		border-radius: 2%;
	}
	input[type=file]{
		font-family: gabriola;
		font-size: 1.3vw;
	}
	table{
		border-collapse: collapse;
		width: 57%;
		font-family: Gabriola;
		background: radial-gradient(#f0f0f0, #ffffff);
		color: indigo;
		margin-left: 22%;
		border-radius: 5px;
	}
	table th{
		text-align: center;
		font-size: 24px;
		border-bottom: 2px solid indigo;
	}
	table td, caption{
		text-align: center;
		font-size: 1.5vw;
		font-weight: bold;
	}
	#please h3 i{
		color: yellow;
		font-size: 1.5vw;
	}
	select{
		font-family: prestiji;
		margin-top: 1%;
		background: white;
	}
	input[type=text], input[type=submit]{
		margin-top: 1%;
	}
	input[type=submit]{
		cursor: pointer;
	}
	form i{
		color: yellow;
	}
	
	
	@media print{
		form, #myhead, #please{display:none;}
		table{text-align:center; margin-left: 0;}
		table caption{font-style: underline;}
		
	}
	
	
	@media only screen and (max-width: 768px){
		form{width: 90%; margin-left: 5%; font-size: 4vw;}
		table{width: 90%; margin-left: 5%;}
		table th, table td{font-size: 3vw;}
		#please h3 i, p b i, input[type=file]{font-size: 4vw;}
	}
			
	</style>
	
</head>
<body>
	
		
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >School Info</h1>
				</div>
			<?php include 'asideprincipal.php';?>
			
				<div id="please">
					<h3><i>Please supply the following information:</i></h3>
				</div>				
				<form action="info_action.php" method = "POST" enctype = "multipart/form-data"> 
					<fieldset> 
						<p><b><i>Please note that the file type for school logo must be of type .jpg or .JPEG and must be less than 30kb</i></b></p>
							
							
							<div class = "mylogo" > 
									<img width = "140" height = "140" src=""  id = "logo" class = 'img' />
									
							</div>
							
							
							<input  type="file" name = "logo" multiple accept = "image/*" id = "pass" />
							
							
							<input class = "w3-input w3-round w3-border-green" placeholder = "school name" type="text" name = "name" required />
							
							<input class = "w3-input w3-round w3-border-green" placeholder = "school address" type="text" name = "address" required />
							<select class = "w3-select w3-round w3-border-green" name="school" required>
											<option value="">Choose School Type</option>
											<option value="Day">Day School</option>
											<option value="Boarding">Boarding School</option>
											<option value="Day and Boarding">Day & Boarding School</option>
							</select>
							
							<input class = "w3-input w3-blue w3-hover-green w3-border-0 w3-round"type="submit" class="sub"/>
							
					</fieldset>
				
				</form>
				 
				<?php
						include '../all_conn.php';
						//listing tables check if the info table exists
						$list = "SHOW TABLES";
						$list_query = mysqli_query($Father, $list);
						$a = "";
						while($listing = mysqli_fetch_assoc($list_query)){
							$a.= $listing['Tables_in_academy']." ";
						}
						//verifying
						if(strchr($a, 'info_sch') != false){
							$info = "SELECT * FROM `info_sch` ";
						$info_query = mysqli_query($Father, $info);
						$cool = mysqli_fetch_assoc($info_query);
						if($cool != NULL){
							$logo = '<img class = "dlogo" src = "data:image/jpeg; base64,' .base64_encode($cool['logo']).'"height = "50" width = "30" />';
							$sch = $cool['school'];
							$add = $cool['address'];
							$type = $cool['type'];
									
							echo "<table>";
							echo "<caption>School Info</caption>";
									echo "<th>Logo</th>";
									echo "<th>School Name</th>";
									echo "<th>School Address</th>";
									echo "<th>School Type</th>";
									
									
												echo "<tr>";
														echo "<td>$logo</td>";
														echo "<td>$sch</td>";
														echo "<td>$add</td>";
														echo "<td>$type</td>";
												echo "</tr>";
							echo "</table>";
						}
						}
				
				?>
				<br /><br />
				<script type="text/javascript"> 
						document.getElementById("pass").onchange = function(){
							var reader = new FileReader();
							reader.onload = function(e){
								document.getElementById("logo").src = e.target.result;
							}
							reader.readAsDataURL(this.files[0]);
						}
					</script>
</body>
</html>

					