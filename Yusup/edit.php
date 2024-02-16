<!DOCTYPE html>
<html>
<head>
	<title>edit</title>
</head>
<body background="4.jpg">
	<br/>
	<a href="game.online.php">KEMBALI</a>
	<br/>
	<br/>
	<h3>EDIT DATA GAME </h3>
	<?php
	include 'koneksi.php';

	$id = (int)$_GET['id'];

	// Persiapkan query SQL dengan parameterized query
	$query = "SELECT * FROM game WHERE id = ?";
	$stmt = mysqli_prepare($koneksi, $query);

	if ($stmt) {
	    // Bind parameter
	    mysqli_stmt_bind_param($stmt, "i", $id);

	    // Eksekusi prepared statement
	    if (mysqli_stmt_execute($stmt)) {
	        // Ambil hasil query
	        $result = mysqli_stmt_get_result($stmt);

	        // Pastikan data ada sebelum mencoba mengaksesnya
	        if ($d = mysqli_fetch_array($result)) {
	            ?>
	            <form method="post" action="update.php">
	                <table>
	                    <tr>			
	                        <td>Nama</td>
	                        <td>
	                            <input type="hidden" name="id" value="<?php echo $d['id']; ?>">
	                            <input type="text" name="nama" value="<?php echo $d['nama']; ?>">
	                        </td>
	                    </tr>
	                    <tr>
	                        <td>Kategori</td>
	                        <td><input type="text" name="kategori" value="<?php echo $d['kategori']; ?>">
						</td>
	                    </tr>
	                    <tr>
	                        <td></td>
	                        <td><input type="submit" value="SIMPAN"></td>
	                    </tr>		
	                </table>
	            </form>
	            <?php
	        } else {
	            echo "Data tidak ditemukan.";
	        }
	    } else {
	        echo "Error executing statement: " . mysqli_error($koneksi);
	    }

	    // Tutup prepared statement
	    mysqli_stmt_close($stmt);
	} else {
	    echo "Error creating statement: " . mysqli_error($koneksi);
	}

	// Tutup koneksi ke database jika sudah selesai
	mysqli_close($koneksi);
	?>
</body>
</html>