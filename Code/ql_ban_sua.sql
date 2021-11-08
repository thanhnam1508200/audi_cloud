-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 08:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_ban_sua`
--

-- --------------------------------------------------------

--
-- Table structure for table `ct_hoadon`
--

CREATE TABLE `ct_hoadon` (
  `So_Hoa_Don` varchar(5) NOT NULL,
  `Ma_Sua` varchar(6) NOT NULL,
  `So_Luong` int(11) NOT NULL,
  `Don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hang_sua`
--

CREATE TABLE `hang_sua` (
  `Ma_hang_sua` varchar(10) NOT NULL,
  `Ten_hang_sua` varchar(15) NOT NULL,
  `Dia_chi` varchar(100) NOT NULL,
  `Dien_thoai` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hang_sua`
--

INSERT INTO `hang_sua` (`Ma_hang_sua`, `Ten_hang_sua`, `Dia_chi`, `Dien_thoai`, `Email`) VALUES
('AB', 'Abbott', 'Công ty nhập khẩu Việt Nam', '5789321', 'daisy@ds.com'),
('DL', 'Dutch Lady', 'Khu CN Biên Hòa - Đồng Nai', '7826451', 'dutchlady@dl.com'),
('DM', 'Dumex', 'Khu CN Sóng Thần Bình Dương', '6258943', 'dumex@dm.com'),
('MJ', 'Mead Jonhson', 'Công ty nhập khẩu Việt Nam', '8741258', 'meadjohn@mj.com'),
('NTF', 'Nutifood', 'Sóng Thần - Bình Dương', '7895632', 'nutifood@gmail.ntfcom'),
('VNM', 'Vinamikl', '123 Nguyễn Du - Q1 - TP.HCM', '8794561', 'vinamilk@vnm.com');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `So_Hoa_Don` varchar(5) NOT NULL,
  `Ngay_HD` date NOT NULL,
  `Ma_khach_hang` varchar(5) NOT NULL,
  `Tri_gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE `khach_hang` (
  `MaKH` varchar(10) NOT NULL,
  `TenKH` varchar(20) NOT NULL,
  `GioiTinh` bit(10) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `SDT` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`MaKH`, `TenKH`, `GioiTinh`, `DiaChi`, `SDT`) VALUES
('kh001', 'Khuất Thùy Phương', b'0000000001', 'A21 Nguyễn Oanh - Gò Vấp', 9874125),
('kh002', 'Đỗ Lâm Thiên', b'0000000000', '56 Đinh Tiên Hoàng Quận 1', 8351056),
('kh003', 'Phạm Thị Nhung', b'0000000001', '56 Đinh Tiên Hoàng Q1', 9745698),
('kh004', 'Nguyễn Khắc Thiện', b'0000000000', '12bis Đường 3/2 Quận 10', 8769123),
('kh005', 'Tô Trần Hồ Giang', b'0000000000', '75 Nguyễn Kiệm Gò Vấp', 5792564),
('kh006', 'Nguyễn Kiến Thi', b'0000000001', '357 Lê Hồng Phong - Q10', 9874125),
('kh008', 'Nguyễn Anh Tuấn', b'0000000000', '1/2biss Nơ Trang Long Q.BT TP.HCM', 8753159);

-- --------------------------------------------------------

--
-- Table structure for table `loai_sua`
--

CREATE TABLE `loai_sua` (
  `Ma_Loai_Sua` varchar(3) NOT NULL,
  `Ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai_sua`
--

INSERT INTO `loai_sua` (`Ma_Loai_Sua`, `Ten_loai`) VALUES
('SB', 'Sữa Bột'),
('SC', 'Sữa Chua'),
('ST', 'Sữa tươi');

-- --------------------------------------------------------

--
-- Table structure for table `sua`
--

CREATE TABLE `sua` (
  `Ma_Sua` varchar(6) NOT NULL,
  `Ten_sua` varchar(100) NOT NULL,
  `Ma_Hang_Sua` varchar(20) NOT NULL,
  `Ma_Loai_Sua` varchar(3) NOT NULL,
  `Trong_luong` int(255) NOT NULL,
  `Don_gia` int(255) NOT NULL,
  `TP_Dinh_Duong` text NOT NULL,
  `Loi_ich` text NOT NULL,
  `Hinh` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sua`
--

INSERT INTO `sua` (`Ma_Sua`, `Ten_sua`, `Ma_Hang_Sua`, `Ma_Loai_Sua`, `Trong_luong`, `Don_gia`, `TP_Dinh_Duong`, `Loi_ich`, `Hinh`) VALUES
('DLS', 'Dielac Sure', 'VNM', 'SB', 400, 90000, 'sdfnvdjkvndfjkvndfxovdnf', 'nfdjksfndjvkdfnvjdfnv', 's_abbott_similac_400.jpg'),
('FRS', 'Fristi', 'DL', 'ST', 180, 3600, 'ádasdfvfvxcvdsfdsfdsf', 'afsv dgfdcefvdsfdsf', 's_dutchlady_fristi.jpg'),
('SCHL', 'Sữa chua cô gái Hà Lan', 'DL', 'SC', 100, 3000, 'sdfdsnvkejnfvijsfnvjsfndc', 'gnfdjgbvnfkjvnfsiufvkjenfivkenf', 's_dutchlady_chua.jpg'),
('SCP', 'Sữa chua PLUS', 'VNM', 'SC', 120, 4000, 'fdscsdfsdfdscsdfc', 'sdasfvfsvsdfcsdv ', 's_nutifood_nutiIQ.jpg'),
('SCUHL', 'Sữa chua uống Hà Lan', 'DL', 'SC', 110, 2500, 'sfdjsdnvjfdkvnjinfjkb', 'fndjifknvdjkvenfdivjkenfiv', 's_dutchlady_chua_uong.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD KEY `So_Hoa_Don` (`So_Hoa_Don`),
  ADD KEY `Ma_Sua` (`Ma_Sua`);

--
-- Indexes for table `hang_sua`
--
ALTER TABLE `hang_sua`
  ADD PRIMARY KEY (`Ma_hang_sua`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`So_Hoa_Don`),
  ADD KEY `Ma_khach_hang` (`Ma_khach_hang`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai_sua`
--
ALTER TABLE `loai_sua`
  ADD PRIMARY KEY (`Ma_Loai_Sua`);

--
-- Indexes for table `sua`
--
ALTER TABLE `sua`
  ADD PRIMARY KEY (`Ma_Sua`),
  ADD KEY `Ma_Hang_Sua` (`Ma_Hang_Sua`),
  ADD KEY `Ma_Loai_Sua` (`Ma_Loai_Sua`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ct_hoadon`
--
ALTER TABLE `ct_hoadon`
  ADD CONSTRAINT `ct_hoadon_ibfk_1` FOREIGN KEY (`So_Hoa_Don`) REFERENCES `hoa_don` (`So_Hoa_Don`),
  ADD CONSTRAINT `ct_hoadon_ibfk_2` FOREIGN KEY (`Ma_Sua`) REFERENCES `sua` (`Ma_Sua`);

--
-- Constraints for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD CONSTRAINT `hoa_don_ibfk_1` FOREIGN KEY (`Ma_khach_hang`) REFERENCES `khach_hang` (`MaKH`);

--
-- Constraints for table `sua`
--
ALTER TABLE `sua`
  ADD CONSTRAINT `sua_ibfk_1` FOREIGN KEY (`Ma_Hang_Sua`) REFERENCES `hang_sua` (`Ma_hang_sua`),
  ADD CONSTRAINT `sua_ibfk_2` FOREIGN KEY (`Ma_Loai_Sua`) REFERENCES `loai_sua` (`Ma_Loai_Sua`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
