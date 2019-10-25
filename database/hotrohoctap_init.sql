-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 11:19 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotrohoctap`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `mabl` int(11) NOT NULL,
  `mabg` int(11) NOT NULL,
  `mahs` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baigiang`
--

CREATE TABLE `tbl_baigiang` (
  `mabg` int(11) NOT NULL,
  `nguoitao` int(11) NOT NULL,
  `mamon` int(11) NOT NULL,
  `tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bailam`
--

CREATE TABLE `tbl_bailam` (
  `mabl` int(11) NOT NULL,
  `mahs` int(11) NOT NULL,
  `madt` int(11) NOT NULL,
  `tgnop` date NOT NULL,
  `socaudung` int(11) NOT NULL,
  `diem` float NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cauhoi`
--

CREATE TABLE `tbl_cauhoi` (
  `mach` int(11) NOT NULL,
  `mamon` int(11) NOT NULL,
  `manch` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cautraloi`
--

CREATE TABLE `tbl_cautraloi` (
  `mactl` int(11) NOT NULL,
  `mach` int(11) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dapandung`
--

CREATE TABLE `tbl_dapandung` (
  `madad` int(11) NOT NULL,
  `mach` int(11) NOT NULL,
  `mactl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dethi`
--

CREATE TABLE `tbl_dethi` (
  `madt` int(11) NOT NULL,
  `nguoitao` int(11) NOT NULL,
  `mamon` int(11) NOT NULL,
  `tglam` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dethi_cauhoi`
--

CREATE TABLE `tbl_dethi_cauhoi` (
  `madtch` int(11) NOT NULL,
  `madt` int(11) NOT NULL,
  `mach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hocsinh`
--

CREATE TABLE `tbl_hocsinh` (
  `mahs` int(11) NOT NULL,
  `malop` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `link_anh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khoi`
--

CREATE TABLE `tbl_khoi` (
  `makhoi` int(11) NOT NULL,
  `tenkhoi` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lop`
--

CREATE TABLE `tbl_lop` (
  `malop` int(11) NOT NULL,
  `tenlop` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gvcn` int(11) NOT NULL,
  `makhoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mon`
--

CREATE TABLE `tbl_mon` (
  `mamon` int(11) NOT NULL,
  `tenmon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nguoitao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhomch`
--

CREATE TABLE `tbl_nhomch` (
  `manch` int(11) NOT NULL,
  `tennch` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quyen`
--

CREATE TABLE `tbl_quyen` (
  `maquyen` int(11) NOT NULL,
  `tenquyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taikhoan`
--

CREATE TABLE `tbl_taikhoan` (
  `matk` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_anh` text COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(11) NOT NULL,
  `maquyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `mabg` (`mabg`),
  ADD KEY `mahs` (`mahs`);

--
-- Indexes for table `tbl_baigiang`
--
ALTER TABLE `tbl_baigiang`
  ADD PRIMARY KEY (`mabg`),
  ADD KEY `nguoitao` (`nguoitao`),
  ADD KEY `mamon` (`mamon`);

--
-- Indexes for table `tbl_bailam`
--
ALTER TABLE `tbl_bailam`
  ADD PRIMARY KEY (`mabl`),
  ADD KEY `mahs` (`mahs`),
  ADD KEY `madt` (`madt`);

--
-- Indexes for table `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  ADD PRIMARY KEY (`mach`),
  ADD KEY `mamon` (`mamon`),
  ADD KEY `manch` (`manch`);

--
-- Indexes for table `tbl_cautraloi`
--
ALTER TABLE `tbl_cautraloi`
  ADD PRIMARY KEY (`mactl`),
  ADD KEY `mach` (`mach`);

--
-- Indexes for table `tbl_dapandung`
--
ALTER TABLE `tbl_dapandung`
  ADD PRIMARY KEY (`madad`),
  ADD KEY `mach` (`mach`),
  ADD KEY `mactl` (`mactl`);

--
-- Indexes for table `tbl_dethi`
--
ALTER TABLE `tbl_dethi`
  ADD PRIMARY KEY (`madt`),
  ADD KEY `mamon` (`mamon`),
  ADD KEY `nguoitao` (`nguoitao`);

--
-- Indexes for table `tbl_dethi_cauhoi`
--
ALTER TABLE `tbl_dethi_cauhoi`
  ADD PRIMARY KEY (`madtch`),
  ADD KEY `madt` (`madt`),
  ADD KEY `mach` (`mach`);

--
-- Indexes for table `tbl_hocsinh`
--
ALTER TABLE `tbl_hocsinh`
  ADD PRIMARY KEY (`mahs`),
  ADD KEY `malop` (`malop`);

--
-- Indexes for table `tbl_khoi`
--
ALTER TABLE `tbl_khoi`
  ADD PRIMARY KEY (`makhoi`);

--
-- Indexes for table `tbl_lop`
--
ALTER TABLE `tbl_lop`
  ADD PRIMARY KEY (`malop`),
  ADD KEY `gvcn` (`gvcn`),
  ADD KEY `makhoi` (`makhoi`);

--
-- Indexes for table `tbl_mon`
--
ALTER TABLE `tbl_mon`
  ADD PRIMARY KEY (`mamon`),
  ADD KEY `nguoitao` (`nguoitao`);

--
-- Indexes for table `tbl_nhomch`
--
ALTER TABLE `tbl_nhomch`
  ADD PRIMARY KEY (`manch`);

--
-- Indexes for table `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
  ADD PRIMARY KEY (`maquyen`);

--
-- Indexes for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD PRIMARY KEY (`matk`),
  ADD KEY `maquyen` (`maquyen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_baigiang`
--
ALTER TABLE `tbl_baigiang`
  MODIFY `mabg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bailam`
--
ALTER TABLE `tbl_bailam`
  MODIFY `mabl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  MODIFY `mach` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cautraloi`
--
ALTER TABLE `tbl_cautraloi`
  MODIFY `mactl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dapandung`
--
ALTER TABLE `tbl_dapandung`
  MODIFY `madad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dethi`
--
ALTER TABLE `tbl_dethi`
  MODIFY `madt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dethi_cauhoi`
--
ALTER TABLE `tbl_dethi_cauhoi`
  MODIFY `madtch` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_hocsinh`
--
ALTER TABLE `tbl_hocsinh`
  MODIFY `mahs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_khoi`
--
ALTER TABLE `tbl_khoi`
  MODIFY `makhoi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lop`
--
ALTER TABLE `tbl_lop`
  MODIFY `malop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_mon`
--
ALTER TABLE `tbl_mon`
  MODIFY `mamon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_nhomch`
--
ALTER TABLE `tbl_nhomch`
  MODIFY `manch` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quyen`
--
ALTER TABLE `tbl_quyen`
  MODIFY `maquyen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  MODIFY `matk` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`mabg`) REFERENCES `tbl_baigiang` (`mabg`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`mahs`) REFERENCES `tbl_hocsinh` (`mahs`);

--
-- Constraints for table `tbl_baigiang`
--
ALTER TABLE `tbl_baigiang`
  ADD CONSTRAINT `tbl_baigiang_ibfk_1` FOREIGN KEY (`nguoitao`) REFERENCES `tbl_taikhoan` (`matk`),
  ADD CONSTRAINT `tbl_baigiang_ibfk_2` FOREIGN KEY (`mamon`) REFERENCES `tbl_mon` (`mamon`);

--
-- Constraints for table `tbl_bailam`
--
ALTER TABLE `tbl_bailam`
  ADD CONSTRAINT `tbl_bailam_ibfk_1` FOREIGN KEY (`mahs`) REFERENCES `tbl_hocsinh` (`mahs`),
  ADD CONSTRAINT `tbl_bailam_ibfk_2` FOREIGN KEY (`madt`) REFERENCES `tbl_dethi` (`madt`);

--
-- Constraints for table `tbl_cauhoi`
--
ALTER TABLE `tbl_cauhoi`
  ADD CONSTRAINT `tbl_cauhoi_ibfk_1` FOREIGN KEY (`mamon`) REFERENCES `tbl_mon` (`mamon`),
  ADD CONSTRAINT `tbl_cauhoi_ibfk_2` FOREIGN KEY (`manch`) REFERENCES `tbl_nhomch` (`manch`);

--
-- Constraints for table `tbl_cautraloi`
--
ALTER TABLE `tbl_cautraloi`
  ADD CONSTRAINT `tbl_cautraloi_ibfk_1` FOREIGN KEY (`mach`) REFERENCES `tbl_cauhoi` (`mach`);

--
-- Constraints for table `tbl_dapandung`
--
ALTER TABLE `tbl_dapandung`
  ADD CONSTRAINT `tbl_dapandung_ibfk_1` FOREIGN KEY (`mach`) REFERENCES `tbl_cauhoi` (`mach`),
  ADD CONSTRAINT `tbl_dapandung_ibfk_2` FOREIGN KEY (`mactl`) REFERENCES `tbl_cautraloi` (`mactl`);

--
-- Constraints for table `tbl_dethi`
--
ALTER TABLE `tbl_dethi`
  ADD CONSTRAINT `tbl_dethi_ibfk_1` FOREIGN KEY (`mamon`) REFERENCES `tbl_mon` (`mamon`),
  ADD CONSTRAINT `tbl_dethi_ibfk_2` FOREIGN KEY (`nguoitao`) REFERENCES `tbl_taikhoan` (`matk`);

--
-- Constraints for table `tbl_dethi_cauhoi`
--
ALTER TABLE `tbl_dethi_cauhoi`
  ADD CONSTRAINT `tbl_dethi_cauhoi_ibfk_1` FOREIGN KEY (`madt`) REFERENCES `tbl_dethi` (`madt`),
  ADD CONSTRAINT `tbl_dethi_cauhoi_ibfk_2` FOREIGN KEY (`mach`) REFERENCES `tbl_cauhoi` (`mach`);

--
-- Constraints for table `tbl_hocsinh`
--
ALTER TABLE `tbl_hocsinh`
  ADD CONSTRAINT `tbl_hocsinh_ibfk_1` FOREIGN KEY (`malop`) REFERENCES `tbl_lop` (`malop`);

--
-- Constraints for table `tbl_lop`
--
ALTER TABLE `tbl_lop`
  ADD CONSTRAINT `tbl_lop_ibfk_1` FOREIGN KEY (`gvcn`) REFERENCES `tbl_taikhoan` (`matk`),
  ADD CONSTRAINT `tbl_lop_ibfk_2` FOREIGN KEY (`makhoi`) REFERENCES `tbl_khoi` (`makhoi`);

--
-- Constraints for table `tbl_mon`
--
ALTER TABLE `tbl_mon`
  ADD CONSTRAINT `tbl_mon_ibfk_1` FOREIGN KEY (`nguoitao`) REFERENCES `tbl_taikhoan` (`matk`);

--
-- Constraints for table `tbl_taikhoan`
--
ALTER TABLE `tbl_taikhoan`
  ADD CONSTRAINT `tbl_taikhoan_ibfk_1` FOREIGN KEY (`maquyen`) REFERENCES `tbl_quyen` (`maquyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
