<?php
	session_start();
	$_SESSION['username'] = trim($_POST['username']);
	$_SESSION['password'] = trim($_POST['password']);
	
	header('Location: login.php');

?>