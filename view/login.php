<!DOCTYPE html>
<html>
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
			<link rel="stylesheet" href="css/bootstrap.min.css">
			<link rel="stylesheet" href="css/style.css">
			<title>Login</title>
		</head>
		<body class="banner1">
			<!------------------starts first section----------------------->
				<header class="bg-color py-2">
					<h5 class="container text-center p-4 ">Student Registration System</h5>
				</header>
				<section>
					<h4 class="py-4 text-dark text-center text-h"></h4>
					<div class="container-fluid bg-style media1">
						<div class="row">
							<div class="col ">
							</div>
							<div class="col-md-4 log-style p-5">
								<form name="login" method="post" class="m-auto py-3 jumbotron text-light p-3 form-style rounded">
									<h3 div class="text-center text-dark">Sign In</h3>
									<input type="text" class="form-control inputcomponent mt-md-3 space" name="username" required="required" placeholder="Username">
							
									<input type="password" class="form-control inputcomponent mt-md-3 space" name="password" required="required" placeholder="Password">
							
									<input type="submit" name="submit" value ="Sign In" class="btn-primary mt-md-3 px-5 rounded shadow" name="logcheck">
									<div class='text-center m-t-10'>
										<a href="forgotpaasword.php">Forgot Password?</a>
									</div>
								</form>
								<?php
										if(isset($_POST['submit']))
										{
											include '../controller/MyController.php';
											$obj=new MyController();
											$obj->LoginAct();
										}
									?>
							</div>
						</div>
					</div>
				</section>
				<footer class="bg-color py-2 foot text-center">
					<h5 class="text-center">Powered by @jsd</h5>
				</footer>	
				<!-----------------------------ends first section---------------->
			<script src="js/jquery.min.js"></script>
			<script src="js/validation.js"></script>
			<Script src="js/jquery.validate.min.js"></script>
			<script src="js/bootstrap.min.js"></script>
			<script src="js/popper.min.js"></script>
		</body>
</html>