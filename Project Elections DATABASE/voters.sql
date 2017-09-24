-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2017 at 04:28 PM
-- Server version: 5.05.01
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elections`
--

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `VId` char(10) NOT NULL,
  `password` varchar(15) DEFAULT NULL,
  `FName` varchar(15) DEFAULT NULL,
  `MName` varchar(10) DEFAULT NULL,
  `LName` varchar(10) DEFAULT NULL,
  `FatherName` varchar(40) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` char(2) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Nationality` varchar(20) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Constituency` varchar(30) DEFAULT NULL,
  `E_Mail` varchar(100) DEFAULT NULL,
  `Voting_Status` char(1) DEFAULT NULL,
  `MothName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`VId`, `password`, `FName`, `MName`, `LName`, `FatherName`, `DOB`, `Gender`, `Address`, `Nationality`, `State`, `Constituency`, `E_Mail`, `Voting_Status`, `MothName`) VALUES
('BMI9575377', 'popopopo', 'Suruchi', '', 'Bhatnagar', 'Sunil Bhatnagar', '1995-01-18', 'F', 'WZ-718/B,Shiv Nagar,Jail Road', 'Indian', 'NCT of Delhi', 'West Delhi', 'sur@chi', '0', 'Shikha Bhatnagar'),
('BQN8837711', '12345678', 'shriya', '', 'malhotra', 'sandeep', '1997-01-17', 'F', 'h-31', 'Indian', 'NCT of Delhi', 'West Delhi', 'Saakshi@gmail', '0', 'Shalini'),
('CME1382460', 'bahubali', 'vipul', '', 'saini', 'rcsaini', '1993-09-23', 'M', 'delhi', 'Indian', 'NCT of Delhi', 'New Delhi', 'vipul@k', '0', 'sksaini'),
('HIB2141011', 'hello123', 'Rasleen', 'Kaur', 'Anand', 'Jitender Singh Anand', '1990-06-26', 'F', 'Wz-708/B,Shiv Nagar,Jail Road', 'Indian', 'NCT of Delhi', 'West Delhi', 'rasleen26@gmail', '0', 'Gurpreet Kaur'),
('IMF2697996', 'pass1234', 'Khushal', 'Kumar', 'Rawal', 'Rajinder Kumar', '1993-05-31', 'M', 'wz-130 tilak nagar', 'Indian', 'NCT of Delhi', 'West Delhi', 'kkhushal1531@gmail', '0', 'Radhika'),
('LQK6368490', 'manas009', 'Manas', '', 'Gulati', 'Rajinder Gulati', '1996-09-23', 'M', 'Wz-31/B,Ashok Nagar', 'Indian', 'NCT of Delhi', 'West Delhi', 'Manas@123', '0', 'Prerna Gulati'),
('OHB0343542', 'qwertyuiop', 'Arushi', '', 'Verma', 'Sumit Verma', '1986-12-31', 'F', 'house no.23,Charbhag', 'Indian', 'Uttar Pradesh', 'Lucknow', 'arushi@live', '0', 'Suman Verma'),
('PCU2533415', '11112222', 'Shivani', 'Dev', 'Sharma', 'Shankar Sharma', '1991-12-31', 'F', 'B-67', 'Indian', 'Andhra Pradesh', 'Araku', '', '0', NULL),
('RHT2249791', '12345678', 'Mansi', '', 'Gera', 'Raj Gera', '1997-04-23', 'F', 'wz-980,Ashok Nagar', 'Indian', 'NCT of Delhi', 'West Delhi', 'Mansi@gera', '0', 'Suman Gera'),
('RSK4470615', 'sharmaji', 'Harvilas', '', 'Sharma', 'Kuldeep Sharma', '1997-12-19', 'M', 'D-443,Subhash Nagar', 'Indian', 'NCT of Delhi', 'West Delhi', 'Harvi@haha', '0', 'Kawalpreet Sharma'),
('UYY2906982', 'password', 'Vasu', '', 'Sehgal', 'Vipin Sehgal', '1997-03-14', 'M', '554-B,Rajouri Garden', 'Indian', 'NCT of Delhi', 'West Delhi', 'Vasu@rocks', '0', 'Pooja Sehgal'),
('VTK1142605', 'voter23wow', 'Shikha', '', 'Bhatnagar', 'O P Bhatnagar', '1969-11-23', 'F', 'WZ-718/B,Shiv Nagar,Jail Road', 'Indian', 'NCT of Delhi', 'West Delhi', 'shikha_23n@gmail', '1', 'Vineeta Bhatnagar'),
('WQX8067977', 'priyadarshini', 'v', '', 'r', 'h', '1992-01-02', 'M', 'qwerty', 'Indian', 'NCT of Delhi', 'West Delhi', 'vivek@rathore', '1', 'k'),
('WWN8987655', '09876543', 'Parth', '', 'Verma', 'Devraj Verma', '1991-06-23', 'M', 'B-67,Prem Nagar', 'Indian', 'NCT of Delhi', 'West Delhi', 'parth@abc', '0', 'Simran Verma'),
('YZR1331039', 'doorbell', 'Srishti', '', 'Bhatangar', 'Sunil Bhatnagar', '1997-09-06', 'F', 'WZ-718/B,Shiv Nagar,Jail Road', 'Indian', 'NCT of Delhi', 'West Delhi', 'Srish@213', '0', 'Shikha Bhatnagar'),
('ZDZ9145815', 'ritika25', 'Ritika', '', 'Soun', 'Ramesh Soun', '1997-03-25', 'F', 'B-23,Sector 12,Dwarka', 'Indian', 'NCT of Delhi', 'West Delhi', 'riti@soun', '0', 'Rashmi Soun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`VId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
