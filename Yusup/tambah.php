<body background="3.jpg">
<!DOCTYPE html>
<html>
<head>
      <html>
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
<head>
	<title>Tambah Data</title>
</head>
<body>
 
	<h2>Tambah Data</h2>
	<br>
	
	<a href="game.online.php"><button type="button" class="btn btn-outline-danger">KEMBALI</button></a>
	<br/>

	<br/>
	<body>
	<h3><p align="center">TAMBAH GAME</p></h3>
	<form method="post" action="tambah_aksi.php">
		<table>
			<tr>			
				<td>Nama</td>
				<td><input type="text" name="nama"></td>
			</tr>
			<tr>
				<td>Kategori</td>
				<td><input type="text" name="kategori"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="SIMPAN"></td>
			</tr>	
</body>	
		</table>
	</form>
	<script>
		//Tampilkan notifikasi
		function showNotification(message) {
			const notification = document.createElement("div");
			notification.className = "notification";
			notification.textContent = message;
			document.body.appendChild(notification);

			//Hilangkan notification setelah 4 detik
			setTimeout(functiion() {
				document.body.removeChild(notification);
			}, 4); //4000 milidetik = 4 detik
		}
</script>
</body>
</html>