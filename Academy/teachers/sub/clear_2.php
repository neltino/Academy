<?php
		session_start();
		$myclass = $_SESSION['class'];
		$mysubject = $_SESSION['subject'];
		$new = strtolower(str_replace(" ", "", $myclass."_2nd_term")); //change
		
		
		include '../../sub_conn.php'; 
		include '../../teach_conn.php'; 
		include '../../all_conn.php'; 
		$class = $_POST['myclass'];
	//dropping record table
	
			$drop = "DROP TABLE `$class` ";
		$dropping = mysqli_query($HolySpirit, $drop);
		
		//Altering Broadsheet
					//fetching subject abbreviation
					$sub = "SELECT abbreviation FROM subjects WHERE subject = '$mysubject'";
					$sub_query = mysqli_query($Father, $sub);
					$abb = mysqli_fetch_assoc($sub_query);
					$abbreviation = $abb['abbreviation'];
					// dropping columns
						 $pin1 = $abbreviation."_ca1";
						 $pin2 = $abbreviation."_ca2";
						 $pin3 = $abbreviation."_ca3";
						 $pin4 = $abbreviation."_ca4";
						 $pin5 = $abbreviation."_ca_total";
						 $pin6 = $abbreviation."_exam";
						 $pin7 = "Total_".$abbreviation;
						 $pin8 = $abbreviation."_grade";
						 $pin9 = $abbreviation."_pos";
						
						$tab = "ALTER TABLE `$new` DROP `$pin1`, DROP `$pin2`, DROP `$pin3`, DROP `$pin4`, DROP `$pin5`, DROP `$pin6`, DROP `$pin7`, DROP `$pin8`,DROP `$pin9` ";
						$tab = mysqli_query($Son, $tab);
		
		header('Location: record_2.php'); //change
?>





