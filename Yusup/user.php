<body background="6.jpg">
<!DOCTYPE html>
<html>
<head>
	<title>HALAMAN  USER</title>
</head>
</html>
<body>
<style>
h1 {
  text-shadow: 2px 3px yellow;
}
</style>
<h1>REKOMENDASI GAME LAPTOP DAN PC</h1>
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
      </div>
			<?php 
		}
		?>
		<head>

</body>
</html>