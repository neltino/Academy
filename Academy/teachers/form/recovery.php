<?php
	session_start();
	
	
	$_SESSION['id'] = $_POST['user'];
	header('Location: recovery_main.php');
?>
