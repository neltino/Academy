<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>.:Sessional Clear Result:.</title>
	<link rel="icon" href="../img/soft.png" />
	<style type="text/css"> 
			body{
				background: #f0f0f0;
			}
			h3{
				color: #f03939;
				font-style: italic;
				text-align: center;
			}
	</style>
</head>
<body>
		<?php
				include '../all_conn.php';
				
				if(isset($_POST['No'])){
					header('Location: sess.php');
				}elseif(isset($_POST['Yes'])){
					//fetching payment items
					$item = "SELECT `payment` FROM `burs_info`";
					$item_query1 = mysqli_query($Father, $item);
					$item_query2 = mysqli_query($Father, $item);
					if(mysqli_fetch_assoc($item_query1) == NULL){
						echo "<h3>No payment Items to clear!</h3>";
						header("Refresh:5, url = 'sess.php' ");
					}else{
						while($row = mysqli_fetch_assoc($item_query2)){
							$thing = $row['payment'];
							//clearing...
							$clear = "UPDATE `account1` SET `$thing` = 0, `TransactionDate` = 0000-00-00 ";
							$clear_query = mysqli_query($Father, $clear);
							
							$clear = "UPDATE `account2` SET `$thing` = 0, `TransactionDate` = 0000-00-00";
							$clear_query = mysqli_query($Father, $clear);
							
							$clear = "UPDATE `account3` SET `$thing` = 0, `TransactionDate` = 0000-00-00";
							$clear_query = mysqli_query($Father, $clear);
						}
						echo "<h3>Clearing Payment Items...</h3>";
						header("Refresh: 10, url = 'sess.php' ");
					}
					
				}
		?>
</body>
</html>