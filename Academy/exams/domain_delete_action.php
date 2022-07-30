<?php
		include '../all_conn.php';
		
		echo $id = $_POST['id'];
		$query = "DELETE FROM domains WHERE ID = '$id'";
		$submit = mysqli_query($Father, $query);
		header('Location: domains.php');
?>