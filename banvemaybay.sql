-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2022 at 01:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banvemaybay`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airlineID` char(2) NOT NULL,
  `airlineName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airlineID`, `airlineName`) VALUES
('BL', 'Pacific Airlines'),
('QH', 'Bamboo Airways'),
('VA', 'VASCO'),
('VJ', 'Vietjet Air'),
('VN', 'Vietnam Airlines');

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `airplaneID` varchar(10) NOT NULL,
  `airplaneName` varchar(20) DEFAULT NULL,
  `airplaneBrand` varchar(20) DEFAULT NULL,
  `airlineID` char(2) DEFAULT NULL,
  `ECOseats` int(11) DEFAULT NULL,
  `BUSseats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`airplaneID`, `airplaneName`, `airplaneBrand`, `airlineID`, `ECOseats`, `BUSseats`) VALUES
('A220', 'Airbus A220', 'Airbus', 'BL', 172, 28),
('A330', 'Airbus A330', 'Airbus', 'VA', 172, 28),
('A380', 'Airbus A380', 'Airbus', 'VN', 172, 28),
('AB21', 'Test airplane', 'Airbus1', 'BL', 28, 10),
('B737', 'Boeing 737', 'Boeing', 'VN', 220, 30),
('B747-X', 'Boeing 747-X', 'Boeing', 'VA', 200, 50),
('B767', 'Boeing 767', 'Boeing', 'BL', 200, 50),
('B777', 'Boeing 777', 'Boeing', 'QH', 200, 50),
('B777X', 'Boeing 777X', 'Boeing', 'VA', 200, 50),
('B787', 'Boeing 787', 'Boeing', 'VJ', 200, 50);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airportID` varchar(10) NOT NULL,
  `airportName` varchar(50) DEFAULT NULL,
  `airportCity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airportID`, `airportName`, `airportCity`) VALUES
('CXR', 'Cam Ranh', 'Cam Ranh'),
('DAD', 'Đà Nẵng', 'Đà Nẵng'),
('DIN', 'Điện Biên Phủ', 'Điện Biên Phủ'),
('DLI', 'Liên Khương', 'Đà Lạt'),
('HAN', 'Nội Bài', 'Hà Nội'),
('HPH', 'Cát Bi', 'Hải Phòng'),
('LON', 'Long Thành', 'Long Thành'),
('PQC', 'Phú Quốc', 'Phú Quốc'),
('SGN', 'Tân Sơn Nhất', 'Tp.Hồ Chí Minh'),
('VII', 'Vinh', 'Vinh');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` varchar(10) NOT NULL,
  `customerLast` varchar(20) NOT NULL,
  `customerFirst` varchar(50) DEFAULT NULL,
  `customerGender` varchar(3) DEFAULT NULL,
  `customerBirth` date DEFAULT NULL,
  `customerAddress` varchar(300) DEFAULT NULL,
  `customerTelephone` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerLast`, `customerFirst`, `customerGender`, `customerBirth`, `customerAddress`, `customerTelephone`) VALUES
('KH001', 'Phạm', 'Hoài Anh', 'Nữ', '1980-06-22', '1128 Lí Chiêu Hoàng Phường 10 Quận 6 TPHCM', '0162273887'),
('KH002', 'Quách1', 'Thành Minh', 'Nam', '1985-04-20', '112 Nguyễn Văn Trỗi Phường 10 Quận 7 TP Bình Chánh', '0162120886'),
('KH003', 'Phạm', 'Võ Phương Anh', 'Nữ', '1972-03-21', '125 Bình Phú Phường 8 Quận 9 TPHCM', '0172678612'),
('KH004', 'Phạm', 'Trương Xuân Đạt', 'Nam', '1969-02-17', '125 3 tháng 2 Phường 11 Quận 10 TPHCM', '0129313212'),
('KH005', 'Phạm', 'Thế Hùng', 'Nam', '1975-01-11', '435 Lý Chính Thắng Phường 12 Quận 3 TPHCM', '0176278122'),
('KH006', 'Nguyễn', 'Bình Minh', 'Nam', '1969-08-18', '435 Lý Chính Thắng Phường 12 Quận 3 TPHCM', '0121736174'),
('KH007', 'Nguyễn', 'Ngọc Hà', 'Nữ', '1970-07-17', '129 Nguyễn Trãi Phường 10 Quận 5 TPHCM', '0187328213'),
('KH008', 'Lê', 'Hoàng Khương', 'Nam', '1971-02-09', '300 Lê Hồng Phong Phường 10 Quận 5 TPHCM', '0173812121'),
('KH009', 'Dương', 'Ngọc Tiên', 'Nữ', '1973-05-08', '321 Lê Lợi Phường 9 Quận 3 TPHCM', '0432132761'),
('KH010', 'Lê', 'Hoàng Cẩm Tú', 'Nữ', '1978-08-10', '987 Cách Mạng Tháng Tám Phường 9 Quận 3 TPHCM', '0198732811'),
('KH011', 'Nguyễn', 'Phạm Trường', 'Nam', '1976-08-09', '200 Ngô Quyền Phường 12 Quận 5 TPHCM', '0287637121'),
('KH012', 'Võ', 'Nguyễn Thanh Khang', 'Nam', '1976-08-31', '219 Lê Lai Phường 12 Quận 5 TP Hà Nội', '0198371238'),
('KH013', 'Nguyễn', 'Trương Hạ Vy', 'Nữ', '1977-11-09', '205 Tôn Đức Thắng Phường 8 Quận 1 TP Hà Nội', '0123819231'),
('KH014', 'Nguyễn', 'Ngọc Khánh Lam', 'Nữ', '1977-12-10', '119 Nguyễn Du Phường 10 Quận 12 TP Hà Nội', '0273646674'),
('KH015', 'Ngô', 'Khánh Linh', 'Nữ', '1978-10-17', '119 Nguyễn Thiện Thuật Phường 9 Quận 11 TP Hà Nội', '0291039349'),
('KH016', 'Nghiêm', 'Khánh An', 'Nam', '1977-12-19', '856 Đinh Tiên Hoàng Phường 19 Quận 12 TP Hà Nội', '0293355802'),
('KH017', 'La', 'Anh Duy', 'Nam', '1974-12-19', '856 Nguyễn Tri Phương Phường 8 Quận 7 TP Hà Nội', '0123127812'),
('KH018', 'Đăng', 'Hữu Hoàng', 'Nam', '1976-10-20', '127 Lê Hồng Phong Phường 8 Quận 7 TP Hải Phòng', '0127381223'),
('KH019', 'Hồng', 'Minh Khang', 'Nam', '1978-07-19', '198 Mạc Đĩnh Chi Phường 7 Quận 10 TP Đà Nẵng', '0123132312'),
('KH020', 'Phùng', 'Ngọc Tuấn', 'Nam', '1978-12-19', '198 Lê Lợi Phường 8 Quận 10 TP Đà Nẵng', '0817328789'),
('KH021', 'Nguyễn', 'Quang Gia Thuận', 'Nam', '2002-07-16', '212/c18d', '0972301854'),
('KH022', 'Nguyễn', 'Mỹ Kim', '345', '0000-00-00', 'Nam', '1231342345'),
('KH024', 'thuan', 'thuan1', 'Nam', '2002-09-18', '23456', '1234567'),
('KH033', 'Nguyễn', 'Gia Thuận', 'Nam', '2001-08-20', 'abc', '0972301854'),
('KH034', 'Thuậntesst', '12312Test', 'Nam', '2002-07-16', '43test', '345454'),
('KH035', 'Phạm', 'Hoài Thanh', 'Nữ', '1990-01-10', 'Số 137 Nguyễn Thiện Thuật, P11, Q5', '0774578111');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flightID` varchar(10) NOT NULL,
  `routeID` varchar(15) DEFAULT NULL,
  `airplaneID` varchar(10) DEFAULT NULL,
  `flightScheduleID` varchar(10) DEFAULT NULL,
  `departureTime` datetime DEFAULT NULL,
  `arrivalTime` datetime DEFAULT NULL,
  `totalSeats` int(11) DEFAULT NULL,
  `bookedECOSeats` varchar(20) DEFAULT NULL,
  `bookedBUSSeats` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightID`, `routeID`, `airplaneID`, `flightScheduleID`, `departureTime`, `arrivalTime`, `totalSeats`, `bookedECOSeats`, `bookedBUSSeats`) VALUES
('BL001', 'DN-SG', 'A380', 'LB009', '2022-04-30 10:00:00', '2022-04-30 11:20:00', 200, '40/172', '22/28'),
('BL002', 'SG-DL', 'B737', 'LB005', '2022-04-05 08:00:00', '2022-04-05 08:50:00', 250, '33/220', '30/30'),
('QH001', 'SG-HP', 'A330', 'LB006', '2022-04-12 08:30:00', '2022-04-12 10:30:00', 200, '21/172', '25/28'),
('VA002', 'HN-SG', 'A380', 'LB008', '2022-04-08 08:00:00', '2022-04-08 09:55:00', 200, '16/172', '12/28'),
('VJ001', 'SG-DB', 'B767', 'LB004', '2022-05-02 07:30:00', '2022-05-01 08:35:00', 250, '37/200', '29/50'),
('VJ002', 'SG-LT', 'B777', 'LB007', '2022-05-01 09:00:00', '2022-05-01 09:30:00', 250, '3/200', '2/50'),
('VJ003', 'DN-HN', 'B777', 'LB010', '2022-12-20 14:40:00', '2022-12-20 15:40:00', 250, '0/200', '0/50'),
('VN001', 'SG-HN', 'A220', 'LB001', '2022-04-07 06:30:00', '2022-04-07 07:55:00', 200, '3/172', '5/28'),
('VN004', 'SG-DN', 'B787', 'LB002', '2022-12-20 06:00:00', '2022-12-20 07:15:00', 250, '4/200', '13/50');

-- --------------------------------------------------------

--
-- Table structure for table `flightschedule`
--

CREATE TABLE `flightschedule` (
  `flightScheduleID` varchar(10) NOT NULL,
  `departureAirport` varchar(10) DEFAULT NULL,
  `arrivalAirport` varchar(10) DEFAULT NULL,
  `weekdays` varchar(10) DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flightschedule`
--

INSERT INTO `flightschedule` (`flightScheduleID`, `departureAirport`, `arrivalAirport`, `weekdays`, `time`) VALUES
('LB001', 'SGN', 'HAN', 'Thứ hai', '06:30:00'),
('LB002', 'SGN', 'DAD', 'Thứ ba', '06:00:00'),
('LB004', 'SGN', 'DIN', 'Thứ năm', '07:30:00'),
('LB005', 'SGN', 'DLI', 'Thứ sáu', '08:00:00'),
('LB006', 'SGN', 'HPH', 'Thứ bảy', '08:30:00'),
('LB007', 'SGN', 'LON', 'Chủ nhật', '09:00:00'),
('LB008', 'HAN', 'SGN', 'Thứ hai', '08:00:00'),
('LB009', 'DAD', 'SGN', 'Thứ ba', '10:00:00'),
('LB010', 'DAD', 'HAN', 'Thứ tư', '14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` varchar(10) NOT NULL,
  `staffID` varchar(10) DEFAULT NULL,
  `customerID` varchar(10) DEFAULT NULL,
  `invoiceTotal` int(11) DEFAULT NULL,
  `invoiceDateTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `staffID`, `customerID`, `invoiceTotal`, `invoiceDateTime`) VALUES
('HD001', 'NV01', 'KH001', 5000000, '2022-04-06 17:13:35'),
('HD002', 'NV02', 'KH002', 7500000, '2022-04-06 19:13:35'),
('HD003', 'NV02', 'KH005', 10000000, '2022-04-10 15:18:40'),
('HD004', 'NV03', 'KH003', 5000000, '2022-04-01 11:14:30'),
('HD005', 'NV04', 'KH001', 7500000, '2022-04-10 13:03:12'),
('HD006', 'NV02', 'KH004', 15000000, '2022-04-11 17:49:52'),
('HD007', 'NV02', 'KH006', 10000000, '2022-04-11 17:49:52'),
('HD008', 'NV02', 'KH007', 2500000, '2022-04-19 18:50:54'),
('HD009', 'NV02', 'KH008', 5000000, '2022-04-20 18:56:53'),
('HD010', 'NV01', 'KH009', 5000000, '2022-04-29 09:47:43'),
('HD011', 'NV02', 'KH010', 7500000, '2022-04-14 23:50:23'),
('HD012', 'NV02', 'KH011', 5000000, '2022-04-15 13:23:55'),
('HD013', 'NV02', 'KH012', 10000000, '2022-04-17 01:14:32'),
('HD014', 'NV01', 'KH013', 2500000, '2022-04-30 17:09:12'),
('HD015', 'NV01', 'KH014', 5000000, '2022-04-30 23:27:59'),
('HD016', 'NV01', 'KH015', 2500000, '2022-04-07 18:42:59'),
('HD017', 'NV01', 'KH016', 10000000, '2022-04-05 05:16:27'),
('HD018', 'NV01', 'KH017', 7500000, '2022-04-07 12:05:01'),
('HD019', 'NV01', 'KH018', 12500000, '2022-04-05 09:42:23'),
('HD020', 'NV01', 'KH019', 2500000, '2022-04-01 16:21:45'),
('HD021', 'NV01', 'KH020', 2500000, '2022-04-30 06:11:52'),
('HD022', 'NV03', 'KH003', 5000000, '2022-04-29 11:09:52'),
('HD023', 'NV03', 'KH004', 5000000, '2022-04-29 12:19:12'),
('HD024', 'NV03', 'KH007', 5000000, '2022-04-29 13:29:22'),
('HD025', 'NV03', 'KH008', 5000000, '2022-04-29 14:39:32'),
('HD026', 'NV03', 'KH013', 5000000, '2022-04-29 15:49:42'),
('HD028', 'NV01', 'KH017', 7500000, '2022-05-08 14:45:50'),
('HD029', 'NV01', 'KH033', 15000000, '2022-05-08 14:47:47'),
('HD030', 'NV01', 'KH034', 7500000, '2022-05-12 22:40:35'),
('HD031', 'NV01', 'KH007', 15000000, '2022-05-13 16:56:05'),
('HD032', 'NV01', 'KH021', 7500000, '2022-05-13 19:12:18'),
('HD033', 'NV01', 'KH021', 15000000, '2022-05-13 19:19:42'),
('HD034', 'NV01', 'KH021', 15000000, '2022-05-13 19:19:42'),
('HD035', 'NV01', 'KH021', 7500000, '2022-05-15 16:20:28'),
('HD036', 'NV02', 'KH013', 15000000, '2022-05-15 16:22:39'),
('HD037', 'NV03', 'KH019', 22500000, '2022-05-16 08:15:57'),
('HD038', 'NV03', 'KH018', 7500000, '2022-05-17 21:40:03'),
('HD039', 'NV01', 'KH018', 15000000, '2022-05-17 21:41:59'),
('HD040', 'NV01', 'KH018', 7500000, '2022-05-17 21:42:59'),
('HD041', 'NV01', 'KH012', 15000000, '2022-05-17 21:43:30'),
('HD042', 'NV01', 'KH012', 15000000, '2022-05-17 21:43:31'),
('HD043', 'NV01', 'KH022', 15000000, '2022-05-17 21:43:43'),
('HD044', 'NV01', 'KH022', 15000000, '2022-05-17 21:43:43'),
('HD045', 'NV01', 'KH022', 15000000, '2022-05-17 21:43:50'),
('HD046', 'NV01', 'KH022', 15000000, '2022-05-17 21:43:54'),
('HD047', 'NV01', 'KH022', 15000000, '2022-05-17 21:44:05'),
('HD048', 'NV01', 'KH016', 15000000, '2022-05-17 21:44:24'),
('HD049', 'NV02', 'KH012', 15000000, '2022-05-17 21:45:35'),
('HD050', 'NV01', 'KH018', 7500000, '2022-05-17 21:53:14'),
('HD051', 'NV03', 'KH018', 15000000, '2022-05-17 21:54:18'),
('HD052', 'NV03', 'KH018', 15000000, '2022-05-17 21:55:03'),
('HD053', 'NV01', 'KH005', 7500000, '2022-05-17 21:56:56'),
('HD054', 'NV01', 'KH005', 7500000, '2022-05-17 21:57:00'),
('HD055', 'NV01', 'KH017', 7500000, '2022-05-17 21:57:07'),
('HD056', 'NV01', 'KH017', 7500000, '2022-05-17 21:57:14'),
('HD057', 'NV01', 'KH017', 15000000, '2022-05-17 21:57:21'),
('HD058', 'NV03', 'KH018', 7500000, '2022-05-17 23:37:43'),
('HD059', 'NV03', 'KH018', 15000000, '2022-05-17 23:37:57'),
('HD060', 'NV03', 'KH018', 22500000, '2022-05-17 23:38:05'),
('HD061', 'NV03', 'KH016', 15000000, '2022-05-17 23:48:21'),
('HD062', 'NV03', 'KH007', 15000000, '2022-05-18 00:00:44'),
('HD063', 'NV03', 'KH009', 22500000, '2022-05-18 00:03:12'),
('HD064', 'NV03', 'KH016', 15000000, '2022-05-18 00:11:19'),
('HD065', 'NV03', 'KH018', 30000000, '2022-05-18 00:11:30'),
('HD066', 'NV03', 'KH013', 22500000, '2022-05-18 00:13:23'),
('HD067', 'NV01', 'KH017', 7500000, '2022-05-18 00:15:26'),
('HD068', 'NV01', 'KH018', 30000000, '2022-05-18 00:15:43'),
('HD069', 'NV03', 'KH014', 7500000, '2022-05-18 00:19:44'),
('HD070', 'NV01', 'KH016', 22500000, '2022-05-18 08:57:05'),
('HD071', 'NV03', 'KH009', 22500000, '2022-05-18 08:59:42'),
('HD072', 'NV03', 'KH018', 22500000, '2022-05-18 09:00:17'),
('HD073', 'NV03', 'KH014', 7500000, '2022-05-18 09:02:26'),
('HD074', 'NV03', 'KH018', 30000000, '2022-05-18 09:02:41'),
('HD075', 'NV01', 'KH003', 7500000, '2022-05-18 12:07:40'),
('HD076', 'NV01', 'KH003', 22500000, '2022-05-18 12:08:05'),
('HD077', 'NV01', 'KH003', 37500000, '2022-05-18 12:08:16'),
('HD078', 'NV01', 'KH003', 22500000, '2022-05-18 12:08:57'),
('HD079', 'NV03', 'KH003', 7500000, '2022-05-18 12:24:55'),
('HD080', 'NV03', 'KH003', 15000000, '2022-05-18 12:25:10'),
('HD081', 'NV03', 'KH003', 22500000, '2022-05-18 12:25:22'),
('HD082', 'NV03', 'KH010', 15000000, '2022-05-18 12:25:36'),
('HD083', 'NV03', 'KH004', 15000000, '2022-05-18 19:11:45'),
('HD084', 'NV03', 'KH001', 22500000, '2022-05-18 19:11:56'),
('HD085', 'NV03', 'KH001', 30000000, '2022-05-18 19:12:06'),
('HD086', 'NV01', 'KH001', 7500000, '2022-05-20 22:26:16'),
('HD087', 'NV01', 'KH021', 15000000, '2022-05-20 22:27:00'),
('HD089', 'NV01', 'KH021', 7500000, '2022-05-20 22:27:56'),
('HD090', 'NV02', 'KH020', 7500000, '2022-05-25 23:23:43'),
('HD091', 'NV02', 'KH001', 7500000, '2022-05-26 12:42:38'),
('HD093', 'NV02', 'KH001', 7500000, '2022-05-26 13:00:19'),
('HD094', 'NV02', 'KH001', 7500000, '2022-05-26 13:07:19'),
('HD095', 'NV02', 'KH001', 7500000, '2022-05-26 13:15:43'),
('HD096', 'NV02', 'KH001', 7500000, '2022-05-26 13:17:01'),
('HD097', 'NV02', 'KH001', 7500000, '2022-05-26 14:14:31'),
('HD098', 'NV02', 'KH001', 7500000, '2022-05-26 14:16:18'),
('HD099', 'NV01', 'KH001', 7500000, '2022-05-26 14:17:32'),
('HD100', 'NV02', 'KH001', 7500000, '2022-05-26 21:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `invoicedetail`
--

CREATE TABLE `invoicedetail` (
  `invoiceID` varchar(10) NOT NULL,
  `typeID` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoicedetail`
--

INSERT INTO `invoicedetail` (`invoiceID`, `typeID`, `amount`, `total`) VALUES
('HD001', 'BUS', 1, 2500000),
('HD002', 'BUS', 1, 5000000),
('HD002', 'ECO', 1, 2500000),
('HD003', 'BUS', 2, 10000000),
('HD004', 'ECO', 2, 5000000),
('HD005', 'ECO', 3, 7500000),
('HD006', 'BUS', 3, 15000000),
('HD007', 'BUS', 2, 10000000),
('HD008', 'ECO', 1, 2500000),
('HD009', 'BUS', 1, 5000000),
('HD010', 'ECO', 2, 5000000),
('HD011', 'BUS', 1, 5000000),
('HD011', 'ECO', 1, 2500000),
('HD012', 'ECO', 2, 5000000),
('HD013', 'ECO', 4, 10000000),
('HD014', 'ECO', 1, 2500000),
('HD015', 'ECO', 2, 5000000),
('HD016', 'ECO', 1, 2500000),
('HD017', 'BUS', 2, 10000000),
('HD018', 'BUS', 1, 5000000),
('HD018', 'ECO', 1, 2500000),
('HD019', 'ECO', 5, 12500000),
('HD020', 'ECO', 1, 2500000),
('HD021', 'ECO', 1, 2500000),
('HD022', 'ECO', 2, 5000000),
('HD023', 'ECO', 2, 5000000),
('HD024', 'ECO', 2, 5000000),
('HD025', 'ECO', 2, 5000000),
('HD026', 'ECO', 2, 5000000),
('HD028', 'BUS', 1, 5000000),
('HD028', 'ECO', 1, 2500000),
('HD029', 'BUS', 2, 10000000),
('HD029', 'ECO', 2, 5000000),
('HD030', 'BUS', 1, 5000000),
('HD030', 'ECO', 1, 2500000),
('HD031', 'BUS', 2, 10000000),
('HD031', 'ECO', 2, 5000000),
('HD032', 'BUS', 1, 5000000),
('HD032', 'ECO', 1, 5000000),
('HD033', 'BUS', 2, 10000000),
('HD033', 'ECO', 2, 5000000),
('HD034', 'BUS', 2, 10000000),
('HD034', 'ECO', 2, 5000000),
('HD035', 'BUS', 1, 5000000),
('HD035', 'ECO', 1, 5000000),
('HD036', 'BUS', 2, 10000000),
('HD036', 'ECO', 2, 5000000),
('HD037', 'BUS', 3, 15000000),
('HD037', 'ECO', 3, 5000000),
('HD038', 'BUS', 1, 5000000),
('HD038', 'ECO', 1, 5000000),
('HD039', 'BUS', 2, 10000000),
('HD039', 'ECO', 2, 2500000),
('HD040', 'BUS', 1, 5000000),
('HD040', 'ECO', 1, 2500000),
('HD041', 'BUS', 2, 10000000),
('HD041', 'ECO', 2, 5000000),
('HD042', 'BUS', 2, 10000000),
('HD042', 'ECO', 2, 5000000),
('HD043', 'BUS', 2, 10000000),
('HD043', 'ECO', 2, 5000000),
('HD044', 'BUS', 2, 10000000),
('HD044', 'ECO', 2, 5000000),
('HD045', 'BUS', 2, 10000000),
('HD045', 'ECO', 2, 5000000),
('HD046', 'BUS', 2, 10000000),
('HD046', 'ECO', 2, 5000000),
('HD047', 'BUS', 2, 10000000),
('HD047', 'ECO', 2, 5000000),
('HD048', 'BUS', 2, 10000000),
('HD048', 'ECO', 2, 5000000),
('HD049', 'BUS', 2, 10000000),
('HD049', 'ECO', 2, 7500000),
('HD050', 'BUS', 1, 5000000),
('HD050', 'ECO', 1, 5000000),
('HD051', 'BUS', 2, 10000000),
('HD051', 'ECO', 2, 5000000),
('HD052', 'BUS', 2, 10000000),
('HD052', 'ECO', 2, 2500000),
('HD053', 'BUS', 1, 5000000),
('HD053', 'ECO', 1, 5000000),
('HD054', 'BUS', 1, 5000000),
('HD054', 'ECO', 1, 5000000),
('HD055', 'BUS', 1, 5000000),
('HD055', 'ECO', 1, 5000000),
('HD056', 'BUS', 1, 5000000),
('HD056', 'ECO', 1, 5000000),
('HD057', 'BUS', 2, 10000000),
('HD057', 'ECO', 2, 5000000),
('HD058', 'BUS', 1, 5000000),
('HD058', 'ECO', 1, 5000000),
('HD059', 'BUS', 2, 10000000),
('HD059', 'ECO', 2, 5000000),
('HD060', 'BUS', 3, 15000000),
('HD060', 'ECO', 3, 5000000),
('HD061', 'BUS', 2, 10000000),
('HD061', 'ECO', 2, 2500000),
('HD062', 'BUS', 2, 10000000),
('HD062', 'ECO', 2, 2500000),
('HD063', 'BUS', 3, 15000000),
('HD063', 'ECO', 3, 5000000),
('HD064', 'BUS', 2, 10000000),
('HD064', 'ECO', 2, 5000000),
('HD065', 'BUS', 4, 20000000),
('HD065', 'ECO', 4, 7500000),
('HD066', 'BUS', 3, 15000000),
('HD066', 'ECO', 3, 5000000),
('HD067', 'BUS', 1, 5000000),
('HD067', 'ECO', 1, 5000000),
('HD068', 'BUS', 4, 20000000),
('HD068', 'ECO', 4, 7500000),
('HD069', 'BUS', 1, 5000000),
('HD069', 'ECO', 1, 2500000),
('HD070', 'BUS', 3, 15000000),
('HD070', 'ECO', 3, 5000000),
('HD071', 'BUS', 3, 15000000),
('HD071', 'ECO', 3, 5000000),
('HD072', 'BUS', 3, 15000000),
('HD072', 'ECO', 3, 5000000),
('HD073', 'BUS', 1, 5000000),
('HD073', 'ECO', 1, 5000000),
('HD074', 'BUS', 4, 20000000),
('HD074', 'ECO', 4, 7500000),
('HD075', 'BUS', 1, 5000000),
('HD075', 'ECO', 1, 5000000),
('HD076', 'BUS', 3, 15000000),
('HD076', 'ECO', 3, 5000000),
('HD077', 'BUS', 5, 25000000),
('HD077', 'ECO', 5, 10000000),
('HD078', 'BUS', 3, 15000000),
('HD078', 'ECO', 3, 5000000),
('HD079', 'BUS', 1, 5000000),
('HD079', 'ECO', 1, 5000000),
('HD080', 'BUS', 2, 10000000),
('HD080', 'ECO', 2, 2500000),
('HD081', 'BUS', 3, 15000000),
('HD081', 'ECO', 3, 5000000),
('HD082', 'BUS', 2, 10000000),
('HD082', 'ECO', 2, 2500000),
('HD083', 'BUS', 2, 10000000),
('HD083', 'ECO', 2, 2500000),
('HD084', 'BUS', 3, 15000000),
('HD084', 'ECO', 3, 5000000),
('HD085', 'BUS', 4, 20000000),
('HD085', 'ECO', 4, 7500000),
('HD086', 'BUS', 1, 5000000),
('HD086', 'ECO', 1, 2500000),
('HD087', 'BUS', 2, 10000000),
('HD087', 'ECO', 2, 2500000),
('HD089', 'BUS', 1, 5000000),
('HD089', 'ECO', 1, 2500000),
('HD090', 'BUS', 1, 5000000),
('HD090', 'ECO', 1, 2500000),
('HD091', 'BUS', 1, 5000000),
('HD093', 'BUS', 1, 5000000),
('HD093', 'ECO', 1, 2500000),
('HD094', 'BUS', 1, 5000000),
('HD094', 'ECO', 1, 2500000),
('HD095', 'BUS', 1, 5000000),
('HD096', 'BUS', 1, 5000000),
('HD097', 'BUS', 1, 5000000),
('HD098', 'BUS', 1, 5000000),
('HD099', 'BUS', 1, 5000000),
('HD100', 'BUS', 1, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `routeID` varchar(15) NOT NULL,
  `departureLocation` varchar(50) DEFAULT NULL,
  `arrivalLocation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`routeID`, `departureLocation`, `arrivalLocation`) VALUES
('DN-HN', 'Đà Nẵng', 'Hà Nội'),
('DN-SG', 'Đà Nẵng', 'Tp.Hồ Chí Minh'),
('HN-SG', 'Hà Nội', 'Tp.Hồ Chí Minh'),
('SG-CR', 'Tp.Hồ Chí Minh', 'Cam Ranh'),
('SG-DB', 'Tp.Hồ Chí Minh', 'Điện Biên Phủ'),
('SG-DL', 'Tp.Hồ Chí Minh', 'Đà Lạt'),
('SG-DN', 'Tp.Hồ Chí Minh', 'Đà Nẵng'),
('SG-HN', 'Tp.Hồ Chí Minh', 'Hà Nội'),
('SG-HP', 'Tp.Hồ Chí Minh', 'Hải Phòng'),
('SG-LT', 'Tp.Hồ Chí Minh', 'Long Thành'),
('SG-PQ', 'Tp.Hồ Chí Minh', 'Phú Quốc');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` varchar(10) NOT NULL,
  `staffLast` varchar(50) DEFAULT NULL,
  `staffFirst` varchar(20) NOT NULL,
  `staffGender` varchar(3) DEFAULT NULL,
  `staffBirth` date DEFAULT NULL,
  `staffAddress` varchar(300) DEFAULT NULL,
  `staffTelephone` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffID`, `staffLast`, `staffFirst`, `staffGender`, `staffBirth`, `staffAddress`, `staffTelephone`, `password`) VALUES
('NV01', 'Nguyễn', 'Thiên Phúc', 'Nam', '1992-10-17', '3123 Nguyễn Trãi Phường 2 Quận 1 TPHCM', '0123456789', '123456'),
('NV02', 'Nguyễn', 'Huỳnh Thủy Tiên', 'Nữ', '1993-12-12', '123 Nguyễn Tri Phương Phường 4 Quận 10 TPHCM', '0172381623', '123456'),
('NV03', 'Phạm', 'Hoàng Giang', 'Nam', '1994-06-11', '187A Trần Hưng Đạo Phường 2 Quận 1 TPHCM', '0771263517', '123456'),
('NV04', 'Võ', 'Thu Huyền', 'Nữ', '1995-05-15', '7123 Bà Huyện Thanh Quan Phường 9 Quận 3 TPHCM', '0731236789', '123456'),
('NV05', 'Phạm', 'Kiều Loan', 'Nữ', '1996-04-17', '7123 Nguyễn Văn Linh Phường 25 Quận Bình Thạnh TPHCM', '0711623788', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketID` varchar(10) NOT NULL,
  `customerID` varchar(10) DEFAULT NULL,
  `flightID` varchar(10) DEFAULT NULL,
  `typeID` varchar(10) DEFAULT NULL,
  `invoiceID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketID`, `customerID`, `flightID`, `typeID`, `invoiceID`) VALUES
('BUS002', 'KH002', 'VN001', 'BUS', 'HD002'),
('BUS003', 'KH005', 'VN001', 'BUS', 'HD003'),
('BUS004', 'KH005', 'VN001', 'BUS', 'HD003'),
('BUS005', 'KH001', 'VN001', 'BUS', 'HD001'),
('BUS006', 'KH004', 'QH001', 'BUS', 'HD006'),
('BUS007', 'KH004', 'QH001', 'BUS', 'HD006'),
('BUS008', 'KH004', 'QH001', 'BUS', 'HD006'),
('BUS009', 'KH006', 'QH001', 'BUS', 'HD007'),
('BUS010', 'KH006', 'QH001', 'BUS', 'HD007'),
('BUS0100', 'KH018', 'VJ001', 'BUS', 'HD058'),
('BUS027', 'KH016', 'VJ002', 'BUS', 'HD017'),
('BUS028', 'KH016', 'VJ002', 'BUS', 'HD017'),
('BUS030', 'KH017', 'VA002', 'BUS', 'HD018'),
('BUS050', 'KH021', 'VJ001', 'BUS', 'HD032'),
('BUS056', 'KH021', 'BL001', 'BUS', 'HD035'),
('BUS058', 'KH013', 'BL002', 'BUS', 'HD036'),
('BUS059', 'KH013', 'BL002', 'BUS', 'HD036'),
('BUS060', 'KH019', 'BL001', 'BUS', 'HD037'),
('BUS061', 'KH019', 'BL001', 'BUS', 'HD037'),
('BUS062', 'KH019', 'BL001', 'BUS', 'HD037'),
('BUS063', 'KH018', 'BL002', 'BUS', 'HD039'),
('BUS064', 'KH018', 'BL002', 'BUS', 'HD039'),
('BUS066', 'KH012', 'BL002', 'BUS', 'HD041'),
('BUS067', 'KH012', 'BL002', 'BUS', 'HD041'),
('BUS068', 'KH012', 'BL002', 'BUS', 'HD042'),
('BUS069', 'KH012', 'BL002', 'BUS', 'HD042'),
('BUS070', 'KH022', 'QH001', 'BUS', 'HD043'),
('BUS071', 'KH022', 'QH001', 'BUS', 'HD043'),
('BUS072', 'KH022', 'QH001', 'BUS', 'HD044'),
('BUS073', 'KH022', 'QH001', 'BUS', 'HD044'),
('BUS076', 'KH022', 'VA002', 'BUS', 'HD046'),
('BUS077', 'KH022', 'VA002', 'BUS', 'HD046'),
('BUS078', 'KH022', 'VJ001', 'BUS', 'HD047'),
('BUS079', 'KH022', 'VJ001', 'BUS', 'HD047'),
('BUS080', 'KH016', 'VJ001', 'BUS', 'HD048'),
('BUS081', 'KH016', 'VJ001', 'BUS', 'HD048'),
('BUS083', 'KH012', 'VJ001', 'BUS', 'HD049'),
('BUS084', 'KH012', 'VJ001', 'BUS', 'HD049'),
('BUS085', 'KH018', 'VJ001', 'BUS', 'HD050'),
('BUS087', 'KH018', 'VJ001', 'BUS', 'HD051'),
('BUS088', 'KH018', 'VJ001', 'BUS', 'HD051'),
('BUS089', 'KH018', 'BL002', 'BUS', 'HD052'),
('BUS090', 'KH005', 'BL002', 'BUS', 'HD053'),
('BUS092', 'KH005', 'QH001', 'BUS', 'HD054'),
('BUS094', 'KH017', 'QH001', 'BUS', 'HD055'),
('BUS102', 'KH018', 'QH001', 'BUS', 'HD059'),
('BUS103', 'KH018', 'QH001', 'BUS', 'HD059'),
('BUS153', 'KH016', 'BL001', 'BUS', 'HD064'),
('BUS154', 'KH016', 'BL001', 'BUS', 'HD064'),
('BUS155', 'KH018', 'BL002', 'BUS', 'HD065'),
('BUS156', 'KH018', 'BL002', 'BUS', 'HD065'),
('BUS157', 'KH018', 'BL002', 'BUS', 'HD065'),
('BUS183', 'KH017', 'QH001', 'BUS', 'HD067'),
('BUS188', 'KH009', 'QH001', 'BUS', 'HD071'),
('BUS189', 'KH009', 'QH001', 'BUS', 'HD071'),
('BUS190', 'KH009', 'QH001', 'BUS', 'HD071'),
('BUS191', 'KH018', 'BL001', 'BUS', 'HD072'),
('BUS192', 'KH018', 'BL001', 'BUS', 'HD072'),
('BUS193', 'KH018', 'BL001', 'BUS', 'HD072'),
('BUS194', 'KH014', 'VJ001', 'BUS', 'HD073'),
('BUS195', 'KH018', 'VJ001', 'BUS', 'HD074'),
('BUS196', 'KH018', 'VJ001', 'BUS', 'HD074'),
('BUS197', 'KH018', 'VJ001', 'BUS', 'HD074'),
('BUS198', 'KH018', 'VJ001', 'BUS', 'HD074'),
('BUS199', 'KH003', 'BL002', 'BUS', 'HD075'),
('BUS200', 'KH003', 'BL002', 'BUS', 'HD076'),
('BUS201', 'KH003', 'BL002', 'BUS', 'HD076'),
('BUS202', 'KH003', 'BL002', 'BUS', 'HD076'),
('BUS203', 'KH003', 'BL002', 'BUS', 'HD077'),
('BUS204', 'KH003', 'BL002', 'BUS', 'HD077'),
('BUS205', 'KH003', 'BL002', 'BUS', 'HD077'),
('BUS206', 'KH003', 'BL002', 'BUS', 'HD077'),
('BUS207', 'KH003', 'BL002', 'BUS', 'HD077'),
('BUS208', 'KH003', 'BL002', 'BUS', 'HD078'),
('BUS209', 'KH003', 'BL002', 'BUS', 'HD078'),
('BUS210', 'KH003', 'BL002', 'BUS', 'HD078'),
('BUS211', 'KH003', 'VA002', 'BUS', 'HD079'),
('BUS212', 'KH003', 'VA002', 'BUS', 'HD080'),
('BUS213', 'KH003', 'VA002', 'BUS', 'HD080'),
('BUS214', 'KH003', 'VA002', 'BUS', 'HD081'),
('BUS215', 'KH003', 'VA002', 'BUS', 'HD081'),
('BUS216', 'KH003', 'VA002', 'BUS', 'HD081'),
('BUS217', 'KH010', 'VA002', 'BUS', 'HD082'),
('BUS218', 'KH010', 'VA002', 'BUS', 'HD082'),
('BUS219', 'KH004', 'BL001', 'BUS', 'HD083'),
('BUS220', 'KH004', 'BL001', 'BUS', 'HD083'),
('BUS221', 'KH001', 'VJ001', 'BUS', 'HD084'),
('BUS222', 'KH001', 'VJ001', 'BUS', 'HD084'),
('BUS223', 'KH001', 'VJ001', 'BUS', 'HD084'),
('BUS224', 'KH001', 'VJ001', 'BUS', 'HD085'),
('BUS225', 'KH001', 'VJ001', 'BUS', 'HD085'),
('BUS226', 'KH001', 'VJ001', 'BUS', 'HD085'),
('BUS227', 'KH001', 'VJ001', 'BUS', 'HD085'),
('BUS228', 'KH001', 'QH001', 'BUS', 'HD086'),
('BUS229', 'KH021', 'VJ001', 'BUS', 'HD087'),
('BUS230', 'KH021', 'VJ001', 'BUS', 'HD087'),
('BUS231', 'KH021', 'QH001', 'BUS', 'HD089'),
('BUS232', 'KH020', 'VN004', 'BUS', 'HD090'),
('BUS233', 'KH001', 'BL002', 'BUS', 'HD091'),
('BUS234', 'KH001', 'VN004', 'BUS', 'HD093'),
('BUS235', 'KH001', 'VN004', 'BUS', 'HD094'),
('BUS236', 'KH001', 'VN004', 'BUS', 'HD095'),
('BUS237', 'KH001', 'VN004', 'BUS', 'HD096'),
('BUS238', 'KH001', 'VN004', 'BUS', 'HD097'),
('BUS239', 'KH001', 'VN004', 'BUS', 'HD098'),
('BUS240', 'KH001', 'VN004', 'BUS', 'HD099'),
('BUS241', 'KH001', 'VN004', 'BUS', 'HD100'),
('ECO001', 'KH002', 'VN001', 'ECO', 'HD002'),
('ECO011', 'KH007', 'QH001', 'ECO', 'HD008'),
('ECO017', 'KH011', 'VJ001', 'ECO', 'HD012'),
('ECO018', 'KH011', 'VJ001', 'ECO', 'HD012'),
('ECO019', 'KH012', 'VJ001', 'ECO', 'HD013'),
('ECO020', 'KH012', 'VJ001', 'ECO', 'HD013'),
('ECO021', 'KH012', 'VJ001', 'ECO', 'HD013'),
('ECO022', 'KH012', 'VJ001', 'ECO', 'HD013'),
('ECO023', 'KH013', 'VJ001', 'ECO', 'HD014'),
('ECO024', 'KH014', 'VJ002', 'ECO', 'HD015'),
('ECO025', 'KH014', 'VJ002', 'ECO', 'HD015'),
('ECO026', 'KH015', 'VJ002', 'ECO', 'HD016'),
('ECO029', 'KH017', 'VA002', 'ECO', 'HD018'),
('ECO031', 'KH018', 'VA002', 'ECO', 'HD019'),
('ECO032', 'KH018', 'VA002', 'ECO', 'HD019'),
('ECO033', 'KH018', 'VA002', 'ECO', 'HD019'),
('ECO034', 'KH018', 'VA002', 'ECO', 'HD019'),
('ECO035', 'KH018', 'VA002', 'ECO', 'HD019'),
('ECO036', 'KH019', 'VA002', 'ECO', 'HD020'),
('ECO037', 'KH020', 'BL001', 'ECO', 'HD021'),
('ECO038', 'KH003', 'BL001', 'ECO', 'HD022'),
('ECO039', 'KH003', 'BL001', 'ECO', 'HD022'),
('ECO040', 'KH004', 'BL001', 'ECO', 'HD023'),
('ECO041', 'KH004', 'BL001', 'ECO', 'HD023'),
('ECO042', 'KH007', 'BL002', 'ECO', 'HD024'),
('ECO043', 'KH007', 'BL002', 'ECO', 'HD024'),
('ECO044', 'KH008', 'BL002', 'ECO', 'HD025'),
('ECO045', 'KH013', 'BL002', 'ECO', 'HD026'),
('ECO046', 'KH008', 'BL002', 'ECO', 'HD025'),
('ECO047', 'KH013', 'BL002', 'ECO', 'HD026'),
('ECO048', 'KH021', 'VJ001', 'ECO', 'HD032'),
('ECO049', 'KH021', 'VJ001', 'ECO', 'HD032'),
('ECO054', 'KH021', 'BL001', 'ECO', 'HD035'),
('ECO055', 'KH021', 'BL001', 'ECO', 'HD035'),
('ECO056', 'KH013', 'BL002', 'ECO', 'HD036'),
('ECO057', 'KH013', 'BL002', 'ECO', 'HD036'),
('ECO058', 'KH019', 'BL001', 'ECO', 'HD037'),
('ECO059', 'KH019', 'BL001', 'ECO', 'HD037'),
('ECO060', 'KH018', 'VJ001', 'ECO', 'HD038'),
('ECO061', 'KH018', 'VJ001', 'ECO', 'HD038'),
('ECO062', 'KH018', 'BL002', 'ECO', 'HD039'),
('ECO063', 'KH018', 'QH001', 'ECO', 'HD040'),
('ECO064', 'KH012', 'BL002', 'ECO', 'HD041'),
('ECO065', 'KH012', 'BL002', 'ECO', 'HD041'),
('ECO066', 'KH012', 'BL002', 'ECO', 'HD042'),
('ECO067', 'KH012', 'BL002', 'ECO', 'HD042'),
('ECO068', 'KH022', 'QH001', 'ECO', 'HD043'),
('ECO069', 'KH022', 'QH001', 'ECO', 'HD043'),
('ECO070', 'KH022', 'QH001', 'ECO', 'HD044'),
('ECO071', 'KH022', 'QH001', 'ECO', 'HD044'),
('ECO074', 'KH022', 'VA002', 'ECO', 'HD046'),
('ECO075', 'KH022', 'VA002', 'ECO', 'HD046'),
('ECO076', 'KH022', 'VJ001', 'ECO', 'HD047'),
('ECO077', 'KH022', 'VJ001', 'ECO', 'HD047'),
('ECO078', 'KH016', 'VJ001', 'ECO', 'HD048'),
('ECO079', 'KH016', 'VJ001', 'ECO', 'HD048'),
('ECO080', 'KH012', 'VJ001', 'ECO', 'HD049'),
('ECO081', 'KH012', 'VJ001', 'ECO', 'HD049'),
('ECO082', 'KH012', 'VJ001', 'ECO', 'HD049'),
('ECO083', 'KH018', 'VJ001', 'ECO', 'HD050'),
('ECO084', 'KH018', 'VJ001', 'ECO', 'HD050'),
('ECO085', 'KH018', 'VJ001', 'ECO', 'HD051'),
('ECO086', 'KH018', 'VJ001', 'ECO', 'HD051'),
('ECO087', 'KH018', 'BL002', 'ECO', 'HD052'),
('ECO088', 'KH005', 'BL002', 'ECO', 'HD053'),
('ECO089', 'KH005', 'BL002', 'ECO', 'HD053'),
('ECO090', 'KH005', 'QH001', 'ECO', 'HD054'),
('ECO091', 'KH005', 'QH001', 'ECO', 'HD054'),
('ECO092', 'KH017', 'QH001', 'ECO', 'HD055'),
('ECO093', 'KH017', 'QH001', 'ECO', 'HD055'),
('ECO098', 'KH018', 'VJ001', 'ECO', 'HD058'),
('ECO099', 'KH018', 'VJ001', 'ECO', 'HD058'),
('ECO101', 'KH018', 'QH001', 'ECO', 'HD059'),
('ECo151', 'KH016', 'BL001', 'ECO', 'HD064'),
('ECo152', 'KH016', 'BL001', 'ECO', 'HD064'),
('ECo153', 'KH018', 'BL002', 'ECO', 'HD065'),
('ECO181', 'KH017', 'QH001', 'ECO', 'HD067'),
('ECO182', 'KH017', 'QH001', 'ECO', 'HD067'),
('ECO184', 'KH009', 'QH001', 'ECO', 'HD071'),
('ECO185', 'KH009', 'QH001', 'ECO', 'HD071'),
('ECO186', 'KH018', 'BL001', 'ECO', 'HD072'),
('ECO187', 'KH018', 'BL001', 'ECO', 'HD072'),
('ECO188', 'KH014', 'VJ001', 'ECO', 'HD073'),
('ECO189', 'KH014', 'VJ001', 'ECO', 'HD073'),
('ECO190', 'KH018', 'VJ001', 'ECO', 'HD074'),
('ECO191', 'KH018', 'VJ001', 'ECO', 'HD074'),
('ECO192', 'KH018', 'VJ001', 'ECO', 'HD074'),
('ECO193', 'KH003', 'BL002', 'ECO', 'HD075'),
('ECO194', 'KH003', 'BL002', 'ECO', 'HD075'),
('ECO195', 'KH003', 'BL002', 'ECO', 'HD076'),
('ECO196', 'KH003', 'BL002', 'ECO', 'HD076'),
('ECO197', 'KH003', 'BL002', 'ECO', 'HD077'),
('ECO198', 'KH003', 'BL002', 'ECO', 'HD077'),
('ECO199', 'KH003', 'BL002', 'ECO', 'HD077'),
('ECO200', 'KH003', 'BL002', 'ECO', 'HD077'),
('ECO201', 'KH003', 'BL002', 'ECO', 'HD078'),
('ECO202', 'KH003', 'BL002', 'ECO', 'HD078'),
('ECO203', 'KH003', 'VA002', 'ECO', 'HD079'),
('ECO204', 'KH003', 'VA002', 'ECO', 'HD079'),
('ECO205', 'KH003', 'VA002', 'ECO', 'HD080'),
('ECO206', 'KH003', 'VA002', 'ECO', 'HD081'),
('ECO207', 'KH003', 'VA002', 'ECO', 'HD081'),
('ECO208', 'KH010', 'VA002', 'ECO', 'HD082'),
('ECO209', 'KH004', 'BL001', 'ECO', 'HD083'),
('ECO210', 'KH001', 'VJ001', 'ECO', 'HD084'),
('ECO211', 'KH001', 'VJ001', 'ECO', 'HD084'),
('ECO212', 'KH001', 'VJ001', 'ECO', 'HD085'),
('ECO213', 'KH001', 'VJ001', 'ECO', 'HD085'),
('ECO214', 'KH001', 'VJ001', 'ECO', 'HD085'),
('ECO215', 'KH001', 'QH001', 'ECO', 'HD086'),
('ECO216', 'KH021', 'VJ001', 'ECO', 'HD087'),
('ECO219', 'KH021', 'QH001', 'ECO', 'HD089'),
('ECO220', 'KH020', 'VN004', 'ECO', 'HD090'),
('ECO223', 'KH001', 'VN004', 'ECO', 'HD093'),
('ECO224', 'KH001', 'VN004', 'ECO', 'HD094');

-- --------------------------------------------------------

--
-- Table structure for table `tickettype`
--

CREATE TABLE `tickettype` (
  `typeID` varchar(10) NOT NULL,
  `typeName` varchar(50) DEFAULT NULL,
  `waittingRoom` int(10) DEFAULT NULL,
  `typePrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickettype`
--

INSERT INTO `tickettype` (`typeID`, `typeName`, `waittingRoom`, `typePrice`) VALUES
('BUS', 'Hạng thương gia', 1, 5000000),
('ECO', 'Hạng phổ thông', 4, 2500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airlineID`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`airplaneID`),
  ADD KEY `FK_Airplane_Airline` (`airlineID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airportID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightID`),
  ADD KEY `FK_Flight_Route` (`routeID`),
  ADD KEY `FK_Flight_Airplane` (`airplaneID`),
  ADD KEY `FK_Flight_FlightSchedule` (`flightScheduleID`);

--
-- Indexes for table `flightschedule`
--
ALTER TABLE `flightschedule`
  ADD PRIMARY KEY (`flightScheduleID`),
  ADD KEY `FK_DeAirport_Airport` (`departureAirport`),
  ADD KEY `FK_ArAirport_Airport` (`arrivalAirport`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `FK_Invoice_Staff` (`staffID`),
  ADD KEY `FK_Invoice_Customer` (`customerID`);

--
-- Indexes for table `invoicedetail`
--
ALTER TABLE `invoicedetail`
  ADD PRIMARY KEY (`invoiceID`,`typeID`),
  ADD KEY `FK_InvDet_TicketType` (`typeID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`routeID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `FK_Ticket_Customer` (`customerID`),
  ADD KEY `FK_Ticket_TicketType` (`typeID`),
  ADD KEY `FK_Ticket_Invoice` (`invoiceID`),
  ADD KEY `FK_Ticket_Flight` (`flightID`);

--
-- Indexes for table `tickettype`
--
ALTER TABLE `tickettype`
  ADD PRIMARY KEY (`typeID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airplane`
--
ALTER TABLE `airplane`
  ADD CONSTRAINT `FK_Airplane_Airline` FOREIGN KEY (`airlineID`) REFERENCES `airline` (`airlineID`) ON DELETE CASCADE;

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `FK_Flight_Airplane` FOREIGN KEY (`airplaneID`) REFERENCES `airplane` (`airplaneID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Flight_FlightSchedule` FOREIGN KEY (`flightScheduleID`) REFERENCES `flightschedule` (`flightScheduleID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Flight_Route` FOREIGN KEY (`routeID`) REFERENCES `route` (`routeID`) ON DELETE CASCADE;

--
-- Constraints for table `flightschedule`
--
ALTER TABLE `flightschedule`
  ADD CONSTRAINT `FK_ArAirport_Airport` FOREIGN KEY (`arrivalAirport`) REFERENCES `airport` (`airportID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DeAirport_Airport` FOREIGN KEY (`departureAirport`) REFERENCES `airport` (`airportID`) ON DELETE CASCADE;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_Invoice_Customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Invoice_Staff` FOREIGN KEY (`staffID`) REFERENCES `staff` (`staffID`) ON DELETE CASCADE;

--
-- Constraints for table `invoicedetail`
--
ALTER TABLE `invoicedetail`
  ADD CONSTRAINT `FK_InvDet_Invoice` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_InvDet_TicketType` FOREIGN KEY (`typeID`) REFERENCES `tickettype` (`typeID`) ON DELETE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `FK_Ticket_Customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Ticket_Flight` FOREIGN KEY (`flightID`) REFERENCES `flight` (`flightID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Ticket_Invoice` FOREIGN KEY (`invoiceID`) REFERENCES `invoice` (`invoiceID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Ticket_TicketType` FOREIGN KEY (`typeID`) REFERENCES `tickettype` (`typeID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
