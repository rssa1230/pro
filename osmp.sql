-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2023 pada 08.23
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osmp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` int(9) NOT NULL,
  `about` varchar(500) NOT NULL,
  `visi` varchar(500) NOT NULL,
  `misi1` text NOT NULL,
  `misi2` text NOT NULL,
  `misi3` text NOT NULL,
  `misi4` text NOT NULL,
  `misi5` text NOT NULL,
  `misi6` text NOT NULL,
  `misi7` text NOT NULL,
  `misi8` text NOT NULL,
  `misi9` text NOT NULL,
  `misi10` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `about`, `visi`, `misi1`, `misi2`, `misi3`, `misi4`, `misi5`, `misi6`, `misi7`, `misi8`, `misi9`, `misi10`) VALUES
(1, 'OSIS adalah satu-satunya wadah organisasi siswa yang sah di sekolah. Oleh karena itu setiap sekolah wajib membentuk Organisasi Siswa Intra Sekolah (OSIS), yang tidak mempunyai hubungan organisatoris dengan OSIS di sekolah lain dan tidak menjadi bagian/alat dari organisasi lain yang ada di luar sekolah.', 'Menjadikan suatu organisai OSIS yang cermat (cekatan, empati, responsif, mandiri, amanah, dan terampil)', '1. aku', '2. dia', '3. kita', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(9) NOT NULL,
  `tanggal` date NOT NULL,
  `agenda` varchar(100) NOT NULL,
  `ketuplak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id`, `tanggal`, `agenda`, `ketuplak`) VALUES
(4, '2023-05-03', 'PERPISAHAN KELAS 12', 'ROSSA NURAENI');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `joinsiswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `joinsiswa` (
`id` int(9)
,`nis` varchar(11)
,`foto` varchar(100)
,`nama` varchar(50)
,`tingkat` varchar(4)
,`id_jurusan` int(11)
,`jurusan` varchar(6)
,`id_kelas` int(11)
,`kelas` varchar(9)
,`keterangan` varchar(5)
,`jabatan` varchar(20)
,`hp` varchar(13)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(9) NOT NULL,
  `jurusan` varchar(6) NOT NULL,
  `keterangan` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`, `keterangan`) VALUES
(5, 'PPLG', 'PENGEMBANGAN PERANGKAT LUNAK & GIM'),
(6, 'TJKT', 'TEKNIK JARINGAN KOMPUTER DAN TELEKOMINIKASI'),
(7, 'TBSM', 'TEKNIS BISNIS SEPEDA MOTOR'),
(8, 'DKV', 'DESAIN KOMUNIKASI VISUAL'),
(9, 'TOI', 'TEKNIK OTOMASI INDUSTRI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(9) NOT NULL,
  `kelas` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`) VALUES
(5, '1'),
(6, '2'),
(7, '3'),
(8, '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` text NOT NULL,
  `site` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id`, `img`, `nama`, `ttl`, `alamat`, `site`) VALUES
(1, 'rose.jpg', 'HILMI AHADIAT', '2023-03-01', 'Tidak tahu', '@hilmi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(9) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tingkat` varchar(4) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `keterangan` varchar(5) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `foto`, `nama`, `tingkat`, `id_jurusan`, `id_kelas`, `keterangan`, `jabatan`, `hp`) VALUES
(11, '2468759609', 'back.png', 'ROSSA NURAENI', 'XI', 7, 6, 'MPK', 'BENDAHARA', '0000067676');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(9) NOT NULL,
  `user` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_role` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user`, `username`, `password`, `id_role`) VALUES
(1, 'ROSSA NURAENI', 'rssa', 'admin', 1),
(3, 'TRISENDI', 'admin', 'admin', 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `joinsiswa`
--
DROP TABLE IF EXISTS `joinsiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `joinsiswa`  AS SELECT `a`.`id` AS `id`, `a`.`nis` AS `nis`, `a`.`foto` AS `foto`, `a`.`nama` AS `nama`, `a`.`tingkat` AS `tingkat`, `a`.`id_jurusan` AS `id_jurusan`, `b`.`jurusan` AS `jurusan`, `a`.`id_kelas` AS `id_kelas`, `c`.`kelas` AS `kelas`, `a`.`keterangan` AS `keterangan`, `a`.`jabatan` AS `jabatan`, `a`.`hp` AS `hp` FROM ((`siswa` `a` join `jurusan` `b` on(`a`.`id_jurusan` = `b`.`id`)) join `kelas` `c` on(`a`.`id_kelas` = `c`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `id_jurusan` (`id_jurusan`,`id_kelas`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
