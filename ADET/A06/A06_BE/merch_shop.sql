-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 12:51 PM
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
-- Database: `merch_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artistID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artistID`, `name`, `logo`) VALUES
(1, 'Ariana Grande', 'ag-logo.png'),
(2, 'Sabrina Carpenter', 'sc-logo.png'),
(3, 'grentperez', 'gp-logo.png'),
(4, 'TWICE', 'tw-logo.png'),
(5, 'Lorde', 'lrd-logo.png'),
(6, 'Billie Eilish', 'be-logo.png'),
(7, 'SZA', 'sz-logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(5) NOT NULL,
  `artistID` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `artistID`, `name`, `code`, `price`, `image`) VALUES
(1, 1, 'brighter days inc. cap', 'AG-BDI-CAP', '1900', 'ag-1.png'),
(2, 1, '934-33-erase t-shirt', 'AG-ERASE-SHRT', '1900', 'ag-2.png'),
(3, 1, 'tbim crewneck', 'AG-TBIM-CRWNCK', '3800', 'ag-3.png'),
(4, 1, 'brighter days memories crewneck', 'AG-BDM-CRWNCK', '4100', 'ag-4.png'),
(5, 1, 'eternal sunshine artboard poster', 'AG-ES-PSTR', '830', 'ag-5.png'),
(6, 1, 'tbim two sided tote', 'AG-TBIM-TOTE', '1380', 'ag-6.png'),
(7, 1, 'we can\'t be friends cassette', 'AG-WCBF-CST', '380', 'ag-7.png'),
(8, 1, 'eternal sunshine lp', 'AG-ES-LP', '1800', 'ag-8.png'),
(9, 1, 'yours truly all my love notebook', 'AG-YT-NB', '1300', 'ag-9.png'),
(10, 1, 'eternal sunshine cropped t-shirt', 'AG-ES-CRSHRT', '2500', 'ag-10.png'),
(11, 1, 'brighter days cropped t-shirt', 'AG-BD-CRSHRT', '2500', 'ag-11.png'),
(12, 1, 'yes, and? white socks', 'AG-YA-WSCKS', '1380', 'ag-12.png'),
(13, 2, 'red lingerie tee', 'SC-RL-TEE', '2700', 'sc-1.png'),
(14, 2, 'short n\' sweet deluxe cd', 'SC-SNSD-CD', '1000', 'sc-2.png'),
(15, 2, 'busy woman cap', 'SC-BW-CAP', '1900', 'sc-3.png'),
(16, 2, 'short n\' sweet alternate cover cd', 'SC-SNS-ACD', '700', 'sc-4.png'),
(17, 2, 'short n\' sweet deluxe 2lp', 'SC-SNSD-2LP', '2500', 'sc-5.png'),
(18, 2, 'h<3rny hoodie', 'SC-HRNY-HDIE', '4700', 'sc-6.png'),
(19, 2, 'ppp remix crew', 'SC-PPP-CRW', '3600', 'sc-7.png'),
(20, 2, 'short n\' sweet tights', 'SC-SNS-TGHTS', '1900', 'sc-8.png'),
(21, 2, 'short n\' sweet playing cards', 'SC-SNS-PLYNGCRD', '800', 'sc-9.png'),
(22, 2, 'got you blocked cropped tee', 'SC-GYB-CRTEE', '2500', 'sc-10.png'),
(23, 2, 'got you blocked tee', 'SC-GYB-TEE', '2500', 'sc-11.png'),
(24, 2, 'ppp cosmetics bag', 'SC-PPP-CBAG', '1600', 'sc-12.png'),
(25, 3, 'backflips hoodie', 'GP-BF-HDIE', '3325', 'gp-1.png'),
(26, 3, 'black backflips longsleeve tee', 'GP-BF-BLKLS', '2625', 'gp-2.png'),
(27, 3, 'blue backflips tee', 'GP-BF-BLUETEE', '1750', 'gp-3.png'),
(28, 3, 'pink cheeseburger tee', 'GP-PC-TEE', '1750', 'gp-4.png'),
(29, 3, 'backflips shorts', 'GP-BF-SHORTS', '3200', 'gp-5.png'),
(30, 3, 'backflips in a restaurant cd', 'GP-BF-CD', '700', 'gp-6.png'),
(31, 4, 'strategy tumbler', 'TW-STR-TMBLR', '1941', 'tw-1.png'),
(32, 4, 'strategy vinyl', 'TW-STR-VINYL', '1664', 'tw-2.png'),
(33, 4, 'zone keychain', 'TW-ZONE-KCHN', '333', 'tw-3.png'),
(34, 4, 'zone acrylic standee', 'TW-ZONE-ACSTND', '333', 'tw-4.png'),
(35, 4, 'im nayeon I\'M ver', 'TW-NY-IM', '1553', 'tw-5.png'),
(36, 4, 'im nayeon NA ver', 'TW-NY-NA', '1553', 'tw-6.png'),
(37, 4, 'im nayeon POP ver', 'TW-NY-POP', '1553', 'tw-7.png'),
(38, 4, 'with you-th vinyl', 'TW-WY-VINYL', '1497', 'tw-8.png'),
(39, 4, 'ready to be vinyl', 'TW-RTB-VINYL', '1664', 'tw-9.png'),
(40, 5, 'virgin standard lp', 'LRD-VG-LP', '1830', 'lrd-1.png'),
(41, 5, 'mystic hat', 'LRD-MYST-HAT', '2219', 'lrd-2.png'),
(42, 5, 'archetypal baby tee blue', 'LRD-ARC-BTBLU', '2219', 'lrd-3.png'),
(43, 5, 'virgin t-shirt black', 'LRD-VG-TSBLK', '2496', 'lrd-4.png'),
(44, 5, 'virgin t-shirt white', 'LRD-VG-TSWHT', '2496', 'lrd-5.png'),
(45, 5, 'virgin long sleeve', 'LRD-VG-LS', '3328', 'lrd-6.png'),
(46, 6, 'hit me hard and soft red tee', 'BE-HMHAS-RTEE', '2774', 'be-1.png'),
(47, 6, 'billie x lost love flannel', 'BE-BXLL-FLNL', '5547', 'be-2.png'),
(48, 6, 'billie x lost love red crewneck', 'BE-BXLL-RCNK', '4992', 'be-3.png'),
(49, 6, 'all over billie tank', 'BE-AO-BTANK', '2496', 'be-4.png'),
(50, 6, 'i\'ll volunteer tee', 'BE-VOL-TEE', '2496', 'be-5.png'),
(51, 6, 'hit me hard and soft vinyl', 'BE-HMHAS-VINYL', '1830', 'be-6.png'),
(52, 6, 'hit me hard and soft cassette', 'BE-HMHAS-CAS', '998', 'be-7.png'),
(53, 6, 'hit me hard & soft cover tee', 'BE-HMHAS-WHTEE', '2496', 'be-8.png'),
(54, 6, 'all over cover t-shirt', 'BE-AOC-TSHRT', '2496', 'be-9.png'),
(55, 7, 'sza lana tote', 'SZ-LANA-TOTE', '2219', 'sz-1.png'),
(56, 7, 'sos deluxe 4lp', 'SZ-SOS-4LP', '4438', 'sz-2.png'),
(57, 7, 'sza sos crewneck', 'SZ-SOS-CREW', '4160', 'sz-3.png'),
(58, 7, 'sza signature sos jersey', 'SZ-SIG-JRSY', '4382', 'sz-4.png'),
(59, 7, 'sza lana distressed hat', 'SZ-LANA-HAT', '1941', 'sz-5.png'),
(60, 7, 'sza lana beetle ringer tee', 'SZ-LANA-BRTLTEE', '3051', 'sz-6.png'),
(61, 7, 'sza natural tote bag', 'SZ-NTRL-TOTE', '1941', 'sz-7.png'),
(62, 7, 'sza kill bill tour white tee', 'SZ-KB-WHTEE', '3051', 'sz-8.png'),
(63, 7, 'i did it all for love hoodie', 'SZ-LOVE-HOOD', '4937', 'sz-9.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artistID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
