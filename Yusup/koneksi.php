
<?php 
$koneksi = mysqli_connect("localhost","root","","rekomendasi_game");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
?>