-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 08:40 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expo`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  `message` varchar(200) NOT NULL,
  `submitted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `submitted`) VALUES
(1, 'Kumara Nanayakara', 'kumaran@gmail.com', 776534098, 'Thank you so much for this amazing review! We appreciate it', '2019-05-18 02:56:28'),
(2, 'Saman Ramanayan', 'ram12@gmail.com', 703456112, 'Perfect place for a perfect cup of coffee.. be it cold or hot..', '2019-05-18 02:59:28'),
(3, 'Sunil Tennakon', 'tennakon@gmail.com', 789634567, 'I am extremely satisfied with the service here.', '2019-05-19 15:05:51'),
(4, 'Hashan Gunawardhana', 'hashan12@gmail.com', 776534567, 'The ambience suits the name of the place; it indeed feels like a coffee shop. ', '2019-05-19 16:06:51'),
(5, 'Sulakshana Kumara', '123c@gmail.com', 776545346, 'Lovely place. The lighting was perfect.', '2019-05-19 16:11:55'),
(6, 'Gayani Rajapaksha', '123r@gmail.com', 765434567, 'Atmosphere is amazing. Great place to work quietly while enjoying a cup of Cappuccino', '2019-05-20 05:23:34'),
(7, 'Amal Kumara', 'kumara@gmail.com', 756789543, 'Customer service is good.', '2019-05-20 05:31:29'),
(8, 'Sanukka Iddamalgoda', 'sa@gmail.com', 916543345, 'Not bad', '2019-05-20 05:48:39'),
(9, 'Sashi Sinha', 'sinha@gmail.com', 786537894, 'The drinks are pretty good', '2019-05-20 05:52:10'),
(10, 'Pasan Wellagedara', 'pasan@gmail.com', 773779889, 'Good place to have a coffee and relax', '2019-05-20 05:52:12'),
(11, 'Sanuri Kumara', 'sanu12@gmail.com', 765432876, 'Excellent', '2019-05-20 05:55:56'),
(12, 'Bashi Sooriyaarachi', 'soor@gmail.com', 759844423, 'Good', '2019-05-20 05:58:43'),
(13, 'Damidu Sandira', '234@gmail.com', 765456780, 'Not bad.', '2019-05-20 06:09:13'),
(14, 'Pabasara Gunawarhana', 'pabasara@gmail.com', 912233440, 'So lovely sevice', '2019-06-03 17:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(50) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_name`) VALUES
(1, 'chef1.jpg'),
(2, 'pic1.jpg'),
(3, 'pic10.jpg'),
(4, 'chef2.jpg'),
(5, '1.jpg'),
(6, 'pic7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `email`, `password`) VALUES
(1, 'Saman Ramanayan', 'ram12@gmail.com', 'b3275960d68fda9d831facc0426c3bbc'),
(2, 'Sulakshana Kumara', '123c@gmail.com', 'def7924e3199be5e18060bb3e1d547a7'),
(3, 'Amal Kumara', 'kumara@gmail.com', 'd81f9c1be2e08964bf9f24b15f0e4900'),
(4, 'Sashi Sinha', 'sinha@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02'),
(5, 'Gayani Rajapaksha', '123r@gmail.com', '68053af2923e00204c3ca7c6a3150cf7'),
(6, 'Pasan Wellagedara', 'pasan@gmail.com', '51f6f8fe03a390d3de50ad49913d4b66'),
(7, 'Pabasara Gunawardhana', 'pabasara@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
