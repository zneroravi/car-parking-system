-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 05, 2020 at 07:58 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `logtable`
--

CREATE TABLE `logtable` (
  `id` int(11) NOT NULL,
  `useruid` text NOT NULL,
  `lotname` text NOT NULL,
  `carno` text NOT NULL,
  `otp1` text NOT NULL,
  `fromtime` datetime NOT NULL,
  `otp2` text NOT NULL,
  `totime` datetime NOT NULL,
  `payment` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logtable`
--

INSERT INTO `logtable` (`id`, `useruid`, `lotname`, `carno`, `otp1`, `fromtime`, `otp2`, `totime`, `payment`, `status`) VALUES
(1, '6', 'P1', 'WB-AB-1001', '379089', '2020-02-20 15:15:21', '512848', '2020-02-20 16:06:54', 'Paid', 'Left'),
(2, '6', 'P5', 'WB-A2-1011', '121533', '2018-04-07 17:02:43', '874472', '2018-04-07 17:16:49', 'Paid', 'Left'),
(3, '6', 'P7', 'WB-AB-1001', '480334', '2018-04-07 17:20:42', '212582', '2018-04-07 17:21:10', 'Paid', 'Left'),
(4, '6', 'P9', 'WB-A2-1011', '317453', '2018-04-07 17:37:26', '342752', '2018-04-07 17:45:29', 'Paid', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `lot`
--

CREATE TABLE `lot` (
  `id` int(11) NOT NULL,
  `lotname` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lot`
--

INSERT INTO `lot` (`id`, `lotname`, `status`) VALUES
(1, 'P1', 'Leaving'),
(2, 'P2', 'Free'),
(3, 'P3', 'Free'),
(4, 'P4', 'Free'),
(5, 'P5', 'Free'),
(6, 'P6', 'Free'),
(7, 'P7', 'Free'),
(8, 'P8', 'Free'),
(9, 'P9', 'Free'),
(10, 'P10', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `aadhar` text NOT NULL,
  `useruid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `contact`, `address`, `aadhar`, `useruid`) VALUES
(1, 'Piyushh', 'givemycertificate@gmail.com', 'MTIzNA==', '9830768030', '152/6 hardutt Rai Chamaria, A Block', '1234567812345678', 6),
(2, 'Ravi', 'zneroravi@gmail.com', 'MTIzNDEyMzQ=', '8439291909', 'C-31, Deeksha Kcr Town, Gwalior Road, Rohta', '123123123', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logtable`
--
ALTER TABLE `logtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lot`
--
ALTER TABLE `lot`
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
-- AUTO_INCREMENT for table `logtable`
--
ALTER TABLE `logtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lot`
--
ALTER TABLE `lot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
