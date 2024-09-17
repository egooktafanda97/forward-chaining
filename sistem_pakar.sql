/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `gejala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kelompok_gejala_id` int NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kelompok_gejala_id` (`kelompok_gejala_id`),
  CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

CREATE TABLE `gejala_penyakit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gejala_id` int NOT NULL,
  `penyakit_id` int NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gejala_id` (`gejala_id`),
  KEY `penyakit_id` (`penyakit_id`),
  CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

CREATE TABLE `hasil_diagnosa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kepercayaan` float NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

CREATE TABLE `history` (
  `user_id` int NOT NULL,
  `gejala_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `kelompok_gejala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

CREATE TABLE `penyakit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `kode_verifikasi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `userx` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(1, 1, 'G001', 'Kulit kemerahan dan bersisik');
INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(2, 1, 'G002', 'Kemerahan pada wajah');
INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(3, 2, 'G003', 'Luka bernanah pada kulit');
INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(4, 2, 'G004', 'Lepuhan yang mengeras'),
(5, 2, 'G005', 'Benjolan kecil berisi cairan'),
(6, 2, 'G006', 'Keropeng atau kerak kering pada kulit'),
(7, 3, 'G007', 'Gatal pada area kulit yang spesifik'),
(8, 3, 'G008', 'Gatal di malam hari'),
(9, 3, 'G009', 'Gatal parah setelah mandi atau berkeringat'),
(10, 3, 'G010', 'Bercak-bercak merah dengan rasa gatal'),
(11, 4, 'G011', 'Kulit menebal atau mengeras'),
(12, 4, 'G012', 'Kulit kering dan pecah-pecah'),
(13, 4, 'G013', 'Kulit bersisik dengan rasa gatal yang kuat'),
(14, 5, 'G014', 'Ruam dengan lepuhan'),
(15, 5, 'G015', 'Lepuhan yang meletus'),
(16, 5, 'G016', 'Bintik merah atau ruam'),
(17, 5, 'G017', 'Bintik merah dengan tepi bersisik'),
(18, 6, 'G018', 'Pembengkakan pada kulit'),
(19, 7, 'G019', 'Kulit terasa panas dan terbakar'),
(20, 7, 'G020', 'Sensasi menyengat pada kulit'),
(21, 7, 'G021', 'Sensasi terbakar atau kesemutan'),
(22, 8, 'G022', 'Kulit mengelupas'),
(23, 8, 'G023', 'Kulit memerah dan mengelupas'),
(24, 9, 'G024', 'Kulit menghitam atau berwarna lebih gelap');

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(1, 1, 1, 50, 90);
INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(2, 1, 2, 40, 80);
INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(3, 2, 9, 70, 85);
INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(4, 3, 3, 60, 70),
(5, 3, 4, 50, 60),
(6, 4, 3, 60, 80),
(7, 4, 4, 70, 75),
(8, 5, 3, 50, 85),
(9, 5, 5, 60, 60),
(10, 6, 3, 50, 70),
(11, 6, 4, 60, 60),
(12, 7, 6, 50, 70),
(13, 7, 5, 60, 80),
(14, 8, 5, 70, 85),
(15, 9, 5, 60, 70),
(16, 9, 2, 50, 65),
(17, 10, 10, 70, 75),
(18, 10, 5, 60, 80),
(19, 11, 7, 50, 90),
(20, 11, 2, 40, 80),
(21, 12, 2, 50, 85),
(22, 12, 8, 60, 70),
(23, 13, 6, 70, 80),
(24, 13, 8, 60, 85),
(25, 14, 4, 70, 90),
(26, 14, 12, 60, 80),
(27, 15, 4, 70, 85),
(28, 15, 12, 60, 70),
(29, 16, 10, 70, 75),
(30, 16, 5, 60, 80),
(31, 17, 6, 70, 90),
(32, 17, 2, 60, 80),
(33, 18, 10, 70, 85),
(34, 18, 9, 60, 70),
(35, 19, 9, 70, 80),
(36, 19, 1, 60, 85),
(37, 20, 9, 70, 90),
(38, 20, 10, 60, 75),
(39, 21, 9, 70, 85),
(40, 21, 1, 60, 70),
(41, 22, 1, 70, 90),
(42, 22, 2, 60, 80),
(43, 23, 1, 70, 85),
(44, 23, 2, 60, 70),
(45, 24, 7, 70, 75),
(46, 24, 2, 60, 80);

INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(1, 0, 'P001', 'Impetigo Krustosa', 170, 'Infeksi kulit yang disebabkan oleh bakteri, terutama pada anak-anak. Biasanya muncul di sekitar hidung dan mulut. Ditandai dengan lesi berwarna merah yang berubah menjadi kerak kekuningan.', '2024-09-08 01:45:35');
INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(2, 0, 'P003', 'Impetigo Krustosa', 40, 'Infeksi bakteri yang menyebabkan luka bernanah dan kerak pada kulit', '2024-09-08 02:29:14');
INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(3, 0, 'P002', 'Dermatitis', 20, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:30:05');
INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(4, 0, 'P002', 'Dermatitis', 165, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:35:56'),
(5, 0, 'P002', 'Dermatitis', 97, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:39:32'),
(6, 0, 'P002', 'Dermatitis', 97, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:43:03'),
(7, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:46:21'),
(8, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:48:41'),
(9, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:50:35'),
(10, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:51:11'),
(11, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:53:50'),
(12, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:54:39'),
(13, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:55:32'),
(14, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:57:03'),
(15, 0, 'P002', 'Dermatitis', 93.7, 'Peradangan kulit yang menyebabkan kemerahan, gatal, dan iritasi', '2024-09-08 02:57:24'),
(16, 0, 'P001', 'Eritroderma', 85, 'Peradangan kulit yang menyebabkan kemerahan dan pengelupasan', '2024-09-08 03:02:06'),
(17, 0, 'P001', 'Eritroderma', 99.7062, 'Peradangan kulit yang menyebabkan kemerahan dan pengelupasan', '2024-09-08 03:11:46'),
(18, 0, 'P005', 'Scabies', 91.84, 'Rekomendasi obat untuk Scabies: METHILPREDNISOLON, PIROTOP CREAM, CETIRIZINE, OILUM SABUN', '2024-09-09 21:25:31');

INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(0, 1, '2024-09-08 01:45:35');
INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(0, 2, '2024-09-08 01:45:35');
INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(0, 3, '2024-09-08 02:29:14');
INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(0, 4, '2024-09-08 02:29:14'),
(0, 5, '2024-09-08 02:29:14'),
(0, 6, '2024-09-08 02:29:14'),
(0, 1, '2024-09-08 02:30:05'),
(0, 2, '2024-09-08 02:30:05'),
(0, 7, '2024-09-08 02:30:05'),
(0, 12, '2024-09-08 02:30:05'),
(0, 1, '2024-09-08 02:35:56'),
(0, 2, '2024-09-08 02:35:56'),
(0, 7, '2024-09-08 02:35:56'),
(0, 12, '2024-09-08 02:35:56'),
(0, 1, '2024-09-08 02:39:32'),
(0, 2, '2024-09-08 02:39:32'),
(0, 7, '2024-09-08 02:39:32'),
(0, 12, '2024-09-08 02:39:32'),
(0, 1, '2024-09-08 02:43:03'),
(0, 2, '2024-09-08 02:43:03'),
(0, 7, '2024-09-08 02:43:03'),
(0, 12, '2024-09-08 02:43:03'),
(0, 1, '2024-09-08 02:46:21'),
(0, 2, '2024-09-08 02:46:21'),
(0, 7, '2024-09-08 02:46:21'),
(0, 12, '2024-09-08 02:46:21'),
(0, 1, '2024-09-08 02:48:41'),
(0, 2, '2024-09-08 02:48:41'),
(0, 7, '2024-09-08 02:48:41'),
(0, 12, '2024-09-08 02:48:41'),
(0, 1, '2024-09-08 02:50:35'),
(0, 2, '2024-09-08 02:50:35'),
(0, 7, '2024-09-08 02:50:35'),
(0, 12, '2024-09-08 02:50:35'),
(0, 1, '2024-09-08 02:51:11'),
(0, 2, '2024-09-08 02:51:11'),
(0, 7, '2024-09-08 02:51:11'),
(0, 12, '2024-09-08 02:51:11'),
(0, 1, '2024-09-08 02:53:50'),
(0, 2, '2024-09-08 02:53:50'),
(0, 7, '2024-09-08 02:53:50'),
(0, 12, '2024-09-08 02:53:50'),
(0, 1, '2024-09-08 02:54:39'),
(0, 2, '2024-09-08 02:54:39'),
(0, 7, '2024-09-08 02:54:39'),
(0, 12, '2024-09-08 02:54:39'),
(0, 1, '2024-09-08 02:55:32'),
(0, 2, '2024-09-08 02:55:32'),
(0, 7, '2024-09-08 02:55:32'),
(0, 12, '2024-09-08 02:55:32'),
(0, 1, '2024-09-08 02:57:03'),
(0, 2, '2024-09-08 02:57:03'),
(0, 7, '2024-09-08 02:57:03'),
(0, 12, '2024-09-08 02:57:03'),
(0, 1, '2024-09-08 02:57:24'),
(0, 2, '2024-09-08 02:57:24'),
(0, 7, '2024-09-08 02:57:24'),
(0, 12, '2024-09-08 02:57:24'),
(0, 1, '2024-09-08 03:02:06'),
(0, 2, '2024-09-08 03:02:06'),
(0, 3, '2024-09-08 03:02:06'),
(0, 7, '2024-09-08 03:02:06'),
(0, 1, '2024-09-08 03:11:46'),
(0, 19, '2024-09-08 03:11:46'),
(0, 21, '2024-09-08 03:11:46'),
(0, 22, '2024-09-08 03:11:46'),
(0, 7, '2024-09-09 21:25:31'),
(0, 8, '2024-09-09 21:25:31'),
(0, 12, '2024-09-09 21:25:31'),
(0, 14, '2024-09-09 21:25:31');

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Peradangan', 'Gejala terkait dengan peradangan pada kulit');
INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(2, 'Infeksi', 'Gejala terkait dengan infeksi kulit');
INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(3, 'Gatal', 'Gejala terkait dengan rasa gatal pada kulit');
INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(4, 'Penebalan dan Kekeri', 'Gejala terkait dengan kulit menebal atau kering'),
(5, 'Lepuhan dan Ruam', 'Gejala terkait lepuhan atau ruam pada kulit'),
(6, 'Pembengkakan', 'Gejala terkait pembengkakan pada kulit'),
(7, 'Sensasi Terbakar dan', 'Gejala terkait sensasi terbakar atau menyengat pada kulit'),
(8, 'Pengelupasan Kulit', 'Gejala terkait dengan kulit mengelupas'),
(9, 'Perubahan Warna', 'Gejala terkait dengan perubahan warna pada kulit');

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(1, 'P001', 'Eritroderma', 'Rekomendasi obat untuk Eritroderma: CETIRIZINE, ATOCALM CREAM');
INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(2, 'P002', 'Dermatitis', 'Rekomendasi obat untuk Dermatitis: DESOLEX CREAM');
INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(3, 'P003', 'Impetigo Krustosa', 'Rekomendasi obat untuk Impetigo Krustosa: ESTIN, MESOL, ATOCALM CREAM');
INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(4, 'P004', 'Cacar Air', 'Rekomendasi obat untuk Cacar Air: HERCLOV, LAFALOS CREAM'),
(5, 'P005', 'Scabies', 'Rekomendasi obat untuk Scabies: METHILPREDNISOLON, PIROTOP CREAM, CETIRIZINE, OILUM SABUN'),
(6, 'P006', 'Tinea Corporis', 'Rekomendasi obat untuk Tinea Corporis: RYDIAN 1X1, MESOL'),
(7, 'P007', 'Lichen Simplex Chronicus', 'Rekomendasi obat untuk Lichen Simplex Chronicus: ATOCALM CREAM, KLODERMA'),
(8, 'P008', 'Psoriasis', 'Kondisi autoimun yang menyebabkan kulit bersisik dan meradang'),
(9, 'P009', 'Rosacea', 'Rekomendasi obat untuk Rosacea: BIOCREAM, ROSACEA CREAM'),
(10, 'P010', 'Hives', 'Rekomendasi obat untuk Hives: CETIRIZINE, CLARITIN'),
(11, 'P011', 'Candidiasis', 'Rekomendasi obat untuk Candidiasis: [Obat]'),
(12, 'P012', 'Dermatitis Herpetiformis', 'Rekomendasi obat untuk Dermatitis Herpetiformis: [Obat]');

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `level`, `status`, `kode_verifikasi`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'hardiantix.1@gmail.com', 'admin', '', NULL);


INSERT INTO `userx` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(3, 'pasien', '21232f297a57a5a743894a0e4a801fc3', 'pasien1', 'hardiantix.1@gmail.com', 'pasien');
INSERT INTO `userx` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hardianti', 'hardiantix.1@gmail.com', 'admin');
INSERT INTO `userx` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(6, 'hardianti', '3843a08b3283e5603449b42a746ac973', 'hardianti', 'hardiantix.1@gmail.com', 'pasien');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;