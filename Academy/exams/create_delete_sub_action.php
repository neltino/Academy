<?php
		include '../all_conn.php';
		$id = $_POST['id'];
		
			$query = "DELETE FROM users_sub WHERE ID = '$id' ";
			$submit = mysqli_query($Father, $query);

			header('Location: users_sub.php');
		
?>