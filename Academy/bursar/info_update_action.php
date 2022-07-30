<?php
	include '../all_conn.php';
	  $payment = ucwords($_POST['payment']);
	  $payment = trim($payment);
	 $amount = $_POST['amount'];
	 $amount = trim($amount);
	 $id = $_POST['id'];
	 $old = $_POST['old'];
	 $old = trim($old);
	
			$update = "UPDATE `burs_info` SET payment = '$payment', amount = '$amount' WHERE ID = '$id'";
			$update_query = mysqli_query($Father, $update);
	//renaming column in case of change of payment item name
			$alter = "ALTER TABLE `account1` CHANGE `$old` `$payment` DOUBLE NOT NULL;";
			$alter_query = mysqli_query($Father, $alter);
			
			$alter = "ALTER TABLE `account2` CHANGE `$old` `$payment` DOUBLE NOT NULL;";
			$alter_query = mysqli_query($Father, $alter);
			
			$alter = "ALTER TABLE `account3` CHANGE `$old` `$payment` DOUBLE NOT NULL;";
			$alter_query = mysqli_query($Father, $alter);
			
		header('Location: basic_info.php');
	

?>