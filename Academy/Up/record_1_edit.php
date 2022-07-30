<?php
		session_start();
		
		include '../../teach_conn.php';
		include '../../sub_conn.php';
		include '../../all_conn.php';
		
		$class = strtolower(str_replace(" ","",$_SESSION['class']));
		$subject = strtolower(str_replace(" ","",$_SESSION['subject']));
		$sub = $_SESSION['subject'];
		
		//selecting abbreviation for subject
		$course = "SELECT  abbreviation FROM subjects WHERE subject = '$sub'";
		$course_query = mysqli_query($Father, $course);
		$ans = mysqli_fetch_assoc($course_query);
		$abb = $ans['abbreviation'];
		
		$id = $_POST['id'];
		$asis = $_POST['asis'];
		$myclass = $class."_1st_term_".$subject;
		$query = "SELECT * FROM `$myclass` WHERE name = '$asis' ";
		$submit_query = mysqli_query($HolySpirit, $query);
		$answer = mysqli_fetch_assoc($submit_query);
		
		//selecting grades
		$grades = "SELECT `caexams` FROM `info_exams`";
		$grade_submit = mysqli_query($Father, $grades);
		$dgrade = $grade_check = mysqli_fetch_assoc($grade_submit);
		
		
		if($dgrade['caexams'] == 'alphabetic'){
			$b = "A,B,C,D,E,F,";
			$c = "70,60,50,45,40,0,";
			
		}elseif($dgrade['caexams'] == 'alphanumeric'){
			$b = "A1,B2,B3,C4,C5,C6,D7,E8,F9,";
			$c = '75,70,65,60,55,50,45,40,0,';
		}
		
		$explode1 = explode(",", $b);
		$count1 = count($explode1);
		
		$explode2 = explode(",", $c);
		$count2 = count($explode2);
		
		
		//selecting number of ca 
			$ca = "SELECT `numca` FROM `info_exams` ";
			$ca_query = mysqli_query($Father, $ca);
			$myca = mysqli_fetch_assoc($ca_query);
			$myca = $myca['numca'];
			
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>.:Edit Records_1st Term:.</title>
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
						font-family: Gabriola;
						src: url(../../myfont/gabriola.ttf);
					}
			@font-face{
						font-family: cac;
						src: url(../../myfont/cac.ttf);
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
		
					
			h2,h3,h4{
				color: royalblue;
				text-align: left;
				font-family: teen;
				font-size: 1vw;
			}
			form{
				
				margin-left: 35%;
				margin-top: 1%;
				width: 37%;
				
			}
			fieldset{
				background: white;
				border-radius: 2%;
			}
			legend{
				background: #4caf50;
				border-radius:5px;
				padding: 0 1%;
				color: white;
				font-family: teen;
			}
			
			form input[type=text]{
				margin-right: 70%;
				font-size: 1vw;
				float: right;
				text-align: center;
				margin-top: -4px;;
				width: 10%;
				font-family: teen;
				
			}
			input[type=submit]{
				cursor: pointer;
			}
			
			input[readonly]{
				color: royalblue;
				font-weight: bold;
				
			}
			label{
				font-family: teen;
				color: chocolate;
				font-weight: bold;
				font-size: 1.2vw;
			}
			@media only screen and (max-width: 768px){
			form{width: 98%; margin-left: 1%; margin-top: 10%;}
			
			label{font-size: 5vw;}
			h4 i{font-size: 4vw;}
			form input[type=text]{font-size: 5vw; width: 40%; margin-right: 30%; border: 1px solid black;}
		}
	</style>
</head>
<body>
			<div class = "noprint">
			
				<div id = "myhead" class = "w3-container w3-blue">
					<div class = "home">
						<span class = "fas fa-home fa-4x" onclick = "window.open('../../outlog.php', '_parent')"></span>
					</div>
					<h1 class = "w3-center" >Edit 1st Term CA & Exams Record</h1> 
					
		</div>
		<?php include 'asidesub.php' ?>
		
			<form action="record_1_edit_action.php" method = "POST" enctype = "multipart/form-data"> 
				<fieldset> 
					<legend>Edit Student Record</legend>
						<h4><i>Please click and enter new values to edit student record for <b style = "color: #4caf50"> <?php echo $_POST['asis']; ?> </b>!</i></h4> <br />
						
							
						
							<input  type="text" name = "asis" value = "<?php echo $_POST['asis'];?>" hidden />
							<input  type="text" name = "new[]" value = "<?php echo $id;?>" hidden />
						<label for="name">CA1</label>
							<input id = "CA1" type="text" name = "new[]" value = "<?php echo $answer['ca1']; ?>"   onKeyPress = 'mySum()' onKeyUp = 'mySum()'/> <br />
						<label for="name">CA2</label>
							<input id = "CA2" type="text" name = "new[]" value = "<?php echo $answer['ca2']; ?>"   onKeyPress = 'mySum()' onKeyUp = 'mySum()'/> <br />
							
						<?php
						
							if($myca >= 3){
								echo '<label for="name">CA3</label>';
							echo '<input id = "CA3" type="text" name = "new[]" value = "'.$answer['ca3'].'"   onKeyPress = "mySum()" onKeyUp = "mySum()" /> <br />';
							}else{
								
							echo '<input id = "CA3" type="text" name = "new[]" value = "'.$answer['ca3'].'"   onKeyPress = "mySum()" onKeyUp = "mySum()" hidden />';
							}
							
							if($myca == 4){
								echo '<label for="name">CA4</label>';
								echo '<input id = "CA4" type="text" name = "new[]" value = "'.$answer['ca4'].'"   onKeyPress = "mySum()" onKeyUp = "mySum()" /> <br />';
							}else{
								
								echo '<input id = "CA4" type="text" name = "new[]" value = "'.$answer['ca4'].'"   onKeyPress = "mySum()" onKeyUp = "mySum()"  hidden />';
							}
						
						?>
						
						<label for="name">CA_Total</label>
							<input id = "total_CA" type="text" name = "new[]" value = "<?php echo $answer['ca_total']; ?>"  readonly  /> <br />
						<label for="name">Exam</label>
							<input id = "exam" type="text" name = "new[]" value = "<?php echo $answer['exam']; ?>"   onKeyPress = 'mySum()' onKeyUp = 'mySum()'/> <br />
						<label for="name">Total</label>
							<input id = "total" type="text" name = "new[]" value = "<?php echo $answer[$abb.'_total']; ?>"   readonly onKeyPress = 'mySum()' onKeyUp = 'mySum()' /> <br />
						<label for="name">Grade</label>
							<input id = "grade" type="text" name = "new[]" value = "<?php echo $answer['grade']; ?>"   readonly  onKeyPress = 'mySum()' onKeyUp = 'mySum()'/>
							<input  type="text" name = "new[]" value = "<?php echo $answer['name']; ?>" hidden />
							
							<br />
							<br />
					
							<input type="submit" class = 'w3-input w3-round w3-green w3-hover-blue'/>
							
			
			</form>
			
			
			<script type="text/javascript"> 
			
						 function mySum(){
											var CA1 = document.getElementById('CA1');
												var a = CA1.value;
												var CA2 = document.getElementById('CA2');
												var b = CA2.value;
												var CA3 = document.getElementById('CA3');
												var c = CA3.value;
												var CA3 = document.getElementById('CA4');
												var d = CA4.value;
												var total_CA = document.getElementById('total_CA');
													total_CA.value = (Number(a)+Number(b)+Number(c) +Number(d));
												var e = total_CA.value;
												
												var exam = document.getElementById('exam');
												var f = exam.value;
												
												var total = document.getElementById('total');
													total.value = (Number(e) + Number(f));
												
												var g = total.value;
												var grade = document.getElementById('grade');
												<?php
													for($i=0; $i < ($count1 - 1); $i++){
														echo "if(g >= $explode2[$i]){grade.value = '$explode1[$i]';}";
														if($i<($count1 - 2)){
															echo "else ";
														}
													}
												?>	
							
						}
					
								
			
			
			</script>
							
						
						
</body>
</html>