-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 07:01 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college`
--
CREATE DATABASE IF NOT EXISTS `college` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `college`;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `routeno` int(10) DEFAULT NULL,
  `stopname` varchar(30) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `fees` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`routeno`, `stopname`, `time`, `fees`) VALUES
(1, 'Tambaram', '6:00:00 am', 5000),
(1, 'Kamarajapuram', '6:15:00 am', 4800),
(1, 'Palikaranai', '6:30:00 am', 4500),
(1, 'Narayanapuram', '6:35:00 am', 4300),
(1, 'Dental college', '6:40:00 am', 4000),
(1, 'Kaiveli', '6:50:00 am', 3500),
(2, 'Adyar', '6:00:00 am', 5000),
(2, 'CLRI', '6:25:00 am', 4500),
(2, 'anna university', '6:35:00 am', 4300),
(2, 'checkpost', '6:50:00 am', 4000),
(3, 'Anna nagar', '6:00:00 am', 5000),
(3, 'CMBT', '6:15:00 am', 4800),
(3, 'MMDA', '6:20:00 am', 4600),
(3, 'Vadapalani', '6:30:00 am', 4500),
(3, 'Ashok pillar', '6:40:00 am', 4500),
(3, 'Guindy', '6:50:00 am', 3000),
(3, 'check post', '6:55:00 am', 3000),
(3, 'velachery', '7:00:00 am', 2900),
(1, 'velachery', '7:00:00 am', 3300);

-- --------------------------------------------------------

--
-- Table structure for table `complainbus`
--

CREATE TABLE IF NOT EXISTS `complainbus` (
  `cno` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) DEFAULT NULL,
  `complaint` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `complainbus`
--

INSERT INTO `complainbus` (`cno`, `sid`, `complaint`) VALUES
(1, 1, 'seat not proper arrangement'),
(2, 1, 'seat not proper arrangement'),
(3, 1, 'seat not proper arrangement'),
(4, 1, 'seat not proper arrangement'),
(5, 1, 'seat not proper arrangement'),
(6, 1, 'seat not proper arrangement');

-- --------------------------------------------------------

--
-- Table structure for table `complaindriver`
--

CREATE TABLE IF NOT EXISTS `complaindriver` (
  `cno` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) DEFAULT NULL,
  `complaint` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `complaindriver`
--

INSERT INTO `complaindriver` (`cno`, `sid`, `complaint`) VALUES
(1, 1, 'fast driving'),
(2, 1, 'fast driving'),
(3, 1, 'fast driving'),
(4, 1, 'fast driving');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `fno` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(10) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fno`, `sid`, `feedback`) VALUES
(1, 1, 'good ');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `receiptno` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  `sem` varchar(10) DEFAULT NULL,
  `busstop` varchar(70) DEFAULT NULL,
  `feespaid` int(30) DEFAULT NULL,
  `due` int(30) DEFAULT NULL,
  `routeno` int(20) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`receiptno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`receiptno`, `name`, `email`, `year`, `department`, `sem`, `busstop`, `feespaid`, `due`, `routeno`, `time`) VALUES
(1, 'priya', 'hemapvs03@gmail.com', '2', 'msc', '4', 'Palikaranai', 4000, 1000, 1, '06:50:00 am'),
(2, 'hema', 'chithrabalaraman31@gmail.com', '2', 'msc', '5', 'velachery', 3000, 0, 1, '06:00:am'),
(3, 'priya', NULL, '2year', 'MSC', '4 semester', 'velachery', 5000, 0, 1, '6:00:00am');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `sid` int(20) DEFAULT NULL,
  `request` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`rid`, `sid`, `request`) VALUES
(1, 2, 'srp tools'),
(2, 5, 'velachery');

-- --------------------------------------------------------

--
-- Table structure for table `sreg`
--

CREATE TABLE IF NOT EXISTS `sreg` (
  `sid` int(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `dept` varchar(30) DEFAULT NULL,
  `sem` varchar(30) DEFAULT NULL,
  `bstop` varchar(30) DEFAULT NULL,
  `rno` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sreg`
--

INSERT INTO `sreg` (`sid`, `name`, `email`, `year`, `dept`, `sem`, `bstop`, `rno`) VALUES
(10, 'priya.b', NULL, '1 year', 'MSC', '4 semester', 'medaakam', 0),
(10, 'priya.b', NULL, '1 year', 'BSC', '1 semester', 'medavakkam', 1),
(10, 'priya.b', NULL, '1 year', 'BSC', '1 semester', 'medavakkam', 1),
(11, 'chithra.b', 'chithrabalaraman31@gmail.com', '2year', 'MSC', '3 semester', 'medavakam', 1),
(11, 'chithra.b', 'chithrabalaraman31@gmail.com', '2year', 'MSC', '3 semester', 'medavakam', 1),
(11, 'chithra.b', 'chithrabalaraman31@gmail.com', '2year', 'MSC', '3 semester', 'medavakam', 1),
(12, 'xxx', 'jshadghsagfda', '1 year', 'BSC', '1 semester', 'jasdfsh', 1),
(19, 'bbb', 'priyabalaraman95@gmail.com', '2year', 'MCOM', '4 semester', 'kuweraw', 1);

-- --------------------------------------------------------

--
-- Table structure for table `srequest`
--

CREATE TABLE IF NOT EXISTS `srequest` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `studentid` int(10) DEFAULT NULL,
  `request` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `srequest`
--

INSERT INTO `srequest` (`rid`, `studentid`, `request`) VALUES
(1, 2, 'Transport not available for srp tools'),
(2, 5, 'not available');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `fphn` int(20) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `sem` varchar(30) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `phn` int(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `username`, `pwd`, `name`, `age`, `fname`, `fphn`, `year`, `department`, `sem`, `addr`, `phn`) VALUES
(1, NULL, NULL, 'hema', 22, 'vijayakumar', 2147483647, '1 year', 'BSC', '1 semester', 'jytuyg', 2147483647),
(2, NULL, NULL, 'hema', 22, 'vijayakumar', 2147483647, '1 year', 'BSC', '1 semester', 'jytuyg', 2147483647),
(3, '', '', 'hema', 22, 'vijayakumar', 2147483647, '1 year', 'BSC', '1 semester', 'jytuyg', 2147483647),
(4, '', '', 'hema', 22, 'vijayakumar', 2147483647, '1 year', 'BSC', '1 semester', 'jytuyg', 2147483647),
(5, 'priya', 'pry', 'priya', 21, 'balaraman', 2147483647, '1 year', 'BSC', '1 semester', 'wjgre', 2147483647),
(6, 'chithra', 'chithra', 'chithra.b', 24, 'balaraman', 2147483647, '2year', 'MSC', '4 semester', 'nzxyugeda', 2147483647),
(7, 'chithra', 'chithra', 'chithra.b', 24, 'balaraman', 2147483647, '2year', 'MSC', '4 semester', 'nzxyugeda', 2147483647),
(8, 'chithra', 'chithra', 'chithra.b', 24, 'balaraman', 2147483647, '2year', 'MSC', '4 semester', 'nzxyugeda', 2147483647),
(9, 'chithra', 'chithra', 'chithra.b', 24, 'balaraman', 2147483647, '2year', 'MSC', '4 semester', 'nzxyugeda', 2147483647),
(10, 'saranya', 'saranya', 'saranya.B', 26, 'balaraman', 2147483647, '1 year', 'BCOM', '2 semester', 'nhgfuytf', 2147483647),
(11, 'balaraman', 'bala', 'balaraman.V', 22, 'vadivelu', 2147483647, '2year', 'MSC', '4 semester', 'No:45 velachery main road,chennai-600042.', 2147483647),
(12, 'priya', 'sfsf', 'asedas', 12, 'awerwe', 23423, 'waer', 'aser', 'ase', 'asdr', 2323),
(13, 'xxx', 'xxx', 'xxx', 43, 'yyy', 9876, '1 year', 'BSC', '1 semester', 'xxaaaaa', 655477),
(14, 'xxx', 'xxx', 'xxx', 23, 'yyy', 3454, '2year', 'MSC', '4 semester', 'jsytrw', 7653),
(15, 'sai', 'sai', 'sai', 21, 'ram', 34653, '2year', 'MSC', '3 semester', 'iusytrsi', 345434),
(16, 'sai', 'sai', 'sai', 21, 'ram', 34653, '2year', 'MSC', '3 semester', 'iusytrsi', 345434),
(17, 'bbb', 'bbb', 'ccc', 21, 'ddd', 98786, '2year', 'MSC', '2 semester', 'iytyjhg', 976),
(18, 'bbb', 'bbb', 'ccc', 21, 'ddd', 98786, '2year', 'MSC', '2 semester', 'iytyjhg', 976),
(19, 'kkk', 'kkk', 'kk', 21, 'tttt', 78634, '2year', 'BCOM', '3 semester', 'sjetryesw', 87236432),
(20, 'kkk', 'kkk', 'kk', 21, 'tttt', 78634, '2year', 'BCOM', '3 semester', 'sjetryesw', 87236432);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
