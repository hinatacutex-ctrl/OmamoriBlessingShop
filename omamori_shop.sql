-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2026 at 04:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omamori_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `filter_value` varchar(50) NOT NULL,
  `image_filename` varchar(255) NOT NULL,
  `display_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `filter_value`, `image_filename`, `display_type`) VALUES
(1, 'omamori', 'oadd.png', 'category'),
(2, 'maneki', 'madd.png', 'category'),
(3, 'daruma', 'dadd.png', 'category'),
(4, 'bell', 'gadd.png', 'category'),
(5, 'ความสำเร็จ', 'cadd1.png', 'category'),
(6, 'ความสุข โชคดี', 'cadd2.png', 'meaning'),
(7, 'ความร่ำรวย', 'cadd3.png', 'meaning'),
(8, 'สุขภาพ', 'cadd4.png', 'category'),
(9, 'ความรัก', 'cadd5.png', 'meaning'),
(10, 'การเรียน', '6.png', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `delivery_option` varchar(50) NOT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `payment_slip_image` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `total_amount`, `delivery_option`, `address`, `status`, `payment_slip_image`, `tracking_number`) VALUES
(1, 1, '2025-11-02 10:45:53', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102104529_slipy.jpg', NULL),
(2, 1, '2025-11-02 10:46:51', 199.00, 'จัดส่ง', 'ผู้รับ: สิริ วง\nโทร: 099123456\nที่อยู่: มหาวิทยาลัยขอนแก่น', 'Completed', 'slip_20251102104617_slipy.jpg', NULL),
(3, 1, '2025-11-02 12:56:12', 299.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102125609_slipy.jpg', NULL),
(4, 1, '2025-11-02 21:52:59', 199.00, 'จัดส่ง', 'ผู้รับ: สิริ วง\nโทร: 0912312312\nที่อยู่: มหาวิทยาลัยขอนแก่น 40000', 'Completed', 'slip_20251102215217_slipy.jpg', NULL),
(5, 1, '2025-11-02 21:58:40', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102215836_slipy.jpg', NULL),
(6, 1, '2025-11-02 21:58:40', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102215836_slipy.jpg', NULL),
(7, 1, '2025-11-02 22:09:17', 1096.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102220912_slipy.jpg', NULL),
(8, 1, '2025-11-02 22:09:17', 1096.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102220912_slipy.jpg', NULL),
(9, 1, '2025-11-02 22:27:32', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102222728_slipy.jpg', NULL),
(10, 1, '2025-11-02 22:27:32', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102222728_slipy.jpg', NULL),
(11, 1, '2025-11-02 22:33:30', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102223324_slipy.jpg', NULL),
(12, 1, '2025-11-02 22:33:30', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102223324_slipy.jpg', NULL),
(13, 1, '2025-11-02 22:46:51', 458.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102224649_slipy.jpg', NULL),
(14, 1, '2025-11-02 22:46:51', 458.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102224649_slipy.jpg', NULL),
(15, 1, '2025-11-02 22:58:13', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102225801_slipy.jpg', NULL),
(16, 1, '2025-11-02 23:52:09', 199.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251102235203_slipy.jpg', NULL),
(17, 1, '2025-11-03 17:48:59', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251103174856_slipy.jpg', NULL),
(18, 0, '2025-11-04 00:19:45', 318.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251104001921_slipy.jpg', NULL),
(19, 1, '2025-11-05 11:22:08', 348.00, 'จัดส่ง', 'ผู้รับ: luffy\nโทร: 0991231231\nที่อยู่: มหาวิทยาลัยขอนแก่น คณะศึกษาศาสตร์ 40000', 'Completed', 'slip_20251105112038_slipy.jpg', NULL),
(20, 1, '2025-11-05 12:15:03', 636.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105121458_slipy.jpg', NULL),
(21, 1, '2025-11-05 12:17:36', 477.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105121733_addres.png', NULL),
(22, 1, '2025-11-05 12:23:01', 318.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105122258_6.png', NULL),
(23, 1, '2025-11-05 12:26:16', 398.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105122611_addres.png', NULL),
(24, 1, '2025-11-05 12:30:00', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105122957_addres.png', NULL),
(25, 1, '2025-11-05 12:49:56', 159.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105124953_addres.png', NULL),
(26, 1, '2025-11-05 12:51:57', 398.00, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105125155_addres.png', NULL),
(27, 3, '2025-11-05 23:00:08', 425.86, 'จัดส่ง', 'ผู้รับ: Luffy\nโทร: 0999999999\nที่อยู่: มหาวิทยาลัยขอนแก่น 40000', 'Completed', 'slip_20251105225913_slipy.jpg', NULL),
(28, 3, '2025-11-05 23:05:07', 212.93, 'จัดส่ง', 'ผู้รับ: 1\nโทร: 1\nที่อยู่: 1', 'Completed', 'slip_20251105230455_slipy.jpg', NULL),
(29, 3, '2025-11-05 23:06:57', 170.13, 'จัดส่ง', 'ผู้รับ: c\nโทร: c\nที่อยู่: c', 'Completed', 'slip_20251105230651_6.png', NULL),
(30, 3, '2025-11-05 23:09:10', 212.93, 'จัดส่ง', 'ผู้รับ: n\nโทร: n\nที่อยู่: n', 'Completed', 'slip_20251105230904_addres.png', NULL),
(31, 3, '2025-11-05 23:10:03', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105230959_dddd4152.png', NULL),
(32, 3, '2025-11-05 23:12:46', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105231243_addres.png', NULL),
(33, 3, '2025-11-05 23:30:46', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251105233043_addres.png', NULL),
(34, 4, '2025-11-05 23:44:45', 2087.57, 'จัดส่ง', 'ผู้รับ: สิริพร วงคำศักดิ์\nโทร: 0962315685\nที่อยู่: มหาวิทยาลัยขอนแก่น 40000 อ.เหมืองขอนแก่น จ.ขอนแก่น', 'Completed', 'slip_20251105234350_slipy.jpg', NULL),
(35, 3, '2025-11-18 08:52:33', 1065.72, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251118085227_slipy.jpg', NULL),
(36, 3, '2025-11-18 10:05:49', 170.13, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251118100546_slipy.jpg', NULL),
(37, 3, '2025-11-18 10:40:20', 170.13, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251118104017_slipy.jpg', NULL),
(38, 3, '2025-11-18 21:12:17', 851.72, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251118211205_slipy.jpg', NULL),
(39, 3, '2025-11-19 10:33:36', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119103332_slipy.jpg', NULL),
(40, 3, '2025-11-19 16:30:20', 383.06, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119163016_slipy.jpg', NULL),
(41, 3, '2025-11-19 16:31:07', 212.93, 'รับที่ร้าน', NULL, 'Shipped', 'slip_20251119163104_slipy.jpg', '1232'),
(42, 3, '2025-11-19 20:49:47', 425.86, 'จัดส่ง', 'ผู้รับ: มังกี้\nโทร: 0991231234\nที่อยู่: คณะศึกษาศาสตร์', 'Shipped', 'slip_20251119204913_slipy.jpg', '123123456'),
(43, 3, '2025-11-19 21:46:24', 425.86, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119214619_slipy.jpg', NULL),
(44, 3, '2025-11-19 22:11:27', 425.86, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119221124_slipy.jpg', NULL),
(45, 3, '2025-11-19 22:13:36', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119221334_slipy.jpg', NULL),
(46, 3, '2025-11-19 23:05:47', 212.93, 'รับที่ร้าน', NULL, 'Completed', 'slip_20251119230543_slipy.jpg', NULL),
(47, 5, '2025-11-19 23:17:17', 936.25, 'จัดส่ง', 'ผู้รับ: สิริพร วงคำศักดิ์\nโทร: 0962315685\nที่อยู่: 15 หมู่7 ต.นาแสง อ.ศรีวิไล จ.บึงกฬ', 'Pending', 'slip_20251119231634_slipy.jpg', NULL),
(48, 1, '2026-01-11 19:33:32', 1341.78, 'จัดส่ง', 'ผู้รับ: สิริพร\nโทร: วงคำศักดิื\nที่อยู่: หอพักนักศึกษามข มหาวิทยาลัยขอนแก่น ตำบลในเมือง อ.เมืองงอขนแก่น จ.ขอนแก่น', 'Pending', 'slip_20260111193214_slipy.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_unit` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `quantity`, `price_per_unit`) VALUES
(1, 1, 28, 'ดารุมะ สีทอง', 1, 199.00),
(2, 2, 29, 'ดารุมะ สีฟ้า', 1, 199.00),
(3, 3, 21, 'มาเนกิเนะโกะ สีขาว', 1, 299.00),
(4, 4, 35, 'กระพรวน สีขาว', 1, 199.00),
(5, 5, 34, 'กระพรวน สีขาว', 1, 199.00),
(6, 6, 34, 'กระพรวน สีขาว', 1, 199.00),
(7, 7, 21, 'มาเนกิเนะโกะ สีขาว', 1, 299.00),
(8, 7, 20, 'มาเนกิเนะโกะ สีดำ', 1, 299.00),
(9, 7, 22, 'มาเนกิเนะโกะ สีเหลือง', 1, 299.00),
(10, 7, 35, 'กระพรวน สีขาว', 1, 199.00),
(11, 8, 21, 'มาเนกิเนะโกะ สีขาว', 1, 299.00),
(12, 8, 20, 'มาเนกิเนะโกะ สีดำ', 1, 299.00),
(13, 8, 22, 'มาเนกิเนะโกะ สีเหลือง', 1, 299.00),
(14, 8, 35, 'กระพรวน สีขาว', 1, 199.00),
(15, 9, 28, 'ดารุมะ สีทอง', 1, 199.00),
(16, 10, 28, 'ดารุมะ สีทอง', 1, 199.00),
(17, 11, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(18, 12, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(19, 13, 23, 'มาเนกิเนะโกะ สีเขียว', 1, 299.00),
(20, 13, 12, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(21, 14, 23, 'มาเนกิเนะโกะ สีเขียว', 1, 299.00),
(22, 14, 12, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(23, 15, 12, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(24, 16, 28, 'ดารุมะ สีทอง', 1, 199.00),
(25, 17, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(26, 18, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(27, 18, 4, 'โอมาโมริ สีฟ้า', 1, 159.00),
(28, 19, 35, 'กระพรวน สีขาว', 1, 199.00),
(29, 19, 46, 'กระดิ่งแมว สีขาว', 1, 149.00),
(30, 20, 12, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(31, 20, 13, 'โอมาโมริ สีชมพู', 1, 159.00),
(32, 20, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(33, 20, 2, 'โอมาโมริ สีแดง', 1, 159.00),
(34, 21, 3, 'โอมาโมริ สีแดง', 1, 159.00),
(35, 21, 2, 'โอมาโมริ สีแดง', 1, 159.00),
(36, 21, 1, 'โอมาโมริ สีแดง', 1, 159.00),
(37, 22, 14, 'โอมาโมริ สีชมพู', 1, 159.00),
(38, 22, 15, 'โอมาโมริ สีชมพู', 1, 159.00),
(39, 23, 41, 'กระพรวน สีชมพู', 1, 199.00),
(40, 23, 30, 'ดารุมะ สีชมพู', 1, 199.00),
(41, 24, 14, 'โอมาโมริ สีชมพู', 1, 159.00),
(42, 25, 12, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(43, 26, 28, 'ดารุมะ สีทอง', 1, 199.00),
(44, 26, 29, 'ดารุมะ สีฟ้า', 1, 199.00),
(45, 36, 11, 'โอมาโมริ น้ำเงิน', 1, 159.00),
(46, 37, 13, 'โอมาโมริ สีชมพู', 1, 159.00),
(47, 38, 41, 'กระพรวน สีชมพู', 1, 199.00),
(48, 38, 38, 'กระพรวน สีม่วง', 2, 199.00),
(49, 38, 40, 'กระพรวน สีชมพู', 1, 199.00),
(50, 39, 28, 'ดารุมะ สีทอง', 1, 199.00),
(51, 40, 31, 'ดารุมะ สีเขียว', 1, 199.00),
(52, 40, 16, 'โอมาโมริ สีเขียว', 1, 159.00),
(53, 41, 35, 'กระพรวน สีขาว', 1, 199.00),
(54, 42, 31, 'ดารุมะ สีเขียว', 1, 199.00),
(55, 42, 28, 'ดารุมะ สีทอง', 1, 199.00),
(56, 43, 28, 'ดารุมะ สีทอง', 1, 199.00),
(57, 43, 30, 'ดารุมะ สีชมพู', 1, 199.00),
(58, 44, 28, 'ดารุมะ สีทอง', 1, 199.00),
(59, 44, 29, 'ดารุมะ สีฟ้า', 1, 199.00),
(60, 45, 28, 'ดารุมะ สีทอง', 1, 199.00),
(61, 46, 37, 'กระพรวน สีเหลือง', 1, 199.00),
(62, 47, 30, 'ดารุมะ สีชมพู', 1, 199.00),
(63, 47, 28, 'ดารุมะ สีทอง', 1, 199.00),
(64, 47, 8, 'โอมาโมริ สีทอง', 1, 159.00),
(65, 47, 9, 'โอมาโมริ สีทอง', 1, 159.00),
(66, 47, 7, 'โอมาโมริ สีทอง', 1, 159.00),
(67, 48, 35, 'กระพรวน สีขาว', 2, 199.00),
(68, 48, 40, 'กระพรวน สีชมพู', 1, 199.00),
(69, 48, 30, 'ดารุมะ สีชมพู', 1, 199.00),
(70, 48, 24, 'มาเนกิเนะโกะ สีชมพู', 1, 299.00),
(71, 48, 13, 'โอมาโมริ สีชมพู', 1, 159.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `meaning` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `NAME`, `category`, `meaning`, `image`, `price`, `stock`) VALUES
(1, 'โอมาโมริ สีแดง', 'omamori', 'ความสำเร็จ', 'r1.png', 159.00, 9),
(2, 'โอมาโมริ สีแดง', 'omamori', 'ความสำเร็จ', 'r2.png', 159.00, 10),
(3, 'โอมาโมริ สีแดง', 'omamori', 'ความสำเร็จ', 'r3.png', 159.00, 10),
(4, 'โอมาโมริ สีฟ้า', 'omamori', 'ความสุข โชคดี', 'b1.png', 159.00, 10),
(5, 'โอมาโมริ สีฟ้า', 'omamori', 'ความสุข โชคดี', 'b2.png', 159.00, 10),
(6, 'โอมาโมริ สีฟ้า', 'omamori', 'ความสุข โชคดี', 'b3.png', 159.00, 10),
(7, 'โอมาโมริ สีทอง', 'omamori', 'ความร่ำรวย', 'y1.png', 159.00, 9),
(8, 'โอมาโมริ สีทอง', 'omamori', 'ความร่ำรวย', 'y2.png', 159.00, 9),
(9, 'โอมาโมริ สีทอง', 'omamori', 'ความร่ำรวย', 'y3.png', 159.00, 9),
(10, 'โอมาโมริ น้ำเงิน', 'omamori', 'สุขภาพ', 'n1.png', 159.00, 10),
(11, 'โอมาโมริ น้ำเงิน', 'omamori', 'สุขภาพ', 'n2.png', 159.00, 9),
(12, 'โอมาโมริ น้ำเงิน', 'omamori', 'สุขภาพ', 'n3.png', 159.00, 9),
(13, 'โอมาโมริ สีชมพู', 'omamori', 'ความรัก', 'p1.png', 159.00, 8),
(14, 'โอมาโมริ สีชมพู', 'omamori', 'ความรัก', 'p2.png', 159.00, 10),
(15, 'โอมาโมริ สีชมพู', 'omamori', 'ความรัก', 'p3.png', 159.00, 10),
(16, 'โอมาโมริ สีเขียว', 'omamori', 'การเรียน', 'g1.png', 159.00, 9),
(17, 'โอมาโมริ สีเขียว', 'omamori', 'การเรียน', 'g2.png', 159.00, 10),
(18, 'โอมาโมริ สีเขียว', 'omamori', 'การเรียน', 'g3.png', 159.00, 10),
(19, 'มาเนกิเนะโกะ สีขาว', 'maneki', 'ความสำเร็จ', 'nk6.png', 299.00, 3),
(20, 'มาเนกิเนะโกะ สีดำ', 'maneki', 'ความสุข โชคดี', 'nk1.png', 299.00, 16),
(21, 'มาเนกิเนะโกะ สีขาว', 'maneki', 'ความสุข โชคดี', 'nk6.png', 299.00, 15),
(22, 'มาเนกิเนะโกะ สีเหลือง', 'maneki', 'ความร่ำรวย', 'nk7.png', 299.00, 15),
(23, 'มาเนกิเนะโกะ สีเขียว', 'maneki', 'สุขภาพ', 'nk2.png', 299.00, 14),
(24, 'มาเนกิเนะโกะ สีชมพู', 'maneki', 'ความรัก', 'nk3.png', 299.00, 14),
(25, 'มาเนกิเนะโกะ สีม่วง', 'maneki', 'การเรียน', 'nk5.png', 299.00, 14),
(26, 'ดารุมะ สีแดง', 'daruma', 'ความสำเร็จ', 'dr1.png', 199.00, 15),
(27, 'ดารุมะ สีขาว', 'daruma', 'ความสุข โชคดี', 'dd1.png', 199.00, 16),
(28, 'ดารุมะ สีทอง', 'daruma', 'ความร่ำรวย', 'dg1.png', 199.00, 8),
(29, 'ดารุมะ สีฟ้า', 'daruma', 'สุขภาพ', 'bd1.png', 199.00, 6),
(30, 'ดารุมะ สีชมพู', 'daruma', 'ความรัก', 'dp1.png', 199.00, 4),
(31, 'ดารุมะ สีเขียว', 'daruma', 'การเรียน', 'dg2.png', 199.00, 15),
(32, 'กระพรวน สีแดง', 'bell', 'ความสำเร็จ', 'gr1.png', 129.00, 20),
(33, 'กระพรวน สีแดง', 'bell', 'ความสำเร็จ', 'gr2.png', 199.00, 13),
(34, 'กระพรวน สีขาว', 'bell', 'ความสุข โชคดี', 'gw1.png', 199.00, 15),
(35, 'กระพรวน สีขาว', 'bell', 'ความสุข โชคดี', 'gw2.png', 199.00, 11),
(36, 'กระพรวน สีเหลือง', 'bell', 'ความร่ำรวย', 'gy1.png', 199.00, 12),
(37, 'กระพรวน สีเหลือง', 'bell', 'ความร่ำรวย', 'gy2.png', 199.00, 14),
(38, 'กระพรวน สีม่วง', 'bell', 'สุขภาพ', 'gv1.png', 199.00, 15),
(39, 'กระพรวน สีม่วง', 'bell', 'สุขภาพ', 'gv2.png', 199.00, 17),
(40, 'กระพรวน สีชมพู', 'bell', 'ความรัก', 'gp1.png', 199.00, 5),
(41, 'กระพรวน สีชมพู', 'bell', 'ความรัก', 'gp2.png', 199.00, 3),
(42, 'กระพรวน สีเขียว', 'bell', 'การเรียน', 'gg1.png', 199.00, 7),
(43, 'กระพรวน สีเขียว', 'bell', 'การเรียน', 'gg2.png', 199.00, 15);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Firstname` varchar(50) DEFAULT NULL,
  `Lastname` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `IsAdmin` tinyint(1) DEFAULT 0,
  `ProfileImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `Username`, `Password`, `Firstname`, `Lastname`, `Gender`, `Birthday`, `Email`, `LastLogin`, `IsAdmin`, `ProfileImage`) VALUES
(1, 'siri', '123456789', 'siri', 'Wong', 'Female', '2004-04-03', 'siri@gmail.com', '2026-01-11 19:31:04', 0, 'profile_1.png'),
(2, 'admin', 'admin123', 'Admin', 'Root', 'Male', '1990-01-01', 'admin@omamori.com', '2026-01-11 20:48:08', 1, NULL),
(4, 'Siriporn', '1212312123', 'siriporn', 'Wongkhamsak', 'Female', '2004-04-03', 'Siriporn@gmail.com', '2025-11-05 23:41:29', 0, NULL),
(5, 'Siriporn1', '1212312125', 'siripornw', 'Wongkhamsak', 'Female', '2004-04-03', 'Siriporn.wong@gmail.com', '2025-11-19 23:15:11', 0, 'profile_5.png'),
(7, 'ff', '159753', 'f', 'f', 'Male', '2026-01-11', 'ff@gmail.com', '2026-01-11 19:10:47', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`),
  ADD UNIQUE KEY `filter_value` (`filter_value`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
