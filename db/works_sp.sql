-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 08:48 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `works_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kelompok_gejala_id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(37, 1, 'x01', 'Ikan Daya Tahan Tubuh Lemah'),
(38, 1, 'x02', 'Warna Sirip Berubah Menjadi Merah'),
(39, 1, 'x03', 'Warna Tubuh Menjadi Gelap'),
(40, 2, 'x04', 'Produksi Berlebihan'),
(41, 1, 'x05', 'Pendarahan Bawah Kulit'),
(42, 2, 'x06', 'Nafsu Makan Menurun'),
(43, 1, 'x07', 'Sisik Terkelupas'),
(44, 2, 'x08', 'Kotoran Berwarna Putih'),
(45, 3, 'x09', 'Terdapat benang-benang halus seperti kapas pada tubuh'),
(46, 2, 'x10', 'Ikan Menjadi Kurus'),
(47, 3, 'x11', 'Terapung di Permukaan Air'),
(48, 3, 'x12', 'Bintik Putih dipermukaan Tubuh'),
(49, 2, 'x13', 'Kematian Massal'),
(50, 3, 'x14', 'Berputar-putar'),
(51, 2, 'x15', 'Pertumbuhan Lambat'),
(52, 1, 'x16', 'Muncul Bintik Berwarna Emas'),
(53, 1, 'x17', 'Sirip Menguncup'),
(54, 3, 'x18', 'Ikan Menjadi Lambat'),
(55, 3, 'x19', 'Menggosokan Tubuh pada Dinding Kolam'),
(56, 1, 'x20', 'Sirip Rontok');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`,  ) VALUES
(1, 37, 10, 20, 10),
(2, 38, 10, 20, 10),
(3, 39, 10, 20, 10),
(4, 40, 10, 20, 10),
(5, 41, 10, 20, 10),
(6, 39, 11, 25, 10),
(7, 40, 11, 25, 10),
(8, 42, 11, 25, 10),
(9, 43, 11, 25, 10),
(10, 39, 12, 33, 10),
(11, 42, 12, 33, 10),
(12, 44, 12, 33, 10),
(13, 38, 13, 25, 10),
(14, 42, 13, 25, 10),
(15, 45, 13, 25, 10),
(16, 46, 13, 25, 10),
(17, 45, 18, 33, 10),
(18, 48, 18, 33, 10),
(19, 56, 18, 33, 10),
(20, 42, 14, 20, 10),
(21, 47, 14, 20, 10),
(22, 48, 14, 20, 10),
(23, 49, 14, 20, 10),
(24, 50, 14, 20, 10),
(25, 38, 15, 25, 10),
(26, 39, 15, 25, 10),
(27, 42, 15, 25, 10),
(28, 51, 15, 25, 10),
(29, 42, 16, 25, 10),
(30, 52, 16, 25, 10),
(31, 53, 16, 25, 10),
(32, 54, 16, 25, 10),
(33, 37, 17, 14, 10),
(34, 39, 17, 14, 10),
(35, 40, 17, 14, 10),
(36, 41, 17, 14, 10),
(37, 43, 17, 14, 10),
(38, 55, 17, 14, 10),
(39, 56, 17, 14, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kepercayaan` float NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(28, 0, 'KD01', 'Walang Sangit', 200, 'Walang sangit merupakan hama yang umum merusak bulir padi pada fase pemasakan, fase penumbuhan tanaman padi yang rentan terhadap serangan walang sangit adalah dari keluarnya malai sampai matang susu. Kerusakan yang ditimbulkannya menyebabkan beras berubah', '2022-07-05 18:25:42'),
(29, 0, 'KD03', 'Penggerek', 1600, 'Penggerek batang padi adalah salah satu hama yang palig sering menyerang tanaman padi dengan intensitas serangan sampai 90%. Hama ini menyerang tanaman padi pada berbagai fase pertumbuhan mulai dari fase vegetatif sampai generatif.', '2022-07-05 18:32:01'),
(30, 0, 'KD03', 'Penggerek', 5600, 'Penggerek batang padi adalah salah satu hama yang palig sering menyerang tanaman padi dengan intensitas serangan sampai 90%. Hama ini menyerang tanaman padi pada berbagai fase pertumbuhan mulai dari fase vegetatif sampai generatif.', '2022-07-05 18:32:44'),
(31, 0, 'KD02', 'Wereng', 2600, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:33:04'),
(32, 0, 'KD04', 'Putih', 2600, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:33:33'),
(33, 0, 'KD04', 'Putih', 260, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:34:40'),
(34, 0, 'KD04', 'Putih', 26, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:34:48'),
(35, 0, 'KD04', 'Putih', 40, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:35:49'),
(36, 0, 'KD03', 'Penggerek', 40, 'Penggerek batang padi adalah salah satu hama yang palig sering menyerang tanaman padi dengan intensitas serangan sampai 90%. Hama ini menyerang tanaman padi pada berbagai fase pertumbuhan mulai dari fase vegetatif sampai generatif.', '2022-07-05 18:36:12'),
(37, 0, 'KD03', 'Penggerek', 20, 'Penggerek batang padi adalah salah satu hama yang palig sering menyerang tanaman padi dengan intensitas serangan sampai 90%. Hama ini menyerang tanaman padi pada berbagai fase pertumbuhan mulai dari fase vegetatif sampai generatif.', '2022-07-05 18:37:04'),
(38, 0, 'KD03', 'Penggerek', 20, 'Penggerek batang padi adalah salah satu hama yang palig sering menyerang tanaman padi dengan intensitas serangan sampai 90%. Hama ini menyerang tanaman padi pada berbagai fase pertumbuhan mulai dari fase vegetatif sampai generatif.', '2022-07-05 18:37:29'),
(39, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:37:40'),
(40, 0, 'KD02', 'Wereng', 10, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:37:47'),
(41, 0, 'KD02', 'Wereng', 20, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:39:04'),
(42, 0, 'KD02', 'Wereng', 2000, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:40:03'),
(43, 0, 'KD01', 'Walang Sangit', 1000, 'Walang sangit merupakan hama yang umum merusak bulir padi pada fase pemasakan, fase penumbuhan tanaman padi yang rentan terhadap serangan walang sangit adalah dari keluarnya malai sampai matang susu. Kerusakan yang ditimbulkannya menyebabkan beras berubah', '2022-07-05 18:40:27'),
(44, 0, 'KD02', 'Wereng', 20, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:40:43'),
(45, 0, 'KD02', 'Wereng', 30, 'Wereng hijau adalah hama utama tanaman padi yang selalu menjadi faktor penyebab gagalnya pertanian padi. Hama wereng hijau ini akan menyebabkan virus tungro, yang mana virus ini menyebabkan penyakit pada tanaman padi. Akibat dari penyakit tungro produktiv', '2022-07-05 18:41:39'),
(46, 0, 'PP02', 'Kresek', 120, 'Gejala awal terdapat pada tepi daun atau bagian daun yang luka berupa garis bercak kebasahan. Bercak selanjutnya meluas berwarna hijau keabuan, seluruh daun menjadi keriput dan akhirnya layu seperti tersiram air panas. Gejala kresek merupakan gejala yang ', '2022-07-05 18:42:06'),
(47, 0, 'PP01', 'Blas', 40, 'Penyakit blas merupakan pemyakit yang disebabkan oleh jamur pylicularia grisea. Jamur ini dapat menginfeksi pada semua fase pertumbuhan tanaman padi, mulai dari fase pembibitan sampai pada fase generatif. Tanaman yang terserang penyakit blas memiliki ciri', '2022-07-05 18:42:20'),
(48, 0, 'PP02', 'Kresek', 20, 'Gejala awal terdapat pada tepi daun atau bagian daun yang luka berupa garis bercak kebasahan. Bercak selanjutnya meluas berwarna hijau keabuan, seluruh daun menjadi keriput dan akhirnya layu seperti tersiram air panas. Gejala kresek merupakan gejala yang ', '2022-07-05 18:42:39'),
(49, 0, 'PP02', 'Kresek', 70, 'Gejala awal terdapat pada tepi daun atau bagian daun yang luka berupa garis bercak kebasahan. Bercak selanjutnya meluas berwarna hijau keabuan, seluruh daun menjadi keriput dan akhirnya layu seperti tersiram air panas. Gejala kresek merupakan gejala yang ', '2022-07-05 18:42:59'),
(50, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:44:02'),
(51, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:45:13'),
(52, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:45:42'),
(53, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:45:55'),
(54, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:46:22'),
(55, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:46:46'),
(56, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:47:02'),
(57, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:47:18'),
(58, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:48:13'),
(59, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:48:33'),
(60, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:50:01'),
(61, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:50:32'),
(62, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 18:57:39'),
(63, 0, 'KD04', 'Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:01:01'),
(64, 0, 'KD04', 'Hama Putih', 10, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:04:31'),
(65, 0, 'KD04', 'Hama Putih', 10, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:04:44'),
(66, 0, 'KD04', 'Hama Putih', 10, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:05:06'),
(67, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:05:12'),
(68, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:05:42'),
(69, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:06:02'),
(70, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:07:01'),
(71, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:07:18'),
(72, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:07:50'),
(73, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 19:08:46'),
(74, 0, 'KD04', 'Hama Putih', 20, 'Hama putih palsu merupakan hama pada tanaman padi yang ditandai dengan **gejala daun yang terlipat** akibat kerusakan yang ditimbulkan oleh larva hama putih palsu. Hama putih palsu memiliki nama latin Cnaphalocrocis medinalis. Hama ini biasanya menyerang ', '2022-07-05 22:39:13'),
(75, 0, 'PP01', 'Penyakit Blas', 10, 'Penyakit blas merupakan pemyakit yang disebabkan oleh jamur pylicularia grisea. Jamur ini dapat menginfeksi pada semua fase pertumbuhan tanaman padi, mulai dari fase pembibitan sampai pada fase generatif. Tanaman yang terserang penyakit blas memiliki ciri', '2022-08-12 16:01:50'),
(76, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 10:07:08'),
(77, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 10:11:59'),
(78, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 10:18:51'),
(79, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 10:19:42'),
(80, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 10:20:01'),
(81, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 10:21:01'),
(82, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 10:22:36'),
(83, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 10:23:57'),
(84, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 10:25:17'),
(85, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 10:27:07'),
(86, 0, 'P05', 'Penyakit WSS (White ', 40, '	************										', '2022-08-13 10:30:16'),
(87, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 10:32:26'),
(88, 0, 'P07', 'Penyakit Velvet', 20, '								*************			', '2022-08-13 10:34:17'),
(89, 0, 'P08', 'Penyakit Gyrodactylo', 50, '		********************									', '2022-08-13 10:35:39'),
(90, 0, 'P05', 'Penyakit WSS (White ', 10, '	************										', '2022-08-13 10:37:33'),
(91, 0, 'P05', 'Penyakit WSS (White ', 10, '	************										', '2022-08-13 10:38:48'),
(92, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 12:18:10'),
(93, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 12:20:25'),
(94, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 12:21:25'),
(95, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 12:22:43'),
(96, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 12:23:59'),
(97, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 12:25:23'),
(98, 0, 'P05', 'Penyakit WSS (White ', 40, '	************										', '2022-08-13 12:27:17'),
(99, 0, 'P07', 'Penyakit Velvet', 20, '								*************			', '2022-08-13 12:29:19'),
(100, 0, 'P05', 'Penyakit WSS (White ', 10, '	************										', '2022-08-13 12:30:27'),
(101, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 12:32:00'),
(102, 0, 'P05', 'Penyakit WSS (White ', 30, '	************										', '2022-08-13 12:33:09'),
(103, 0, 'P08', 'Penyakit Gyrodactylo', 50, '		********************									', '2022-08-13 12:34:50'),
(104, 0, 'P05', 'Penyakit WSS (White ', 20, '	************										', '2022-08-13 13:04:13'),
(105, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 13:04:45'),
(106, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 13:05:06'),
(107, 0, 'P01', 'Pseudomonas Spp', 20, '		******									', '2022-08-13 13:06:26'),
(108, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 13:06:49'),
(109, 0, 'P01', 'Pseudomonas Spp', 20, '		******									', '2022-08-13 13:07:12'),
(110, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 13:07:35'),
(111, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 13:07:53'),
(112, 0, 'P01', 'Pseudomonas Spp', 20, '		******									', '2022-08-13 13:08:12'),
(113, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 13:08:38'),
(114, 0, 'P01', 'Pseudomonas Spp', 20, '		******									', '2022-08-13 13:08:57'),
(115, 0, 'P06', 'Penyakit Tuberculosi', 20, '				************							', '2022-08-13 13:09:20'),
(116, 0, 'P01', 'Pseudomonas Spp', 20, '		******									', '2022-08-13 13:09:36'),
(117, 0, 'P05', 'Penyakit WSS (White ', 10, '	************										', '2022-08-13 13:24:31'),
(118, 0, 'P09', 'Penyakit Columnaris ', 20, '		*****************									', '2022-08-13 13:24:49'),
(119, 0, 'P09', 'Penyakit Columnaris ', 20, '		*****************									', '2022-08-13 13:26:50'),
(120, 0, 'P09', 'Penyakit Columnaris ', 20, '		*****************									', '2022-08-13 13:27:48'),
(121, 0, 'P05', 'Penyakit WSS (White ', 10, '	************										', '2022-08-13 13:29:12'),
(122, 0, 'P05', 'Penyakit WSS (White ', 20, '	************										', '2022-08-13 13:29:58'),
(123, 0, 'P05', 'Penyakit WSS (White ', 20, '	************										', '2022-08-13 13:31:46'),
(124, 0, 'P07', 'Penyakit Velvet', 20, '								*************			', '2022-08-13 13:32:31'),
(125, 0, 'P08', 'Penyakit Gyrodactylo', 20, '		********************									', '2022-08-13 13:32:51'),
(126, 0, 'P03', 'Hexamita', 10, '	**************										', '2022-08-13 13:33:17'),
(127, 0, 'P03', 'Hexamita', 10, '	**************										', '2022-08-13 13:33:58'),
(128, 0, 'P03', 'Hexamita', 20, '	**************										', '2022-08-13 13:34:32'),
(129, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 13:35:00'),
(130, 0, 'P03', 'Hexamita', 20, '	**************										', '2022-08-13 13:35:35'),
(131, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 13:36:08'),
(132, 0, 'P03', 'Hexamita', 20, '	**************										', '2022-08-13 13:36:35'),
(133, 0, 'P03', 'Hexamita', 20, '	**************										', '2022-08-13 13:37:03'),
(134, 0, 'P03', 'Hexamita', 20, '	**************										', '2022-08-13 13:37:24'),
(135, 0, 'P07', 'Penyakit Velvet', 20, '								*************			', '2022-08-13 13:39:29'),
(136, 0, 'P04', 'Penyakit Saprolegnia', 20, '	************										', '2022-08-13 13:46:35'),
(137, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2022-08-13 23:21:22'),
(138, 0, 'P04', 'Penyakit Saprolegnia', 20, '	************										', '2024-04-23 16:22:02'),
(139, 0, 'X01', 'Pseudomonas Spp', 20, '		******																				', '2024-08-23 18:02:59'),
(140, 0, 'X01', 'Pseudomonas Spp', 20, '		******																				', '2024-08-23 18:07:53'),
(141, 0, 'X01', 'Pseudomonas Spp', 20, '		******																				', '2024-08-23 18:08:19'),
(142, 0, 'X01', 'Pseudomonas Spp', 20, '		******																				', '2024-08-23 18:08:55'),
(143, 0, 'X01', 'Pseudomonas Spp', 20, '		******																				', '2024-08-23 18:09:05'),
(144, 0, 'P02', 'Aeromonas Hydrophila', 20, '	************										', '2024-08-25 03:33:13'),
(145, 0, 'S04', 'Saprolegniasis', 20, '	************																					', '2024-08-26 22:58:19'),
(146, 0, 'S08', 'Gyrodactylosis', 10, '		********************																				', '2024-08-26 22:59:42'),
(147, 0, 'S01', 'Pseudomonas Spp', 10, '		******																															', '2024-08-28 18:32:53'),
(148, 0, 'S06', 'Tuberculosis', 20, '				************																		', '2024-08-29 02:26:31'),
(149, 0, 'S05', 'White Spot Syndrome', 20, '	************																					', '2024-08-29 03:07:56'),
(150, 0, 'S02', 'Aeromonas Hydrophila', 20, '	************																					', '2024-08-29 03:08:44'),
(151, 0, 'S03', 'Hexamita', 20, '	**************																					', '2024-08-29 03:58:28'),
(152, 0, 'S06', 'Tuberculosis', 20, '				************																		', '2024-08-29 05:13:42'),
(153, 0, 'S07', 'Velvet', 10, '								*************														', '2024-08-29 05:29:05'),
(154, 0, 'S07', 'Velvet', 10, '								*************														', '2024-08-29 05:30:10'),
(155, 0, 'S06', 'Tuberculosis', 20, '				************																		', '2024-08-29 05:30:43'),
(156, 0, 'S01', 'Pseudomonas Spp', 20, '		******																															', '2024-08-29 05:43:18'),
(157, 0, 'S01', 'Pseudomonas Spp', 30, '		******																															', '2024-08-29 05:43:36'),
(158, 0, 'S01', 'Pseudomonas Spp', 30, '		******																															', '2024-08-29 05:43:55'),
(159, 0, 'S01', 'Pseudomonas Spp', 20, '		******																															', '2024-08-29 05:44:27'),
(160, 0, 'S01', 'Pseudomonas Spp', 20, '		******																															', '2024-08-29 05:51:47'),
(161, 0, 'S01', 'Pseudomonas Spp', 20, '		******																															', '2024-08-29 05:53:10'),
(162, 0, 'S02', 'Aeromonas Hydrophila', 20, '	************																					', '2024-08-29 05:54:24'),
(163, 0, 'S01', 'Pseudomonas Spp', 30, '		******																															', '2024-08-29 06:11:08'),
(164, 0, 'S01', 'Pseudomonas Spp', 20, '		******																															', '2024-08-29 06:11:36'),
(165, 0, 'S01', 'Pseudomonas Spp', 10, '		******																															', '2024-08-29 06:18:34'),
(166, 0, 'S02', 'Aeromonas Hydrophila', 16, '	************																					', '2024-08-29 06:21:43'),
(167, 0, 'S01', 'Pseudomonas Spp', 25, '		******																															', '2024-08-29 06:22:12'),
(168, 0, 'S02', 'Aeromonas Hydrophila', 40, '	************																					', '2024-08-29 06:23:55'),
(169, 0, 'S08', 'Gyrodactylosis', 40, '		********************																				', '2024-08-29 06:24:35'),
(170, 0, 'S01', 'Pseudomonas Spp', 50, '		******																															', '2024-08-29 06:31:13'),
(171, 0, 'S02', 'Aeromonas Hydrophila', 40, '	************																					', '2024-08-29 06:31:49'),
(172, 0, 'S03', 'Hexamita', 30, '	**************																					', '2024-08-29 06:32:28'),
(173, 0, 'S01', 'Pseudomonas Spp', 30, '		******																															', '2024-08-29 06:33:27'),
(174, 0, 'S01', 'Pseudomonas Spp', 30, '		******																															', '2024-08-29 06:35:14'),
(175, 0, 'S04', 'Saprolegniasis', 40, '	************																					', '2024-08-29 06:35:38'),
(176, 0, 'S04', 'Saprolegniasis', 40, '	************																					', '2024-08-29 06:36:48'),
(177, 0, 'S09', 'Columnaris ', 30, '		*****************																				', '2024-08-29 06:37:15'),
(178, 0, 'S09', 'Columnaris ', 30, '		*****************																				', '2024-08-29 06:40:12'),
(179, 0, 'S05', 'White Spot Syndrome', 50, '	************																					', '2024-08-29 06:40:34'),
(180, 0, 'S06', 'Tuberculosis', 40, '				************																		', '2024-08-29 06:42:19'),
(181, 0, 'S07', 'Velvet', 40, '								*************														', '2024-08-29 06:43:52'),
(182, 0, 'S08', 'Gyrodactylosis', 70, '		********************																				', '2024-08-29 06:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `user_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(3, 5, '2018-08-31 00:39:41'),
(3, 6, '2018-08-31 00:39:41'),
(3, 11, '2018-08-31 00:39:41'),
(3, 12, '2018-08-31 00:39:41'),
(3, 8, '2018-08-31 00:41:04'),
(3, 7, '2018-08-31 00:41:04'),
(6, 7, '2018-08-31 01:18:05'),
(6, 9, '2018-08-31 01:18:05'),
(6, 10, '2018-08-31 01:18:05'),
(3, 10, '2018-08-31 03:01:09'),
(3, 11, '2018-08-31 03:01:09'),
(3, 1, '2018-08-31 05:43:26'),
(3, 2, '2018-08-31 05:43:26'),
(3, 3, '2018-08-31 05:43:26'),
(3, 1, '2018-08-31 05:45:11'),
(3, 4, '2018-08-31 05:45:11'),
(3, 5, '2018-08-31 05:45:11'),
(3, 6, '2018-08-31 05:45:11'),
(0, 9, '2018-08-31 21:08:35'),
(0, 10, '2018-08-31 21:08:35'),
(3, 16, '2018-09-05 04:34:02'),
(3, 17, '2018-09-05 04:34:02'),
(3, 18, '2018-09-05 04:34:02'),
(3, 20, '2018-09-05 04:34:02'),
(3, 16, '2018-09-05 04:34:32'),
(3, 17, '2018-09-05 04:34:32'),
(3, 18, '2018-09-05 04:34:32'),
(3, 20, '2018-09-05 04:34:32'),
(3, 32, '2018-09-05 04:34:32'),
(3, 33, '2018-09-05 04:34:32'),
(4, 1, '2018-09-05 14:22:36'),
(4, 2, '2018-09-05 14:22:36'),
(4, 3, '2018-09-05 14:22:36'),
(4, 28, '2018-09-05 14:41:54'),
(4, 31, '2018-09-05 14:41:54'),
(4, 32, '2018-09-05 14:41:54'),
(4, 28, '2018-09-05 14:44:03'),
(4, 31, '2018-09-05 14:44:03'),
(4, 32, '2018-09-05 14:44:03'),
(3, 1, '2018-09-05 23:16:38'),
(3, 2, '2018-09-05 23:16:38'),
(3, 3, '2018-09-05 23:16:38'),
(3, 4, '2018-09-05 23:16:38'),
(3, 1, '2018-09-06 00:12:03'),
(4, 1, '2018-09-08 02:56:57'),
(4, 2, '2018-09-08 02:56:57'),
(4, 3, '2018-09-08 02:56:57'),
(3, 30, '2018-09-23 06:20:50'),
(3, 33, '2018-09-23 06:34:33'),
(3, 30, '2018-09-23 06:34:33'),
(0, 1, '2020-01-28 18:56:02'),
(0, 18, '2020-01-28 18:56:02'),
(0, 1, '2020-01-28 18:57:43'),
(0, 18, '2020-01-28 18:57:43'),
(0, 1, '2020-01-28 18:57:47'),
(0, 18, '2020-01-28 18:57:47'),
(0, 1, '2020-01-28 18:58:03'),
(0, 18, '2020-01-28 18:58:03'),
(0, 1, '2020-01-28 18:58:53'),
(0, 2, '2020-01-28 18:58:53'),
(0, 3, '2020-01-28 18:58:53'),
(0, 4, '2020-01-28 18:58:53'),
(0, 15, '2020-01-28 18:58:53'),
(0, 17, '2020-01-28 18:58:53'),
(0, 33, '2020-01-28 18:58:53'),
(0, 35, '2020-01-28 18:58:53'),
(0, 36, '2020-01-28 18:58:53'),
(0, 4, '2020-01-28 19:48:40'),
(0, 5, '2020-01-28 19:48:40'),
(0, 6, '2020-01-28 19:48:40'),
(0, 9, '2020-01-28 19:48:40'),
(0, 10, '2020-01-28 19:48:40'),
(0, 11, '2020-01-28 19:48:40'),
(0, 15, '2020-01-28 19:48:40'),
(0, 31, '2020-01-28 19:48:40'),
(0, 32, '2020-01-28 19:48:40'),
(0, 33, '2020-01-28 19:48:40'),
(0, 35, '2020-01-28 19:48:40'),
(0, 36, '2020-01-28 19:48:40'),
(0, 10, '2022-07-05 17:03:46'),
(0, 11, '2022-07-05 17:03:46'),
(0, 15, '2022-07-05 17:03:46'),
(0, 17, '2022-07-05 17:03:46'),
(0, 10, '2022-07-05 17:05:00'),
(0, 11, '2022-07-05 17:05:00'),
(0, 15, '2022-07-05 17:05:00'),
(0, 17, '2022-07-05 17:05:00'),
(0, 1, '2022-07-05 17:05:16'),
(0, 2, '2022-07-05 17:05:16'),
(0, 3, '2022-07-05 17:05:16'),
(0, 4, '2022-07-05 17:05:16'),
(0, 5, '2022-07-05 17:05:16'),
(0, 6, '2022-07-05 17:05:16'),
(0, 7, '2022-07-05 17:05:16'),
(0, 8, '2022-07-05 17:05:16'),
(0, 1, '2022-07-05 17:06:16'),
(0, 2, '2022-07-05 17:06:16'),
(0, 3, '2022-07-05 17:06:16'),
(0, 4, '2022-07-05 17:06:16'),
(0, 1, '2022-07-05 17:06:43'),
(0, 2, '2022-07-05 17:06:43'),
(0, 3, '2022-07-05 17:06:43'),
(0, 4, '2022-07-05 17:06:43'),
(0, 1, '2022-07-05 17:06:49'),
(0, 2, '2022-07-05 17:06:49'),
(0, 3, '2022-07-05 17:06:49'),
(0, 4, '2022-07-05 17:06:49'),
(0, 7, '2022-07-05 17:06:49'),
(0, 8, '2022-07-05 17:06:49'),
(0, 9, '2022-07-05 17:06:49'),
(0, 1, '2022-07-05 17:07:11'),
(0, 2, '2022-07-05 17:07:11'),
(0, 3, '2022-07-05 17:07:11'),
(0, 4, '2022-07-05 17:07:11'),
(0, 7, '2022-07-05 17:07:11'),
(0, 8, '2022-07-05 17:07:11'),
(0, 9, '2022-07-05 17:07:11'),
(0, 1, '2022-07-05 18:15:42'),
(0, 2, '2022-07-05 18:15:42'),
(0, 1, '2022-07-05 18:16:51'),
(0, 2, '2022-07-05 18:16:51'),
(0, 1, '2022-07-05 18:17:34'),
(0, 2, '2022-07-05 18:17:34'),
(0, 4, '2022-07-05 18:24:46'),
(0, 1, '2022-07-05 18:25:42'),
(0, 3, '2022-07-05 18:25:42'),
(0, 4, '2022-07-05 18:25:42'),
(0, 1, '2022-07-05 18:29:29'),
(0, 3, '2022-07-05 18:29:29'),
(0, 4, '2022-07-05 18:29:29'),
(0, 1, '2022-07-05 18:31:15'),
(0, 3, '2022-07-05 18:31:15'),
(0, 4, '2022-07-05 18:31:15'),
(0, 1, '2022-07-05 18:31:45'),
(0, 3, '2022-07-05 18:31:45'),
(0, 4, '2022-07-05 18:31:45'),
(0, 1, '2022-07-05 18:32:01'),
(0, 3, '2022-07-05 18:32:01'),
(0, 4, '2022-07-05 18:32:01'),
(0, 1, '2022-07-05 18:32:31'),
(0, 3, '2022-07-05 18:32:31'),
(0, 4, '2022-07-05 18:32:31'),
(0, 1, '2022-07-05 18:32:44'),
(0, 3, '2022-07-05 18:32:44'),
(0, 4, '2022-07-05 18:32:44'),
(0, 1, '2022-07-05 18:33:04'),
(0, 3, '2022-07-05 18:33:04'),
(0, 4, '2022-07-05 18:33:04'),
(0, 1, '2022-07-05 18:33:32'),
(0, 2, '2022-07-05 18:33:32'),
(0, 1, '2022-07-05 18:34:40'),
(0, 2, '2022-07-05 18:34:40'),
(0, 1, '2022-07-05 18:34:48'),
(0, 2, '2022-07-05 18:34:48'),
(0, 1, '2022-07-05 18:35:49'),
(0, 2, '2022-07-05 18:35:49'),
(0, 1, '2022-07-05 18:36:12'),
(0, 2, '2022-07-05 18:36:12'),
(0, 3, '2022-07-05 18:36:12'),
(0, 5, '2022-07-05 18:36:12'),
(0, 4, '2022-07-05 18:36:12'),
(0, 1, '2022-07-05 18:37:03'),
(0, 2, '2022-07-05 18:37:03'),
(0, 3, '2022-07-05 18:37:03'),
(0, 5, '2022-07-05 18:37:03'),
(0, 4, '2022-07-05 18:37:03'),
(0, 1, '2022-07-05 18:37:29'),
(0, 2, '2022-07-05 18:37:29'),
(0, 3, '2022-07-05 18:37:29'),
(0, 5, '2022-07-05 18:37:29'),
(0, 4, '2022-07-05 18:37:29'),
(0, 1, '2022-07-05 18:37:40'),
(0, 2, '2022-07-05 18:37:40'),
(0, 3, '2022-07-05 18:37:47'),
(0, 1, '2022-07-05 18:39:04'),
(0, 3, '2022-07-05 18:39:04'),
(0, 4, '2022-07-05 18:39:04'),
(0, 1, '2022-07-05 18:40:03'),
(0, 3, '2022-07-05 18:40:03'),
(0, 4, '2022-07-05 18:40:03'),
(0, 1, '2022-07-05 18:40:27'),
(0, 3, '2022-07-05 18:40:27'),
(0, 4, '2022-07-05 18:40:27'),
(0, 1, '2022-07-05 18:40:42'),
(0, 3, '2022-07-05 18:40:42'),
(0, 4, '2022-07-05 18:40:42'),
(0, 1, '2022-07-05 18:41:39'),
(0, 3, '2022-07-05 18:41:39'),
(0, 4, '2022-07-05 18:41:39'),
(0, 1, '2022-07-05 18:42:06'),
(0, 3, '2022-07-05 18:42:06'),
(0, 4, '2022-07-05 18:42:06'),
(0, 1, '2022-07-05 18:42:20'),
(0, 2, '2022-07-05 18:42:39'),
(0, 1, '2022-07-05 18:42:59'),
(0, 2, '2022-07-05 18:42:59'),
(0, 1, '2022-07-05 18:44:01'),
(0, 2, '2022-07-05 18:44:01'),
(0, 1, '2022-07-05 18:45:12'),
(0, 2, '2022-07-05 18:45:12'),
(0, 1, '2022-07-05 18:45:42'),
(0, 2, '2022-07-05 18:45:42'),
(0, 1, '2022-07-05 18:45:55'),
(0, 2, '2022-07-05 18:45:55'),
(0, 1, '2022-07-05 18:46:22'),
(0, 2, '2022-07-05 18:46:22'),
(0, 1, '2022-07-05 18:46:45'),
(0, 2, '2022-07-05 18:46:45'),
(0, 1, '2022-07-05 18:47:02'),
(0, 2, '2022-07-05 18:47:02'),
(0, 1, '2022-07-05 18:47:18'),
(0, 2, '2022-07-05 18:47:18'),
(0, 1, '2022-07-05 18:48:13'),
(0, 2, '2022-07-05 18:48:13'),
(0, 1, '2022-07-05 18:48:33'),
(0, 2, '2022-07-05 18:48:33'),
(0, 1, '2022-07-05 18:50:01'),
(0, 2, '2022-07-05 18:50:01'),
(0, 1, '2022-07-05 18:50:32'),
(0, 2, '2022-07-05 18:50:32'),
(0, 1, '2022-07-05 18:57:39'),
(0, 2, '2022-07-05 18:57:39'),
(0, 1, '2022-07-05 19:01:01'),
(0, 2, '2022-07-05 19:01:01'),
(0, 1, '2022-07-05 19:04:31'),
(0, 1, '2022-07-05 19:04:44'),
(0, 1, '2022-07-05 19:05:06'),
(0, 1, '2022-07-05 19:05:12'),
(0, 2, '2022-07-05 19:05:12'),
(0, 1, '2022-07-05 19:05:42'),
(0, 2, '2022-07-05 19:05:42'),
(0, 1, '2022-07-05 19:06:02'),
(0, 2, '2022-07-05 19:06:02'),
(0, 1, '2022-07-05 19:07:01'),
(0, 2, '2022-07-05 19:07:01'),
(0, 1, '2022-07-05 19:07:18'),
(0, 2, '2022-07-05 19:07:18'),
(0, 1, '2022-07-05 19:07:50'),
(0, 2, '2022-07-05 19:07:50'),
(0, 1, '2022-07-05 19:08:46'),
(0, 2, '2022-07-05 19:08:46'),
(0, 1, '2022-07-05 22:39:13'),
(0, 2, '2022-07-05 22:39:13'),
(0, 3, '2022-07-05 22:39:13'),
(0, 3, '2022-08-12 16:01:50'),
(0, 4, '2022-08-12 16:01:50'),
(0, 38, '2022-08-12 17:18:14'),
(0, 56, '2022-08-12 17:18:14'),
(0, 44, '2022-08-12 17:18:14'),
(0, 54, '2022-08-12 17:18:14'),
(0, 37, '2022-08-13 10:07:08'),
(0, 38, '2022-08-13 10:07:08'),
(0, 39, '2022-08-13 10:07:08'),
(0, 41, '2022-08-13 10:07:08'),
(0, 39, '2022-08-13 10:11:59'),
(0, 43, '2022-08-13 10:11:59'),
(0, 40, '2022-08-13 10:11:59'),
(0, 42, '2022-08-13 10:11:59'),
(0, 37, '2022-08-13 10:18:51'),
(0, 38, '2022-08-13 10:18:51'),
(0, 39, '2022-08-13 10:18:51'),
(0, 41, '2022-08-13 10:18:51'),
(0, 40, '2022-08-13 10:18:51'),
(0, 37, '2022-08-13 10:19:42'),
(0, 38, '2022-08-13 10:19:42'),
(0, 39, '2022-08-13 10:19:42'),
(0, 41, '2022-08-13 10:19:42'),
(0, 40, '2022-08-13 10:19:42'),
(0, 37, '2022-08-13 10:20:01'),
(0, 38, '2022-08-13 10:20:01'),
(0, 39, '2022-08-13 10:20:01'),
(0, 41, '2022-08-13 10:20:01'),
(0, 40, '2022-08-13 10:20:01'),
(0, 39, '2022-08-13 10:21:01'),
(0, 42, '2022-08-13 10:21:01'),
(0, 44, '2022-08-13 10:21:01'),
(0, 39, '2022-08-13 10:22:36'),
(0, 42, '2022-08-13 10:22:36'),
(0, 44, '2022-08-13 10:22:36'),
(0, 39, '2022-08-13 10:23:57'),
(0, 42, '2022-08-13 10:23:57'),
(0, 44, '2022-08-13 10:23:57'),
(0, 39, '2022-08-13 10:25:17'),
(0, 43, '2022-08-13 10:25:17'),
(0, 40, '2022-08-13 10:25:17'),
(0, 42, '2022-08-13 10:25:17'),
(0, 38, '2022-08-13 10:27:07'),
(0, 42, '2022-08-13 10:27:07'),
(0, 46, '2022-08-13 10:27:07'),
(0, 45, '2022-08-13 10:27:07'),
(0, 37, '2022-08-13 10:30:16'),
(0, 42, '2022-08-13 10:30:16'),
(0, 49, '2022-08-13 10:30:16'),
(0, 47, '2022-08-13 10:30:16'),
(0, 48, '2022-08-13 10:30:16'),
(0, 50, '2022-08-13 10:30:16'),
(0, 38, '2022-08-13 10:32:26'),
(0, 39, '2022-08-13 10:32:26'),
(0, 42, '2022-08-13 10:32:26'),
(0, 51, '2022-08-13 10:32:26'),
(0, 52, '2022-08-13 10:34:17'),
(0, 53, '2022-08-13 10:34:17'),
(0, 42, '2022-08-13 10:34:17'),
(0, 54, '2022-08-13 10:34:17'),
(0, 37, '2022-08-13 10:35:39'),
(0, 39, '2022-08-13 10:35:39'),
(0, 41, '2022-08-13 10:35:39'),
(0, 43, '2022-08-13 10:35:39'),
(0, 56, '2022-08-13 10:35:39'),
(0, 40, '2022-08-13 10:35:39'),
(0, 55, '2022-08-13 10:35:39'),
(0, 56, '2022-08-13 10:37:32'),
(0, 45, '2022-08-13 10:37:32'),
(0, 48, '2022-08-13 10:37:32'),
(0, 56, '2022-08-13 10:38:48'),
(0, 45, '2022-08-13 10:38:48'),
(0, 48, '2022-08-13 10:38:48'),
(0, 37, '2022-08-13 12:18:10'),
(0, 38, '2022-08-13 12:18:10'),
(0, 39, '2022-08-13 12:18:10'),
(0, 41, '2022-08-13 12:18:10'),
(0, 40, '2022-08-13 12:18:10'),
(0, 39, '2022-08-13 12:20:25'),
(0, 43, '2022-08-13 12:20:25'),
(0, 40, '2022-08-13 12:20:25'),
(0, 42, '2022-08-13 12:20:25'),
(0, 39, '2022-08-13 12:21:25'),
(0, 42, '2022-08-13 12:21:25'),
(0, 44, '2022-08-13 12:21:25'),
(0, 39, '2022-08-13 12:22:43'),
(0, 43, '2022-08-13 12:22:43'),
(0, 40, '2022-08-13 12:22:43'),
(0, 42, '2022-08-13 12:22:43'),
(0, 39, '2022-08-13 12:23:59'),
(0, 43, '2022-08-13 12:23:59'),
(0, 40, '2022-08-13 12:23:59'),
(0, 42, '2022-08-13 12:23:59'),
(0, 38, '2022-08-13 12:25:23'),
(0, 39, '2022-08-13 12:25:23'),
(0, 42, '2022-08-13 12:25:23'),
(0, 51, '2022-08-13 12:25:23'),
(0, 37, '2022-08-13 12:27:17'),
(0, 42, '2022-08-13 12:27:17'),
(0, 49, '2022-08-13 12:27:17'),
(0, 47, '2022-08-13 12:27:17'),
(0, 48, '2022-08-13 12:27:17'),
(0, 50, '2022-08-13 12:27:17'),
(0, 52, '2022-08-13 12:29:19'),
(0, 53, '2022-08-13 12:29:19'),
(0, 42, '2022-08-13 12:29:19'),
(0, 54, '2022-08-13 12:29:19'),
(0, 56, '2022-08-13 12:30:27'),
(0, 45, '2022-08-13 12:30:27'),
(0, 48, '2022-08-13 12:30:27'),
(0, 38, '2022-08-13 12:32:00'),
(0, 42, '2022-08-13 12:32:00'),
(0, 46, '2022-08-13 12:32:00'),
(0, 45, '2022-08-13 12:32:00'),
(0, 42, '2022-08-13 12:33:09'),
(0, 49, '2022-08-13 12:33:09'),
(0, 47, '2022-08-13 12:33:09'),
(0, 48, '2022-08-13 12:33:09'),
(0, 50, '2022-08-13 12:33:09'),
(0, 37, '2022-08-13 12:34:50'),
(0, 39, '2022-08-13 12:34:50'),
(0, 41, '2022-08-13 12:34:50'),
(0, 43, '2022-08-13 12:34:50'),
(0, 56, '2022-08-13 12:34:50'),
(0, 40, '2022-08-13 12:34:50'),
(0, 55, '2022-08-13 12:34:50'),
(0, 48, '2022-08-13 13:04:13'),
(0, 50, '2022-08-13 13:04:13'),
(0, 54, '2022-08-13 13:04:13'),
(0, 39, '2022-08-13 13:04:45'),
(0, 43, '2022-08-13 13:04:45'),
(0, 56, '2022-08-13 13:04:45'),
(0, 37, '2022-08-13 13:05:06'),
(0, 43, '2022-08-13 13:05:06'),
(0, 44, '2022-08-13 13:05:06'),
(0, 38, '2022-08-13 13:06:26'),
(0, 39, '2022-08-13 13:06:26'),
(0, 37, '2022-08-13 13:06:49'),
(0, 38, '2022-08-13 13:06:49'),
(0, 39, '2022-08-13 13:06:49'),
(0, 38, '2022-08-13 13:07:12'),
(0, 39, '2022-08-13 13:07:12'),
(0, 38, '2022-08-13 13:07:35'),
(0, 39, '2022-08-13 13:07:35'),
(0, 41, '2022-08-13 13:07:35'),
(0, 38, '2022-08-13 13:07:53'),
(0, 39, '2022-08-13 13:07:53'),
(0, 40, '2022-08-13 13:07:53'),
(0, 38, '2022-08-13 13:08:12'),
(0, 39, '2022-08-13 13:08:12'),
(0, 43, '2022-08-13 13:08:12'),
(0, 38, '2022-08-13 13:08:38'),
(0, 39, '2022-08-13 13:08:38'),
(0, 43, '2022-08-13 13:08:38'),
(0, 52, '2022-08-13 13:08:38'),
(0, 38, '2022-08-13 13:08:57'),
(0, 39, '2022-08-13 13:08:57'),
(0, 53, '2022-08-13 13:08:57'),
(0, 38, '2022-08-13 13:09:20'),
(0, 39, '2022-08-13 13:09:20'),
(0, 43, '2022-08-13 13:09:20'),
(0, 53, '2022-08-13 13:09:20'),
(0, 38, '2022-08-13 13:09:36'),
(0, 39, '2022-08-13 13:09:36'),
(0, 43, '2022-08-13 13:09:36'),
(0, 50, '2022-08-13 13:24:31'),
(0, 45, '2022-08-13 13:24:49'),
(0, 47, '2022-08-13 13:24:49'),
(0, 48, '2022-08-13 13:24:49'),
(0, 50, '2022-08-13 13:24:49'),
(0, 54, '2022-08-13 13:24:49'),
(0, 55, '2022-08-13 13:24:49'),
(0, 45, '2022-08-13 13:26:49'),
(0, 47, '2022-08-13 13:26:49'),
(0, 48, '2022-08-13 13:26:49'),
(0, 50, '2022-08-13 13:26:49'),
(0, 45, '2022-08-13 13:27:48'),
(0, 47, '2022-08-13 13:27:48'),
(0, 48, '2022-08-13 13:27:48'),
(0, 50, '2022-08-13 13:27:48'),
(0, 54, '2022-08-13 13:27:48'),
(0, 49, '2022-08-13 13:29:12'),
(0, 51, '2022-08-13 13:29:12'),
(0, 54, '2022-08-13 13:29:12'),
(0, 55, '2022-08-13 13:29:12'),
(0, 46, '2022-08-13 13:29:58'),
(0, 49, '2022-08-13 13:29:58'),
(0, 50, '2022-08-13 13:29:58'),
(0, 54, '2022-08-13 13:29:58'),
(0, 55, '2022-08-13 13:29:58'),
(0, 48, '2022-08-13 13:31:46'),
(0, 50, '2022-08-13 13:31:46'),
(0, 54, '2022-08-13 13:31:46'),
(0, 43, '2022-08-13 13:32:31'),
(0, 52, '2022-08-13 13:32:31'),
(0, 53, '2022-08-13 13:32:31'),
(0, 56, '2022-08-13 13:32:31'),
(0, 37, '2022-08-13 13:32:51'),
(0, 52, '2022-08-13 13:32:51'),
(0, 56, '2022-08-13 13:32:51'),
(0, 44, '2022-08-13 13:33:17'),
(0, 46, '2022-08-13 13:33:17'),
(0, 49, '2022-08-13 13:33:17'),
(0, 51, '2022-08-13 13:33:17'),
(0, 44, '2022-08-13 13:33:58'),
(0, 46, '2022-08-13 13:33:58'),
(0, 49, '2022-08-13 13:33:58'),
(0, 51, '2022-08-13 13:33:58'),
(0, 42, '2022-08-13 13:34:31'),
(0, 44, '2022-08-13 13:34:31'),
(0, 46, '2022-08-13 13:34:31'),
(0, 49, '2022-08-13 13:34:31'),
(0, 51, '2022-08-13 13:34:31'),
(0, 40, '2022-08-13 13:35:00'),
(0, 42, '2022-08-13 13:35:00'),
(0, 44, '2022-08-13 13:35:00'),
(0, 46, '2022-08-13 13:35:00'),
(0, 49, '2022-08-13 13:35:00'),
(0, 40, '2022-08-13 13:35:35'),
(0, 42, '2022-08-13 13:35:35'),
(0, 44, '2022-08-13 13:35:35'),
(0, 46, '2022-08-13 13:35:35'),
(0, 51, '2022-08-13 13:35:35'),
(0, 41, '2022-08-13 13:36:07'),
(0, 43, '2022-08-13 13:36:07'),
(0, 42, '2022-08-13 13:36:07'),
(0, 44, '2022-08-13 13:36:07'),
(0, 46, '2022-08-13 13:36:07'),
(0, 49, '2022-08-13 13:36:07'),
(0, 51, '2022-08-13 13:36:07'),
(0, 42, '2022-08-13 13:36:35'),
(0, 44, '2022-08-13 13:36:35'),
(0, 46, '2022-08-13 13:36:35'),
(0, 49, '2022-08-13 13:36:35'),
(0, 51, '2022-08-13 13:36:35'),
(0, 42, '2022-08-13 13:37:03'),
(0, 44, '2022-08-13 13:37:03'),
(0, 46, '2022-08-13 13:37:03'),
(0, 49, '2022-08-13 13:37:03'),
(0, 42, '2022-08-13 13:37:23'),
(0, 44, '2022-08-13 13:37:23'),
(0, 46, '2022-08-13 13:37:23'),
(0, 43, '2022-08-13 13:39:29'),
(0, 52, '2022-08-13 13:39:29'),
(0, 53, '2022-08-13 13:39:29'),
(0, 56, '2022-08-13 13:39:29'),
(0, 38, '2022-08-13 13:46:35'),
(0, 43, '2022-08-13 13:46:35'),
(0, 53, '2022-08-13 13:46:35'),
(0, 49, '2022-08-13 13:46:35'),
(0, 39, '2022-08-13 23:21:22'),
(0, 41, '2022-08-13 23:21:22'),
(0, 43, '2022-08-13 23:21:22'),
(0, 52, '2022-08-13 23:21:22'),
(0, 53, '2022-08-13 23:21:22'),
(0, 43, '2024-04-23 16:22:02'),
(0, 52, '2024-04-23 16:22:02'),
(0, 49, '2024-04-23 16:22:02'),
(0, 50, '2024-04-23 16:22:02'),
(0, 38, '2024-08-23 18:02:59'),
(0, 39, '2024-08-23 18:02:59'),
(0, 52, '2024-08-23 18:02:59'),
(0, 42, '2024-08-23 18:02:59'),
(0, 46, '2024-08-23 18:02:59'),
(0, 51, '2024-08-23 18:02:59'),
(0, 38, '2024-08-23 18:07:53'),
(0, 39, '2024-08-23 18:07:53'),
(0, 52, '2024-08-23 18:07:53'),
(0, 42, '2024-08-23 18:07:53'),
(0, 46, '2024-08-23 18:07:53'),
(0, 51, '2024-08-23 18:07:53'),
(0, 38, '2024-08-23 18:08:19'),
(0, 39, '2024-08-23 18:08:19'),
(0, 52, '2024-08-23 18:08:19'),
(0, 42, '2024-08-23 18:08:19'),
(0, 46, '2024-08-23 18:08:19'),
(0, 51, '2024-08-23 18:08:19'),
(0, 38, '2024-08-23 18:08:55'),
(0, 39, '2024-08-23 18:08:55'),
(0, 52, '2024-08-23 18:08:55'),
(0, 42, '2024-08-23 18:08:55'),
(0, 46, '2024-08-23 18:08:55'),
(0, 51, '2024-08-23 18:08:55'),
(0, 38, '2024-08-23 18:09:05'),
(0, 39, '2024-08-23 18:09:05'),
(0, 52, '2024-08-23 18:09:05'),
(0, 42, '2024-08-23 18:09:05'),
(0, 46, '2024-08-23 18:09:05'),
(0, 51, '2024-08-23 18:09:05'),
(0, 38, '2024-08-25 03:33:13'),
(0, 41, '2024-08-25 03:33:13'),
(0, 43, '2024-08-25 03:33:13'),
(0, 42, '2024-08-25 03:33:13'),
(0, 46, '2024-08-25 03:33:13'),
(0, 43, '2024-08-26 22:58:19'),
(0, 56, '2024-08-26 22:58:19'),
(0, 46, '2024-08-26 22:58:19'),
(0, 49, '2024-08-26 22:58:19'),
(0, 50, '2024-08-26 22:58:19'),
(0, 55, '2024-08-26 22:59:42'),
(0, 37, '2024-08-28 18:32:53'),
(0, 37, '2024-08-29 02:26:31'),
(0, 38, '2024-08-29 02:26:31'),
(0, 39, '2024-08-29 02:26:31'),
(0, 40, '2024-08-29 02:26:31'),
(0, 41, '2024-08-29 02:26:31'),
(0, 37, '2024-08-29 03:07:56'),
(0, 42, '2024-08-29 03:07:56'),
(0, 44, '2024-08-29 03:07:56'),
(0, 46, '2024-08-29 03:07:56'),
(0, 37, '2024-08-29 03:08:44'),
(0, 38, '2024-08-29 03:08:44'),
(0, 39, '2024-08-29 03:08:44'),
(0, 40, '2024-08-29 03:08:44'),
(0, 39, '2024-08-29 03:58:28'),
(0, 41, '2024-08-29 03:58:28'),
(0, 40, '2024-08-29 03:58:28'),
(0, 42, '2024-08-29 03:58:28'),
(0, 47, '2024-08-29 03:58:28'),
(0, 37, '2024-08-29 05:13:42'),
(0, 38, '2024-08-29 05:13:42'),
(0, 39, '2024-08-29 05:13:42'),
(0, 41, '2024-08-29 05:13:42'),
(0, 40, '2024-08-29 05:13:42'),
(0, 43, '2024-08-29 05:29:05'),
(0, 53, '2024-08-29 05:29:05'),
(0, 49, '2024-08-29 05:29:05'),
(0, 43, '2024-08-29 05:30:10'),
(0, 53, '2024-08-29 05:30:10'),
(0, 49, '2024-08-29 05:30:10'),
(0, 37, '2024-08-29 05:30:43'),
(0, 38, '2024-08-29 05:30:43'),
(0, 39, '2024-08-29 05:30:43'),
(0, 41, '2024-08-29 05:30:43'),
(0, 37, '2024-08-29 05:43:18'),
(0, 38, '2024-08-29 05:43:18'),
(0, 39, '2024-08-29 05:43:18'),
(0, 41, '2024-08-29 05:43:18'),
(0, 37, '2024-08-29 05:43:36'),
(0, 38, '2024-08-29 05:43:36'),
(0, 39, '2024-08-29 05:43:36'),
(0, 41, '2024-08-29 05:43:36'),
(0, 40, '2024-08-29 05:43:36'),
(0, 37, '2024-08-29 05:43:55'),
(0, 38, '2024-08-29 05:43:55'),
(0, 39, '2024-08-29 05:43:55'),
(0, 41, '2024-08-29 05:43:55'),
(0, 40, '2024-08-29 05:43:55'),
(0, 39, '2024-08-29 05:44:27'),
(0, 43, '2024-08-29 05:44:27'),
(0, 40, '2024-08-29 05:44:27'),
(0, 42, '2024-08-29 05:44:27'),
(0, 39, '2024-08-29 05:51:47'),
(0, 43, '2024-08-29 05:51:47'),
(0, 40, '2024-08-29 05:51:47'),
(0, 42, '2024-08-29 05:51:47'),
(0, 39, '2024-08-29 05:53:10'),
(0, 43, '2024-08-29 05:53:10'),
(0, 40, '2024-08-29 05:53:10'),
(0, 42, '2024-08-29 05:53:10'),
(0, 39, '2024-08-29 05:54:24'),
(0, 42, '2024-08-29 05:54:24'),
(0, 44, '2024-08-29 05:54:24'),
(0, 37, '2024-08-29 06:11:08'),
(0, 38, '2024-08-29 06:11:08'),
(0, 39, '2024-08-29 06:11:08'),
(0, 41, '2024-08-29 06:11:08'),
(0, 40, '2024-08-29 06:11:08'),
(0, 39, '2024-08-29 06:11:36'),
(0, 43, '2024-08-29 06:11:36'),
(0, 40, '2024-08-29 06:11:36'),
(0, 42, '2024-08-29 06:11:36'),
(0, 39, '2024-08-29 06:18:34'),
(0, 43, '2024-08-29 06:18:34'),
(0, 40, '2024-08-29 06:18:34'),
(0, 42, '2024-08-29 06:18:34'),
(0, 39, '2024-08-29 06:21:43'),
(0, 43, '2024-08-29 06:21:43'),
(0, 40, '2024-08-29 06:21:43'),
(0, 42, '2024-08-29 06:21:43'),
(0, 37, '2024-08-29 06:22:12'),
(0, 38, '2024-08-29 06:22:12'),
(0, 39, '2024-08-29 06:22:12'),
(0, 41, '2024-08-29 06:22:12'),
(0, 40, '2024-08-29 06:22:12'),
(0, 39, '2024-08-29 06:23:55'),
(0, 43, '2024-08-29 06:23:55'),
(0, 40, '2024-08-29 06:23:55'),
(0, 42, '2024-08-29 06:23:55'),
(0, 37, '2024-08-29 06:24:35'),
(0, 38, '2024-08-29 06:24:35'),
(0, 39, '2024-08-29 06:24:35'),
(0, 41, '2024-08-29 06:24:35'),
(0, 40, '2024-08-29 06:24:35'),
(0, 37, '2024-08-29 06:31:13'),
(0, 38, '2024-08-29 06:31:13'),
(0, 39, '2024-08-29 06:31:13'),
(0, 41, '2024-08-29 06:31:13'),
(0, 40, '2024-08-29 06:31:13'),
(0, 39, '2024-08-29 06:31:49'),
(0, 43, '2024-08-29 06:31:49'),
(0, 40, '2024-08-29 06:31:49'),
(0, 42, '2024-08-29 06:31:49'),
(0, 39, '2024-08-29 06:32:28'),
(0, 42, '2024-08-29 06:32:28'),
(0, 44, '2024-08-29 06:32:28'),
(0, 37, '2024-08-29 06:33:27'),
(0, 38, '2024-08-29 06:33:27'),
(0, 39, '2024-08-29 06:33:27'),
(0, 43, '2024-08-29 06:33:27'),
(0, 42, '2024-08-29 06:33:27'),
(0, 37, '2024-08-29 06:35:14'),
(0, 38, '2024-08-29 06:35:14'),
(0, 39, '2024-08-29 06:35:14'),
(0, 43, '2024-08-29 06:35:14'),
(0, 42, '2024-08-29 06:35:14'),
(0, 38, '2024-08-29 06:35:38'),
(0, 42, '2024-08-29 06:35:38'),
(0, 46, '2024-08-29 06:35:38'),
(0, 45, '2024-08-29 06:35:38'),
(0, 38, '2024-08-29 06:36:48'),
(0, 42, '2024-08-29 06:36:48'),
(0, 46, '2024-08-29 06:36:48'),
(0, 45, '2024-08-29 06:36:48'),
(0, 56, '2024-08-29 06:37:15'),
(0, 45, '2024-08-29 06:37:15'),
(0, 48, '2024-08-29 06:37:15'),
(0, 56, '2024-08-29 06:40:12'),
(0, 45, '2024-08-29 06:40:12'),
(0, 48, '2024-08-29 06:40:12'),
(0, 42, '2024-08-29 06:40:34'),
(0, 49, '2024-08-29 06:40:34'),
(0, 47, '2024-08-29 06:40:34'),
(0, 48, '2024-08-29 06:40:34'),
(0, 50, '2024-08-29 06:40:34'),
(0, 38, '2024-08-29 06:42:19'),
(0, 39, '2024-08-29 06:42:19'),
(0, 42, '2024-08-29 06:42:19'),
(0, 51, '2024-08-29 06:42:19'),
(0, 52, '2024-08-29 06:43:52'),
(0, 53, '2024-08-29 06:43:52'),
(0, 42, '2024-08-29 06:43:52'),
(0, 54, '2024-08-29 06:43:52'),
(0, 37, '2024-08-29 06:46:49'),
(0, 39, '2024-08-29 06:46:49'),
(0, 41, '2024-08-29 06:46:49'),
(0, 43, '2024-08-29 06:46:49'),
(0, 56, '2024-08-29 06:46:49'),
(0, 40, '2024-08-29 06:46:49'),
(0, 55, '2024-08-29 06:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_gejala`
--

CREATE TABLE `kelompok_gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_gejala`
--

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Gejala Sirip Ikan', '-'),
(2, 'Gejala Insang Ikan', '-'),
(3, 'Gejala Kutu Air', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(10, 'S01', 'Pseudomonas Spp', '		******																															'),
(11, 'S02', 'Aeromonas Hydrophila', '	************																					'),
(12, 'S03', 'Hexamita', '	**************																					'),
(13, 'S04', 'Saprolegniasis', '	************																					'),
(14, 'S05', 'White Spot Syndrome', '	************																					'),
(15, 'S06', 'Tuberculosis', '				************																		'),
(16, 'S07', 'Velvet', '								*************														'),
(17, 'S08', 'Gyrodactylosis', '		********************																				'),
(18, 'S09', 'Columnaris ', '		*****************																				');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `kode_verifikasi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `level`, `status`, `kode_verifikasi`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'paisal', 'hardiantix.1@gmail.com', 'admin', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userx`
--

CREATE TABLE `userx` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userx`
--

INSERT INTO `userx` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(3, 'pasien', 'f5c25a0082eb0748faedca1ecdcfb131', 'pasien1', 'hardiantix.1@gmail.com', 'pasien'),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hardianti', 'hardiantix.1@gmail.com', 'admin'),
(6, 'hardianti', '3843a08b3283e5603449b42a746ac973', 'hardianti', 'hardiantix.1@gmail.com', 'pasien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_gejala_id` (`kelompok_gejala_id`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userx`
--
ALTER TABLE `userx`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `userx`
--
ALTER TABLE `userx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
