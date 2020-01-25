<!DOCTYPE html>
<html>
	<head>
		<title>REGISTER</title>
	</head>
	<body>
		<br><br>
		<form method=POST>
			<input type="text" name="name" placeholder="Name"><br><br>
			<input type="text" name="address" placeholder="Address"><br><br>
			<input type="text" name="username" placeholder="Username"><br><br>
			<input type="text" name="password" placeholder="Password"><br><br>
			<input type="submit" name="reg" value="Register"><br><br>
		</form>
		<?php
			if(isset($_POST['reg']))
			{
				include '../controller/MyController.php';
				$ob=new MyController();
				$ob->RegisterAct();
			}
		?>
	</body>
</html>
		