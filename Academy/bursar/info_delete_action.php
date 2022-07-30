<?php
		include '../all_conn.php';
		
		 $id = $_POST['id'];
		 $pay = $_POST['pay'];
		
		// Deleting from payment info
		$delete = "DELETE FROM `burs_info` WHERE ID = '$id' ";
		$delete_query = mysqli_query($Father, $delete);
		
		//Deleting from account1 
		
		$drop = "ALTER TABLE `account1` DROP COLUMN `$pay` ";
		$drop_query = mysqli_query($Father, $drop);
		
		//Deleting from account2 
		
		$drop = "ALTER TABLE `account2` DROP COLUMN `$pay` ";
		$drop_query = mysqli_query($Father, $drop);
		
		//Deleting from account3
		
		$drop = "ALTER TABLE `account3` DROP COLUMN `$pay` ";
		$drop_query = mysqli_query($Father, $drop);
		
		
		header('Location: basic_info.php');
?>