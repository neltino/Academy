<?php
		include '../all_conn.php';
		$id = $_POST['id'];
		$status = str_replace(" ", "", $_POST['status']);
		
			$query = "DELETE FROM users_form WHERE ID = '$id' ";
			$submit = mysqli_query($Father, $query);

			header('Location: users_form.php');
		
?>