<?php
	session_start();
		$class = $_SESSION['class'];
		$myclass = $_SESSION['class'];
		$new1 = strtolower(str_replace(" ", "",$class."_1st_term"));
		$new2 = strtolower(str_replace(" ", "",$class."_2nd_term"));
		$new3 = strtolower(str_replace(" ", "",$class."_3rd_term"));
		$id = $_POST['id'];
		
		include '../../teach_conn.php';
		
		$query1 = "DELETE FROM `$new1` WHERE ID = '$id'";
		$submit1 = mysqli_query($Son, $query1);
		
		$query2 = "DELETE FROM `$new2` WHERE ID = '$id'";
		$submit2 = mysqli_query($Son, $query2);
		
		$query3 = "DELETE FROM `$new3` WHERE ID = '$id'";
		$submit3 = mysqli_query($Son, $query3);
		
		header('Location: register.php');

?>