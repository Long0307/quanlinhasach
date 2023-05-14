-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 12:03 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhetis4q_quanlynhasach`
--

-- --------------------------------------------------------

--
-- Table structure for table `baocaocongno`
--

CREATE TABLE `baocaocongno` (
  `machitietcongno` int(11) NOT NULL,
  `thang` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `nodau` int(11) NOT NULL,
  `nocuoi` int(11) NOT NULL,
  `tongtienmua` int(11) NOT NULL,
  `tongtientra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baocaocongno`
--

INSERT INTO `baocaocongno` (`machitietcongno`, `thang`, `makhachhang`, `nodau`, `nocuoi`, `tongtienmua`, `tongtientra`) VALUES
(22, 3, 6, 5500, 44000, 84000, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `baocaoton`
--

CREATE TABLE `baocaoton` (
  `machitietton` int(11) NOT NULL,
  `thang` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `tondau` int(11) NOT NULL,
  `toncuoi` int(11) NOT NULL,
  `phatsinhnhap` int(11) NOT NULL,
  `phatsinhxuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baocaoton`
--

INSERT INTO `baocaoton` (`machitietton`, `thang`, `masach`, `tondau`, `toncuoi`, `phatsinhnhap`, `phatsinhxuat`) VALUES
(1, 3, 12, 0, 1549, 750, 0),
(2, 3, 11, 0, 892, 900, 7);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuhoadon`
--

CREATE TABLE `chitietphieuhoadon` (
  `machitietphieuhoadon` int(11) NOT NULL,
  `maphieuhoadon` int(255) NOT NULL,
  `soluongban` int(255) NOT NULL,
  `masach` int(255) NOT NULL,
  `tongtiennhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietphieuhoadon`
--

INSERT INTO `chitietphieuhoadon` (`machitietphieuhoadon`, `maphieuhoadon`, `soluongban`, `masach`, `tongtiennhap`) VALUES
(31, 16, 1, 11, 10500),
(32, 16, 1, 12, 10500),
(33, 17, 1, 11, 10500),
(34, 17, 1, 12, 10500),
(35, 20, 1, 11, 10500),
(36, 21, 1, 11, 10500),
(37, 22, 1, 11, 10500),
(38, 23, 1, 11, 10500),
(39, 24, 1, 11, 10500),
(40, 25, 1, 11, 10500),
(41, 26, 1, 11, 10500),
(42, 27, 1, 11, 10500),
(43, 28, 1, 11, 10500),
(44, 29, 1, 11, 10500),
(45, 30, 1, 12, 10500),
(46, 31, 1, 12, 10500),
(47, 31, 1, 14, 10500);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `machitietphieunhap` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `soluongnhap` int(11) NOT NULL,
  `masach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`machitietphieunhap`, `maphieunhap`, `soluongnhap`, `masach`) VALUES
(111, 77, 150, 11),
(112, 77, 150, 12),
(113, 78, 150, 11),
(114, 78, 150, 12),
(115, 84, 150, 11),
(116, 85, 150, 13),
(119, 87, 150, 11);

-- --------------------------------------------------------

--
-- Table structure for table `infomember`
--

CREATE TABLE `infomember` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `infomember`
--

INSERT INTO `infomember` (`id`, `name`, `image`, `job`, `username`, `password`) VALUES
(1, 'Phùng Hữu Long', 'long.jpg', 'Thành Viên 1', 'phunglong', '25d55ad283aa400af464c76d713c07ad'),
(2, 'Khúc Văn Khánh', 'khanh.jpg', 'Thành Viên 2', 'khuckhanh', '25d55ad283aa400af464c76d713c07ad'),
(3, 'Nguyến Khắc Cường', 'cuong.jpg', 'Thành viên 3', 'khaccuong', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makhachhang` int(11) NOT NULL,
  `hotenkhachhang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `sotienno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makhachhang`, `hotenkhachhang`, `diachi`, `email`, `sodienthoai`, `sotienno`) VALUES
(6, 'Phùng Long hahahahahehehhe', 'Thái Nguyên', 'long3333@gmail.com', 2147483647, 6500),
(8, 'Khúc Văn Khánh haha', 'Hà Nội', 'khanh@gmail.com', 2147483647, 1500),
(9, 'Phùng Long 222', 'Thái Nguyên', 'long@gmail.com', 375769689, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phieuhoadon`
--

CREATE TABLE `phieuhoadon` (
  `maphieuhoadon` int(11) NOT NULL,
  `ngaylaphoadon` timestamp NULL DEFAULT current_timestamp(),
  `makhachhang` int(11) NOT NULL,
  `sotientra` int(11) NOT NULL,
  `sotienno` int(11) NOT NULL,
  `tongcong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieuhoadon`
--

INSERT INTO `phieuhoadon` (`maphieuhoadon`, `ngaylaphoadon`, `makhachhang`, `sotientra`, `sotienno`, `tongcong`) VALUES
(17, '2021-02-28 07:58:13', 6, 21000, 0, 21000),
(21, '2021-03-28 08:05:02', 6, 21000, 0, 21000),
(22, '2021-03-28 08:08:39', 6, 21000, 0, 21000);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `ngaynhap` timestamp NULL DEFAULT current_timestamp(),
  `tongtiennhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`maphieunhap`, `ngaynhap`, `tongtiennhap`) VALUES
(77, '2027-03-20 17:00:00', 3000000),
(78, '2021-03-27 11:07:22', 3000000),
(84, '2028-03-20 17:00:00', 1500000),
(85, '2029-03-20 17:00:00', 1500000),
(87, '2029-03-20 17:00:00', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `phieuthutien`
--

CREATE TABLE `phieuthutien` (
  `maphieuthu` int(11) NOT NULL,
  `makhachhang` int(11) NOT NULL,
  `ngaythutien` date NOT NULL DEFAULT current_timestamp(),
  `sotienthu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieuthutien`
--

INSERT INTO `phieuthutien` (`maphieuthu`, `makhachhang`, `ngaythutien`, `sotienthu`) VALUES
(7, 6, '2021-03-29', 20000),
(8, 9, '2021-04-01', 10),
(10, 6, '2021-04-03', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `masach` int(11) NOT NULL,
  `tensach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_theloai` int(11) NOT NULL,
  `id_tacgia` int(11) NOT NULL,
  `nhaxuatban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `namxuatban` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `soluongton` int(11) NOT NULL DEFAULT 0,
  `tongtien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `id_theloai`, `id_tacgia`, `nhaxuatban`, `namxuatban`, `dongia`, `soluongton`, `tongtien`) VALUES
(11, 'Dế mèn phiêu lưu ký', 8, 39, 'Kim Đồng', 2009, 10000, 4025, 40250000),
(12, 'Truyện Kiều', 10, 40, 'Nhà xuất bản Khoa học xã hội', 2009, 10000, 298, 2980000),
(14, 'Nhật ký trong tù', 11, 41, 'Nhà xuất bản Khoa học xã hội', 2009, 10000, 299, 2990000),
(15, 'hh', 12, 42, 'hfj', 2023, 250000, 200, 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(11) NOT NULL,
  `tentacgia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`id`, `tentacgia`) VALUES
(39, 'Tô Hoài'),
(40, 'Nguyễn Du'),
(41, 'Hồ Chí Minh'),
(42, 'hanoi'),
(43, 'kinh công');

-- --------------------------------------------------------

--
-- Table structure for table `thamso`
--

CREATE TABLE `thamso` (
  `soluongnhaptoithieu` int(11) NOT NULL,
  `soluongtontoithieutruockhinhap` int(11) NOT NULL,
  `tongnotoida` int(11) NOT NULL,
  `soluongtontoithieusaukhiban` int(11) NOT NULL,
  `sudungquydinh4` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thamso`
--

INSERT INTO `thamso` (`soluongnhaptoithieu`, `soluongtontoithieutruockhinhap`, `tongnotoida`, `soluongtontoithieusaukhiban`, `sudungquydinh4`) VALUES
(150, 8000, 20000, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `tentheloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `tentheloai`) VALUES
(8, 'Thám hiểm'),
(10, 'Truyện thơ'),
(11, 'Nhật ký'),
(12, 'sưamaytinh'),
(13, 'chinh thám');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baocaocongno`
--
ALTER TABLE `baocaocongno`
  ADD PRIMARY KEY (`machitietcongno`);

--
-- Indexes for table `baocaoton`
--
ALTER TABLE `baocaoton`
  ADD PRIMARY KEY (`machitietton`);

--
-- Indexes for table `chitietphieuhoadon`
--
ALTER TABLE `chitietphieuhoadon`
  ADD PRIMARY KEY (`machitietphieuhoadon`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`machitietphieunhap`),
  ADD KEY `maphieunhap` (`maphieunhap`);

--
-- Indexes for table `infomember`
--
ALTER TABLE `infomember`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makhachhang`);

--
-- Indexes for table `phieuhoadon`
--
ALTER TABLE `phieuhoadon`
  ADD PRIMARY KEY (`maphieuhoadon`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`);

--
-- Indexes for table `phieuthutien`
--
ALTER TABLE `phieuthutien`
  ADD PRIMARY KEY (`maphieuthu`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`),
  ADD UNIQUE KEY `id_tacgia` (`id_tacgia`),
  ADD KEY `sach_ibfk_2` (`id_theloai`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baocaocongno`
--
ALTER TABLE `baocaocongno`
  MODIFY `machitietcongno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `baocaoton`
--
ALTER TABLE `baocaoton`
  MODIFY `machitietton` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chitietphieuhoadon`
--
ALTER TABLE `chitietphieuhoadon`
  MODIFY `machitietphieuhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `machitietphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `infomember`
--
ALTER TABLE `infomember`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makhachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phieuhoadon`
--
ALTER TABLE `phieuhoadon`
  MODIFY `maphieuhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `phieuthutien`
--
ALTER TABLE `phieuthutien`
  MODIFY `maphieuthu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `masach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`id_tacgia`) REFERENCES `tacgia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`id_theloai`) REFERENCES `theloai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
