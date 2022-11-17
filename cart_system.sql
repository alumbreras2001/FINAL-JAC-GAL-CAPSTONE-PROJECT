-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 02:44 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(80) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(80) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_image`, `product_code`) VALUES
(1, 'Large Brown Jacket', '50', 'image/men jacket 1.jpeg', 'p1000'),
(2, 'Medium Shirt', '26', 'image/card7.png', 'p1001'),
(3, 'Large Classic pants', '55', 'image/men sweatpants 1.jpeg', 'p1002'),
(4, 'Medium Jeans', '65', 'image/men jeans 1.jpeg', 'p1003'),
(5, 'Large Sweater', '25', 'image/mcashmere.jpg', 'p1004'),
(6, 'Medium Jeans', '65', 'image/f38986a63b7c323e7b648506ab5e0fe0.jpg', 'p1005'),
(7, 'Medium Shirt', '25', 'image/571d42ff-52eb-4e09-a972-50f54ff7eb4c.f81d92203df6fcf2342784184003956a.jpeg', 'p1006'),
(8, 'Winter Coat', '58', 'image/wcoat.jpg', 'p1007'),
(9, 'Adidas Sweatpants', '45', 'image/adidas.jpg', 'p1008'),
(10, 'Small Summer Set', '40', 'image/wkid 1.jpg', 'p1009'),
(11, 'Small Sweater', '25', 'image/ksweater.jpg', 'p1010'),
(12, 'Medium Shirt', '15', 'image/boys shirt.jpg', 'p1011'),
(13, 'Small Blue Shirt', '10', 'image/Dark Blue Shirt.jpg', 'p1012'),
(14, 'Large Jean Jacket', '35', 'image/men jacket (1).jpeg', 'p1013'),
(15, 'Medium Brown Shirt', '18', 'image/men longsleeve.jpg', 'p1014'),
(16, 'Medium T-Shirt', '22', 'image/men shirt.jpg', 'p1015'),
(17, 'Medium Black Pants', '35', 'image/men pants 3.jpg', 'p1016'),
(18, 'Large Black Jogger', '30', 'image/men pants 1.jpg', 'p1017'),
(19, 'Medium Nike Pants', '40', 'image/OIP (2).jfif', 'p1018'),
(20, 'One Size Cap', '10', 'image/men hat.jpg', 'p1019'),
(21, 'Three Medium Socks', '15', 'image/men socks.jpeg', 'p1020'),
(22, 'Classic Watch', '30', 'image/men watch.jpg', 'p1021'),
(23, 'Medium Adidas Polo', '25', 'image//women shirt 1.jpg', 'p1022'),
(24, 'Medium T-Shirt', '23', 'image/women short sleeve.jpg', 'p1023'),
(25, 'Large Jacket', '25', 'image/women jacket.jfif', 'p1024'),
(26, 'Large Cargo Pants', '35', 'image/Women cargo pants.jpg', 'p1025'),
(27, 'Medium Dress', '28', 'image/women-02.jpg', 'p1026'),
(28, 'Medium Jeans', '45', 'image/women jeans.jpg', 'p1027'),
(29, 'Three Medium Socks', '18', 'image/women socks.jpg', 'p1028'),
(30, 'Medium Skirt', '27', 'image/women skirt.jpeg', 'p1029'),
(31, 'Medium Blue Skirt', '15', 'image/women shirt 2.jpg', 'p1030'),
(32, 'Small Summer Set', '40', 'image/wkid 2.jpg', 'p1031'),
(33, 'Medium Jacket', '20', 'image/kids jacket.jfif', 'p1032'),
(34, 'Small Red Shirt', '20', 'image/girls shirt.jpg', 'p1033'),
(35, 'Medium White Shirt', '15', 'image/boy shirt.jpg', 'p1034'),
(36, 'Medium jeans', '28', 'image/boy jeans.jpg', 'p1035'),
(37, 'Beige Sweater', '26', 'image/boy sweater.jpg', 'p1036'),
(38, 'School Collection', '80', 'image/kid-01.jpg', 'p1037'),
(39, 'Summer set', '50', 'image/kid-02.jpg', 'p1038'),
(40, 'Classic Kid', '30', 'image/kid-03.jpg', 'p1039'),
(41, 'Nike Cap', '25', 'image/women cap.jfif', 'p1040'),
(42, 'Purse & Wallet Set', '60', 'image/women purse.jpeg', 'p1041'),
(43, 'Necklace', '30', 'image/women necklace.jpg', 'p1042'),
(44, 'Wallet', '35', 'image/men wallet.jfif', 'p1043'),
(45, 'Men Size 8/9 Ring', '45', 'image/men ring.jpg', 'p1044'),
(46, 'Lucky Bracelet', '35', 'image/men bracelet.jpg', 'p1045'),
(47, 'Beanie', '20', 'image/girl hat.jpg', 'p1046'),
(48, 'Medium Socks', '25', 'image/boys socks.jpg', 'p1047'),
(49, 'Monkey Plush', '10', 'image/toy.jpg', 'p1048');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
