-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 04:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `order_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `added_on`, `status`, `order_number`) VALUES
(1, '870018217_about-us.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic.', 'shop', 'Order Now', '2023-09-10 08:18:05', 1, 1),
(2, '705717275_banner-2.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic.', 'shop', 'Order Now', '2023-09-10 10:14:10', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `category` varchar(256) NOT NULL,
  `order_number` int(100) NOT NULL,
  `status` int(250) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(6, 'Chicken Dish', 0, 1, '2023-09-16 10:07:02'),
(7, 'Fast Food', 0, 1, '2023-09-17 10:58:19'),
(8, 'Mutton Dish', 0, 1, '2023-09-17 11:48:56'),
(9, 'Veg Dish', 0, 1, '2023-09-17 11:51:42'),
(10, 'Sweets', 8, 1, '2023-09-28 07:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subject` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(1, 'sarfraz', 'salman123@gmail.com', '8010551055', 'hello ', 'Hello How Are YOu', '2023-09-10 11:38:58'),
(3, 'sarfraz', 'sarfrazahmad0732@gmail.com', '8010551055', 'hello ', 'How Ara you', '2023-09-21 07:52:49'),
(4, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '8010551055', 'hello ', 'rduguh', '2023-10-30 05:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(256) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(50) NOT NULL,
  `cart_min_value` int(50) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(2, '20ff', 'F', 100, 500, '2023-10-23', 1, '2023-09-03 12:15:05'),
(3, 'Welcom', 'F', 1000, 50000, '2023-09-10', 1, '2023-09-03 03:32:50'),
(4, 'First50', 'F', 50, 50, '2023-10-10', 1, '2023-10-08 06:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` int(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'Rahul', '6306703660', '123456789', 1, '2023-09-02 21:02:52'),
(2, 'Monu', '9690193918', '123456', 1, '2023-09-02 09:31:52'),
(3, 'salman', '123456789', '123456789', 1, '2023-09-02 09:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(256) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(12, 7, 'Bugger', 'A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty', '872567837_veg-bugger.jpg', 'veg', 1, '2023-09-17 11:00:22'),
(13, 7, 'Veg Noodle', 'Super quick to make delicious Vegetable noodles made with just a handful of ingredients', '554460393_veg-chowmin.jpg', 'veg', 1, '2023-09-17 11:04:49'),
(14, 7, 'Paneer Tikka', 'Testy paneer tikka ', '122068947_panir teekka1.jpg', 'veg', 1, '2023-09-17 11:09:57'),
(15, 6, 'Chicken Tikka', 'Very Testy Chicken Tikka ', '913994971_chiken-tikka.jpg', 'non-veg', 1, '2023-09-17 11:37:51'),
(16, 6, 'Chicken Fried ', 'Very Testy', '968995660_chiken-fry.jpg', 'non-veg', 1, '2023-09-17 11:40:54'),
(17, 6, 'Butter chicken', 'Very Testy Butter chicken\r\n', '831511146_Buttor-Chiken.jpg', 'non-veg', 1, '2023-09-17 11:42:15'),
(18, 8, 'Mutton curry', 'Mutton curry is a dish that is prepared from goat meat and vegetables', '917119268_matton.jpg', 'non-veg', 1, '2023-09-17 11:50:37'),
(19, 9, 'Mixed Vgeg', 'Very Testy Mixed Veg', '569091180_mix-veg.jpg', 'veg', 1, '2023-09-17 11:54:54'),
(20, 9, 'Shahi Paneer', 'Very Testy', '460200338_Untitled-1.jpg', 'veg', 1, '2023-09-17 12:03:29'),
(21, 7, 'Bugger and French Fry', 'Good ', '515958621_bugger-french-fry.jpg', 'veg', 1, '2023-09-19 06:23:40'),
(22, 10, 'Emert', 'Very Sweet', '944523103_emarty.jpg', 'veg', 1, '2023-09-28 08:17:45'),
(23, 10, 'Paida', 'Good Quelty', '201152028_paida.jpg', 'veg', 1, '2023-09-28 08:21:36'),
(24, 10, 'KalaKand', 'Good Quelty', '509250712_Sweet.jpg', 'veg', 1, '2023-09-28 08:23:11'),
(25, 10, 'Gudh', 'Very Sweet', '492859332_gudh.jpg', 'veg', 1, '2023-09-28 08:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(32, 8, 26, 1, '2023-10-09 07:43:44'),
(33, 8, 13, 1, '2023-10-12 07:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 6, 'Full', 500, 1, '2023-09-07 07:17:17'),
(2, 6, 'Half ', 290, 1, '2023-09-07 07:17:17'),
(3, 8, 'Full', 500, 1, '2023-09-07 08:19:48'),
(4, 8, 'Half ', 290, 1, '2023-09-07 08:19:48'),
(5, 9, 'Full', 500, 1, '2023-09-07 08:26:35'),
(6, 9, 'Half ', 290, 1, '2023-09-07 08:26:35'),
(7, 10, 'Half ', 30, 1, '2023-09-12 06:31:54'),
(8, 10, 'Full', 60, 1, '2023-09-12 06:31:54'),
(9, 11, 'Full', 500, 1, '2023-09-16 10:10:41'),
(10, 11, 'Half ', 200, 1, '2023-09-16 10:10:41'),
(11, 12, 'Price', 70, 1, '2023-09-17 11:00:22'),
(12, 13, 'Full', 130, 1, '2023-09-17 11:04:49'),
(13, 13, 'Half ', 70, 1, '2023-09-17 11:04:49'),
(14, 14, 'Full', 290, 1, '2023-09-17 11:09:57'),
(15, 14, 'Half ', 170, 1, '2023-09-17 11:09:57'),
(16, 15, 'Full', 300, 1, '2023-09-17 11:37:51'),
(17, 15, 'Half ', 180, 1, '2023-09-17 11:37:51'),
(18, 16, 'Full', 290, 1, '2023-09-17 11:40:54'),
(19, 16, 'Half ', 150, 1, '2023-09-17 11:40:54'),
(20, 17, 'Full', 500, 1, '2023-09-17 11:42:15'),
(21, 17, 'Half ', 300, 1, '2023-09-17 11:42:15'),
(22, 18, 'Full', 700, 1, '2023-09-17 11:50:37'),
(23, 18, 'Half ', 400, 1, '2023-09-17 11:50:37'),
(24, 19, 'Full', 150, 1, '2023-09-17 11:54:54'),
(25, 19, 'Half ', 80, 1, '2023-09-17 11:54:54'),
(26, 20, 'Full', 300, 1, '2023-09-17 12:03:29'),
(27, 20, 'Half ', 180, 1, '2023-09-17 12:03:29'),
(28, 21, 'Price', 100, 1, '2023-09-19 06:23:40'),
(29, 22, 'PerKg', 220, 1, '2023-09-28 08:17:45'),
(31, 23, 'PerKg', 500, 1, '2023-09-28 08:21:36'),
(32, 24, 'PerKg', 600, 1, '2023-09-28 08:23:11'),
(33, 25, 'PerKg', 50, 1, '2023-09-28 08:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 22, 700, 3),
(2, 1, 24, 150, 14),
(3, 1, 17, 180, 3),
(4, 2, 28, 100, 1),
(5, 3, 12, 130, 1),
(6, 4, 28, 100, 2),
(7, 4, 32, 600, 2),
(8, 5, 29, 220, 3),
(9, 5, 11, 70, 3),
(10, 6, 26, 300, 10),
(11, 7, 13, 70, 12),
(12, 7, 28, 100, 2),
(13, 7, 11, 70, 2),
(14, 8, 13, 70, 9),
(15, 9, 13, 70, 1),
(16, 10, 12, 130, 6),
(17, 11, 13, 70, 5),
(18, 11, 27, 180, 8),
(19, 12, 13, 70, 1),
(20, 13, 13, 70, 1),
(21, 14, 13, 70, 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(200) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `payment_id` varchar(250) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `added_on`) VALUES
(1, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 4740, '', 0, '201301', 1, 'success', '', '', 3, '2023-09-27 08:14:03'),
(2, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Noida', 100, '', 0, '110096', 1, 'pending', '', '', 1, '2023-09-27 08:28:41'),
(3, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'zvZVSDFs', 130, '', 0, '123456', 0, 'pending', '', '', 3, '2023-09-28 07:24:00'),
(4, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'New Ashok Nagar Delhi', 1400, '', 0, '224143', 0, 'pending', '', '', 1, '2023-10-01 10:15:07'),
(5, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 870, '', 0, '201301', 0, 'pending', '', '', 1, '2023-10-01 10:22:12'),
(6, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Noida Uttar Pradesh', 3000, '', 0, '20314', 0, 'pending', '', '', 1, '2023-10-02 09:09:27'),
(7, 8, 'sarfraz', 'sheakhsarfraz0304@gmail.com', '9690193918', 'New Ashok Nagar Delhi', 1180, '', 0, '201301', 0, 'pending', '', '', 1, '2023-10-06 07:53:35'),
(8, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Noida Uttar Pradesh', 630, '', 630, '110096', 0, 'pending', '', '', 1, '2023-10-13 07:06:37'),
(9, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 70, '', 70, '201301', 0, 'pending', '', '', 1, '2023-10-13 07:14:09'),
(10, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'New Ashok Nagar Delhi', 780, 'First50', 730, '224143', 3, 'pending', '', '', 3, '2023-10-13 07:54:24'),
(11, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'saDAfd', 1790, '20ff', 1690, '203141', 0, 'pending', '', '', 1, '2023-10-14 07:43:57'),
(12, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 70, '', 70, '110096', 0, 'pending', '', '', 1, '2023-10-23 08:26:14'),
(13, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 70, '', 70, '110096', 0, 'pending', 'cod', '', 1, '2023-12-16 07:20:25'),
(14, 9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', 'Delhi India', 560, '', 560, '110096', 0, 'pending', 'strip', '', 1, '2023-12-17 09:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'ontheway'),
(2, 'pending'),
(3, 'delever'),
(4, 'cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(6, 9, 1, 22, 4),
(7, 9, 1, 17, 3),
(8, 9, 1, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(256) NOT NULL,
  `website_close` int(11) NOT NULL,
  `website_close_msg` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `website_close_msg`) VALUES
(1, 70, 'minmum cart price 100', 0, 'Website closed for today at 08 am to 11 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `added_on`, `status`, `email_verify`, `rand_str`) VALUES
(7, 'sarfraz', 'sheakhsarfraz00304@gmail.com', '8010551055', '$2y$10$E5ZSEvz5AXfqsK.fAg6LS.ZGZRQIIgVj0FdSPU1cs9vxXHQGrpjzq', '2023-09-13 08:09:13', 0, 1, 'ygnmiplwyw'),
(8, 'sarfraz', 'sheakhsarfraz0304@gmail.com', '9690193918', '$2y$10$ojVjW/6qb56HYA524b5EWO9MLznKwF9zg.SYPwyMu4XCqceUVRNBy', '2023-09-13 08:58:29', 1, 1, 'mfyctzzqts'),
(9, 'Sarfraz Ahmad', 'sarfrazahmad0732@gmail.com', '9690193918', '$2y$10$fToSl.STX1fGIJpfpJTQ0OUhCEtrKAuATTYdgarGADQ74LZMbT4v2', '2023-09-18 07:16:59', 1, 1, 'zxmlagisdg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
