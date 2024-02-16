<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data id yang di kirim dari url
$id = $_GET['id'];
 
 
// menghapus data dari database
mysqli_query($koneksi,"delete from game where id='$id'");
 
// mengalihkan halaman kembali ke game.online.php
header("location:game.online.php");
 
?>