<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data yang di kirim dari form
$nama = $_POST['nama'];
$kategori = $_POST['kategori'];

//menghindari sql injection
$nama = mysqli_real_escape_string($koneksi, $nama);
$kategori = mysqli_real_escape_string($koneksi, $kategori);
 
// menginput data ke database
$query = "INSERT INTO game (nama, kategori) VALUES ('$nama','$kategori')";
$result = mysqli_query($koneksi, $query);

if ($result) {
    // set pesan notification
    session_start();
    $_SESSION['success_message'] = "Data berhasil ditambahkan!";
    echo "<script>showNotification('Data berhasil ditambahkan!');</script>";
 
// mengalihkan halaman kembali ke game.online.php
header("location:game.online.php");
} else {
    //jika query gagal dijalankan
    echo "Error: " . mysql_error($koneksi);
}
 
?>