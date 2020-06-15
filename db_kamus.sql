-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Jun 2020 pada 04.49
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kamus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamus`
--

CREATE TABLE `tb_kamus` (
  `id_kamus` int(11) NOT NULL,
  `kata` varchar(225) NOT NULL,
  `deksripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kamus`
--

INSERT INTO `tb_kamus` (`id_kamus`, `kata`, `deksripsi`) VALUES
(1, 'RAM', 'Random Access Memori, merupakan tempat penyimpanan data'),
(2, 'Algoritma', 'Algoritma adalah urutan aksi-aksi yang dinyatakan dengan jelas dan tidak rancu untuk memecahkan suatu masalah dalam rentang waktu tertentu. Setiap aksi harus dapat dikerjakan dan mempunyai efek tertentu. Algoritma dapat dituliskan dengan banyak cara, mulai dari menggunakan bahasa alami yang digunakan sehari-hari, simbol grafik bagan alir, sampai menggunakan bahasa pemograman seperti Pascal. Yang utama, notasi yang digunakan dapat dipahami dengan mudah dan tidak mempunyai interpretasi ganda.'),
(3, 'Internet', 'Internet (portmanteau dari interconnected network) adalah sistem jaringan komputer yang saling terhubung secara global dengan menggunakan paket protokol internet (TCP/IP) untuk menghubungkan perangkat di seluruh dunia.'),
(4, 'Undo', 'Untuk mengembalikan atau membatalkan suatu perintah yang sudah dilakukan sebelumnya. Kita lebih mudah mengatakan undo dari pada kata batal dan kata kembalikan. Sebaliknya untuk mengulang sesuatu yang telah dibatalkan sebelumnya adalah Redo.'),
(5, 'Posting', 'Kata Posting adalah kegiatan membuat artikel agar muncul didalam media, yakni media internet. Posting tidak hanya digunakandalam artikel blog saja, tetapi status dalam jejaring sosial seperti facebook, Twitter, Line dan seterusnya termasuk posting. Penyebutan posting ke dalam bahasa indonesia adalah tayang. Kata Publish adalah menerbitkan atau mengumumkan.  '),
(6, 'Login', 'Login disebut juga Logon atau sign in adalah sistem keamanan komputer, yakni berupa proses masuk  bagi pengguna untuk mengakses sistem komputer. Berbeda dengan Login. Logout adalah istilah dalam keamanan komputer, yakni proses keluar guna memutus akses ke sistem komputer maupun layanan tertentu. Log in dan Log out berbeda fungsi dengan sign in dan sign out. Login/Logout untuk mengakses penuh keseluruhan halaman suatu domain jaringan.  Sign in/Out untuk mengakses halaman tertentu dalam suatu domain jaringan.'),
(7, 'Password', 'Password merupakan kata sandi yang digunakan oleh pengguna jaringan atau sebuah sistem operasi yang mendukung pengguna untuk memverifikasi identitas dirinya kepada sistem keamanan yang dimilki oleh jaringan atau sistem tersebut.'),
(8, 'Administrator', 'Administrator adalah orang yang bertugas mengurusi hal-hak administrasi. Dalam dunia Internet seorang Admin bertugas mengelola yang berhubungan dengan komputer.'),
(9, 'Username', 'Pengertian username menurut kosa-kata bidang Teknologi Informasi adalah pengguna.'),
(10, 'Motherboard', ' Kata lain motherboard adalah papan utama berupa pcb yang memiliki chip bios (program penggerak), jalur-jalur dan konektor sebagai penghubung akses masing-masing perangkat. Biasanya berbentuk seperti sebuah papan sirkuit elektronik.'),
(11, 'Link', 'Link adalah sambungan atau koneksi dari sebuah sumber ke sumber yang lain. Misalnya dalam sistem networking atau internet.'),
(12, 'Connection', 'Arti connection adalah terhubung, sambungan, relasi, perantara, pertalian. Untuk memutuskan, mencopot, melepaskan dikenal dengan istilah Disconnect.'),
(13, 'Cancel', 'Maksud dari kata cancel berarti mencoret, membatalkan.'),
(14, 'Refresh', 'Arti kata refresh adalah menyegarkan, membangkitkan ingatan.'),
(15, 'Bandwidth', 'Istilah bandwidth sering di dengar dalam gelombang atau radio. Bandwidth digunakan sebagai ukuran kemampuan sebuah jaringan dalam menteransfer data pada jangka waktu tertentu'),
(16, 'Domain', 'Domain adalah nama pengganti dari ip address yang akan menuju pada server tertentu dan biasanya diwakili oleh adanya website.'),
(17, 'Hosting', 'Hosting adalah tempat untuk menyimpan data digital yaitu termasuk text, gambar, atau video yang nantinya kesemua informasi tersebut akan di tampilkan dalam bentuk website.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kamus`
--
ALTER TABLE `tb_kamus`
  ADD PRIMARY KEY (`id_kamus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kamus`
--
ALTER TABLE `tb_kamus`
  MODIFY `id_kamus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
