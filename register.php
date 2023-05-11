<!DOCTYPE html>
<html>
<head>
	<title>Slide Navbar</title>
<link rel="stylesheet" href="register.css">
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
	<script src="regester.js"></script>
</head>
<body>
			
			<?php
// Connect to the database
session_start();
include 'config.php';
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get form data and validate it
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$address = $_POST['address'];
$email = $_POST['email'];
$password = $_POST['password'];

// TODO: Add form validation code here
<form name="myForm" onsubmit="return validateForm()" method="post">
<div class="main">  	
	<input type="checkbox" id="chk" aria-hidden="true">

		<div class="signup">
			<form>
				<label for="chk" aria-hidden="true">Sign up</label>
				<input type="text" name="first_name" placeholder="First name" required>
				<div class="error-message" id="firstname-error"></div>
				<input type="text" name="last_name" placeholder="Last name" required>
				<div class="error-message" id="lastname-error"></div>
				<input type="email" name="email" placeholder="Email" required>
				<div class="error-message" id="adsress-error"></div>
				<input type="password" name="password" placeholder="Password" required>
				<div class="error-message" id="password-error"></div>
				<input type="password" name="pswd" placeholder="Password" required="">
				<div class="error-message" id="password-error"></div>
				<button type="submit">Sign up</button>
				</div>
			</form>
// Insert user data into the database
$sql = "INSERT INTO apprenant (first_name, last_name,address, email, password) VALUES ('$first_name', '$last_name', '$email', '$password')";

if ($conn->query($sql) === TRUE) {
  echo "User registered successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
			<div class="login">
				<form>
					<label for="chk" aria-hidden="true">Login</label>
					<input type="email" name="email" placeholder="Email" required>
					<input type="password" name="password" placeholder="Password" required>
										<button type="submit">Login</button>
				</form>
			</div>
	</div>
	</form>
	<?php
// Start session
session_start();
include 'config.php';
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get form data
$email = $_POST['email'];
$password = $_POST['password'];

// Check if user exists in the database
$sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
  // User exists, start session and redirect to home page
  $_SESSION['email'] = $email;
  header('Location: home.php');
} else {
  // User does not exist or credentials are incorrect
  echo "Invalid email or password";
}

$conn->close();
?>
</body>
</html>