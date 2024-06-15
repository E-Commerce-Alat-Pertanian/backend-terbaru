-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 04:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_commerce_kedua`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idCategory`, `nama`, `createdAt`, `updatedAt`) VALUES
(1, 'Pupuk', '2024-06-10 07:30:47', '2024-06-10 07:30:47'),
(2, 'Pestisida', '2024-06-10 07:31:20', '2024-06-10 07:31:20'),
(3, 'Bibit', '2024-06-10 07:31:28', '2024-06-10 07:31:28'),
(4, 'Alat', '2024-06-10 07:31:34', '2024-06-10 07:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `noHp` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `idKecamatan` varchar(255) NOT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `noHp`, `alamat`, `password`, `idKecamatan`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(2, 'tes', 'tes@gmail.com', '23423', 'Medan', '$2b$10$qDLnt.4uaSRHsUo/YjTfx.ZAi9VqqWCv/LL/qD6nUeYwHXAfaP4kK', '129', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsInVzZXJuYW1lIjoidGVzIiwiZW1haWwiOiJ0ZXNAZ21haWwuY29tIiwibm9IcCI6IjIzNDIzIiwiYWxhbWF0IjoiTWVkYW4iLCJpYXQiOjE3MTgyNjM3ODQsImV4cCI6MTcxODM1MDE4NH0.Yo42uyCvpNiVjGTNfcr7zevKEnbW7o1Du-LFgdo0K0I', '2024-06-12 08:20:37', '2024-06-13 07:29:44'),
(3, 'ibnu', 'ibnu@gmail.com', '085323424411', 'Jln Cempaka Putih, Deli Serdang', '$2b$10$L1YJVrYeSr1P98RjmJjlhufVbZXYbSvZ0jp7eTZlpDtcovh1AI1B2', '278', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsInVzZXJuYW1lIjoiaWJudSIsImVtYWlsIjoiaWJudUBnbWFpbC5jb20iLCJub0hwIjoiMDg1MzIzNDI0NDExIiwiYWxhbWF0IjoiSmxuIENlbXBha2EgUHV0aWgsIERlbGkgU2VyZGFuZyIsImlhdCI6MTcxODQ2MTgzOCwiZXhwIjoxNzE4NTQ4MjM4fQ.lIkCyYABqWG0B3NWnkyqiLP7qvvvJwuTv0uAJuwFjrE', '2024-06-15 14:30:38', '2024-06-15 14:30:38');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `idFavorite` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`idFavorite`, `idProduct`, `userId`, `createdAt`, `updatedAt`) VALUES
(3, 2, 2, '2024-06-13 06:59:33', '2024-06-13 06:59:33'),
(4, 8, 2, '2024-06-13 07:30:14', '2024-06-13 07:30:14'),
(5, 11, 2, '2024-06-13 07:30:21', '2024-06-13 07:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `idCart` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `idProduct` int(11) NOT NULL,
  `idStok` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`idCart`, `userId`, `idOrder`, `quantity`, `idProduct`, `idStok`, `createdAt`, `updatedAt`) VALUES
(7, 2, 3, 2, 2, 2, '2024-06-13 07:19:30', '2024-06-13 07:21:42'),
(11, 3, 6, 1, 11, 11, '2024-06-15 14:30:53', '2024-06-15 14:31:38'),
(12, 3, 6, 1, 13, 13, '2024-06-15 14:30:58', '2024-06-15 14:31:38'),
(13, 3, 6, 1, 15, 15, '2024-06-15 14:31:03', '2024-06-15 14:31:38'),
(14, 3, 7, 1, 2, 2, '2024-06-15 14:33:52', '2024-06-15 14:34:14'),
(15, 3, 7, 1, 3, 3, '2024-06-15 14:33:56', '2024-06-15 14:34:14'),
(16, 3, 7, 1, 4, 4, '2024-06-15 14:33:59', '2024-06-15 14:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `idOrder` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `userId` int(11) NOT NULL,
  `metodeBayar` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `totalPembayaran` int(11) NOT NULL,
  `kodeUnik` varchar(255) DEFAULT NULL,
  `imagePembayaran` varchar(255) DEFAULT NULL,
  `urlPembayaran` varchar(255) DEFAULT NULL,
  `imageKurir` varchar(255) DEFAULT NULL,
  `urlKurir` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`idOrder`, `status`, `userId`, `metodeBayar`, `ongkir`, `totalPembayaran`, `kodeUnik`, `imagePembayaran`, `urlPembayaran`, `imageKurir`, `urlKurir`, `createdAt`, `updatedAt`) VALUES
(3, 'Completed', 2, 'Transfer Bank', 114000, 70000, '21297UDTS', NULL, NULL, '9597713bf40738735ac9357d6235c372.jpg', 'http://localhost:5000/images/9597713bf40738735ac9357d6235c372.jpg', '2024-06-13 07:21:42', '2024-06-15 14:38:22'),
(6, 'Dikirim', 3, 'Transfer Bank', 10000, 360000, '3278111213UDTS', '7a8ff23025b57ffb8a4af84e064b8f5c.png', 'http://192.168.100.2:5000/images/7a8ff23025b57ffb8a4af84e064b8f5c.png', NULL, NULL, '2024-06-15 14:31:38', '2024-06-15 14:39:01'),
(7, 'Pending', 3, 'Transfer Bank', 10000, 80000, '3278141516UDTS', '7a8ff23025b57ffb8a4af84e064b8f5c.png', 'http://192.168.100.2:5000/images/7a8ff23025b57ffb8a4af84e064b8f5c.png', NULL, NULL, '2024-06-15 14:34:14', '2024-06-15 14:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `idCategory` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idProduct`, `nama`, `description`, `price`, `image`, `url`, `userId`, `idCategory`, `createdAt`, `updatedAt`) VALUES
(1, 'Merokemkp', 'PUPUK MEROKE MKP 1 KG KEMASAN PABRIK\r\nKandungan : Fosfat (P2O5) 52,0% (22,7% P), Kalium (K2O) 34,0% (28,2% K)\r\nBentuk : Kristal putih bersih, larut dalam air\r\nDiproduksi oleh : PT Meroke Tetap Jaya\r\n\r\nManfaat :\r\n- Tanaman tumbuh dengan sehat dan memaksima', 65000, '4b49a764443556ce10a226748013e182.jpg', 'http://localhost:5000/images/4b49a764443556ce10a226748013e182.jpg', 1, 1, '2024-06-10 07:36:34', '2024-06-11 00:19:35'),
(2, 'Hercules', 'Benih BISI - Timun Hercules Plus F1 - 50 biji\nEXP: JAN 2025\n\nTimun Hercules Plus :\n\n- Bentuk buah silindris dan lurus,berwarna hijau dan rasanya tidak pahit\n- Pertumbuhannya kuat dan seragam,hampir di setiap ruas muncul calon buah\n- Tahan terhadap Gemini ', 35000, '257760a2a311761d3cf89338f2457aec.jpg', 'http://localhost:5000/images/257760a2a311761d3cf89338f2457aec.jpg', 1, 3, '2024-06-10 07:54:10', '2024-06-10 07:54:10'),
(3, 'Calina', 'Benih pepaya calina varietas unggul dapat ditanam di dataran rendah, pesisir, pegunungan maupun diatas media pot dengan menggunakan pupuk yang rutin serta membuat irigasi yang baik pada saat proses budidaya berlangsung\n\nPepaya calina varietas unggul berbu', 20000, 'e5d56779818343be182ef645431fa6be.jpg', 'http://localhost:5000/images/e5d56779818343be182ef645431fa6be.jpg', 1, 3, '2024-06-10 07:55:25', '2024-06-10 07:55:25'),
(4, 'Gulaku', 'Benih Jagung Manis \"GULAKU\"\nProduk PERMATA BARU\n\nSpecifikasi:\n- Merupakan Varietas Seleksi Lokal Bogor\n- Pertumbuhan Seragam Dan Kuat\n- Tahan Rebah Dan Mempunyai Potensi Produksi Yang Tinggi\n- Panjang Buah Sekitar 16-18 Cm Dan Mempunyai Rasa Cukup Manis\n-', 25000, '9901372dc1b77352e11d722399b814af.jpg', 'http://localhost:5000/images/9901372dc1b77352e11d722399b814af.jpg', 1, 3, '2024-06-10 07:56:13', '2024-06-10 07:56:13'),
(5, 'Kanton Tavi', 'Dataran rendah - menengah\n\nKETAHANAN PENYAKIT\n-Bacterial wilt\n-Fusarium wilt\n\nPANEN\nUmur 48-55 Hari Setelah Tanam\n\nUKURAN POLONG\nPanjang polongnya dapat mencapai 63 cm\n\nPOTENSI HASIL\n25-30 ton/ha\n\nKEBUTUHAN BENIH PER HEKTAR\n7000 – 14000 gr/ha\n\n*Ketahanan ', 25000, '6389dd0430cfd30b0fc180e29aca479a.jpg', 'http://localhost:5000/images/6389dd0430cfd30b0fc180e29aca479a.jpg', 1, 3, '2024-06-10 07:56:46', '2024-06-10 07:56:46'),
(6, 'Grower', 'Pupuk NPK MEROKE MUTIARA GROWER PILIHAN untuk hasil panen BERKUALITAS.\nKombinasi Sumber Nitrogen yang Unik:\n- NPK Mutiara Grower mengandung kombinasi terbaik dari Nitrat-Nitrogen (NO3), yang langsung tersedia untuk tanaman.\n- Pupuk ini juga mengandung Amo', 25000, 'd5302f84c7156ffdeaa65e0bd8815f7b.jpg', 'http://localhost:5000/images/d5302f84c7156ffdeaa65e0bd8815f7b.jpg', 1, 1, '2024-06-10 07:58:03', '2024-06-10 07:58:03'),
(7, 'Ultradap', 'PUPUK UTRADAP PAK TANI KEMASAN PABRIK 1 KG\n\nSpesifikasi :\nJenis : Pupuk Larut\nBahan Aktif : N 12% P2O5 60%\nSystem : 100% larut dalam air\nTarget : Padi, Tanaman Hortikultura, Perkebunan\n\nPupuk ULTRADAP Cap Pak Tani memiliki unsur hara Nitrogen(N) 12% dan P', 58000, 'dc70e220bccd08906e9067adcefd655d.jpg', 'http://localhost:5000/images/dc70e220bccd08906e9067adcefd655d.jpg', 1, 1, '2024-06-10 07:58:41', '2024-06-10 07:58:41'),
(8, 'MKPPAKTANI', 'PUPUK MKP PAK TANI KEMASAN PABRIK 1 KG\nSPESIFIKASI\nKomposisi :\nPhosphate (P2O5) 52%\nPotassium Oxide (K2O) 34%\n\nMKP PAK TANI merupakan pupuk Mono Potassium Phosphate berbentuk kristal yang mudah larut dalam air. Sehingga sangat mudah diaplikasikan dengan c', 70000, 'c4ec6da9ee4dc72da6fe6c15c1e331da.jpg', 'http://localhost:5000/images/c4ec6da9ee4dc72da6fe6c15c1e331da.jpg', 1, 1, '2024-06-10 08:00:03', '2024-06-10 08:00:03'),
(9, 'Roundup', 'Roundup Biosorb 486 SL adalah herbisida purna tumbuh dengan bahan aktif glifosat yang diproduksi dengan Teknologi Biosorb serta menggunakan surfaktan yang dipatenkan.\n3 kali lebih banyak dan lebih cepat masuk kedalam gulma sehingga tahan hujan 1-2 jam set', 36000, '49fc227b36d5c30ac62f06461eaad65b.jpg', 'http://localhost:5000/images/49fc227b36d5c30ac62f06461eaad65b.jpg', 1, 2, '2024-06-10 08:00:52', '2024-06-10 08:00:52'),
(10, 'Gramoxone', 'GRAMOXONE 276SL 250 ML\nBahan Aktif         : Parakuat Diklorida 276 g/l.\nDiproduksi oleh : PT. SYNGENTA INDONESIA\nBentuk                 : larutan warna hijau tua (bersifat kontak)\n\nKeunggulan\n* Sangat ampuh untuk membasmi segala jenis rumput\n* Bekerja de', 35000, 'e6c5b5a487c841899f2751956be8f85a.jpg', 'http://localhost:5000/images/e6c5b5a487c841899f2751956be8f85a.jpg', 1, 2, '2024-06-10 08:01:32', '2024-06-10 08:01:32'),
(11, 'Mulsa', 'kuat dan lentur\nawet dalam segala cuaca\nberat netto 5,05kg\ntebal 03,5micron\npanjang dari pabrik 210 M terkadang 205 M\nLebar   80 Cm', 200000, 'de62b56030fd9fcd666011166996e16f.jpg', 'http://localhost:5000/images/de62b56030fd9fcd666011166996e16f.jpg', 1, 4, '2024-06-10 08:02:47', '2024-06-10 08:02:47'),
(13, 'Tali', 'Tali Rafia Pres panjang kuat kokoh dan tahan lama di bawah sinar matahari untuk tawo lanjaran timun pare gambas dan keperluan lainnya, ukuran jumbo 1,4 Kg panjang lebih dari 1.500 meter, ukuran sedang panjang lebih dari 1.100 meter, dan ukuran mini panjan', 60000, '70388b46e8636b23ed687a2f128e9000.jpg', 'http://localhost:5000/images/70388b46e8636b23ed687a2f128e9000.jpg', 1, 4, '2024-06-11 00:51:26', '2024-06-11 00:51:26'),
(14, 'Batu Asah', 'Batu Asah Kombinasi CARBORUNDUM 6\" Inchi / 8\" Inchi\r\n\r\nBatu asah CARBORUNDUM  yang memiliki 2 lapis cocok untuk semua jenis pisau, gunting dll.. \r\n\r\nModel dan Ukuran :\r\n (BTA-D6 / 109) \r\n* 6\" Inchi\r\n* PXLXT : 15cm x 5cm x2. 5cm\r\n(BTA-D8 / 108) \r\n- 8\" Inch', 25000, '7bf5614abea19b7485708249360d8179.jpg', 'http://localhost:5000/images/7bf5614abea19b7485708249360d8179.jpg', 1, 4, '2024-06-13 02:56:05', '2024-06-13 02:56:05'),
(15, 'Parang', 'PARANG TEBANG KAYU\r\nTEBAL SIAP PAKAI\r\nPANJANG 30 CM\r\nLEBAR  6 CM', 100000, 'da7ddc0f26c79d56519ed2b3e9e82b5d.jpg', 'http://localhost:5000/images/da7ddc0f26c79d56519ed2b3e9e82b5d.jpg', 1, 4, '2024-06-13 02:57:14', '2024-06-13 02:57:14'),
(16, 'Gibgro', 'zat pengatur tumbuh GIBGRO 10SP\r\nBAHAN AKTIF : GIBERELAT 10%\r\n\r\nZat pengatur tumbuh berbentung tepung yg dpt larut dlm air untk memacu pertumbuhan, meningkatkan persen gabah isi tanaman padi dan bobot tongkol tanaman jagung.\r\n\r\nproduk NUFARM\r\n\r\nGibgro 10 ', 180000, '02a425fc463032dd58b87b43a0835fec.jpg', 'http://localhost:5000/images/02a425fc463032dd58b87b43a0835fec.jpg', 1, 2, '2024-06-13 02:59:27', '2024-06-13 02:59:27'),
(17, 'Makrostar', 'MAKROSTAR 16:16:16 Pupuk NPK Majemuk yang memilik kandungan hara lengkap : Nitrogen, Fosfat dan Kalium yang seimbang serta hara mikro lainnya. Pupuk ini mudah larut dan unsur haranya mudah tersedia. Mudah diaplikasikan dengan cara ditabur atau disiram (di', 20000, '534710834ae1c4ff54f859e14dffd36e.jpg', 'http://localhost:5000/images/534710834ae1c4ff54f859e14dffd36e.jpg', 1, 1, '2024-06-13 03:02:20', '2024-06-13 03:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-6XR3sgV-40DtcbpiF1bawNKn_tXyBKt', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('-oGifSv37FzfnqVvFw3N370h4lDZZb9T', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('-Tx8pmxban7s_phcOyIVTQ_5QxPfnI_W', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('0DG__2vxoWAO3bo9raO8D5CRx0uOWNhU', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('0lxHpq24kJfLqQepuqJ__Dl430KB8spt', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('0rUd-rc-TOROroMjPkgojLTTrIDM7NYn', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('0u4Pfugf-mezu0kyn_n3oDI7pT4trIru', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('0uRd6NbLOAt33kt04WwYrvdbAmjw5qRS', '2024-06-16 14:31:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:48', '2024-06-15 14:31:48'),
('0_NqCtIkvBKYz1AOU7BueWVT9XeOc1Sm', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('18CKPIcD-uGGWNmRP60FUtmUz4-n9Ldk', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('1lS9HN8vudsHn5Zl0W90ZMz2QYOwi8-C', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('1MSx7ridIXr2p2kxlu4jlxvWFDzQmJcj', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('1YG59qiqKivjN8rVqjsbMmV1x1lWvuYH', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('1YnYEwT6F3t7WjtKHG9dPQbCv84AZJg0', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('1ZQ16M7aOwPyg79OXq-TPHSnLuRGHQsS', '2024-06-16 14:34:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:15', '2024-06-15 14:34:15'),
('24HVWqb_n6sw2nOpy3YzkfDDAYDxrkzD', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('3MeQx9gQSlYZWgxqJBqmtWOrzyD76f9n', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('4WXEVfSZBgtdHmgsrMtDfONaoe6leMV2', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('5GgVhq5WUesKvN4ESWbTFJdEsbcugYn0', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('5jEJ-I7l-X6INkpFRztCZ8ucuJABza6S', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('5m_JDywhstUL1FIhQw5qwSwFe3BjK_nO', '2024-06-16 14:31:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:38', '2024-06-15 14:31:38'),
('5NlP2c5M38d3xGh5Vid43zC76C4xEMIF', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('5u_-nRBpDqAs85nRXEaZs0T2hQ2QzV1w', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('7mXPMuluX_NrdmHg52zqQhKLwn4rftXo', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('9eMlhvqtof4f4w0-HXgIc7X3_D4_WTgY', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('9FrjozcEqN8Ym7PueG-xAdWWxgksv_AB', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('9Oav9ISP6MwjFn-YOpYOdJasErDsDCvw', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('9wMj2bRjxuE4xAsnkv10yaOB0qzstfbF', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('a11kj7qw9qRnqtywbFxiELZz4LDL6VpD', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('a2nXcCMSVpPxWsOmhMcrnYN-utBDoXOO', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('acLJMl9pGQu4pB1-DjNyOxR_RnzryvLa', '2024-06-16 14:31:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:06', '2024-06-15 14:31:06'),
('akqn3lnlowrqrDpDm7UOQ_b_AlICNBb4', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('alL2OMy6sgUtyO2cSn7XP100YrTUq6hH', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('aO4IH_h9U1hgnz0vaBSYdKesvaDGAmgS', '2024-06-16 14:39:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:35:02', '2024-06-15 14:39:45'),
('Bd8FnwNLSIQuOmlMPFYwON8dupGiGmJN', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('bME4b0adspRCKxwjcV1RAcngGOhM9Ya8', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('bmO3sNISY6GH1xhEtHApP4sSTmH_aNxG', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('bMxxUSEQPpKjoPNgLjBJ-WJxjaacj0WV', '2024-06-16 14:41:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"19735bcc-d3d3-46cc-bab0-acd2c15556d9\"}', '2024-06-15 14:41:10', '2024-06-15 14:41:29'),
('bOcx18N8LJk1eO_sMAspTcQRp8GlpmSL', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('BQ0cc_cAhQTG3VuCYxfcxPNmVaiPnpPM', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('Bsr-6crEBS7NEm0ajfzh6Y5qHbOQ3hME', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('CJmamX-p2_rlMF01R1O38-aR5PpwBPYK', '2024-06-16 14:28:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:28:22', '2024-06-15 14:28:22'),
('CPKlZhEUrQWAAv7Zvo8GpkRIeQD-9OPq', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('cXrPduErr3f1AE780wlRMAJAmSSFkyzk', '2024-06-16 14:31:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:38', '2024-06-15 14:31:38'),
('DA14jNG5BOk5s4LYrV97dde9fxjCMUbU', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('Da7nj9z3dM29CwLoqqi9U5vnyoOCTID9', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('dFizksGEFS751N9CJfuhK9BCxO46XixS', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('di7xWPaChKSqPVhEAkbgFWv9BHaz3RxV', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('DphIDu2wVMlRNVVl-rR3pWXCPiIubN64', '2024-06-16 14:31:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:13', '2024-06-15 14:31:13'),
('dVxQd-NS4QInJekIqFiW8hk39dyILpkD', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('EBdGcR5vHyMLBnSy3GegleXeLyTn0278', '2024-06-16 14:30:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:00', '2024-06-15 14:30:00'),
('eRLcDVDBCKbHHptjCsZjSflF-ICIZI4I', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('fndUQwqSA75L04nJhNGjWCln7nc_s803', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('FT87lXkpYNlz_kBbD2MzKTO80JqKyo72', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('FTNLslKCY2YtK2MK3vUMpR4_2xE7U9P8', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('fweY3GFGLvUBgDyp1NXu42CXA9yDapgr', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('gepfBxXB4nlBbrNAg1T790DnJvmKXCLL', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('GIYiyymcpHaZd7sKnp4El_40yB_r7QlE', '2024-06-16 14:30:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:38', '2024-06-15 14:30:38'),
('GM2JRAcexQ0PGTlMJUcZQnjy0EEdFy09', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('hibB9--h0KOJXC9By4XrzU54KBkKDMcu', '2024-06-16 14:34:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:40', '2024-06-15 14:34:40'),
('hjQmOThpq5JWTfjZU_bCp7NgdDVQh6g3', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('hK9Y7GQLDvhfWaMczGoBk2NqJTbRebty', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('HnDexPj9nLRpZojFUa9XVqJQyZ4EthC1', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('HRVf_ACt-fLUgQfYUp_hpvaE0pMc9zG8', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('HWh5tWd91zjUxu8jnDzpScw2rohgslSS', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('hZXwH6ilGY0X3g5l8C_T2hLp5403CXEU', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('h_UJ201mtORyL4UMAa2eRyDYmg6H1tsk', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('IatDZbofBdHs4KTKWp3zPc8XbgYEyAOv', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('IvC4cnq2LS7B4286CW6oTkEBTGU3QdLV', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('I_40HLKIMC_AunfPYBvXzg6S9MBghyJ_', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('j86uKvhn6dc52v_Z5bA6yINSYwsgaYsJ', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('J9tTAOzrNGxWltPd4rWgfKMVqg73J6lC', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('jc3KTSGfcUa-EZk1xtI7Q9ffab0SSefv', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('JcIGFps4nrpm6R49xnVd2vjEfCgSk5-t', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('JR0_I8WsqgM6YG98wR7qM0eh90QdH_hK', '2024-06-16 14:34:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:01', '2024-06-15 14:34:01'),
('JVpsnV5WElmQKLLhRASqwITbna1UfOo5', '2024-06-16 14:31:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:13', '2024-06-15 14:31:13'),
('k4TSp4F2y4knNe7v1Ez_HlQFkWCmvLvY', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('KF-w13KFhLg_NjLgRsEPZlGZJfoRXXYD', '2024-06-16 14:34:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:09', '2024-06-15 14:34:09'),
('kg6sxx5fWZV2b_N828O_jk432TBdBMnb', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('kGEMRW82MnHk_nLneYr_DtzUpOP4mCA3', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('K_rXco6R8bHVgvOuouZVbZYPRD_zWcdq', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('lhJjs42tgrOV7ZY9kNNMYe2H17mH2SGv', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('lKC-nq_1neeoHc2aB-nDbkxuEkSgLLVS', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('lm7vR4BLTL6coUrWZMyHPqn48_r1z6q-', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('LrGQnGFqDx7YjWhWyh4JtWim8rSKuISh', '2024-06-16 14:31:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:05', '2024-06-15 14:31:05'),
('lXkFAmrB-rSLKkb0GPTCqxoussb12TjW', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('m9xJ97_eh1MfNGUannK3BQEuSi6DTJoj', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('MChvIfH9CEKsxjdv6qiiQjOj2UuXGRUt', '2024-06-16 14:34:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:31', '2024-06-15 14:34:31'),
('mI4aAIkCr-UiL80KzJ2D7L3B63mmgEy0', '2024-06-16 14:34:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:10', '2024-06-15 14:34:10'),
('MjOmJiE_ZlEDs77OWACp_2k0kSrd6Auk', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('mk1MtMF5WNX6tnxUMhioBZoFchhA6raW', '2024-06-16 14:34:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:01', '2024-06-15 14:34:01'),
('mP-rhjDc-fdbNIRf_4T9lOTNCdoKb7tA', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('mQmFl9s5sAgMh3J8jgIgQZ0fVyJjwqBJ', '2024-06-16 14:31:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:57', '2024-06-15 14:31:57'),
('MzOkkGtcnVXze7MYXfPegibfxZFRHAIk', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('nFai4BfoYaR8EgfP1Ucp8crt-VSQnW4r', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('NjhCLAb7it35yhmK1qozc9ldUMYRgCrO', '2024-06-16 14:34:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:31', '2024-06-15 14:34:31'),
('nmNZlahUPvuh7pyUL4-QetM3QhcHjSxl', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('nOtca3DIoUNeSL9bqJfRt91lle4rYj1_', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('nzaP5oN5usXhZVjX9M59KTmltr_uRgqe', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('OCaUQfFR5FwqoTa-hHt7EGvOxjF5IOyc', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('OIlacyCLb1q2IgRwuW9Kaa3Nn3gdqa7L', '2024-06-16 14:33:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:56', '2024-06-15 14:33:56'),
('ONw2gIBuGKLds0l6wt847pjvlLqBxJOn', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('OPGTXF0n7S87KZwEHiddlMfUPvVhZtjr', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('oV8ivsUbOqT6m9p33U7teKRun7gBmSUh', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('pavQwu-vkvnUf6EfT-Dn2cJcuiznBEY4', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('PAy3KRBOeTUAHmCGhGODd1kBzFF5bTJd', '2024-06-16 14:31:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:57', '2024-06-15 14:31:57'),
('PchQmSVVK571FbhdcpxrZ8cnzqTKt6qd', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('pMUvOghZZgm_NGWV8OxGC9HpVUbI9IDv', '2024-06-16 14:27:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:27:07', '2024-06-15 14:27:07'),
('pSlMrHfDi2ytwquAIvBU2mb-v6KLnYR7', '2024-06-16 14:31:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:38', '2024-06-15 14:31:38'),
('pYgNyfhi3lKHrVMbUz5djDv2rfvyWF1C', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('q1Jbom7VFGsWM7TAORgY4ya6WFwAXTc0', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('Q3lLIWMFzKTcFO9Pv6cv5IjSy7Ow2UEE', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('qgDMzOdNu3VcTsABLjTk6OByuGB5ni5K', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('qJnYmeKL4Ly1dKAzc09VfBkfRePMH33G', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('QJ_zRNQ_Wwb-5x7TgoBDDoRAcAAlgsTK', '2024-06-16 14:32:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:32:00', '2024-06-15 14:32:00'),
('qWTh0-gTGSWG1l-AOrQGxnfhIDrkjSeV', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('R5O0fZx3kUPXIKUZzV1WNYmUPPIUdXTJ', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('rbCaf219IHnbDq46jMQt1Y0tV2YjyDrD', '2024-06-16 14:33:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:52', '2024-06-15 14:33:52'),
('RGJ-4EczRufPzKpCBa_8uzMkHTqTNEDV', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('RQGtp2tAooRdezT9i3qZ8ZL8jJuHrsTE', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('Rv2wuoqJH627rjJxgcoU8NuverNqGPkL', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('rxDJNXOqbcLgWZPyBJ_ONdPtDiferdiY', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('rzItG5jji2XGAa1OONUkdJ0zaiHYLgI-', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('S0-EqftZSb9ajt2xsguiBQ_09Gbo3XTX', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('SApZAedyV09BzHOHhUIhwiku1pHZFH57', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('SgaXZcjYuXoboQBlBIIVWKr50o7fn2i_', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('sK3Hq_YmJfRquZ9j_Qf84SMFn7B3Pg4F', '2024-06-16 14:28:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:28:21', '2024-06-15 14:28:21'),
('STvOAsfxFOSxL52QzVxP1kglsrLOSmNU', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('SwRRw6gmD3PJ0Yc5Z0RiuVafPTqXPMx5', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('tDp2lbRbnTE_pRz67CVboF2hGFmqmIr1', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('trttYs7cXgDGEhoV34i6_Wi2v9xTy62o', '2024-06-16 14:34:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:15', '2024-06-15 14:34:15'),
('tSfHOgY3eTs758xuwTCqp0BK0f4ZrBRi', '2024-06-16 14:33:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:43', '2024-06-15 14:33:43'),
('TT8t2SQZ3__0Pjx0tHH39M9pFmmwv0wV', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('U4KgI5Yohbubg1vsRDhUhCmgq6j3NegQ', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('u8lJv2c5sJoTMQZh9ZKsYyvOa5gVp7wD', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('uDzimP3o3Q2B9FuCJAnnUElo6bPsiwt5', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('UrKFOpJxw8Ztqc-wr8rljLPuyphD0cIm', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('uWhLM4ZLAbX-bcN1NH_u4aPxyZ17GFFW', '2024-06-16 14:32:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:32:00', '2024-06-15 14:32:00'),
('Uz4pQWytGYWLlLSmdHcCOMejh7fAxWtO', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('Vb2NM6VboSJpUWMiJxuP0tq0Dk3E1sjx', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('vGOAiGrY-2f-k_SNMhQObNrOlz67_04L', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('vi82Oug3vZEDsrPG7kNw2ENdoXsSwc94', '2024-06-16 14:31:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:03', '2024-06-15 14:31:03'),
('vIZer9YyzhSNtp860u0Kr2ANhDr7Enhd', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('Vj45FSQSIW1v0w9rQyF8Ral48jt2xpHa', '2024-06-16 14:34:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:28', '2024-06-15 14:34:28'),
('Vw9w1qVFog8QJ-SnwXvM8--PTY7pE7yY', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('VWakef5L6LgILjDjPZG0TT_hu627j-xE', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('wpSlPD0sTZu2DoqnuvNSwt1X5hvfrTOi', '2024-06-16 14:34:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:14', '2024-06-15 14:34:14'),
('Wq5AdlCRF97D1-5Fz83ws2vqA8nN81Bn', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('X1YQjrRyA4sOp2xZCHLBnZl6OE9IwgyR', '2024-06-16 14:33:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:59', '2024-06-15 14:33:59'),
('xCXjnSFoTwa-lNDQfBPfafLFwa_cWwK1', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('xfVlTj6KU8V-ZSF2uNUlPOGvi9uIQzKN', '2024-06-16 14:31:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:53', '2024-06-15 14:31:53'),
('XJ2PPYe9VmtRjNJW3yyzU69kIhdQ0bRz', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('XNmzc1b2igJGSNo0wDkO4zDNdp0acu_J', '2024-06-16 14:34:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:22', '2024-06-15 14:34:22'),
('Xv17Z6mJIQamnTAcY_l07KuvvqtSnAz0', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('xyZZFvKs428cfdiOC7pIHVA288xhGDiM', '2024-06-16 14:34:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:01', '2024-06-15 14:34:01'),
('y3YTPUiCO0TFhQi_KkbsGT4EoFGOeW3P', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('Y77Sz5j4EDHn0xnpZFuPIA-bbCICAyqG', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('y82d5Pc51x-0HM04hsYb5vyhwUsg-GnW', '2024-06-16 14:33:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:42', '2024-06-15 14:33:42'),
('yQTHq29UwS-m-GE6iThdT4hDHfU-yvaf', '2024-06-16 14:32:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:32:22', '2024-06-15 14:32:22'),
('Z-93fvFiBnfzBgLxDsjgmDpiaZLjz_dD', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53'),
('ZEC8_mQWQjVv_Ut7a9onSI8-ZurDlmaZ', '2024-06-16 14:33:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:44', '2024-06-15 14:33:44'),
('ZfPOb4Agus6H-ZPmwJsWRVOtRunUSnTz', '2024-06-16 14:30:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:58', '2024-06-15 14:30:58'),
('ziln2o_v3rXkBkYa10F-d0I6Fas6Osro', '2024-06-16 14:31:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:31:06', '2024-06-15 14:31:06'),
('zQKS9WoPqYAXdtBBdmQSNsTA4uf9lIu_', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('_q9QaNTmLeWw9Hhq9yi8GplTb1WP6glG', '2024-06-16 14:30:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:39', '2024-06-15 14:30:39'),
('_qoehcGnECf1vCRuKOcrUIfrddtfz5wJ', '2024-06-16 14:34:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:34:27', '2024-06-15 14:34:27'),
('_vInvtZtdDUUVJyTF6Nl-n5YY1L6hXPT', '2024-06-16 14:33:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:33:43', '2024-06-15 14:33:43'),
('_XrKAUrQ_XxT93biNaseWgEDM-3_ooY1', '2024-06-16 14:30:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2024-06-15 14:30:53', '2024-06-15 14:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `idStok` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`idStok`, `idProduct`, `stok`, `createdAt`, `updatedAt`) VALUES
(1, 1, 99, '2024-06-10 08:17:21', '2024-06-12 08:22:33'),
(2, 2, 96, '2024-06-10 08:17:42', '2024-06-15 14:34:14'),
(3, 3, 99, '2024-06-10 08:17:45', '2024-06-15 14:34:14'),
(4, 4, 99, '2024-06-10 08:17:47', '2024-06-15 14:34:14'),
(5, 5, 99, '2024-06-10 08:17:50', '2024-06-11 02:00:19'),
(6, 6, 99, '2024-06-10 08:17:52', '2024-06-13 07:00:46'),
(7, 7, 100, '2024-06-10 08:17:54', '2024-06-10 08:17:54'),
(8, 8, 100, '2024-06-10 08:17:57', '2024-06-10 08:17:57'),
(9, 9, 100, '2024-06-10 08:18:00', '2024-06-10 08:18:00'),
(10, 10, 98, '2024-06-10 08:18:03', '2024-06-13 07:00:46'),
(11, 11, 98, '2024-06-10 08:18:06', '2024-06-15 14:31:38'),
(13, 13, 98, '2024-06-11 00:51:26', '2024-06-15 14:31:38'),
(14, 14, 79, '2024-06-13 02:56:05', '2024-06-13 07:33:04'),
(15, 15, 88, '2024-06-13 02:57:14', '2024-06-15 14:31:38'),
(16, 16, 300, '2024-06-13 02:59:27', '2024-06-13 02:59:27'),
(17, 17, 88, '2024-06-13 03:02:20', '2024-06-13 03:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `username`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, '27454ee6-8711-490e-9f6e-4234abd81db3', 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$FwP85Wq1w8hlJrcpRUmLKQ$IdU6ydyOitooLXc2lOu507NhWYXGCMCQDnfcT0qc/l8', 'admin', '2024-06-10 07:35:54', '2024-06-10 07:35:54'),
(2, '19735bcc-d3d3-46cc-bab0-acd2c15556d9', 'kurir', 'kurir@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$sfL+pjs0jdDWaVoXuj1xbw$OWU3v8wz60XiW2UKr33Yq6jSWNhJzbAIrjdI9IwkkVw', 'kurir', '2024-06-12 16:07:08', '2024-06-12 16:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`idFavorite`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `userId` (`userId`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idStok` (`idStok`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `userId` (`userId`),
  ADD KEY `idCategory` (`idCategory`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`idStok`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `idFavorite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `idStok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_3` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_4` FOREIGN KEY (`idStok`) REFERENCES `stok` (`idStok`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
