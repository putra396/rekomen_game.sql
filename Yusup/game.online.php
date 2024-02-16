<body background="6.jpg">
<!DOCTYPE html>
<html>
<head>
	<title>HALAMAN ADMIN</title>
</head>
<body>
 
<head>
<style>
h1 {
  text-shadow: 2px 3px blue;
}
</style>
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

</body>
</html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<body>

<h1><p align="center">HALAMAN ADMIN</p></h1>
	<br/>
	<div class="w3-container">
	<a href="tambah.php"><button class="button">+ TAMBAH GAME</button></a>
</div>
<br/>
<div class="w3-container">
	<a href="index.php"><button class="button button3">LOGOUT</button></a>
</div>
<br/>
<div class="w3-container">
	<a href="user.php"><button class="button button2">USER</button></a>
</div>

	<br/>

	<br/>
	<br/>
		<?php 
		include 'koneksi.php';
		$no = 1;
		$data = mysqli_query($koneksi,"select * from game");
		while($d = mysqli_fetch_array($data)){
			?>
      <div class="<?php echo $no++; ?>">
				<h3><?php echo $d['nama']; ?></h3>
				<h5><?php echo $d['kategori']; ?></h5>
        <h5><?php echo $d['deskripsi']; ?></h5>
				<td>
				<a href="edit.php?id=<?php echo $d['id']; ?>"onclick="return confirm ('APAKAH ANDA YAKIN DATA INI AKAN DI EDIT?')"><button type="button" class="btn btn-outline-danger">EDIT</button></a>
				<a href="hapus.php?id=<?php echo $d['id']; ?>"onclick="return confirm ('APAKAH ANDA YAKIN DATA INI AKAN DI HAPUS?')"><button type="button" class="btn btn-outline-danger">HAPUS</button></a>
				</td>
      </div>
			<?php 
		}
		?>
		<head>

</body>
</html>