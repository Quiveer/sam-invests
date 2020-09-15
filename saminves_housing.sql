-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 06:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saminves_housing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(255) NOT NULL,
  `tenant_id` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `receipt_no` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `tenant_id`, `amount`, `receipt_no`, `created`) VALUES
(521, 7, 8000, 'tuyghbjdk', '2020-05-28 16:38:00'),
(523, 6, 6000, 'fvgfuyg', '2020-05-28 17:59:00'),
(530, 5, 4500, 'fc6546f', '2020-05-29 10:57:00'),
(531, 5, 2300, '6gg57', '2020-05-29 10:58:00'),
(533, 9, 3000, '6757gff', '2020-05-29 13:05:00'),
(534, 9, 6500, '76g76', '2020-05-29 13:05:00'),
(535, 8, 6500, '6757gff', '2020-05-29 14:05:00'),
(537, 5, 2000, 'gdugdsijdsi', '2020-06-01 10:41:00'),
(538, 5, 0, 'ghduhdgu', '2020-06-01 10:45:00'),
(539, 5, 3000, 'bvuhvbdsudhs', '2020-06-01 10:46:00'),
(540, 5, 3000, 'hfbfiufhi', '2020-06-01 10:47:00'),
(541, 5, 1000, 'fguhgbsij', '2020-06-01 11:01:00'),
(542, 6, 2000, 'gfhjhsdkj', '2020-06-01 11:08:00'),
(543, 5, 4000, 'ygduhgkj', '2020-06-01 11:12:00'),
(557, 42, 4000, 'gfuiyguy', '2020-06-11 13:59:00'),
(558, 42, 6500, '6757gff', '2020-06-11 14:14:00'),
(559, 42, 6500, '6757gff', '2020-06-11 14:14:00'),
(568, 0, 0, '', '2020-06-11 14:27:00'),
(569, 0, 0, '', '2020-06-11 14:27:00'),
(570, 0, 6500, '76g76', '2020-06-11 14:30:00'),
(571, 0, 6500, '76g76', '2020-06-11 14:31:00'),
(572, 42, 6500, 'ghg', '2020-06-11 14:34:00'),
(573, 42, 16000, 'hgiojfdff', '2020-06-11 14:41:00'),
(574, 42, 16000, 'hgiojfdff', '2020-06-11 14:47:00'),
(575, 42, 5000, '76g76', '2020-06-11 15:20:00'),
(576, 42, 4000, 'uhiju', '2020-06-11 15:25:00'),
(577, 42, 4000, 'fduytifyug', '2020-06-11 15:28:00'),
(578, 42, 9600, '76g76', '2020-06-11 15:32:00'),
(579, 41, 6500, 'gffdth', '2020-06-11 17:41:00'),
(580, 41, 89900, '6757gff', '2020-06-11 17:45:00'),
(581, 41, 0, '', '2020-06-11 17:46:00'),
(582, 41, 16000, 'gfuiyguy', '2020-06-12 13:29:00'),
(588, 50, 4000, 'gfuiyguy', '2020-06-12 17:51:00'),
(589, 50, 6500, '76g76', '2020-06-12 17:51:00'),
(590, 50, 16000, '6757gff', '2020-06-12 17:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int(255) NOT NULL,
  `tenantname` varchar(255) NOT NULL,
  `phone_no` int(255) NOT NULL,
  `idnumber` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `deposit` int(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `comments` mediumtext NOT NULL,
  `pin` varchar(255) NOT NULL,
  `refnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `tenantname`, `phone_no`, `idnumber`, `room`, `deposit`, `created`, `comments`, `pin`, `refnumber`) VALUES
(10, 'Angela Horst', 2147483647, '6686954048', 'Al', 7000, '2019-05-08 17:32:00', 'good', '', ''),
(11, 'James Jameson', 2147483647, '6686954048', 'B2', 86590000, '2019-05-08 17:32:00', '', '', ''),
(12, 'Daniel Deacon', 2147483647, '6686954048', 'B9', 67659000, '2019-05-08 17:32:00', '', '', ''),
(15, 'Maina Kamande', 3354748, '89037365', 'K9', 60000, '2020-05-24 11:02:00', '', '', ''),
(16, 'Samuel Mwangi', 687690949, '7685947', 'F7', 90000, '2020-05-25 10:00:00', '', '', ''),
(19, 'Samuel mwangi', 975, '65748436', 'H9', 8000, '0000-00-00 00:00:00', 'ytftygwuiohgniu y9827y8947r4j;kom;l', '', ''),
(20, 'John Maina', 566478433, '665784933', 'K6', 380000, '0000-00-00 00:00:00', 'yygdyufdg8hhy7y66h4', '', ''),
(21, 'Samson Nobody', 56467393, '657839023', 'G7', 4000000, '0000-00-00 00:00:00', 'hghdfugrewhy78y', '', ''),
(22, 'John Doe', 656839320, '54563823', 'Sr', 660000, '0000-00-00 00:00:00', 'hdfdihy87yh9oy9', '', ''),
(23, 'John Manini', 2147483647, '5656574849', 'G7', 8700000, '0000-00-00 00:00:00', 'ggvgcugsfwbgy7ut8ywfwe', '', ''),
(24, 'Kamau Mbugua', 665739390, '67778749903', 'H9', 700000, '0000-00-00 00:00:00', 'guycguydguhgwihweiu', '', ''),
(26, 'Lil Nothing', 2147483647, '5656578494', 'G9', 600000, '0000-00-00 00:00:00', 'hbvvhjvbgihoihoijoii', '', ''),
(49, 'Branson', 76869, '7756847y9', 'K9', 9000, '2020-06-12 16:38:00', 'great', '', ''),
(50, 'john bucker', 5687, '6575849', 'B6', 9000, '2020-06-12 16:47:00', 'great', '772', '65473');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
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
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
