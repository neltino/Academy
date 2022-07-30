<?php
	session_start();
	$_SESSION['duser'] = $_POST['user'];
	header("Location: forget_admin_action.php");

?>