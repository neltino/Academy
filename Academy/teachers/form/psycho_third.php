<?php
		ini_set('max_execution_time', 0);
		session_start();
		$class = $_SESSION['class'];
		$myclass = $_SESSION['class'];
		$new = strtolower(str_replace(" ", "",$class."_3rd_term")); //change
		
		include '../../teach_conn.php';
		include '../../all_conn.php';
		
		$query = "SHOW tables";
		$submit1 = mysqli_query($Son, $query);
		$submit2 = mysqli_query($Son, $query);
		
		$result = mysqli_fetch_assoc($submit1);
		
				
			
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:3rd Term Pyschomotor:.</title>
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
						src: url(../../myfont/gabriola.ttf);
					}
	
	#myhead h1{
		font-family: teen;
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
	table{
			border-collapse: collapse;
			margin-left: 38%;
			background: whitesmoke;
			color: indigo;
			margin-top: 2%;
			border-radius: 2%;
			font-family: teen;
			font-size: 1.2vw;
		}
		table th{
			border-bottom: 2px solid indigo;
			text-align: center;
		}
		table td{
			padding-right: 3px;
		}
		table tr td:first-child{
			font-weight: bold;
			padding-left: 5px;
		}
		table caption{
			color: yellow;
		}
		table input[type=submit]{
			border:none;
			background:none;
			color: brown;
			cursor: pointer;
		}
		table input[type=submit]:hover{
			color: green;
		}
	h2{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 1.5vw;
		margin-top: 10%;
	}
	h3{
		color: yellow;
		text-align: center;
		font-family: teen;
		font-size: 1.5vw;
	}
	
	@media only screen and (max-width: 768px){
				#myhead h1{font-size: 5vw;}
				h2{font-size: 4vw; margin-top: 15%;}
				h3{font-size: 4vw; margin-top: 9%;}
				table{margin-left: 1%; width: 98%; margin-bottom: 90%; font-size: 4vw;}
			}
	</style>
</head>
<body>
		
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >3rd Term Psychomotor-Affective Remark</h1> 
					
				</div>
				
		<?php 
				//in case there are no tables registered yet
				
									$a = "";
							while($ans = mysqli_fetch_assoc($submit2)){
								 if(strcmp($ans["Tables_in_teachers"],$new) == 0){
									 $a.= $ans["Tables_in_teachers"];
								 }
							}
							 
							 
							 if($a == ""){
								echo "<h2>Please Register Class Subjects First! <br /> 
									...You will be redirected shortly!
								</h2>";
								header("Refresh:3, url=select_sub.php");
								
								die();
							 }
							 //checking if an existing class has members
							$checking = "SELECT name FROM `$new`";
							$checking_query = mysqli_query($Son, $checking);
							$check = mysqli_fetch_assoc($checking_query);
							if($check == NULL){
									
									echo "<h2>Please Register Class Members First! <br /> 
									...You will be redirected shortly!
								</h2>";
								header("Refresh:3, url=register.php");
									die();
								
							}
							
				$register = strtolower(str_replace(" ","",$class."_psycho_3rd_term")); //change
			$reg = "CREATE TABLE IF NOT EXISTS `$register` (
				ID int(11) NOT NULL AUTO_INCREMENT,
				name text NOT NULL,
				PRIMARY KEY (ID)
			
			)";
			$reg_query = mysqli_query($Son, $reg);
			
				$psycho = "Select domain FROM domains ORDER BY domain ASC ";
				$psycho_sub = mysqli_query($Father, $psycho);
				$psycho_sub1 = mysqli_query($Father, $psycho);
				$psycho_sub2 = mysqli_query($Father, $psycho);
				$psycho_sub3 = mysqli_query($Father, $psycho);
				
				
				
				if(mysqli_fetch_assoc($psycho_sub3) == NULL){
					echo "<h2>Please ask the Examination Officer to create Pyschomotor-Affctive Domain Items!</h2>";
					header("Refresh:3, url=class_domain.php");
					die();
				}	
				
				while($affect = mysqli_fetch_assoc($psycho_sub)){
					$column = trim($affect['domain']);
					
					$update = "ALTER TABLE `$register` ADD `$column` TEXT NULL";
					$up_query = mysqli_query($Son, $update);
					
				}
	
				//checking if psychomotor-affective domain items have been modified, is so, destroy and recreate table!
				
				$destroy = "DESCRIBE `$register`";
				$destroy_query = mysqli_query($Son, $destroy);
				
				$f = "";
				while($tino = mysqli_fetch_assoc($destroy_query)){
					if(($tino['Field'] !== "ID") && ($tino['Field'] !== "name")){
						$f.= str_replace(" ", "",$tino['Field']);
					}
					
				}
				  
			
				$g = "";
				while($tino2 = mysqli_fetch_assoc($psycho_sub1)){
					$g.= str_replace(" ", "", $tino2['domain']);
					
				}
				
				$res = strchr($g, $f);
				
				if($res == false){
					$destro = "DROP TABLE `$register` ";
					$destro_query = mysqli_query($Son, $destro);
					header('Location: psycho_third.php'); //change
				}
		
		

		
		
		include 'asideform.php' ;
			//fetching class list
			$list = "SELECT `name` FROM `$new` ";
			$list_query = mysqli_query($Son, $list);
		?>
		<h3>Please click on a name to remark or edit remark!</h3>
		<table> 
			<caption><?php echo $class;?> Class List</caption>
			<th>S/&#x2116; </th>
			<th>Name</th>
			<th>Remark Status</th>
			<?php
						//selecting psycho items
								$items = '';
						while($psy = mysqli_fetch_assoc($psycho_sub2)){
									$items.= trim($psy['domain']).",";
								}
								
						$items = trim($items, ",");
						$explode = explode(",", $items);
						$items = $explode[0];
		
				$i = 1;
				while($mylist = mysqli_fetch_assoc($list_query)){
					$name = $mylist['name'];
					
					echo "<tr>
							<td>$i.</td>
							<td>
									<form action='psycho_3rd_action.php' method = 'POST' enctype = 'multipart/form-data' >
										<input type='text' name = 'name' value = '$name' hidden />
										<input type='submit' value = '$name' />
									</form>
							</td>";
						//checking remark status
								
								$sta = "SELECT $items FROM `$register` WHERE name = '$name' ";
								$sta_query = mysqli_query($Son, $sta);
							
								if(mysqli_fetch_assoc($sta_query) == NULL){
									echo "<td style = 'color:red;' > Not Remarked </td>";
								}else{
									echo "<td style = 'color:green;' >Remarked &#x2714; </td>";
								}
							
					echo "</tr>";
					$i++;
				}
			?>
		
		</table>
				
</body>
</html>
		