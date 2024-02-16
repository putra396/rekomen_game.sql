<body background="3.jpg">
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */
</style>
</head>
<body>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.w3-button {width:150px;}
</style>
<body>
	<marquee><h2>HALLO  ADMIN  SELAMAT  DATANG!!!</h2></marquee>
 
	<!-- cek apakah sudah login -->
	<?php 
	session_start();
	if($_SESSION['status']!="login"){
		header("location:../index.php?pesan=belum_login");
	}
	?>
	<h3><p align="center">Mantap, <?php echo $_SESSION['username']; ?>! anda berhasil login.</p></h3>
	<h3><p align="center">Silahkan klik Tombol "Masuk" Untuk Menuju Website</p></h3>
	<div class="w3-container">
	<p align="center"><a href="masuk.php"><button class="button">MASUK</button></a></p>
</div>
</body>
</html>