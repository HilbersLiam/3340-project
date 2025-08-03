-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2025 at 11:54 PM
-- Server version: 10.4.34-MariaDB-log
-- PHP Version: 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hilbersw_3340project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `option` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ordertotal` int(11) NOT NULL,
  `orderdate` datetime NOT NULL DEFAULT current_timestamp(),
  `total_products` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `userid`, `ordertotal`, `orderdate`, `total_products`, `status`) VALUES
(21, 1011, 1196, '2025-07-29 12:05:29', 4, 'In progress'),
(22, 1011, 1495, '2025-07-29 12:07:37', 5, 'In progress'),
(23, 1011, 897, '2025-08-01 00:38:52', 3, 'In progress'),
(24, 1011, 1495, '2025-08-02 21:18:56', 5, 'In progress'),
(25, 1011, 2093, '2025-08-02 23:26:46', 5, 'In progress');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_itemid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_itemid`, `orderid`, `productid`, `quantity`, `option`) VALUES
(37, 21, 13, 1, 'blue'),
(38, 21, 12, 1, 'blue'),
(39, 21, 13, 1, 'blue'),
(40, 21, 12, 1, 'blue'),
(41, 22, 16, 1, 'Blue'),
(42, 22, 16, 1, 'Blue'),
(43, 22, 15, 1, 'Blue'),
(44, 22, 16, 1, 'Red'),
(45, 22, 15, 1, 'Blue'),
(46, 23, 15, 1, 'Blue'),
(47, 23, 16, 1, 'Blue'),
(48, 23, 15, 1, 'Blue'),
(49, 24, 27, 1, 'Blue'),
(50, 24, 27, 1, 'Blue'),
(51, 24, 27, 1, 'Blue'),
(52, 24, 28, 1, 'Blue'),
(53, 24, 28, 1, 'Blue'),
(54, 25, 27, 3, 'Blue'),
(55, 25, 27, 1, 'Blue'),
(56, 25, 27, 1, 'Blue'),
(57, 25, 28, 1, 'Blue'),
(58, 25, 29, 1, 'Blue');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `category` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `name`, `description`, `price`, `quantity`, `image_url`, `created_at`, `category`) VALUES
(2, 'Ferrari 250 GT California', 'Rev up the fun with this high-quality Ferrari toy car! Choose from two different colors.', 299, 2, 'Assets/Product-Images/Ferrari/Ferrari-GT.png', '2025-07-19', 'Ferrari'),
(7, 'Ferrari F40', 'A legendary classic from the 1980s, known for its raw power and iconic rear wing.', 299, 10, 'Assets/Product-Images/Ferrari/Ferrari-F40.png', '2025-07-20', 'Ferrari'),
(8, 'Ferrari 812', 'A front-engine V12 that\'s both luxurious and insanely fast.', 299, 10, 'Assets/Product-Images/Ferrari/Ferrari-812.png', '2025-07-20', 'Ferrari'),
(9, 'Lamborghini Aventador', 'A sharp edges, aggressive look, V12 engine', 299, 10, 'Assets/Product-Images/Lamborghini/Lamborghini-Aventador.png', '2025-07-20', 'Lamborghini'),
(10, 'Lamborghini Huracán', 'A sleek, modern supercar, great for vibrant colors', 299, 10, 'Assets/Product-Images/Lamborghini/Lamborghini-Huracan.png', '2025-07-20', 'Lamborghini'),
(11, 'Lamborghini Miura', 'A classic 1960s design, often called the first supercar.', 299, 10, 'Assets/Product-Images/Lamborghini/Lamborghini-Miura.png', '2025-07-20', 'Lamborghini'),
(12, 'Ford Mustang Fastback', 'A classic muscle car, perfect for vintage collectors. Known for its curved roof.', 299, 10, 'Assets/Product-Images/Mustang/Mustang-Fastback.png', '2025-07-21', 'Mustang'),
(13, 'Ford Mustang GT', 'A modern throwback to the classics, strong lines and updated performance look.', 299, 10, 'Assets/Product-Images/Mustang/Mustang-GT.png', '2025-07-21', 'Mustang'),
(14, 'Ford Mustang Mach 1', 'Sleek yet muscular, a long body with racing stripes, perfect for retro vibes.', 299, 10, 'Assets/Product-Images/Mustang/Mustang-Mach.png', '2025-07-21', 'Mustang'),
(15, 'Porsche 911 Turbo S', 'Iconic sports car, sleek design', 299, 10, 'Assets/Product-Images/Porsche/Porsche-911.png', '2025-07-21', 'Porsche'),
(16, 'Porsche Cayenne Coupe', 'Sporty luxury SUV.', 299, 10, 'Assets/Product-Images/Porsche/Porsche-Coupe.png', '2025-07-21', 'Porsche'),
(17, 'Porsche Taycan', 'Fully electric, futuristic design.', 299, 10, 'Assets/Product-Images/Porsche/Porsche-Taycan.png', '2025-07-21', 'Porsche'),
(21, 'Nissan GT-R ', 'Iconic high-performance sports car.', 299, 10, 'Assets/Product-Images/Nissan/Nissan-GTR.png', '2025-07-21', 'Nissan'),
(22, 'Nissan Leaf ', 'Popular electric vehicle.', 299, 10, 'Assets/Product-Images/Nissan/Nissan-Leaf.png', '2025-07-21', 'Nissan'),
(23, 'Nissan 370Z ', 'Sleek, affordable coupe with a sporty design.', 299, 10, 'Assets/Product-Images/Nissan/Nissan-370Z.png', '2025-07-21', 'Nissan'),
(27, 'Audi R8', 'A high-performance supercar with a V10 engine and sharp styling.', 299, 10, 'Assets/Product-Images/Audi/Audi-R8V10.png', '2025-08-01', 'Audi'),
(28, 'Audi Q8 SUV', 'A premium luxury SUV with bold design and advanced tech features.', 299, 10, 'Assets/Product-Images/Audi/Audi-Q8.png', '2025-08-01', 'Audi'),
(29, 'Audi RS6', 'A refined sport sedan, balancing comfort and performance.', 299, 10, 'Assets/Product-Images/Audi/Audi-RS6.png', '2025-08-01', 'Audi'),
(30, 'BMW M3 Coupe', 'A high-performance coupe with precise handling and a twin-turbo inline-six.', 299, 10, 'Assets/Product-Images/BMW/BMW-M3.png', '2025-08-01', 'BMW'),
(31, 'BMW X5M', 'A powerful luxury SUV with aggressive styling and track-ready performance.', 299, 10, 'Assets/Product-Images/BMW/BMW-X5M.png', '2025-08-01', 'BMW'),
(32, 'BMW i8', 'A futuristic plug-in hybrid sports car with unique styling.', 299, 10, 'Assets/Product-Images/BMW/BMW-i8.png', '2025-08-01', 'BMW');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_registered` date DEFAULT curdate(),
  `role` varchar(25) DEFAULT 'customer',
  `status` varchar(25) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `first_name`, `last_name`, `email`, `password`, `date_registered`, `role`, `status`) VALUES
(1011, 'Liam', 'Hilbers', 'hilbersliam@gmail.com', '$2y$10$v9Zkj6pvYaR0pBcGEuYxzuPCWMHMQbvVEKYIlHf.xMamG..Zy66ue', '2025-07-14', 'customer', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_itemid`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_itemid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
