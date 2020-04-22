-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2020 pada 03.19
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id_auth` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nis` int(8) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_level` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id_auth`, `nama`, `nis`, `kelas`, `username`, `password`, `id_level`, `id_jurusan`, `tanggal_masuk`) VALUES
(19, 'admin', 0, '0', 'admin', '$2y$10$sDo4LcDSWDb70e95iKLo.enxQBH7S7wA2ZPI0jSSCH9yR4S9gWLcK', 1, 13, '2020-03-16'),
(22, 'petugas1', 0, '0', 'petugas', '$2y$10$rojqmFYJY6qHxKR4KXTiyuDiBErznMiYuYWLsjACH1Lb8ijR3E6XW', 2, 18, '2020-03-16'),
(23, 'Made Wahyu Purnama Putra', 27255, 'XI', 'wahyu', '$2y$10$OqIYr4hLDUCEhCiAM9EvhuvNVcmv5tT9pB6QBg7lqDUSfygE7hVNi', 3, 19, '2020-03-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `nama_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `kondisi_buku` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `nama_buku`, `pengarang`, `id_kategori`, `deskripsi`, `gambar`, `jumlah_buku`, `tanggal_masuk`, `kondisi_buku`) VALUES
(90, 'Stranger Things: The sound of the Upside Down', 'Jane Doe', 9, 'The antsy bingers of Netflix will eagerly anticipate the digital release of the Survive soundtrack, out today.', 's0.97058500 1585204179.jpg', 35, '2020-03-26', 'Baik'),
(91, 'Joker', 'Todd Phillips', 9, 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a.', 'M0.20106500 1585204363.jpg', 1, '2020-03-26', 'Baik'),
(92, 'laptop', 'sadas', 8, 'asdddddddddddddddddddd', 't0.87455900 1585472941.jpg', 12, '2020-03-29', 'Baik'),
(94, 'laptop', '213', 9, 'saddddddddddddddddddddd', 't0.51434000 1586355426.jpg', 21312, '2020-03-31', 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `jurusan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `jurusan`) VALUES
(13, 'Admin'),
(18, 'Petugas'),
(19, 'Rekayasa Perangkat Lunak 1'),
(20, 'Rekayasa Perangkat Lunak 2'),
(21, 'Multimedia 1'),
(22, 'Multimedia 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`, `kode`) VALUES
(8, 'agama', '200'),
(9, 'fyusdyfdf', '11213');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kembali`
--

CREATE TABLE `tb_kembali` (
  `id_kembali` int(11) NOT NULL,
  `id_auth` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kembali`
--

INSERT INTO `tb_kembali` (`id_kembali`, `id_auth`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `denda`) VALUES
(46, 23, 85, '2020-03-18', '2020-03-19', 0),
(47, 23, 86, '2020-03-19', '2020-03-20', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Admin'),
(2, 'Petugas'),
(3, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `id_auth` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`id_pinjam`, `id_auth`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `lama_pinjam`, `denda`) VALUES
(55, 19, 90, '2020-03-30', '2020-04-01', 2, 0);

--
-- Trigger `tb_pinjam`
--
DELIMITER $$
CREATE TRIGGER `kembali` AFTER UPDATE ON `tb_pinjam` FOR EACH ROW BEGIN
 UPDATE tb_buku
 SET jumlah_buku = jumlah_buku + 1
 WHERE
 id_buku = NEW.id_buku;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pinjam` AFTER INSERT ON `tb_pinjam` FOR EACH ROW BEGIN
 UPDATE tb_buku
 SET jumlah_buku = jumlah_buku - 1
 WHERE
 id_buku = NEW.id_buku;
 END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id_auth`),
  ADD KEY `id_level` (`id_level`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  ADD PRIMARY KEY (`id_kembali`),
  ADD KEY `id_auth` (`id_auth`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD UNIQUE KEY `uk_tb_pinjam` (`id_auth`,`id_buku`),
  ADD KEY `tb_pinjam_ibfk_2` (`id_buku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id_auth` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_kembali`
--
ALTER TABLE `tb_kembali`
  MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD CONSTRAINT `tb_pinjam_ibfk_1` FOREIGN KEY (`id_auth`) REFERENCES `auth` (`id_auth`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
