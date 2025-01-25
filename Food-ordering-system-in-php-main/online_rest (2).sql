-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 08:41 PM
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
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 07:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 18:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 56, 'Masala Dosa', 'Masala dosa served with samba and coconut chutney.', 50.00, '6606bafc6518a.png'),
(20, 55, 'Fried Rice', 'Rice fried along with the schezwan sauce makes unique blend of flavours.', 80.00, '660d9246b3675.jpg'),
(21, 55, 'Dahi papdi chat', 'Crunchy papdi served shev and creamy yoghurt on the top.', 55.00, '660d91ec978d4.png'),
(22, 55, 'Franky', 'thin wheat roti filled with crisp aloo tikki, veggies.', 45.00, '660d95d0157a1.png'),
(23, 55, 'Samosa', '2pcs of samosa served along with green chutney and ketchup.', 35.00, '660d96b9b551a.jpg'),
(24, 55, 'FULL LUNCH', '3 pcs rotis, 2 types of sabji , rice along with dal , crunchy papad , aachar.', 80.00, '660d97c0b662f.jpg'),
(25, 55, 'Coke', '200ml', 15.00, '660da29cd0ff9.jpg'),
(26, 55, 'sprite', '200ml', 15.00, '660da2b83052a.jpg'),
(27, 55, 'soya chilly', '.', 55.00, '660e51a394a0b.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 17:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 17:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 18:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 18:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 18:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 18:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 19:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 19:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 19:51:50'),
(71, 0, 'closed', 'done', '2024-04-26 09:08:40'),
(72, 44, 'closed', 'done', '2024-04-27 04:08:25'),
(73, 104, 'rejected', 'not available\r\n', '2024-04-27 04:16:45'),
(74, 84, 'in process', '1', '2024-04-27 15:41:37'),
(75, 84, 'in process', '5 mins', '2024-04-27 15:42:23'),
(76, 84, 'closed', 'deliverd.\r\n', '2024-04-28 16:58:26'),
(77, 83, 'rejected', 'done', '2024-04-28 16:58:53'),
(78, 120, 'closed', '1', '2024-04-29 06:27:55'),
(79, 123, 'in process', '', '2024-04-29 08:10:07'),
(80, 123, 'rejected', '', '2024-04-29 08:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(55, 0, 'VLOUNGE', 'vlounge@vit.edu.it', '7722003772', 'vlounge.com', '9am', '5pm', 'mon-sat', 'c-block', '66069ea64b071.png', '2024-03-29 10:57:42'),
(56, 5, 'M-BLOCK Canteen', 'canteen@vit.edu.in', '024012345', 'canteen.com', '9am', '6pm', 'mon-fri', '  m-block  ', '662f362b80c8e.png', '2024-04-29 05:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'Lunch', '2024-03-29 10:53:02'),
(6, 'Sandwiches', '2024-03-29 10:51:49'),
(7, 'Chinese', '2024-03-29 10:51:17'),
(8, 'South Indian', '2024-03-29 10:50:45'),
(9, 'Chaat', '2024-03-29 10:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'atharv', 'Atharv', 'Patil', 'patilav1610@gmail.com', '7722003772', 'bbae3f2480997dce29c7db73a9af58c3', 'garkheda aurangabad', 1, '2024-03-29 09:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(118, 33, 'Fried Rice', 1, 80.00, NULL, '2024-04-29 05:57:54'),
(119, 33, 'Franky', 1, 45.00, NULL, '2024-04-29 05:57:54'),
(120, 33, 'Fried Rice', 1, 80.00, 'closed', '2024-04-29 06:27:55'),
(123, 33, 'Franky', 1, 45.00, 'rejected', '2024-04-29 08:18:04'),
(145, 33, 'Fried Rice', 1, 80.00, NULL, '2024-04-29 08:48:10'),
(147, 33, 'Dahi papdi chat', 1, 55.00, NULL, '2024-04-29 11:00:34'),
(148, 33, 'Franky', 1, 45.00, NULL, '2024-04-29 11:00:34'),
(149, 33, 'FULL LUNCH', 1, 80.00, NULL, '2024-04-29 11:00:34'),
(150, 33, 'Dahi papdi chat', 1, 55.00, NULL, '2024-04-29 11:14:49'),
(151, 33, 'Franky', 1, 45.00, NULL, '2024-04-29 11:14:49'),
(152, 33, 'FULL LUNCH', 1, 80.00, NULL, '2024-04-29 11:14:49'),
(153, 33, 'Dahi papdi chat', 1, 55.00, NULL, '2024-04-29 11:32:15'),
(154, 33, 'Franky', 1, 45.00, NULL, '2024-04-29 11:32:15'),
(155, 33, 'FULL LUNCH', 1, 80.00, NULL, '2024-04-29 11:32:15'),
(156, 33, 'Franky', 1, 45.00, NULL, '2024-04-29 17:24:30'),
(157, 33, 'Dahi papdi chat', 1, 55.00, NULL, '2024-04-29 17:24:30'),
(158, 33, 'Coke', 1, 15.00, NULL, '2024-04-29 17:24:30'),
(159, 33, 'Masala Dosa', 1, 50.00, NULL, '2024-04-29 18:16:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
