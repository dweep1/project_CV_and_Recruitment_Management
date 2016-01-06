-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2016 at 08:23 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recruit`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE IF NOT EXISTS `candidate` (
  `CandID` varchar(8) NOT NULL,
  `NIC` varchar(10) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `ContactNo` int(10) unsigned zerofill NOT NULL,
  `University` varchar(70) NOT NULL,
  `candStatusID` varchar(10) NOT NULL,
  `cvID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandID`, `NIC`, `FirstName`, `LastName`, `DateOfBirth`, `email`, `ContactNo`, `University`, `candStatusID`, `cvID`) VALUES
('C001', '906548765V', '', '', '1990-10-05', 'fshalika.fdo@gmail.com', 0115987639, 'UCSC', 'CS001', 'CV001'),
('C002', '852314567V', '', '', '1985-06-21', 'shali.fdo7@gmail.com', 0771238383, 'UCSC', 'CS001', 'CV002'),
('C003', '903426543V', '', '', '0000-00-00', 'Nimali_tyh@ucsc.cmb.ac.lk', 0114785445, 'APITT', 'CS001', 'CV003'),
('C004', '835562311v', '', '', '1983-06-16', 'j_.fdo_prof@wpi.edu', 0945084505, 'SLIIT', 'CS001', 'CV004'),
('C005', '921692374v', '', '', '1992-06-17', 'ghasithalakmal@gmail.com', 0775829738, 'SLIIT', 'CS001', 'CV005'),
('C006', '935890233V', 'Waruni', 'Samarawickrama', '1993-03-29', 'warune.samarawickrama@gmail.com', 0773985028, 'APITT', 'CS005', 'CV006'),
('C007', '935470730V', 'Nimali', 'Perera', '1993-02-16', 'cdchanika@gmail.com', 0777606211, 'UoM', 'CS005', 'CV007'),
('C008', '918083162V', '', '', '0000-00-00', 'lakshikadissanayake@yahoo.com', 0770069716, 'UoM', 'CS005', 'CV008'),
('C009', '', '', '', '1993-02-16', 'sulakshichandrasiri@gmail.com', 0777606211, 'USJP', 'CS001', 'CV009'),
('C010', '', '', '', '0000-00-00', '', 0000000000, 'UCSC', 'CS008', 'CV010'),
('C011', '', '', '', '0000-00-00', '', 0000000000, 'APITT', 'CS008', 'CV011'),
('C012', '', '', '', '0000-00-00', '', 0000000000, 'SLIIT', 'CS002', 'CV012'),
('C013', '', '', '', '0000-00-00', '', 0000000000, 'UoM', 'CS008', 'CV013'),
('C014', '', '', '', '0000-00-00', '', 0000000000, 'UoR', 'CS008', 'CV014'),
('C015', '', '', '', '0000-00-00', '', 0000000000, 'UoR', 'CS008', 'CV015'),
('C016', '', '', '', '0000-00-00', '', 0000000000, 'UoR', 'CS006', 'CV016'),
('C019', '', '', '', '0000-00-00', '', 0000000000, 'USJP', 'CS008', 'CV019'),
('C020', '', '', '', '0000-00-00', '', 0000000000, 'UCSC', 'CS008', 'CV020'),
('C021', '', '', '', '0000-00-00', '', 0000000000, 'SLIIT', 'CS002', 'CV021'),
('C022', '', '', '', '0000-00-00', '', 0000000000, 'APITT', 'CS006', 'CV022'),
('C023', '', '', '', '0000-00-00', '', 0000000000, 'UCSC', 'CS008', 'CV023'),
('C024', '', '', '', '0000-00-00', 'dweerasinghe91@gmail.com', 0000000000, '', 'CS003', 'CV024'),
('C025', '', '', '', '0000-00-00', '', 0000000000, '', 'CS004', 'CV025'),
('C026', '', '', '', '0000-00-00', '', 0000000000, '', 'CS004', 'CV026'),
('C027', '', '', '', '0000-00-00', 'dweerasinghe91@gmail.com', 0000000000, '', 'CS004', 'CV027'),
('C028', '', '', '', '0000-00-00', '', 0000000000, '', 'CS004', 'CV028'),
('C029', '', '', '', '0000-00-00', '', 0000000000, '', 'CS004', 'CV029');

-- --------------------------------------------------------

--
-- Table structure for table `candidatestatus`
--

CREATE TABLE IF NOT EXISTS `candidatestatus` (
  `candstatusID` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidatestatus`
--

INSERT INTO `candidatestatus` (`candstatusID`, `name`, `description`) VALUES
('CS001', 'Selected - CV', ''),
('CS002', 'Rejected - CV', ''),
('CS003', 'Unchecked - CV', ''),
('CS004', 'Flagged - CV', ''),
('CS005', 'Selected - interview', ''),
('CS006', 'Rejected - interview', ''),
('CS007', 'On hold', ''),
('CS008', 'Job offered', '');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `thresholdID` int(11) NOT NULL,
  `years` float(4,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`thresholdID`, `years`) VALUES
(1, 0.9999);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE IF NOT EXISTS `criteria` (
  `criteriaID` int(11) NOT NULL,
  `criteriaName` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteriaID`, `criteriaName`) VALUES
(1, 'Criteria1');

-- --------------------------------------------------------

--
-- Table structure for table `criteria1_3`
--

CREATE TABLE IF NOT EXISTS `criteria1_3` (
  `MarkID` int(11) NOT NULL,
  `CandID` varchar(8) DEFAULT NULL,
  `softskills` int(11) DEFAULT NULL,
  `gpa` int(11) DEFAULT NULL,
  `projects` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria1_3`
--

INSERT INTO `criteria1_3` (`MarkID`, `CandID`, `softskills`, `gpa`, `projects`) VALUES
(1, 'C006', 20, NULL, NULL),
(2, 'C007', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `cvID` varchar(8) NOT NULL,
  `submittedCV` varchar(50) NOT NULL,
  `submittedDate` date NOT NULL,
  `RSID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`cvID`, `submittedCV`, `submittedDate`, `RSID`) VALUES
('CV001', 'uploads/CVthresholdrejects.pdf', '2015-08-31', 'RS024'),
('CV002', 'uploads/Engineer.pdf', '2015-08-31', 'RS024'),
('CV003', 'uploads/Nimali.pdf', '2015-08-31', 'RS024'),
('CV004', 'uploads/ResumeJoseph.pdf', '2015-08-31', 'RS024'),
('CV005', 'uploads/Hasitha Lakmal CV.pdf', '2015-08-31', 'RS024'),
('CV006', 'uploads/my cv.pdf', '2015-08-31', 'RS001'),
('CV007', 'uploads/Curriculum Vitea.docx', '2015-08-31', 'RS001'),
('CV008', 'uploads/APPLICATION-signed.pdf', '2015-08-31', 'RS010'),
('CV009', 'uploads/Curriculum Vitea no NIC.docx', '2015-08-31', 'RS011'),
('CV010', 'uploads/deemanthi.pdf', '2015-08-31', 'RS012'),
('CV011', '', '2015-05-17', 'RS007'),
('CV012', '', '0000-00-00', 'RS007'),
('CV013', '', '2014-09-22', 'RS007'),
('CV014', '', '0000-00-00', 'RS008'),
('CV015', '', '0000-00-00', 'RS008'),
('CV016', '', '2015-11-03', 'RS008'),
('CV017', '', '0000-00-00', 'RS009'),
('CV018', '', '2015-11-01', 'RS009'),
('CV019', '', '2014-11-03', 'RS009'),
('CV020', '', '0000-00-00', 'RS010'),
('CV021', '', '2015-11-26', 'RS011'),
('CV022', '', '2014-08-06', 'RS012'),
('CV023', '', '2015-11-28', 'RS013'),
('CV024', 'uploads/13020196.pdf', '2016-01-04', 'RS001'),
('CV025', 'uploads/A simple Calculator Using Java.docx', '2016-01-04', 'RS001'),
('CV026', 'uploads/Assignment.pdf', '2016-01-04', 'RS001'),
('CV027', 'uploads/13020196.pdf', '2016-01-04', 'RS001'),
('CV028', 'uploads/A simple Calculator Using Java.docx', '2016-01-04', 'RS001'),
('CV029', 'uploads/Assignment.pdf', '2016-01-04', 'RS001');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `DesigID` int(11) NOT NULL,
  `Designation` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`DesigID`, `Designation`) VALUES
(1, 'Interview panel member'),
(2, 'Administrative officer'),
(3, 'System administrator'),
(4, 'Receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EmpID` varchar(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `TelNo` varchar(20) NOT NULL,
  `Designation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `FirstName`, `LastName`, `email`, `TelNo`, `Designation`) VALUES
('E001', 'Pubudu', 'Fernando', 'pubudufdo@gmail.com', '0771877531', 0),
('E002', 'Ruwan', 'Fernando', 'ruwanfdo@gmail.com', '0776823547', 1),
('E003', 'Sunil', 'Perera', 'sunil@gmail.com', '0778976436', 1),
('E004', 'Amila', 'Peiris', 'amila.peiris@gmail.com', '0712345678', 0),
('E005', 'Sandun', 'Silva', 'sandun@gmail.com', '0712345654', 2),
('E006', 'Gayan', 'Perera', 'gayan.88@gmail.com', '0772345321', 1),
('E007', 'Nalin', 'Perera', 'nalin99@gmail.com', '0712312345', 2),
('E008', 'Nimali', 'Silva', 'nimsil@ymail.com', '0724658695', 3);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE IF NOT EXISTS `evaluation` (
  `evalID` int(11) NOT NULL,
  `evalName` varchar(50) NOT NULL,
  `evalWeight` int(11) NOT NULL,
  `criteriaID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`evalID`, `evalName`, `evalWeight`, `criteriaID`) VALUES
(1, 'softskills', 20, 1),
(2, 'gpa', 50, 1),
(3, 'projects', 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE IF NOT EXISTS `interview` (
  `IntID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `RSID` varchar(7) NOT NULL,
  `EvaCriID` int(11) NOT NULL,
  `IntPanID` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`IntID`, `Name`, `RSID`, `EvaCriID`, `IntPanID`, `duration`) VALUES
(2, 'int 1', 'RS001', 0, 6, 25),
(3, 'Interview 1', 'RS001', 1, 5, 20),
(4, 'Interview 1', 'RS002', 0, 0, 0),
(5, 'Interview 2', 'RS002', 0, 0, 0),
(6, 'Interview 3', 'RS003', 0, 1, 0),
(7, 'Interview ok', 'RS003', 0, 1, 0),
(8, '', 'RS004', 0, 0, 0),
(9, 'Interview', 'RS004', 0, 1, 0),
(10, 'Last Interview', 'RS005', 0, 1, 0),
(11, 'Last Interview 2', 'RS005', 0, 1, 0),
(12, 'New interview', 'RS001', 0, 1, 30),
(27, 'dddddddd', 'Softwar', 0, 1, 0),
(28, 'xxxxxx', 'Softwar', 0, 1, 0),
(29, 'xxxxxx', 'Softwar', 0, 1, 0),
(30, 'wwwwwww', 'Softwar', 0, 1, 0),
(31, 'wwwwwwww', 'Softwar', 0, 1, 0),
(32, 'dddddddd', 'Softwar', 0, 1, 0),
(33, 'ssssssss', 'Softwar', 0, 1, 0),
(34, 'sssssss', 'Softwar', 0, 1, 0),
(35, 'eeeeeeeee', 'Busines', 0, 1, 0),
(36, 'ssssssssssss', 'Softwar', 0, 1, 0),
(37, 'Interview 2', 'RS001', 0, 1, 50),
(38, 'Interview 5', 'RS001', 0, 1, 20),
(39, 'custom interview', 'RS001', 0, 1, 20),
(40, 'interview for BA', 'RS001', 0, 1, 15),
(41, 'Interview for QA', 'RS001', 0, 1, 20),
(42, 'Interview for SE', 'RS001', 0, 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `interviewdetails`
--

CREATE TABLE IF NOT EXISTS `interviewdetails` (
  `IntDetID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `CandID` varchar(7) NOT NULL,
  `IntID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewdetails`
--

INSERT INTO `interviewdetails` (`IntDetID`, `date`, `time`, `CandID`, `IntID`) VALUES
(1, '2015-08-24', '4.00pm', 'C010', 0),
(2, '2015-11-25', '03:54', 'C001', 12),
(3, '2015-11-30', '10:30', 'C001', 12),
(4, '2015-11-25', '03:56', 'C001', 12),
(5, '2015-11-26', '16:45', 'C002', 12),
(6, '2015-11-17', '03:45', 'C001', 12),
(7, '2015-11-24', '16:30', 'C002', 12),
(8, '0000-00-00', '', 'C001', 12),
(9, '0000-00-00', '', 'C001', 12),
(10, '2015-11-10', '03:45', 'C001', 12),
(11, '0000-00-00', '', 'C001', 12),
(12, '2015-11-17', '03:45', 'C001', 12),
(13, '2015-11-11', '03:45', 'C001', 12),
(14, '2015-11-11', '12:59', 'C001', 12),
(15, '2015-10-19', '02:29:00', 'C007', 12),
(16, '2015-10-19', '01:59:00', 'C006', 12),
(17, '0000-00-00', '02:29:00', 'C007', 12),
(18, '0000-00-00', '', 'C007', 12),
(19, '2015-10-19', '02:29:00', 'C007', 12),
(20, '2015-11-27', '10:00:00', 'C007', 37),
(21, '0000-00-00', '10:00:00', 'C007', 37),
(22, '2015-11-25', '', 'C006', 37),
(23, '0000-00-00', '', 'C006', 37),
(24, '2015-11-18', '08:30:00', 'C007', 38),
(25, '2015-11-25', '08:10:00', 'C006', 38),
(26, '2015-11-27', '10:00:00', 'C007', 38),
(27, '2015-11-27', '10:00:00', 'C007', 38),
(28, '2015-11-27', '10:00:00', 'C007', 38),
(29, '2015-11-27', '10:00:00', 'C007', 38),
(30, '2015-11-27', '', 'C007', 38),
(31, '0000-00-00', '', 'C007', 38),
(32, '0000-00-00', '08:10:00', 'C006', 38),
(33, '0000-00-00', '', 'C007', 38),
(34, '0000-00-00', '', 'C007', 38),
(35, '0000-00-00', '', 'C007', 38),
(36, '0000-00-00', '08:10:00', 'C006', 38),
(37, '2015-11-27', '10:00:00', 'C007', 38),
(38, '2015-12-09', '08:00:00', 'C006', 39),
(39, '0000-00-00', '08:00:00', 'C006', 39),
(40, '2015-12-17', '13:15:00', 'C007', 41),
(41, '2015-10-15', '05:24:00', 'C007', 42);

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanel`
--

CREATE TABLE IF NOT EXISTS `interviewpanel` (
  `IntPanID` int(11) NOT NULL,
  `IntPanName` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewpanel`
--

INSERT INTO `interviewpanel` (`IntPanID`, `IntPanName`, `status`) VALUES
(2, 'Panel for QA', ''),
(3, 'Interview panel for BA', ''),
(4, 'New Panel for QAs', ''),
(5, 'Interview Panel on behalf of HR', ''),
(6, 'Default Interview Panel', 'default'),
(9, 'Interview Panel for Business Analyst', '');

-- --------------------------------------------------------

--
-- Table structure for table `interviewpaneldetails`
--

CREATE TABLE IF NOT EXISTS `interviewpaneldetails` (
  `InPaDeID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `IPMID` int(11) NOT NULL,
  `IntID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanelmember`
--

CREATE TABLE IF NOT EXISTS `interviewpanelmember` (
  `IPMID` int(11) NOT NULL,
  `EmpID` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewpanelmember`
--

INSERT INTO `interviewpanelmember` (`IPMID`, `EmpID`) VALUES
(2, 'E001'),
(3, 'E002'),
(4, 'E003');

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanelmemberdetails`
--

CREATE TABLE IF NOT EXISTS `interviewpanelmemberdetails` (
  `IntPanID` int(11) NOT NULL,
  `EmpID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewpanelmemberdetails`
--

INSERT INTO `interviewpanelmemberdetails` (`IntPanID`, `EmpID`) VALUES
(2, 'E002'),
(2, 'E003'),
(2, 'E004'),
(2, 'E006'),
(2, 'Panel for '),
(3, 'E002'),
(3, 'E003'),
(3, 'E004'),
(3, 'E006'),
(4, 'E002'),
(4, 'E003'),
(4, 'E004'),
(4, 'E006'),
(4, 'New Panel '),
(5, 'E002'),
(5, 'E003'),
(5, 'E006'),
(5, 'Interview '),
(6, 'Default In'),
(6, 'E001'),
(6, 'E002'),
(6, 'E003'),
(9, 'E002'),
(9, 'E003'),
(9, 'E004');

-- --------------------------------------------------------

--
-- Table structure for table `interviewschedule`
--

CREATE TABLE IF NOT EXISTS `interviewschedule` (
  `IntSchID` int(11) NOT NULL,
  `schdate` date NOT NULL,
  `schfrom` time NOT NULL,
  `schto` time NOT NULL,
  `IntID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewschedule`
--

INSERT INTO `interviewschedule` (`IntSchID`, `schdate`, `schfrom`, `schto`, `IntID`) VALUES
(1, '2015-10-05', '13:59:00', '12:59:00', 1),
(2, '2015-10-16', '12:59:00', '12:59:00', 1),
(3, '2015-10-15', '12:59:00', '01:00:00', 1),
(5, '2015-10-05', '13:59:00', '12:59:00', 1),
(6, '2015-10-16', '12:59:00', '12:59:00', 1),
(7, '2015-10-15', '12:59:00', '01:00:00', 1),
(8, '2015-10-15', '04:59:00', '22:00:00', 2),
(9, '2015-10-25', '13:59:00', '12:59:00', 2),
(10, '2015-10-10', '15:59:00', '13:00:00', 3),
(11, '2015-10-05', '12:59:00', '00:59:00', 3),
(12, '2015-10-22', '00:59:00', '01:00:00', 1),
(13, '2015-10-04', '00:00:00', '14:00:00', 1),
(14, '2015-10-31', '12:00:00', '01:59:00', 1),
(15, '2015-10-14', '13:59:00', '14:00:00', 11),
(16, '2015-10-23', '11:00:00', '13:00:00', 11),
(17, '2015-10-14', '13:59:00', '14:00:00', 11),
(18, '2015-10-23', '11:00:00', '13:00:00', 11),
(19, '2015-10-19', '01:59:00', '13:00:00', 12),
(20, '0000-00-00', '00:00:00', '00:00:00', 13),
(21, '0000-00-00', '00:00:00', '00:00:00', 13),
(22, '0000-00-00', '00:00:00', '00:00:00', 13),
(23, '0000-00-00', '00:00:00', '00:00:00', 13),
(24, '0000-00-00', '00:00:00', '00:00:00', 13),
(25, '2015-10-15', '10:00:00', '13:00:00', 13),
(26, '2015-10-23', '17:00:00', '18:00:00', 13),
(27, '2015-10-29', '13:00:00', '14:00:00', 13),
(28, '2015-11-10', '12:00:00', '13:00:00', 13),
(29, '2015-11-27', '12:00:00', '14:00:00', 14),
(30, '2015-11-28', '15:00:00', '17:00:00', 15),
(31, '2015-11-29', '09:00:00', '11:00:00', 15),
(32, '2015-11-30', '14:00:00', '16:00:00', 16),
(33, '2015-11-30', '14:00:00', '16:00:00', 17),
(34, '2015-11-30', '14:00:00', '16:00:00', 18),
(35, '2015-11-30', '14:00:00', '16:00:00', 19),
(36, '2015-11-30', '14:00:00', '16:00:00', 20),
(37, '2015-11-30', '14:00:00', '16:00:00', 21),
(38, '2015-11-30', '14:00:00', '16:00:00', 22),
(39, '2015-11-30', '15:45:00', '18:05:00', 23),
(40, '2015-11-30', '15:45:00', '18:05:00', 24),
(41, '2015-11-30', '15:00:00', '16:30:00', 25),
(42, '2015-11-30', '15:00:00', '16:30:00', 26),
(43, '2015-11-30', '04:00:00', '17:00:00', 27),
(44, '2015-11-26', '03:00:00', '15:00:00', 28),
(45, '2015-11-26', '03:00:00', '15:00:00', 29),
(46, '2015-11-27', '05:30:00', '06:00:00', 30),
(47, '2015-11-26', '03:45:00', '02:50:00', 31),
(48, '2015-11-26', '12:00:00', '13:00:00', 32),
(49, '2015-11-27', '02:30:00', '21:00:00', 33),
(50, '2015-11-26', '02:30:00', '21:00:00', 34),
(51, '2015-11-25', '03:45:00', '03:42:00', 35),
(52, '2015-11-25', '14:30:00', '19:00:00', 36),
(53, '2015-11-25', '08:10:00', '09:00:00', 37),
(54, '2015-11-27', '10:00:00', '13:00:00', 37),
(55, '2015-11-18', '08:10:00', '10:00:00', 38),
(56, '2015-12-09', '08:00:00', '10:00:00', 39),
(57, '2015-12-17', '13:00:00', '14:00:00', 40),
(58, '2015-12-31', '09:10:00', '10:00:00', 40),
(59, '2016-01-14', '01:00:00', '01:59:00', 41),
(60, '2016-01-14', '13:00:00', '14:00:00', 42);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobpositionvsinterviews`
--
CREATE TABLE IF NOT EXISTS `jobpositionvsinterviews` (
`dateCreated` date
,`jbName` varchar(30)
,`Number_Of_Interviews` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobpositionvsjoboffered`
--
CREATE TABLE IF NOT EXISTS `jobpositionvsjoboffered` (
`Job_Name` varchar(30)
,`Job_Offered_Candidates` bigint(21)
,`dateCreated` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `jobpositionvsrejected`
--
CREATE TABLE IF NOT EXISTS `jobpositionvsrejected` (
`dateCreated` date
,`jbName` varchar(30)
,`Rejected_Candidates` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `jobpositon`
--

CREATE TABLE IF NOT EXISTS `jobpositon` (
  `jbID` varchar(10) NOT NULL,
  `jbName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpositon`
--

INSERT INTO `jobpositon` (`jbID`, `jbName`) VALUES
('jp001', 'Software Engineer'),
('jp002', 'Software Architect'),
('jp003', 'Business Analysist'),
('jp004', 'Marketing Assistant'),
('jp005', 'Receptionist'),
('jp006', 'Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `usrid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`usrid`, `username`, `password`, `type`) VALUES
(1, 'Admin', '1234', 'admin_officer'),
(2, 'SystemAdmin', 'abcd', 'system_admin');

-- --------------------------------------------------------

--
-- Table structure for table `recruitmentsession`
--

CREATE TABLE IF NOT EXISTS `recruitmentsession` (
  `RSID` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dateCreated` date NOT NULL,
  `jobPositionID` varchar(10) NOT NULL,
  `sessionStatusID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitmentsession`
--

INSERT INTO `recruitmentsession` (`RSID`, `name`, `dateCreated`, `jobPositionID`, `sessionStatusID`) VALUES
('RS001', 'session1', '2014-02-03', 'jp001', 'ss001'),
('RS002', 'session2', '2014-09-07', 'jp005', 'ss001'),
('RS003', 'quick session', '2014-06-10', 'jp006', 'ss001'),
('RS005', 'session6', '2014-08-19', 'jp001', 'ss001'),
('RS006', 'session6', '2014-10-24', 'jp002', 'ss001'),
('RS007', 'session6', '2014-11-05', 'jp003', 'ss001'),
('RS008', 'session6', '2014-12-17', 'jp004', 'ss001'),
('RS009', 'session6', '2015-08-19', 'jp005', 'ss001'),
('RS010', 'session6', '2015-08-19', 'jp006', 'ss001'),
('RS011', 'kkk', '2015-08-19', 'jp001', 'ss001'),
('RS012', 'yyy', '2015-08-19', 'jp003', 'ss001'),
('RS013', 'Custom Session', '2015-08-20', 'jp002', 'ss001'),
('RS014', 'Test Session', '2015-08-20', 'jp004', 'ss001'),
('RS015', 'New Session', '2015-08-20', 'jp005', 'ss001'),
('RS016', 'Session new', '2015-08-20', 'jp006', 'ss001'),
('RS017', 'Test Session', '2015-08-21', 'jp001', 'ss001'),
('RS018', 'jnui', '2015-08-21', 'jp002', 'ss003'),
('RS019', 'sd', '2015-08-21', 'jp001', 'ss001'),
('RS020', 'new Session', '2015-08-24', 'jp003', 'ss001'),
('RS021', 'Session test', '2015-08-24', 'jp004', 'ss001'),
('RS022', 'Session test', '2015-08-24', 'jp005', 'ss001'),
('RS023', 'TestBySha', '2015-11-18', 'jp001', 'ss001'),
('RS024', 'shaliiiiiiii', '2015-11-18', 'jp003', 'ss001'),
('RS025', 'ssss', '2015-11-18', 'jp001', 'ss001');

-- --------------------------------------------------------

--
-- Table structure for table `sessionstatus`
--

CREATE TABLE IF NOT EXISTS `sessionstatus` (
  `sessionStatusID` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessionstatus`
--

INSERT INTO `sessionstatus` (`sessionStatusID`, `status`, `description`) VALUES
('ss001', 'Checking Filtered Details', 'system had filtered cvs,details needed to be checked'),
('ss002', 'Scheduling First Interview', 'authorized have checked the filtered details and filled what has not been extracted.now schedule first interview'),
('ss003', 'Completing First Interview', 'interview scheduling has been done,complete who are to be selected for second round '),
('ss004', 'Scheduling Second Interview', 'first interview has been completed,now schedule the second interview'),
('ss005', 'Completing Second Interview', 'need to select who needed to be recruited after second interview'),
('ss006', 'Finished', 'whole session was finished');

-- --------------------------------------------------------

--
-- Stand-in structure for view `universityvsjobofferedcandidates`
--
CREATE TABLE IF NOT EXISTS `universityvsjobofferedcandidates` (
`University` varchar(70)
,`dateCreated` date
,`Job_Offered_Candidates` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `universityvsrejectedcandidates`
--
CREATE TABLE IF NOT EXISTS `universityvsrejectedcandidates` (
`University` varchar(70)
,`dateCreated` date
,`COUNT(candidate.candStatusID)` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `jobpositionvsinterviews`
--
DROP TABLE IF EXISTS `jobpositionvsinterviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jobpositionvsinterviews` AS select `recruitmentsession`.`dateCreated` AS `dateCreated`,`jobpositon`.`jbName` AS `jbName`,count(`interview`.`IntID`) AS `Number_Of_Interviews` from ((`interview` join `recruitmentsession` on((`interview`.`RSID` = `recruitmentsession`.`RSID`))) join `jobpositon` on((`recruitmentsession`.`jobPositionID` = `jobpositon`.`jbID`))) group by `jobpositon`.`jbName`;

-- --------------------------------------------------------

--
-- Structure for view `jobpositionvsjoboffered`
--
DROP TABLE IF EXISTS `jobpositionvsjoboffered`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jobpositionvsjoboffered` AS select `jobpositon`.`jbName` AS `Job_Name`,count(`candidate`.`CandID`) AS `Job_Offered_Candidates`,`recruitmentsession`.`dateCreated` AS `dateCreated` from (((`candidate` join `cv` on((`candidate`.`cvID` = `cv`.`cvID`))) join `recruitmentsession` on((`recruitmentsession`.`RSID` = `cv`.`RSID`))) join `jobpositon` on((`jobpositon`.`jbID` = `recruitmentsession`.`jobPositionID`))) where (`candidate`.`candStatusID` = 'CS008') group by `jobpositon`.`jbName`,`recruitmentsession`.`dateCreated`;

-- --------------------------------------------------------

--
-- Structure for view `jobpositionvsrejected`
--
DROP TABLE IF EXISTS `jobpositionvsrejected`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `jobpositionvsrejected` AS select `recruitmentsession`.`dateCreated` AS `dateCreated`,`jobpositon`.`jbName` AS `jbName`,count(`candidate`.`CandID`) AS `Rejected_Candidates` from (((`candidate` join `cv` on((`candidate`.`cvID` = `cv`.`cvID`))) join `recruitmentsession` on((`cv`.`RSID` = `recruitmentsession`.`RSID`))) join `jobpositon` on((`recruitmentsession`.`jobPositionID` = `jobpositon`.`jbID`))) where ((`candidate`.`candStatusID` = 'CS002') or (`candidate`.`candStatusID` = 'CS006') or (`candidate`.`candStatusID` = 'CS009')) group by `jobpositon`.`jbName`;

-- --------------------------------------------------------

--
-- Structure for view `universityvsjobofferedcandidates`
--
DROP TABLE IF EXISTS `universityvsjobofferedcandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `universityvsjobofferedcandidates` AS select `candidate`.`University` AS `University`,`recruitmentsession`.`dateCreated` AS `dateCreated`,count(`candidate`.`candStatusID`) AS `Job_Offered_Candidates` from ((`candidate` join `cv` on((`candidate`.`cvID` = `cv`.`cvID`))) join `recruitmentsession` on((`cv`.`RSID` = `recruitmentsession`.`RSID`))) where (`candidate`.`candStatusID` = 'CS008') group by `candidate`.`University`;

-- --------------------------------------------------------

--
-- Structure for view `universityvsrejectedcandidates`
--
DROP TABLE IF EXISTS `universityvsrejectedcandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `universityvsrejectedcandidates` AS select `candidate`.`University` AS `University`,`recruitmentsession`.`dateCreated` AS `dateCreated`,count(`candidate`.`candStatusID`) AS `COUNT(candidate.candStatusID)` from ((`candidate` join `cv` on((`candidate`.`cvID` = `cv`.`cvID`))) join `recruitmentsession` on((`cv`.`RSID` = `recruitmentsession`.`RSID`))) where ((`candidate`.`candStatusID` = 'CS002') or (`candidate`.`candStatusID` = 'CS006') or (`candidate`.`candStatusID` = 'CS009')) group by `candidate`.`University`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`CandID`), ADD KEY `candStatusID` (`candStatusID`), ADD KEY `cvID` (`cvID`);

--
-- Indexes for table `candidatestatus`
--
ALTER TABLE `candidatestatus`
  ADD UNIQUE KEY `candstatusID` (`candstatusID`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`thresholdID`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteriaID`);

--
-- Indexes for table `criteria1_3`
--
ALTER TABLE `criteria1_3`
  ADD PRIMARY KEY (`MarkID`), ADD KEY `CandID` (`CandID`);

--
-- Indexes for table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`cvID`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`DesigID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`evalID`), ADD KEY `criteriaID` (`criteriaID`);

--
-- Indexes for table `interview`
--
ALTER TABLE `interview`
  ADD PRIMARY KEY (`IntID`);

--
-- Indexes for table `interviewdetails`
--
ALTER TABLE `interviewdetails`
  ADD PRIMARY KEY (`IntDetID`);

--
-- Indexes for table `interviewpanel`
--
ALTER TABLE `interviewpanel`
  ADD PRIMARY KEY (`IntPanID`);

--
-- Indexes for table `interviewpaneldetails`
--
ALTER TABLE `interviewpaneldetails`
  ADD PRIMARY KEY (`InPaDeID`);

--
-- Indexes for table `interviewpanelmember`
--
ALTER TABLE `interviewpanelmember`
  ADD PRIMARY KEY (`IPMID`);

--
-- Indexes for table `interviewpanelmemberdetails`
--
ALTER TABLE `interviewpanelmemberdetails`
  ADD PRIMARY KEY (`IntPanID`,`EmpID`);

--
-- Indexes for table `interviewschedule`
--
ALTER TABLE `interviewschedule`
  ADD PRIMARY KEY (`IntSchID`);

--
-- Indexes for table `jobpositon`
--
ALTER TABLE `jobpositon`
  ADD PRIMARY KEY (`jbID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`usrid`);

--
-- Indexes for table `recruitmentsession`
--
ALTER TABLE `recruitmentsession`
  ADD PRIMARY KEY (`RSID`), ADD KEY `sessionStatusID` (`sessionStatusID`);

--
-- Indexes for table `sessionstatus`
--
ALTER TABLE `sessionstatus`
  ADD PRIMARY KEY (`sessionStatusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteriaID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `criteria1_3`
--
ALTER TABLE `criteria1_3`
  MODIFY `MarkID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `DesigID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `evalID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `interview`
--
ALTER TABLE `interview`
  MODIFY `IntID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `interviewdetails`
--
ALTER TABLE `interviewdetails`
  MODIFY `IntDetID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `interviewpanel`
--
ALTER TABLE `interviewpanel`
  MODIFY `IntPanID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `interviewpaneldetails`
--
ALTER TABLE `interviewpaneldetails`
  MODIFY `InPaDeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interviewpanelmember`
--
ALTER TABLE `interviewpanelmember`
  MODIFY `IPMID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `interviewschedule`
--
ALTER TABLE `interviewschedule`
  MODIFY `IntSchID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `usrid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
ADD CONSTRAINT `candidate_ibfk_1` FOREIGN KEY (`candStatusID`) REFERENCES `candidatestatus` (`candstatusID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `candidate_ibfk_2` FOREIGN KEY (`cvID`) REFERENCES `cv` (`cvID`);

--
-- Constraints for table `criteria1_3`
--
ALTER TABLE `criteria1_3`
ADD CONSTRAINT `criteria1_3_ibfk_1` FOREIGN KEY (`CandID`) REFERENCES `candidate` (`CandID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
ADD CONSTRAINT `criteriaID_fk` FOREIGN KEY (`criteriaID`) REFERENCES `criteria` (`criteriaID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruitmentsession`
--
ALTER TABLE `recruitmentsession`
ADD CONSTRAINT `recruitmentsession_ibfk_1` FOREIGN KEY (`sessionStatusID`) REFERENCES `sessionstatus` (`sessionStatusID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
