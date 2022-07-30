<?php
		include '../all_conn.php';
		$payment = trim($_POST['payment']);
		
		 $payment = ucwords(str_replace(".", "", $payment));
		 $amount = trim($_POST['amount']); 
		 
		$insert = "INSERT INTO `burs_info` (payment, amount) VALUES ('$payment', '$amount')";
		$insert_query = mysqli_query($Father, $insert);
		 //adding column in accounts
			$col = "ALTER TABLE `account1` ADD `$payment` double NOT NULL AFTER `Class` ";
			$col_query = mysqli_query($Father, $col);
			
			$col = "ALTER TABLE `account2` ADD `$payment` double NOT NULL AFTER `Class` ";
			$col_query = mysqli_query($Father, $col);
			
			$col = "ALTER TABLE `account3` ADD `$payment` double NOT NULL AFTER `Class` ";
			$col_query = mysqli_query($Father, $col);
		 
		if($_POST['fee']){
			 header('Location: ../login.php');
		}else{
			 header('Location: basic_info.php');
		}
		
?>