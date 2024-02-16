<?php
include "koneksi.php";

$id = $_POST['id'];
$nama = $_POST['nama'];
$kategori = $_POST['kategori'];

$query = "UPDATE game SET id='$id', nama='$nama', kategori='$kategori' WHERE id=$id"; 

if (mysqli_query($koneksi, $query)) {
    echo "Data berhasil diperbarui.";
    header("Location: game.online.php");
    exit; 
} else {
    echo "Error: " . mysqli_error($koneksi);
}
?>