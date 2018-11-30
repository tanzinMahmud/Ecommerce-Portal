-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 02:25 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_address` varchar(300) NOT NULL,
  `order_date` date NOT NULL,
  `shipping_date` date NOT NULL,
  `order_amount` int(11) NOT NULL,
  `delivery_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_address`, `order_date`, `shipping_date`, `order_amount`, `delivery_status`) VALUES
(34, 22, 'nikunjo', '2018-07-07', '2018-07-09', 220000, 'delivered'),
(35, 22, 'nikunjo', '2018-07-07', '2018-07-10', 202000, 'pending'),
(36, 18, 'badda', '2018-07-08', '2018-07-08', 90000, 'delivered'),
(37, 18, 'uttara', '2018-07-08', '2018-07-09', 30000, 'pending'),
(38, 15, 'mirpur', '2018-07-08', '2018-07-09', 200000, 'pending'),
(39, 22, 'mirpur', '2018-07-08', '2018-02-20', 120000, 'pending'),
(40, 22, 'mirpur', '2018-07-08', '2018-02-20', 120000, 'pending'),
(41, 22, 'mirpur 2', '2018-07-08', '0000-00-00', 280000, 'pending'),
(42, 22, 'mirpur 2', '2018-07-08', '0000-00-00', 82000, 'pending'),
(43, 22, 'mirpur 2', '2018-07-08', '0000-00-00', 120000, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(26, 34, 79, 80000, 1),
(27, 34, 85, 30000, 1),
(28, 34, 86, 110000, 1),
(29, 35, 81, 120000, 1),
(30, 35, 82, 82000, 1),
(31, 36, 83, 10000, 1),
(32, 36, 79, 80000, 1),
(33, 37, 85, 30000, 1),
(34, 38, 79, 80000, 1),
(35, 38, 81, 120000, 1),
(36, 40, 81, 120000, 1),
(37, 40, 81, 120000, 1),
(38, 41, 81, 120000, 1),
(39, 41, 79, 80000, 1),
(40, 41, 79, 80000, 1),
(41, 41, 81, 120000, 1),
(42, 42, 82, 82000, 1),
(43, 43, 81, 120000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `short_desc` varchar(300) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `short_desc`, `img_path`, `price`, `stock`) VALUES
(79, 1, 'iphone 7', '									 specification goes here..\r\n								', '187816989181222812201711151953171502977767apple-iphone-7-gallery-img-3.jpg', 80000, 130),
(81, 5, 'Macbook pro', 'short description goes here..', '18122225220171115234808MACBOOKPRO.jpg', 120000, 20),
(82, 5, 'Asus gaming laptop', 'specification goes here..', '18122282600.png', 82000, 50),
(83, 6, 'Asus gaming desktop cpu', 'specification goes here...', '181222832desktop 2.png', 10000, 20),
(84, 15, 'winter clothe', 'short description', '181222494cool.png', 400, 100),
(85, 14, 'Apple watch ', 'short description', '181222952017111601001038-alu-silver-sport-white-s1-1up.jpg', 30000, 20),
(86, 1, 'Iphone x', 'specification goes here..', '181222382iphone-x-silver-select-2017.png', 110000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(70) NOT NULL,
  `short_desc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `short_desc`) VALUES
(1, 'Smart Phones ', '														Smart phones are here													\r\n						\r\n						\r\n						\r\n						'),
(5, 'Laptop', 'All laptop are here'),
(6, 'desktop', 'All new Desktop is here'),
(14, 'Smart watch', 'all smart watch are here...'),
(15, 'Clothes', 'all clothes are '),
(17, 'Fashion', 'Fashion products is here...');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `user_type_id`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin123', 'male', 1),
(15, 'Rakib', 'rakib@gmail.com', 'rakib123', 'male', 2),
(16, 'raju', 'raju@gmail.com', '12345678', 'male', 2),
(17, 'jhon', 'jhon@gmail.com', '12345678', 'male', 2),
(18, 'Debid', 'debid@gmail.com', 'debid123', 'male', 2),
(19, 'Tangin ', 'tangin@gmail.com', '12345678', 'male', 2),
(22, 'shamim', 'shamim@gmail.com', 'shamim123', 'male', 2),
(25, 'mina', 'mina@gmail.com', 'mina12345', 'female', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type_name`) VALUES
(1, 'admin'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_fk` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id_fk` (`product_id`),
  ADD KEY `order_datils_fk` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_relation` (`category_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_unique` (`category_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `em_uniqe` (`email`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_fk` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_datils_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_cat_relation` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `usertypeFK` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
