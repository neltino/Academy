<?php
session_start();
		
			
			if(isset($_POST['change'])){
				$name = $_POST['name'];
				$id = $_POST['id'];
				$class = $_POST['class'];
				
				$_SESSION["username"] = $name;
				$_SESSION["class"] = $class;
				$_SESSION["id"] = $id;
				header('Location: form/my_form.php');
				
			}else{
				
			$name = $_POST['name'];
			$class = $_POST['class'];
			$id = $_POST['id'];
			$_SESSION["username"] = $name;
			$_SESSION["class"] = $class;
			$_SESSION["id"] = $id;
			header('Location: form/my_form.php');
			}
?>