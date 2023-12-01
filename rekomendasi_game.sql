-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Des 2023 pada 02.08
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekomendasi_game`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'yusup', 'yusup927');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dgame`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dgame` (
`nama` varchar(30)
,`nama_pengunjung` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dperusahaan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dperusahaan` (
`nama` varchar(30)
,`nama_perusahaan` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dplatform`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dplatform` (
`nama` varchar(30)
,`nama_platform` varchar(50)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `game`
--

CREATE TABLE `game` (
  `id` int(50) NOT NULL,
  `id_perusahaan` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `game`
--

INSERT INTO `game` (`id`, `id_perusahaan`, `nama`, `kategori`, `deskripsi`) VALUES
(3862911, 2211, 'Gta Online', 'ONLINE', '<p><img src=\"GTA.Online.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Nyaris semua gamer di muka bumi ini pasti pernah bermain Grand Theft Auto. Game ini memang seru, membuat kita bisa melakukan apa saja. Seperti nongkrong, bisnis gedung, hingga berbuat kriminal sekaligus (jangan dilakukan di dunia nyata ya!).\n    Rockstar pun membawa keseruan tersebut ke dunia maya melalui GTA Online. Permainan yang satu ini berdasarkan GTA V yang sudah dirilis beberapa tahun silam.\n    Di GTA Online ini, kamu akan menjelajah kota San Andreas. Di tempat itu, kamu akan bertemu dengan pemain lain. Kamu bisa melakukan banyak hal, seperti bermain golf bersama. Bahkan, berencana untuk merampok bank bersama (sekali lagi, jangan ditiru di real world ya).\n    Keseruan GTA Online membuatnya masuk ke daftar game PC online terbaik 2022 ini.</h4>\n<h4>Platform: PlayStation 5, PlayStation 4, Xbox One, Xbox Seri X dan Seri S, PlayStation 3, Xbox 360, Microsoft Windows</h4>\n<h4>Tanggal rilis awal: 1 Oktober 2013</h4>\n<h4> Mode: Permainan video multipemain</h4>\n<h4>Nominasi: The Game Award for Best Ongoing Game</h4>\n<h4>Seri: Grand Theft Auto</h4>\n<h4>Genre: Tembak-menembak orang-pertama, Permainan petualangan-aksi,Tembak-menembak orang ketiga</h4>\n<h4>Perancang: Leslie Benzies</h4>'),
(3862912, 1112, 'Dota 2', 'ONLINE', '<p><img src=\"Dota2.jpg\" alt=\"Dota2\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Defense of The Ancients (DOTA) adalah sebuah game multiplayer online battle arena (MOBA) yang terus berkembang. Di seri keduanya ini, para gamer masih tetap setia dalam memainkannya.\nPermainan dibagi menjadi dua tim, The Radiant dan The Dire. Setiap tim mempunyai lima hero yang dimainkan oleh masing-masing player. Kamu dapat mengendalikan satu karakter dari total 111 hero yang telah tersedia.</h4>\n<h4>karakter hero dikelompokkan menjadi tiga kemampuan, yakni strength, agility dan intelligence. Misi utama permainan ini adalah untuk menghancurkan bangunan Ancient lawan serta mempertahankan bangunan Ancient sendiri.\nDOTA 2 sendiri menyediakan fitur training untuk para player baru yang belum pernah mencoba game ini. Mode tersebut sangat bermanfaat sebagai pengenalan mekanisme gameplay.</h4>\n<h3>Spesifikasi Rekomendasi Untuk Bermain Dota 2</h3>\n<h4>CPU: Intel Core 2 Duo E7400 2.80GHz / AMD Athlon 64 X2 Dual Core 5600+</h4>\n<h4>RAM: 4 GB</h4>\n<h4>HDD: 15 GB of storage space</h4>\n<h4>GPU: NVIDIA GeForce 8600 GTS 512MB / AMD Radeon HD 2600 Pro</h4>\n<h4>OS: 64-bit Windows 7</h4>\n<h4>DirectX: Version 9.0c</h4>\n<h4>Screen Resolution: 1080p</h4>'),
(3862913, 1112, 'Valorant', 'MULTIPLAYER', '<p><img src=\"valo.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>VALORANT adalah game tembak-menembak taktis tempat kamu dan 4 rekan tim berhadapan dengan 5 Agen lain dalam baku tembak berbekal satu nyawa per ronde untuk jadi yang pertama memenangkan 13 ronde! Menarik, \'kan? Namun VALORANT bukan hanya tentang keahlian senjata.</h4>   <h4>Valorant (bergaya sebagai VALORANT) adalah permainan video POP (penembak orang pertama) taktis multipemain gratis yang dikembangkan dan diterbitkan oleh Riot Games, untuk Microsoft Windows. Pertama kali menggoda dengan nama kode Project A pada Oktober 2019, permainan memulai periode beta tertutup dengan akses terbatas pada 7 April 2020, diikuti dengan perilisan resmi pada 2 Juni 2020. Pengembangan permainan dimulai pada 2014.</h4> <h3>1. Spesifikasi Minimal Game Valorant 30 FPS</h3>     <h4>Bisa dibilang spesifikasi ini paling rendah yang diberikan oleh Riot Games sebagai developer permainan Valorant, di bawah ini adalah 3 jenis spesifikasi game Valorant yang harus dimiliki pada Laptop atau PC, yaitu:</h4>     <h4>Windows 7/8/10 64-Bit</h4>     <h4>RAM 4 GB</h4>     <h4>VRAM 1 GB</h4>     <h4>CPU Intel Core 2 Duo E8400 atau Athlon 200 GE (AMD)</h4>     <h4>GPU Intel HD 4000 atau Radeon R5 200</h4><h2>Platform :</h2><h4>Window 10, Window 11, Window 7, Window 8, MacOS, Window XP</h4>'),
(3862941, 2211, 'Gta V', 'OFFLINE', '<p><img src=\"GTA-V.jpg\" alt=\"Gta V\" style=\"width:1000px;height:450px;margin-left:160px;\"> <h3>Grand Theft Auto V adalah Permainan laga-petualangan yang dapat dimainkan dari sudut pandang orang ketiga ataupun sudut pandang orang pertama. Pemain menyelesaikan misi-skenario linier dengan tujuan yang telah ditentukan-untuk melanjutkan alur cerita.Pengembangan game ini dimulai sekitar waktu perilisan Grand Theft Auto IV dan dikerjakan secara bersama-sama oleh sejumlah studio Rockstar di seluruh dunia. Tim pengembang mengambil pengaruh dari banyak proyek mereka sebelumnya seperti Red Dead Redemption maupun Max Payne 3 dan mendesain game di antara tiga protagonis utama untuk berinovasi pada struktur inti pendahulunya. Sebagian besar pengembangannya merupakan kreasi dunia terbuka, dan beberapa anggota tim melakukan penelitian lapangan di sekitar California untuk mengambil rekaman bagi tim desain. Soundtrack game ini menampilkan skor orisinal yang disusun oleh tim produser yang berkolaborasi selama beberapa tahun. Grand Theft Auto V dirilis pada bulan September 2013 untuk PlayStation 3 dan Xbox 360, pada bulan November 2014 untuk PlayStation 4 dan Xbox One, pada bulan April 2015 untuk Windows, dan pada bulan Maret 2022 untuk PlayStation 5 .</h3> <h2>Spesifikasi</h2> <h4>OS: Windows 8.1 64-Bit, Windows 8 64-Bit, Windows 7 64-Bit SP1. Processor: Intel Core i5 3470 @ 3,2 GHz / AMD X8 FX-8350 @ 4 GHz. Memory: 8 GB. Video Card: NVIDIA GTX 660 2GB / AMD HD7870 2GB. Sound Card: 100% DirectX 10 Compatible. HDD Space: 65 GB.</h4>'),
(3862943, 9830, 'Free Fire', 'ONLINE', '<p><img src=\"ff.jpg\" alt=\"Ff\" style=\"width:1000px;height:450px;margin-left:160px;\"><h3>Informasi :</h3> <h4>Garena Free Fire atau biasa disebut Free Fire adalah permainan battle royale yang dikembangkan oleh 111 Dots Studio dan diterbitkan oleh Garena untuk Android dan iOS. Permainan ini merupakan permainan piranti genggam yang paling banyak diunduh secara global pada tahun 2019.Free Fire merupakan salah satu game battle royale yang terkenal, dan tidak bisa kita ragukan lagi bahwa Fire Fire merupakan game yang populer saat ini.  Tidak hanya di Indonesia saja Free Fire terkenal namun secara global Free Fire merupakan game yang terkenal.Game ini tidak hanya bisa dimainkan di hp saja,namun game ini juga bisa di mainkan di PC kalian.</h4> <h2><p align=\"center\">Spesifikasi Yang dibutuhkan untuk PC:</p></h2> <h4>OS - Windows 7,8,10 (64 bit)</h4> <h4>RAM - 4GB</h4> <h4>CPU - Core i3 2.4GHz</h4> <h4>ROM - 4GB</h4> <h4>Grafis - Intel HD Graphics 4000.</h4> <h2><p align=\"center\">Spesifikasi Yang dibutuhkan untuk HP:</p></h2> <h4>RAM: Minimal 3 GB untuk menjalankan game dengan lancar tanpa lag.</h4> <h4>Storage: Minimal 32 GB untuk menyimpan game dan aplikasi lainnya.</h4> <h4>Processor Speed: Minimal Snapdragon 625 atau setara untuk menjalankan game dengan lancar.</h4><h2>Platform :</h2><h4>Andriod, iOS, iPadOS</h4>'),
(3862944, 9830, 'Left 4 Dead 2', 'SURVIVAL', '<p><img src=\"LD.jpg\" alt=\"left 4 dead\" style=\"width:1000px;height:450px;margin-left:160px;\"><h2>Left 4 Dead 2</h2>\n<h3> adalah permainan video kooperatif, horor sintasan dan tembak-menembak orang-pertama yang mengikut Left 4 Dead. Permainan ini dikembangkan oleh Valve Corporation.\nGame Left 4 Dead 2 kini menjadi salah satu game zombie terbaik dan ikonik yang dapat anda mainkan.\n\nBanyak tanggapan-tanggapan positif yang diberikan kepada Left 4 Dead 2 ini dikarenakan petualangan dan kisah yang diperkenalkanya lebih menantang sehingga membuat anda fokus terus memainkanya.\nAnda akan diarahkan menjadi salah satu dari 4 orang yang selamat yang dipersenjatai dengan beragam senjata klasik yang harus anda tingkatkan dan cari.\nSelain senjata api anda juga dapat memakai senjata jarak dekat seperti gergaji mesin, kapak, wajan penggorengan dan lain sebagainya.\nDalam Left 4 Dead 2 anda juga akan melawan zombie yang sudah mengalami tingkat mutan tinggi seperti Mudmen yang mengerikan dan pastinya akan membuat anda merasakan ngeri saat melihatnya.\nDetail game Left 4 Dead 2 sangat soft dan enak untuk dilihat sehingga membuat anda tidak akan menyesal untuk memainkanya.\nDari segi kisah juga sangat kompleks dan menarik untuk dilihat. Banyak kisah dan petualangan yang akan membuat anda tertantang.\n</h3>\n<h2>Spesifikasi</h2>\n<h3>Game ini memiliki spesifikasi minimum dengan prosesor Intel Pentium 4 3.0GHz dengan RAM 2 GB dan pengolah grafis minimal Nvidia GeForce 6600 atau ATI Radeon X800.</h3>\n<h2>Platform</h2>\n<h3>Xbox 360, Microsoft Windows, Linux, Mac OS</h3>\n'),
(3862945, 9830, 'Point Blank', 'MULTIPLAYER', '<p><img src=\"pb.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Pada awalnya point blank dirilis oleh Gemscool pada tahun 2009 dengan melakukan kontrak kerja bersama Zepetto hingga bulan Juni 2015. Kemudian pada tahun 2015 game point blank diambil ahli oleh perusahaan asal Negara Singapura bernama Garena. Bahkan perusahaan asal Negara Singapura tersebut mengubah nama game tersebut menjadi Point Blank Evolution.\r\n\r\nHal ini karena pb sempat mengalami mati server selama kurang lebih sebulan, bahkan sempat ada rumor yang mengatakan bahwa game online yang bisa dimainkan di pc atau laptop ini akan segera ditutup. Namun, pihak Garena selaku pengembang dan pemilik barunya menepis rumor tersebut hingga akhirnya berhasil membuat game pb kembali eksis dan menjadi game pc paling populer saat itu.</h4><h2>Spesifikasi untuk Laptop :</h2><h4>CPU Intel Pentium 4 2.4 GHz atau AMD Athlon 2500+\r\nGPU Nvidia GeForce 7600, \r\nRAM 1 GB, \r\nVRAM 256 MB, \r\nMemory 5 GB Free Space, \r\nOperation System Windows XP, \r\nSize File 2.8 GB</h4><h2>Platform :</h2><h4>Window 10, Window 11, Window 7, Window 8, MacOS, Window XP</h4>\r\n'),
(3862947, 2211, 'Gta San Andreas', 'OFFLINE', '<p><img src=\"sa.jpg\" alt=\"left 4 dead\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Grand Theft Auto: San Andreas (sering disingkat sebagai GTA: SA atau GTA: San Andreas), adalah permainan video laga-petualangan yang dikembangkan oleh Rockstar North, dan diterbitkan oleh Rockstar Games. Permainan ini adalah permainan 3D ke-7 dalam seri Grand Theft Auto, yang ke-5 pada rilis konsol dan permainan ke-7 secara keseluruhan. Pada awalnya dirilis untuk PlayStation 2 pada bulan Oktober 2004, permainan ini kemudian di pemortakan ke Xbox dan Microsoft Windows, kini yang baru rilis Android dan menerima penerimaan dan penjualan yang tinggi pada tiga platform tersebut, dan mendapat rekor penjualan permainan tertinggi di PlayStation 2. Grand Theft Auto: San Andreas diteruskan oleh Grand Theft Auto: Liberty City Stories dan didahului oleh Grand Theft Auto: Vice City.</h4><h2>Spesifikasi GTA San Andreas PC dan Laptop:</h2><h4>Sistem Operasi: Microsoft Windows 2000/XP.\r\nProsesor: 1 GHz Pentium III atau AMD Athlon.\r\nRAM: 256 MB.\r\nKartu Grafis: 64 MB NVIDIA GeForce 3 atau ATI Radeon 8500.\r\nKartu Suara: Kompatibel dengan DirectX 9.0.\r\nDVD-ROM: 8X DVD-ROM.\r\nRuangan Hard Disk: 3.6 GB ruang kosong pada hard disk.</h4><h2>Platform :</h2><h4>	\r\nPlayStation 2\r\nMicrosoft Windows,\r\nXbox,\r\nMac OS X,\r\niOS,\r\nAndroid,\r\nWindows Phone,\r\nFire OS,\r\nXbox 360,\r\nPlayStation 3</h4>'),
(3862948, 1112, 'Call Of Duty MW 3', 'OFFLINE', '<p><img src=\"mw3.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Call of Duty atau yang sering disingkat sebagai CoD adalah permainan perang tembak-menembak orang pertama yang dikembangkan oleh Infinity Ward dan dipublikasikan oleh Activision pada tanggal 29 Oktober 2003 untuk PC. Permainan ini berfokus kepada simulasi perang dalam Perang Dunia Kedua di Front Eropa.Franchise COD sendiri sudah merilis lebih dari 40 seri game dengan beberapa seri utamanya.</h4><h2>Spesifikasi untuk PC :</h2><h4>OS: Windows® XP/ Windows® Vista / Windows® 7, \r\nProcessor: Intel® Core™ 2 Duo E6600 or AMD Phenom™ X3 8750 processor or better, \r\nMemory: 2 GB RAM, \r\nGraphics: Shader 3.0 or better 256 MB NVIDIA® GeForce™ 8600GT / ATI® Radeon™ X1950 or better,\r\nDirectX®: DirectX® 9.0c or later.</h4><h2>Platform :</h2><h4>Playstation 3, Xbox 360, Wii, Mac OS klasik</h4>'),
(3862950, 1112, 'The Forest', 'SURVIVAL', '<p><img src=\"tf.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>The Forest adalah game survival open world yang masih dalam tahap pengembangan. Game ini awalnya hanya tersedia tersedia untuk platform PC. Akan tetapi, kini sudah tersedia juga untuk Playstation 4.\r\n\r\nDalam game ini, kita berperan sebagai orang yang selamat dari sebuah kecelakaan pesawat dan diharuskan untuk bertahan hidup sendirian di tengah hutan yang ditinggali oleh makhluk kanibal. Untuk bertahan hidup, pemain harus mengumpulkan makanan, menjaga suhu tubuh agar tetap hangat, membersihkan luka agar tidak infeksi, dan membangun gubuk untuk berlindung sebelum malam tiba.\r\nUntuk mendapat makanan, pemain bisa memanfaatkan tumbuh-tumbuhan, menangkap kelinci, ikan dan kadal, atau mengumpulkan snack dari koper yang terjatuh dari pesawat. Akan tetapi, tidak semua tumbuhan dapat dimakan, beberapa jenis tumbuhan ada yang beracun.</h4><h2>Spesifikasi minimum untuk PC :</h2><h4>OS: Windows 10 64-bit,\r\nProcessor: Intel Core i5-8400 atau AMD Ryzen 3 3300X,\r\nRAM: 12 GB,\r\nGraphics (VGA/GPU): NVIDIA GeForce GTX 1060 3GB atau AMD Radeon RX 570 4GB,\r\nDirectX: Version 11,\r\nStorage: Sediakan space atau ruang 20 GB.</h4>'),
(3862953, 9781, 'NFS Most Wanted', 'OFFLINE', '<p><img src=\"mw.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Need for Speed pertama yang rilis di Xbox 360. Kejar kejaran dengan polisi di kembalikan dan malah dijadikan gameplay utamanya.\r\n\r\nStorylinenya di berikan dengan cara yang berbeda, menggunakan CGI FMV dengan live action yang juga mempengaruhi seri seri selanjutnya.\r\n\r\nMost Wanted menampilkan fitur Blacklist, kumpulan kru yang harus di kalahkan satu demi satu untuk membuka parts, mobil dan juga track baru. Player harus memenuhi kriteria tertentu untuk dapat melanjutkan mengalahkan Blacklist tertentu.\r\n\r\nMost Wanted mendapatkan add-on \"Black Edition\" yang memberikan balapan tambahan dan bonus mobil, dan juga interview developer di movie nya. Black Edition tidak sempat mampir ke 360 karena sudah dilanjutkan dengan NFS seri selanjutnya.</h4><h2>Spesifikasi minimal :</h2><h4>CPU: Pentium 4 or Athlon XP.\r\nCPU SPEED: 1.4 GHz.\r\nRAM: 256 MB.\r\nVIDEO CARD: 32 MB DirectX 9.0c compatible 3D video card (NVIDIA GeForce2 MX+ / ATI Radeon 7500+ / Intel 915+)\r\nTOTAL VIDEO RAM: 32 MB.\r\n3D: Yes.\r\nHARDWARE T&L: Yes.</h4><h2>Platform :</h2><h4>Android, Microsoft Windows, PlayStation 3, Xbox 360, PlayStation vita, iOS</h4>'),
(3862954, 2211, 'Gta VI', 'OFFLINE', '<p><img src=\"7.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Grand Theft Auto IV (GTA IV) adalah Permainan aksi-petualangan 2008 yang dikembangkan oleh Rockstar North dan diterbitkan oleh Rockstar Games. Ini adalah entri utama keenam dalam seri Grand Theft Auto, setelah Grand Theft Auto: San Andreas tahun 2004, dan seri kesebelas secara keseluruhan. Berlatar belakang Kota Liberty yang fiktif, yang berbasis di Kota New York, cerita pemain tunggal ini mengikuti veteran perang Eropa Timur, Niko Bellic, dan upayanya melarikan diri dari masa lalunya ketika berada di bawah tekanan penjahat kelas kakap. Desain dunia yang terbuka memungkinkan pemain bebas menjelajahi Liberty City, yang terdiri dari tiga pulau utama, dan negara bagian tetangga, Alderney, yang berbasis di New Jersey.\r\n\r\nPermainan ini dimainkan dari perspektif pandangan orang ketiga dan dunianya dinavigasi dengan berjalan kaki atau dengan kendaraan. Sepanjang mode pemain tunggal, pemain bermain sebagai Niko Bellic. Mode multipemain daring disertakan dengan permainan ini, memungkinkan hingga 32 pemain untuk terlibat dalam permainan kooperatif dan kompetitif dalam rekreasi pengaturan pemain tunggal.[b] Dua paket ekspansi kemudian dirilis untuk gim tersebut, The Lost dan Damned dan The Ballad of Gay Tony, yang keduanya menampilkan alur cerita baru yang saling berhubungan dengan jalan cerita utama Grand Theft Auto IV, dan mengikuti protagonis baru.</h4><h2>Spesifikasi minimum :</h2><h4>CPU: Intel Core 2 Duo 1.8GHz, AMD Athlon X2 64 2.4GHz.\r\nCPU SPEED: 1.8 GHz.\r\nRAM: 1 GB for Windows XP / 1.5 GB for Windows Vista)\r\nVIDEO CARD: 256MB NVIDIA 7900+ / 256MB ATI X1900+\r\nDEDICATED VIDEO RAM: 256 MB.\r\nPIXEL SHADER: 3.0.\r\nVERTEX SHADER: 3.0.\r\n3D: Yes.</h4><h2>Platform :</h2><h4>Playstation 3, Xbox 360, Xbox One, Microsoft Windows</h4>'),
(3862955, 9830, 'Call Of Duty Black Ops III', 'ONLINE', '<p><img src=\"cb.jpg\" alt=\"Valorant\" style=\"width:1000px;height:450px;margin-left:160px;\"><h4>Call of Duty: Black Ops adalah permainan tembak-menembak orang-pertama dari Seri Call of Duty. Black Ops adalah seri ke-7 Call of Duty setelah Call of Duty: Modern Warfare 2. Permainan ini dikembangkan oleh Treyarch dan didistribusikan oleh Activision. Black Ops adalah serial permainan Call of Duty pertama yang menggunakan latar belakang Perang Dingin. Game ini telah dirilis pada 9 November 2010.</h4><h2>Spesifikasi PC untuk Game Call Of Duty Black Ops I:</h2><h4>OS: Windows 10 64 Bit (Service Pack terbaru)\nCPU: Intel Core i7 4770k atau setara AMD.\nGPU: Nvidia GeForce GTX 970 4GB / GTX 1660 Super 6GB atau AMD Radeon R9 390 / AMD RX 580.\nRAM: 16 GB.\nHDD: 45 GB.\nSound Card: Kompatibel dengan DirectX, memerlukan sistem yang kompatibel dengan DirectX 12.</h4><h2>Platform :</h2><h4>Microsoft Windows, Xbox 360, PlayStation 3, dan Wii.</h4>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `nama`) VALUES
(3862911, 'Linar'),
(3862912, 'Yusup'),
(3862913, 'Pasya'),
(3862914, 'Shalman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(50) NOT NULL,
  `nama_pengunjung` varchar(50) NOT NULL,
  `kode_game` int(20) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama_pengunjung`, `kode_game`, `komentar`) VALUES
(123093, 'Pasya', 3862911, 'game nya bagus'),
(262176, 'Shalman', 3862912, ''),
(566789, 'Linar', 3862913, ''),
(887787, 'Riyad', 3862941, ''),
(908711, 'Yusup', 3862914, ''),
(908712, 'Pasya', 3862912, 'kurang bagus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(100) NOT NULL,
  `nama_perusahaan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `alamat`) VALUES
(1112, 'Valve Corporation', 'Amerika Serikat, Los Angeles'),
(2211, 'Rockstart Games', 'Kota New York'),
(3037, 'Rockstart North', 'Los Angeles, Amerika Serikat'),
(9781, 'Valve Corporation', 'Amerika Serikat'),
(9830, 'Riot Games', 'Los Angeles Barat, California, U.S.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `platform`
--

CREATE TABLE `platform` (
  `id_platform` int(50) NOT NULL,
  `nama_platform` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `platform`
--

INSERT INTO `platform` (`id_platform`, `nama_platform`) VALUES
(3862911, 'Microsoft Windows, OS X, Linux'),
(3862912, 'Microsoft Windows'),
(3862913, 'Microsoft Windows, Xbox 360'),
(3862914, 'PlayStation 5, PlayStation 4, Xbox One'),
(3862941, 'PlayStation 5, PlayStation 4, PlayStation 3');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vkomentar_game`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vkomentar_game` (
`id` int(50)
,`nama` varchar(30)
,`nama_pengunjung` varchar(50)
,`komentar` text
);

-- --------------------------------------------------------

--
-- Struktur untuk view `dgame`
--
DROP TABLE IF EXISTS `dgame`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dgame`  AS SELECT `game`.`nama` AS `nama`, `pengunjung`.`nama_pengunjung` AS `nama_pengunjung` FROM (`pengunjung` join `game` on(`game`.`id` = `pengunjung`.`kode_game`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `dperusahaan`
--
DROP TABLE IF EXISTS `dperusahaan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dperusahaan`  AS SELECT `game`.`nama` AS `nama`, `perusahaan`.`nama_perusahaan` AS `nama_perusahaan` FROM (`perusahaan` join `game` on(`game`.`id_perusahaan` = `perusahaan`.`id_perusahaan`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `dplatform`
--
DROP TABLE IF EXISTS `dplatform`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dplatform`  AS SELECT `game`.`nama` AS `nama`, `platform`.`nama_platform` AS `nama_platform` FROM (`platform` join `game` on(`game`.`id` = `platform`.`id_platform`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vkomentar_game`
--
DROP TABLE IF EXISTS `vkomentar_game`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vkomentar_game`  AS SELECT `game`.`id` AS `id`, `game`.`nama` AS `nama`, `pengunjung`.`nama_pengunjung` AS `nama_pengunjung`, `pengunjung`.`komentar` AS `komentar` FROM (`game` left join `pengunjung` on(`game`.`id` = `pengunjung`.`kode_game`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indeks untuk tabel `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id_platform`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `game`
--
ALTER TABLE `game`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3862958;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3862919;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=908713;

--
-- AUTO_INCREMENT untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9832;

--
-- AUTO_INCREMENT untuk tabel `platform`
--
ALTER TABLE `platform`
  MODIFY `id_platform` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3862943;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
