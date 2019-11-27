-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2019 at 11:56 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hb`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocate`
--

CREATE TABLE IF NOT EXISTS `allocate` (
  `projectid` text NOT NULL,
  `projectname` text NOT NULL,
  `projecttype` text NOT NULL,
  `projectdesc` text NOT NULL,
  `duration` text NOT NULL,
  `amount` text NOT NULL,
  `cname` text NOT NULL,
  `biddername` text NOT NULL,
  `allocatedate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocate`
--

INSERT INTO `allocate` (`projectid`, `projectname`, `projecttype`, `projectdesc`, `duration`, `amount`, `cname`, `biddername`, `allocatedate`) VALUES
('102', 'kkk', 'Software', 'sfsdf', 'Software', '5', '7000', 'abc', '8/8/2019');

-- --------------------------------------------------------

--
-- Table structure for table `bidproject`
--

CREATE TABLE IF NOT EXISTS `bidproject` (
  `projectid` text NOT NULL,
  `projectname` text NOT NULL,
  `projecttype` text NOT NULL,
  `projectdesc` text NOT NULL,
  `uploaddate` text NOT NULL,
  `duration` text NOT NULL,
  `amount` text NOT NULL,
  `cname` text NOT NULL,
  `biddate` text NOT NULL,
  `bidamount` int(11) NOT NULL,
  `fname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidproject`
--

INSERT INTO `bidproject` (`projectid`, `projectname`, `projecttype`, `projectdesc`, `uploaddate`, `duration`, `amount`, `cname`, `biddate`, `bidamount`, `fname`) VALUES
('102', 'kkk', 'Software', 'sfsdf', '6/8/2019', '5', '7000', 'dfdf', '7/8/2019', 5000, 'abc'),
('103', 'eee', 'AppDevelop', 'fgrfg', '6/8/2019', '3', '4000', 'dfdf', '7/8/2019', 2500, 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `compname` text NOT NULL,
  `address` text NOT NULL,
  `contactno` text NOT NULL,
  `website` text NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`username`, `password`, `compname`, `address`, `contactno`, `website`, `category`) VALUES
('pop', 'pop', 'dfdf', 'sdfdsf', '786576878', 'ddfdff', 'Electronics Based'),
('uuu', 'uuu', 'hglk', 'hjgjh', '8765467865', 'gjhg', 'Medical Based');

-- --------------------------------------------------------

--
-- Table structure for table `freelancer`
--

CREATE TABLE IF NOT EXISTS `freelancer` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `mobileno` text NOT NULL,
  `qualification` text NOT NULL,
  `experience` text NOT NULL,
  `skills` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freelancer`
--

INSERT INTO `freelancer` (`username`, `password`, `firstname`, `lastname`, `address`, `email`, `mobileno`, `qualification`, `experience`, `skills`) VALUES
('abc', 'aaa', 'a', 'c', 'ddf', 'abc@gmail.com', '9876543219', 'Btech', 'Fresh', 'dfds'),
('mno', 'mmm', 'm', 'o', 'hghgjh', 'mno@gmail.com', '9876767543', 'MBA', '2 years', 'fgvcvfghn c'),
('ttt', 'ttt', 't', 't', 'jkhs', 'ttt@gmail.com', '8787876543', 'BCA', '5 years', 'dfdf');

-- --------------------------------------------------------

--
-- Table structure for table `newproject`
--

CREATE TABLE IF NOT EXISTS `newproject` (
  `projectid` text NOT NULL,
  `projectname` text NOT NULL,
  `projecttype` text NOT NULL,
  `projectdesc` text NOT NULL,
  `uploaddate` text NOT NULL,
  `duration` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newproject`
--

INSERT INTO `newproject` (`projectid`, `projectname`, `projecttype`, `projectdesc`, `uploaddate`, `duration`, `amount`, `cname`) VALUES
('101', 'abc', 'Networking', 'cfsgsg', '6/8/2019', 6, 5000, 'dfdf'),
('102', 'kkk', 'Software', 'sfsdf', '6/8/2019', 5, 7000, 'dfdf'),
('103', 'eee', 'AppDevelop', 'fgrfg', '6/8/2019', 3, 4000, 'dfdf'),
('104', 'tygf', 'ConentDesign', 'dfdf', '9/8/2019', 1, 6000, 'dfdf');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `username` text NOT NULL,
  `accountno` text NOT NULL,
  `bankname` text NOT NULL,
  `branch` text NOT NULL,
  `ifsccode` text NOT NULL,
  `amount` text NOT NULL,
  `remarks` text NOT NULL,
  `paymentdate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`username`, `accountno`, `bankname`, `branch`, `ifsccode`, `amount`, `remarks`, `paymentdate`) VALUES
('abc', '123', 'xyz', 'nnbh', '748355537', '4000', 'jsjnn', '8/8/2019');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `username` text NOT NULL,
  `filename` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`username`, `filename`) VALUES
('abc', 'Tulips.jpg'),
('mno', 'Lighthouse.jpg');
