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
-- Database: `dbshopguitar`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('00', 1, 4860000, '', 10),
('14072100100', 2, 4370000, '140721001', 9),
('14072100101', 1, 38820000, '140721001', 41),
('14072100200', 1, 30000000, '140721002', 15),
('14072100201', 1, 45200000, '140721002', 35),
('14072100202', 2, 4100000, '140721002', 5);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('', '2019-12-20 10:08:33', 4860000, 1, 1),
('140721001', '2021-07-14 01:23:18', 47560000, 9, 1),
('140721002', '2021-07-14 01:26:52', 83400000, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'Lazer', NULL, 0),
(2, 'Takamine', NULL, 0),
(3, 'Kapok', NULL, 0),
(4, 'Taylor', NULL, 0),
(5, 'Fender', NULL, 0),
(6, 'Squier', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'ACOUSTIC GUITAR', 0),
(2, 'CLASSIC GUITAR', 0),
(3, 'GUITAR ĐIỆN', 0),
(4, 'GUITAR BASS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaLoaiSanPham`, `MaHangSanXuat`) VALUES
(1, 'Baby Taylor', 'baby-taylor.jpg', 8210000, '2019-12-01 00:00:00', 49, 0, 1012, 'Đàn Guitar Baby Taylor có thiết kế nhỏ gọn, dễ mang theo, rất thích hợp cho các chuyến dã ngoại, du lịch. Một Model đến từ thương hiệu nổi tiếng, có giá dưới 10 triệu đồng hứa hẹn sẽ mang đến cho bạn những trải nghiệm thú vị.', 0, 1, 4),
(2, 'Big Baby Taylor', 'Big-Baby-Taylor.jpg', 10630000, '2019-12-19 00:00:00', 39, 0, 2001, 'Đàn Guitar Big Baby Taylor có dáng đàn lớn nhất trong các dáng đàn nhỏ của Taylor. Mặt trước đàn được làm bằng gỗ Vân sam Sitka, mặt sau và hai bên hông được làm bằng gỗ Sapele ép, mang đến chất lượng âm thanh đầy đủ cho người chơi.', 0, 1, 4),
(3, 'Taylor Academy 12E-N', 'taylor-academy-a12e.jpg', 19010000, '2019-12-02 00:00:00', 30, 0, 100, 'Đàn Guitar Taylor Academy A12E-N có thiết kế chuyên nghiệp, tích hợp nhiều tính năng nâng cao, sẽ giúp bạn phát triển các khả năng âm nhạc của một người nghệ sĩ thực thụ.', 0, 2, 4),
(4, 'Squier Standard Telecaster VBL', 'squier-standard-telecaster.jpg', 7560000, '2019-12-12 00:00:00', 60, 0, 1005, 'Đàn Guitar điện Squier Standard Telecaster nổi bật với thiết kế chuyên nghiệp, hiện đại. Cây đàn hứa hẹn sẽ mang đến cho người chơi những trải nghiệm tuyệt vời nhất.', 0, 3, 6),
(5, 'Squier Bullet Strat HSS HT', 'squier-bullet-strat-hss-ht-.jpg', 4100000, '2019-12-11 00:00:00', 37, 12, 1264, 'Đàn Guitar điện Squier Bullet Strat HSS HT được thiết kế để phù hợp cho những người mới chơi. Cây đàn với nhiều tính năng linh hoạt, dễ sử dụng, giúp người chơi thể hiện lập trường của mình.', 0, 3, 6),
(6, 'LAZER LG-867', 'lazer-lg-867.jpg', 2080000, '2019-12-11 00:00:00', 89, 7, 8888, 'Đàn Acoustic Lazer LG 867 được làm từ gỗ Linder với 2 màu để lựa chọn phù hợp với người mới học nhạc, thích hợp cho các dòng nhạc Rock, dân gian, Sofl Rock, Blues', 0, 1, 1),
(7, 'Lazer LG-866', 'lazer-lg-866.jpg', 1720000, '2019-12-02 00:00:00', 40, 12, 1005, 'Đàn guitar Lazer LG 866 được làm bằng gỗ Linden với màu đen sang trong cung cấp cho người chơi một cây , sang trọng là cây đàn guitar giá rẻ, phù hợp với người mới học nhạc,  thích hợp cho các dòng nhạc Rock, dân gian, Sofl Rock, Blues…nó rất hữu ích trong việc sáng tác ca khúc ở nhiều loại nhạc khác nhau, đặc biệt là tại những buổi biểu diễn và sinh hoạt ngoài trời.', 0, 1, 1),
(8, 'Kapok D-118AC', 'Kapok-D-118AC.jpg', 2090000, '2019-12-02 00:00:00', 40, 12, 1003, 'Đàn guitar Kapok D-118AC nổi bật với thiết kế sang trọng, màu sắc bắt mắt. Sản phẩm thuộc dòng phân khúc giá rẻ, nhưng tất cả các công đoạn sản xuất đều được thực hiện theo quy trình nghiêm ngặt. Gỗ làm đàn trải qua công đoạn xử lý công nghiệp để đảm bảo tuổi thọ và chất lượng âm thanh.\r\n\r\nGuitar Kapok D-118AC nổi bật về thiết kế so với các guitar cùng phân khúc nhờ lớp sơn bóng đẹp, kiểu dáng sang trọng. Với mặt đàn bằng gỗ spruce ép cao cấp, lưng và hông đàn làm từ gỗ Linden laminated (gỗ ép) chất lượng cao, đem đến âm sắc cực kỳ ấn tượng. Đặc biệt với lớp sơn bóng khiến D-118AC trông thật tuyệt vời dưới ánh đèn sân khấu.', 0, 1, 3),
(9, 'Takamine GC1', 'TAKAMINE-GC1-NAT.jpg', 4370000, '2019-12-17 00:00:00', 121, 12, 1012, 'Đàn Guitar Takamine GC1 có kích thước nhỏ gọn, được thiết kế theo phong cách cổ điển, tạo nên sự cuốn hút và vẻ đẹp thẩm mỹ của cây đàn.\r\n \r\nThiết kế mang phong cách cổ điển, trang nhã', 0, 2, 2),
(10, 'Takamine GD10 NS', 'Takamine-GD10.jpg', 4860000, '2019-12-17 00:00:00', 122, 12, 1005, 'Đàn Guitar Takamine GD10 NS được thiết kế dáng Dreadnought truyền thống. Thiết kế thùng đàn lớn cho âm thanh mạnh mẽ, mang đến những trải nghiệm tuyệt vời cho người chơi.\r\n \r\nThiết kế dáng Dreadnought', 0, 1, 2),
(11, 'FENDER AMERICAN PRO TELE RW', 'fender-american-professional-telecaster.jpg', 29000000, '2019-12-11 00:00:00', 123, 12, 1000, 'Fender American Professional Telecaster phím đàn bằng gỗ Rosewood, được thiết kế theo phong cách Telecaster® cùng hệ thống V-Mod Single-Coil Telecaster® hiện đại mở ra thế giới âm nhạc tuyệt vời cho người chơi.\r\n \r\nFender ra đời với sứ mệnh: làm cho cuộc sống các nhạc sĩ tốt hơn. Vì thế  mặc dù Telecaster đã rất hoàn hảo nhưng những chuyên gia tại Fender không vì thế mà chấp nhận ngủ trên vinh quang. Họ đã không ngừng nghiên cứu và cải tiến với nhiều vật liệu khác nhau và thế là cái American Professional Telecaster ra đời- mang đến bất kỳ thứ gì mà bạn cần trên cây ghita điện và hơn thế nữa.', 0, 3, 5),
(12, 'Fender CC-60S', 'fender-cc-60s.jpg', 4440000, '2019-12-11 00:00:00', 99, 12, 1010, 'Đàn Guitar Fender CC-60S nổi bật với thiết kế dáng Concert nhỏ gọn, không khuyết. Mặt trước của đàn được làm bằng gỗ Solid Spruce, mặt hông và lưng được làm bằng gỗ Mahogany. Thiết kế cần đàn dễ chơi với những phím đàn được làm tròn trịa.\r\n\r\n1. Đàn guitar Fender CC-60S thiết kế chuyên nghiệp', 0, 1, 5),
(13, 'Fender CN-60S', 'Fender-CN-60S-Classical.jpg', 4440000, '2019-12-11 00:00:00', 40, 12, 1000, 'Đàn Guitar Fender CN-60S Classical giúp người trải nghiệm sự thuận tiện của dây Nylon và âm thanh của dây thép.\r\n \r\nĐàn Guitar Fender Classic CN-60S có kích thước nhỏ gọn, âm thanh tuyệt vời, mang đến cho người chơi những trải nghiệm Guitar mới.\r\n\r\nĐàn Guitar Fender CN-60S Classical có hai phiên bản màu để người chơi chọn lựa. Cây đàn được hãng sản xuất Fender chế tác tỉ mĩ, nhằm mang đến cây đàn chất lượng, đáp ứng đầy đủ nhu cầu của người chơi.', 0, 2, 5),
(14, 'SQUIER VM JAZZ BASS', 'squier-vm-jazz-bass-1.jpg', 8710000, '2019-12-17 00:00:00', 123, 2, 1001, 'Squier Vintage Modified Jazz Bass mang đến âm bass âm trầm tự nhiên trong vẻ ngoài nổi bật\r\n\r\nSquier Vintage Modified Jazz Bass mang đến âm thanh Jazz bass tuyệt vời với nhiều tính năng được cải tiến cần đàn hình \"C\" bằng gỗ maple giúp người chơi thoải mái cùng với hệ thống âm thanh snappy-sounding Fender® chuyên nghiệp cho người chơi âm thanh tốt nhất trong thiết kê hoàn hảo.', 0, 4, 3),
(15, 'SQUIER VM JAZZ BASS V', 'squier-vintage-modified-jazz-bass-v-1.jpg', 30000000, '2019-12-12 00:00:00', 99, 12, 1001, 'Squier Vintage Modified Jazz Bass® V  âm thanh hiện đại trong phong cách cổ điển trong\r\nSquier Vintage Modified Jazz Bass® V   được thiết kế với dáng đàn kiểu Jazz cổ điển bằng gỗ maple, cần đàn maple mỏng. Nhìn tổng thể nó mang dáng vẻ của một cây guitar bass cổ điển nhưng được cải tiến bằng việc khảm thêm các đốm tinh tế trên phím thứ 20 của fingerboard gỗ maple.\r\n\r\nĐược trang bị với dual Fender-designed pickups pickguard 3 lớp, ngựa đàn 5 chốt cầu, phần cứng và tuner bằng chrome. Mang lại giai điệu vượt trội và cảm nhận tinh tế cho các tay bass ngày nay, với hiệu suất và giá trị Squier cao cấp.', 0, 4, 1),
(16, 'FENDER TRADNL 70S STRAT ASH MN-NAT', 'fender-tradnl-70s-strat-ash-mn-nat.jpg', 20000000, '2019-12-12 00:00:00', 100, 12, 1002, 'FENDER TRADNL 70S STRAT ASH MN-NAT\r\n\r\nMô hình này tái tạo chân thực Guitar Jazz Bass trong năm 75 và được trang bị pickup gốc, đặc điểm kỹ thuật inlay trên cần đàn . Gỗ Ash thân đàn đã được áp dụng vào những năm 1970, và nó tương ứng với một thể loại rộng hơn và âm thanh chặt chẽ hơn.', 0, 4, 6),
(27, 'Taylor T5z Standard', 'Taylor-T5z-Standard-270x270.jpg', 45200000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Taylor T5Z Standar được làm bằng gỗ Sitka Spruce. Đây là loại gỗ có độ bền và độ dẻo dai cao, được sử dụng rất phổ biến để làm đầu đàn. Đặc tính của gỗ Spruce là rất cứng và nhẹ, có tốc độ truyền âm thanh, độ vang rất cao, giai điệu rất rõ ràng và đầy đủ.', 0, 1, 4),
(28, 'Taylor T3B', 'Taylor-T3-2-400x400.jpg', 35950000, '2012-10-06 00:00:00', 100, 0, 0, 'Taylor T3 nổi bật với thiết kế chuyên nghiệp, tích hợp đầy đủ các tính năng Guitar, mang đến cho người chơi những trải nghiệm mới. Các lựa chọn pickup bao gồm các humbucker Alnico high-fidelity kích cỡ đầy đủ, mini hay vintage, pha trộn với ứng dụng coil-splitting độc nhất. Tất cả nhằm mang đến cho người chơi nhạc humbucker tuyệt vời và các âm single coil trong 1 cây guitar. ', 0, 1, 4),
(29, 'Fender FA-125CE Dreadnought, Natural', 'Fender-FA-125CE-1-400x400.jpg', 2650000, '2021-10-06 00:00:00', 100, 0, 0, 'Fender FA-125CE có thiết kế đơn giản, dáng Dreadnought Cutaway. Thiết kế thùng đàn lớn cho tiếng đàn to, ấm và đầy hơn, phù hợp cho các bạn chơi đệm và dùng pick, sử dụng đàn trong các buổi đi chơi dã ngoại.', 0, 1, 5),
(30, 'Fender CC-140SCE', 'Fender-CC-140SCE-1.jpg', 10200000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Fender CC-140SCE được thiết kế dáng Cutaway Concert (hay còn gọi là dáng C khuyết). Mặt trước được làm bằng gỗ Vân sam, mặt sau và hai bên hông được làm bằng gỗ Hồng mộc mang đến những âm thanh ấm áp.\r\n \r\nCây đàn hấp dẫn người chơi từ cái nhìn đầu tiên bởi thiết kế kiểu single-cutaway  concert-sized. Fender CC-140SCE đã được hãng Fender cải tiến, hứa hẹn sẽ mang đến cho người chơi những trải nghiệm thú vị. Fender CC-140SCE đã sẵn sàng cho bất cứ bản nhạc nào, cho dù bạn ở nhà hay trên sân khấu.', 0, 1, 5),
(31, 'Takamine D1D NS', 'takamine-d1d-1-400x400.jpg', 4400000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Takamine D1D NS Acoustic thuộc dòng D Series. Đàn có thiết kế bắt mắt, chất lượng âm thanh đạt chuẩn… rất thích hợp cho người mới chơi, học sinh, sinh viên.', 0, 1, 2),
(32, 'Takamine GN93CE NAT', 'TAKAMINE-GN93CE-1-400x400.jpg', 13800000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Takamine GN93CE được thiết kế dáng NEX hiện đại. Cây đàn với nhiều tính năng hiện đại mang đến cho người chơi sự thích thú và những trải nghiệm Guitar thú vị nhất.\r\n \r\nKiểu dáng NEX hiện đại\r\nTakamine GN93CE là cây đàn Acoustic/ Electric được thiết kế theo phong cách NEX body. GN93CE có mặt trước được làm từ gỗ Solid Spruce, mặt sau được thiết kế đặc biệt, mang lại cảm giác tuyệt vời và âm thanh cao cấp. Chính những thiết kế này tạo nên chất lượng và đẳng cấp của cây đàn.', 0, 1, 2),
(33, 'Kapok LD-18', 'LD18-400x400.jpg', 2460000, '2012-10-06 00:00:00', 100, 0, 0, 'Thiết kế sang trọng, nhiều màu sắc\r\nKapok LD-18 nổi bật với thiết kế sang trọng, màu sắc bắt mắt. Thiết kế thùng đàn size 4/4, chiều dài 104 cm.\r\n\r\nSản phẩm thuộc dòng phân khúc giá rẻ, nhưng tất cả các công đoạn sản xuất đều được thực hiện theo quy trình nghiêm ngặt. Gỗ làm đàn trải qua công đoạn xử lý công nghiệp để đảm bảo tuổi thọ và chất lượng âm thanh.\r\n\r\nGuitar Kapok LD-18 nổi bật về thiết kế so với các guitar cùng phân khúc nhờ lớp sơn bóng đẹp, kiểu dáng sang trọng. Với mặt đàn bằng gỗ spruce ép cao cấp, lưng và hông đàn làm từ gỗ Linden laminated (gỗ ép) chất lượng cao, đem đến âm sắc cực kỳ ấn tượng. Đặc biệt với lớp sơn bóng khiến LD-18 trông thật tuyệt vời dưới ánh đèn sân khấu.', 0, 1, 3),
(34, 'Kapok LO-14C', 'Kapok-LO-14C-1-400x400.jpg', 1950000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Kapok LO-14C nổi bật với thiết kế nhỏ gọn, màu sắc bắt mắt. Cây đàn có chất lượng âm thanh đạt chuẩn, mức giá phải chăng, mang đến cho người chơi nhiều sự chọn lựa.', 0, 1, 3),
(35, 'Taylor T5z Classic', 'Taylor-T5z-Standard-270x270.jpg', 45200000, '2019-12-27 10:17:32', 99, 0, 1, 'Đàn Guitar Taylor T5Z Classic có thiết kế bắt mắt, mang đậm chất cổ điển. Taylor T5Z  được trang bị cùng với three-pickup, thêm vào five-way switching và tích hợp âm thanh vào bộ xử lý, mang đến cho người chơi cảm hứng bất tận khi sử dụng. ', 0, 2, 4),
(36, 'Fender MC-1 3/4 Nylon', 'Fender-MC-1-3-4-Steel-String-1-400x400.jpg', 3000000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Fender MC-1 3/4 Nylon  được thiết kế với những tính năng hiện đại và tiên tiến, sẵn sàng đồng hành cùng người chơi chinh phục giấc mơ Guitar của mình.\r\n \r\nĐàn guitar Fender MC-1 3/4 Nylon mang phong cách cổ điển. Cây đàn được tích hợp nhiều tính năng linh hoạt, phù hợp cho những người mới chơi hoặc những người chơi thích phiêu lieu cùng cây đàn của mình ở khắp mọi nơi.', 0, 2, 5),
(37, 'Takamine H8SS', 'Takamine-H8SS-1-400x400.jpg', 2650000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar Takamine H8SS được thiết kế theo phong cách Classic cổ điển. Cây đàn được chế tác tỉ mĩ đến từng chi tiết, tạo nên những âm thanh chất lượng và sự đẳng cấp của cây đàn.', 0, 2, 2),
(38, 'Takamine GC5 NAT', 'Takamine-GC5NAT-1-400x400.jpg', 6820000, '2012-10-06 00:00:00', 100, 0, 1, 'Đàn Guitar Takamine GC5 NAT hút hồn người chơi bởi thiết kế cổ điển, trang nhã. Mặt trước được làm bằng gỗ Vân sam, mặt sau và hai bên hông được làm bằng gỗ Mahogany, mang đến những âm thanh trầm ấm, mượt mà.\r\n \r\nTakamine GC5NAT được tích hợp nhiều tính năng hiện đại, mang đến cho người chơi những trải nghiệm Guitar tuyệt vời. Cây đàn là sự lựa chọn lý tưởng cho những người chơi đang tìm kiếm một chiếc guitar cổ điển có âm thanh tinh tế và tính cân bằng tốt với mức giá phải chăng.', 0, 2, 2),
(39, 'Kapok LC-28 NAT', 'Kapok-LC-28-NAT-1-270x270.jpg', 2090000, '2012-10-06 00:00:00', 100, 0, 0, 'Kapok LC-28 4/4 được thiết kế phù hợp cho những người mới chơi, học sinh sinh viên và những người có thu nhập thấp. Thương hiệu sản xuất đàn Guitar Kapok là một trong số những thương hiệu sản xuất đàn Guitar nổi tiếng. Các dòng sản phẩm do Kopok sản xuất thường có giá thành rẻ, nhưng đảm bảo chất lượng âm thanh, đáp ứng nhu cầu của người chơi.\r\n\r\nVì vậy, dòng Kapok Kapok LC-28 4/4  phù hợp với đa số người dùng phổ thông, giúp họ sở hữu được chiếc guitar bền đẹp cùng nhiều trải nghiệm âm nhạc mới mẻ.', 0, 2, 3),
(40, 'Kapok LC-18 NAT', 'kapok-lc-18-1-400x400.jpg', 1990000, '2012-10-06 00:00:00', 100, 0, 0, 'Đàn Guitar classic Kapok LC-18 có thiết kế kiểu dáng đẹp, âm thanh tốt, rất thích hợp cho học sinh, sinh viên và những người mới chơi. Dưới 2 triệu đồng là bạn đã có thể sở hữu ngay cây đàn Claasic lý tưởng.', 0, 2, 3),
(41, 'FENDER AMERICAN PRO STRAT HSS SHAW MN', 'fender-american-professional.jpg', 38820000, '2019-12-27 10:23:57', 99, 0, 1, 'Fender American Professional Stratocaster HSS Shawbucker, Maple Fingerboard  mang  phong cách Strats cổ điển kết hợp với hệ thống Pickup hiện đại mang đến âm thanh Guitar ấm áp nhưng vẫn rõ nét', 0, 3, 5),
(42, 'Fender Player TELE HH PF', 'dan-guitar-dien-fender-player.jpg', 17360000, '2019-12-27 10:25:39', 100, 0, 0, 'Đàn Guitar điện Fender Player TELE HH PF hấp dẫn người chơi bởi thiết kế đẹp mắt, chất âm táo bạo, tạo không khí sôi động. Cây đàn với nhiều tính năng mới, hiện đại hứa hẹn sẽ đáp ứng đầy đủ nhu cầu tập luyện, biểu diễn của người chơi.', 0, 3, 5),
(43, 'Fender American Pro Strat RW', 'fender-am-pro-strat-rw-1.jpg', 38820000, '2012-10-06 00:00:00', 100, 0, 0, 'Fender American Professional Stratocaster Rosewood ghita điện nổi tiếng của Fender được chế tác tinh tế mang đến cho người chơi âm thanh hoàn hảo đến từ chi tiết', 0, 3, 5),
(44, 'SQUIER AFFINITY TELE RW', 'squier-affinity-telecaster-3.jpg', 2650000, '2012-10-06 00:00:00', 100, 0, 1, 'Squier Affinity Series™ Telecaster® sở hữu âm thanh đa dạng và dễ chơi, đàn guitar điện này là sự lựa chọn tuyệt vời cho tất cả chúng ta.', 0, 3, 6),
(45, 'SQUIER AFFINITY STRAT RW', 'squier-affinity-series-stratocaster.jpg', 45200000, '2012-10-06 00:00:00', 100, 0, 0, 'Squier Affinity Series Stratocaster có thân đàn được làm từ gỗ Alder theo phong cách Stratocaster® sở hữu hệ thống pickup hiện đại được các nghệ sĩ guitar trên thế giới đánh giá  là dòng guitar điện có giá trị tốt nhất trong tất cả thiết kế guitar điện hiện nay.', 0, 3, 6),
(46, 'FENDER TRADNL 70S JAZZ BASS-NAT', 'fender-tradnl-70s-jazz-bass-nat-400x400.jpg', 25800000, '2012-10-06 00:00:00', 100, 0, 0, 'Phiên bản Fender Traditional 70s Jazz Bass Maple Fingerboard Natural này tái tạo chân thực Guitar Jazz Bass trong năm 75 và được trang bị pickup gốc, đặc điểm kỹ thuật inlay trên cần đàn . Gỗ Ash thân đàn đã được áp dụng vào những năm 1970, và nó tương ứng với một thể loại rộng hơn và âm thanh chặt chẽ hơn', 0, 4, 1),
(47, 'SQUIER AFFINITY J BASS', 'squier-affinity-jazz-bass-1.jpg', 50200000, '2012-10-06 00:00:00', 3, 0, 0, 'Đại diện cho giá trị tốt nhất trong thiết kế guitar bass hiện nay, Affinity Series Jazz Bass mang đến âm thanh mạnh mẽ và cảm nhận nhạy bén. Affinity Series Jazz Bass được biết đến với cảm giác chơi thoải mái, vẻ ngoài bắt mắt và đầy đủ tính năng linh hoạt trong một nhạc cụ.', 0, 4, 1),
(48, 'VINTAGE MODIFIED PRECISION FRETLESS', 'squier-vintage-modified-jazz-bass-70s-ow.jpg', 26500000, '2019-12-27 10:39:58', 100, 0, 0, 'Là cây đàn không ngăn phím nổi tiếng trên thế giới được thiết kế để mang lại cảm giác dễ chiệu và giai điệu mượt mà ấm áp. Squier Vintage Modified Precision Fretless là sự kết hợp hoàn hảo giữa tính năng hiện đại và kết cấu cổ điển bao gồm hệ thống pickup single-coil Precision Bass® tách đôi với thiết kế của Fender®, bàn phím ebonol không ngăn phím cong bán kính 9.5” (các sọc kẻ trắng trên đường ngăn phím giúp bạn dễ dàng tìm các vùng âm xung quanh).', 0, 4, 3),
(49, 'Affinity Series Stratocaster HSS', 'squier-affinity-series-stratocaster-hss-1.jpg', 5800000, '2012-10-06 00:00:00', 2, 0, 0, 'Squier Affinity Series Stratocaster HSS  tạo ra giai điệu mạnh mẽ và nhanh chóng, thoải mái, vì vậy bạn có thể luyện tập hàng giờ liền mà không hề mệ mỏi. Nó có một nút xoay để chỉnh âm lượng và hai nút bấm âm thanh riêng lẻ, cho phép bạn truy cập vào âm thanh ưa thích của mình một cách nhanh chóng.', 0, 4, 3),
(50, 'SQUIER BULLET STRAT HT HSS', 'fender-sq-bullet-strat-ht-hss-1.jpg', 5030000, '2012-10-06 00:00:00', 100, 0, 0, 'Được thiết kế với cần đàn kiểu \"C\" mang đến sự thoải mái và thuận tiện cho bất kỳ nghệ sĩ guitar có bàn tay nhỏ bé, được trang bị thêm pickup humbucking trên ngựa đàn và 2 pickup single - coil cho âm thanh ấm và dày. Ngoài ra Fender sq bullet strat ht hss còn được đánh giá là cực kỳ đơn giản để chơi với 21 phím ngăn Medium Jumbo và hàng loạt các tính năng được cải tiến khác', 0, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'namnguyen', '123456', 'Nam Thành', 'Nha Trang,Khánh Hòa', '0528373628', 'nguyenthanhnam.pye@gmail.com', 0, 1),
(2, 'admin', 'admin', 'Admin', 'Tuy Hòa,Phú Yên', '0123456789', 'adminNTU@gmail.com', 0, 2),
(9, 'admin1', '0000', 'Admin1', 'Đà Lạt', '0774611534', 'admin1NTU@gmail.com', 0, 1),
(10, 'admin2', '123456789', 'Admin2', 'TP.HCM', '078945612', 'admin2NTU@gmailcom', 0, 1),
(11, 'nam', '123', 'nam', 'anm', '3213', '321', 0, 1),
(12, '1', '1', '1', '1', '1', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_TaiKhoan1_idx` (`MaTaiKhoan`),
  ADD KEY `fk_DonDatHang_TinhTrang1_idx` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham1_idx` (`MaLoaiSanPham`),
  ADD KEY `fk_SanPham_HangSanXuat1_idx` (`MaHangSanXuat`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `fk_TaiKhoan_LoaiTaiKhoan_idx` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_TaiKhoan1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrang1` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_HangSanXuat1` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham1` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_TaiKhoan_LoaiTaiKhoan` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
