<?php
	
	include '../all_conn.php';
	
	$caption = $_POST['caption'];
	
	$caption = str_replace(":", "", $caption);
	
	if($caption == "Admission Number Format/Initials"){
		$caption = "School Initials";
	}
	
	
	if($caption == "Classes"){
		$update = "UPDATE `admin_info` SET classes = '$_POST[classes]' WHERE ID = '$_POST[id]'";
		$update_query = mysqli_query($Father, $update);
		header('Location: basic_info.php');
	}elseif($caption == "Sports Houses"){
		$update = "UPDATE `admin_info` SET houses = '$_POST[classes]' WHERE ID = '$_POST[id]'";
		$update_query = mysqli_query($Father, $update);
		header('Location: basic_info.php');
	}elseif($caption == "School Initials"){
		$update = "UPDATE `admin_info` SET reg = '$_POST[classes]' WHERE ID = '$_POST[id]'";
		$update_query = mysqli_query($Father, $update);
		header('Location: basic_info.php');
	}


?>