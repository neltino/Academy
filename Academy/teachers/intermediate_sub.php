<?php
		session_start();
		session_unset();
		session_destroy();

session_start();

			
	if(isset($_POST['record1'])){
		
			$name = $_POST['name'];
			$class = $_POST['class'];
			$id = $_POST['id'];
			$subject = $_POST['sub'];
			$type = $_POST['type'];
			$_SESSION["subject"] = $subject;
			$_SESSION["username"] = $name;
			$_SESSION["class"] = $class;
			$_SESSION["id"] = $id;
			$_SESSION["type"] = $type;
			
			header('Location: sub/record_1.php');
	}elseif(isset($_POST['record2'])){
		
			$name = $_POST['name'];
			$class = $_POST['class'];
			$id = $_POST['id'];
			$subject = $_POST['sub'];
			$type = $_POST['type'];
			$_SESSION["subject"] = $subject;
			$_SESSION["username"] = $name;
			$_SESSION["class"] = $class;
			$_SESSION["id"] = $id;
			$_SESSION["type"] = $type;
			
			header('Location: sub/record_2.php');
	}elseif(isset($_POST['record3'])){
		
			$name = $_POST['name'];
			$class = $_POST['class'];
			$id = $_POST['id'];
			$subject = $_POST['sub'];
			$type = $_POST['type'];
			$_SESSION["subject"] = $subject;
			$_SESSION["username"] = $name;
			$_SESSION["class"] = $class;
			$_SESSION["id"] = $id;
			$_SESSION["type"] = $type;
			
			header('Location: sub/record_3.php');
	}else{
		
			$name = $_POST['name'];
			$class = $_POST['class'];
			$id = $_POST['id'];
			$subject = $_POST['sub'];
			$type = $_POST['type'];
			$_SESSION["subject"] = $subject;
			$_SESSION["username"] = $name;
			$_SESSION["class"] = $class;
			$_SESSION["id"] = $id;
			$_SESSION["type"] = $type;
			header('Location: sub/my_sub.php');
	}
			

	
	
?>