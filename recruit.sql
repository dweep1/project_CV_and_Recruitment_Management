-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2015 at 08:27 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `recruit`
--
CREATE DATABASE IF NOT EXISTS `recruit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recruit`;

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
  `cvID` varchar(8) NOT NULL,
  PRIMARY KEY (`CandID`),
  KEY `candStatusID` (`candStatusID`),
  KEY `cvID` (`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`CandID`, `NIC`, `FirstName`, `LastName`, `DateOfBirth`, `email`, `ContactNo`, `University`, `candStatusID`, `cvID`) VALUES
('C001', '906548765V', '', '', '1990-10-05', 'omal.de.silva@slt.net', 0115987639, '', 'CS003', 'CV001'),
('C002', '852314567V', '', '', '1985-06-21', 'mymail@ssssl.com', 0771238383, '', 'CS003', 'CV002'),
('C003', '903426543V', '', '', '0000-00-00', 'Nimali_tyh@ucsc.cmb.ac.lk', 0114785445, '', 'CS003', 'CV003'),
('C004', '835562311v', '', '', '1983-06-16', 'j_.fdo_prof@wpi.edu', 0945084505, '', 'CS003', 'CV004'),
('C005', '921692374v', '', '', '1992-06-17', 'ghasithalakmal@gmail.com', 0775829738, '', 'CS003', 'CV005'),
('C006', '935890233V', '', '', '1993-03-29', 'warune.samarawickrama@gmail.com', 0773985028, '', 'CS003', 'CV006'),
('C007', '935470730V', '', '', '1993-02-16', 'sulakshichandrasiri@gmail.com', 0777606211, '', 'CS003', 'CV007'),
('C008', '918083162V', '', '', '0000-00-00', 'lakshikadissanayake@yahoo.com', 0770069716, '', 'CS003', 'CV008'),
('C009', '', '', '', '1993-02-16', 'sulakshichandrasiri@gmail.com', 0777606211, '', 'CS004', 'CV009');

-- --------------------------------------------------------

--
-- Table structure for table `candidatestatus`
--

CREATE TABLE IF NOT EXISTS `candidatestatus` (
  `candstatusID` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  UNIQUE KEY `candstatusID` (`candstatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidatestatus`
--

INSERT INTO `candidatestatus` (`candstatusID`, `name`, `description`) VALUES
('CS001', 'Selected - CV', ''),
('CS002', 'Rejected - CV', ''),
('CS003', 'Unchecked - CV', ''),
('CS004', 'Flagged - CV', ''),
('CS005', 'Selected - 1st interview', ''),
('CS006', 'Rejected - 1st interview', ''),
('CS007', 'On hold', ''),
('CS008', 'Job offered', ''),
('CS009', 'Rejected - 2nd interview', '');

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE IF NOT EXISTS `cv` (
  `cvID` varchar(8) NOT NULL,
  `submittedCV` varchar(50) NOT NULL,
  `submittedDate` date NOT NULL,
  `RSID` varchar(8) NOT NULL,
  PRIMARY KEY (`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cv`
--

INSERT INTO `cv` (`cvID`, `submittedCV`, `submittedDate`, `RSID`) VALUES
('CV001', 'uploads/CVthresholdrejects.pdf', '2015-08-31', 'RS028'),
('CV002', 'uploads/Engineer.pdf', '2015-08-31', 'RS028'),
('CV003', 'uploads/Nimali.pdf', '2015-08-31', 'RS028'),
('CV004', 'uploads/ResumeJoseph.pdf', '2015-08-31', 'RS028'),
('CV005', 'uploads/Hasitha Lakmal CV.pdf', '2015-08-31', 'RS028'),
('CV006', 'uploads/my cv.pdf', '2015-08-31', 'RS028'),
('CV007', 'uploads/Curriculum Vitea.docx', '2015-08-31', 'RS028'),
('CV008', 'uploads/APPLICATION-signed.pdf', '2015-08-31', 'RS029'),
('CV009', 'uploads/Curriculum Vitea no NIC.docx', '2015-08-31', 'RS030'),
('CV010', 'uploads/deemanthi.pdf', '2015-08-31', 'RS030');

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
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `FirstName`, `LastName`, `email`, `TelNo`) VALUES
('E001', 'Pubudu', 'Fernando', 'pubudufdo@gmail.com', '0771877531'),
('E002', 'Ruwan', 'Fernando', 'ruwanfdo@gmail.com', '0776823547'),
('E003', 'Sunil', 'Perera', 'sunil@gmail.com', '0778976436'),
('E004', 'Amila', 'Peiris', 'amila.peiris@gmail.com', '0712345678'),
('E005', 'Sandun', 'Silva', 'sandun@gmail.com', '0712345654'),
('E006', 'Gayan', 'Perera', 'gayan.88@gmail.com', '0772345321'),
('E007', 'Nalin', 'Perera', 'nalin99@gmail.com', '0712312345');

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE IF NOT EXISTS `interview` (
  `IntID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `RSID` varchar(7) NOT NULL,
  `EvaCriID` varchar(7) NOT NULL,
  `IntPanID` int(11) NOT NULL,
  PRIMARY KEY (`IntID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interviewdetails`
--

CREATE TABLE IF NOT EXISTS `interviewdetails` (
  `IntDetID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `CandID` varchar(7) NOT NULL,
  `IntID` int(11) NOT NULL,
  PRIMARY KEY (`IntDetID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `interviewdetails`
--

INSERT INTO `interviewdetails` (`IntDetID`, `date`, `time`, `CandID`, `IntID`) VALUES
(1, '2015-08-24', '4.00pm', 'C010', 0);

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanel`
--

CREATE TABLE IF NOT EXISTS `interviewpanel` (
  `IntPanID` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`IntPanID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `interviewpanel`
--

INSERT INTO `interviewpanel` (`IntPanID`, `status`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `interviewpaneldetails`
--

CREATE TABLE IF NOT EXISTS `interviewpaneldetails` (
  `InPaDeID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `time` varchar(8) NOT NULL,
  `IPMID` int(11) NOT NULL,
  `IntID` int(11) NOT NULL,
  PRIMARY KEY (`InPaDeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanelmember`
--

CREATE TABLE IF NOT EXISTS `interviewpanelmember` (
  `IPMID` int(11) NOT NULL AUTO_INCREMENT,
  `EmpID` int(11) NOT NULL,
  PRIMARY KEY (`IPMID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `interviewpanelmemberdetails`
--

CREATE TABLE IF NOT EXISTS `interviewpanelmemberdetails` (
  `IntPanID` int(11) NOT NULL,
  `EmpID` varchar(10) NOT NULL,
  PRIMARY KEY (`IntPanID`,`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interviewpanelmemberdetails`
--

INSERT INTO `interviewpanelmemberdetails` (`IntPanID`, `EmpID`) VALUES
(1, 'E001'),
(1, 'E002'),
(1, 'E003');

-- --------------------------------------------------------

--
-- Table structure for table `jobpositon`
--

CREATE TABLE IF NOT EXISTS `jobpositon` (
  `jbID` varchar(10) NOT NULL,
  `jbName` varchar(30) NOT NULL,
  PRIMARY KEY (`jbID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobpositon`
--

INSERT INTO `jobpositon` (`jbID`, `jbName`) VALUES
('jp001', 'Software Engineer'),
('jp002', 'Software Architect'),
('jp003', 'Business Analysist'),
('jp004', 'Marketing Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `recruitmentsession`
--

CREATE TABLE IF NOT EXISTS `recruitmentsession` (
  `RSID` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dateCreated` date NOT NULL,
  `jobPositionID` varchar(10) NOT NULL,
  `sessionStatusID` varchar(10) NOT NULL,
  PRIMARY KEY (`RSID`),
  KEY `sessionStatusID` (`sessionStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitmentsession`
--

INSERT INTO `recruitmentsession` (`RSID`, `name`, `dateCreated`, `jobPositionID`, `sessionStatusID`) VALUES
('RS001', 'session1', '2015-08-18', 'jp001', 'ss001'),
('RS002', 'session2', '2015-08-18', 'jp002', 'ss001'),
('RS003', 'quick session', '2015-08-18', 'jp003', 'ss001'),
('RS005', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS006', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS007', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS008', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS009', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS010', 'session6', '2015-08-19', 'jp002', 'ss001'),
('RS011', 'kkk', '2015-08-19', 'jp002', 'ss001'),
('RS012', 'yyy', '2015-08-19', 'jp003', 'ss001'),
('RS013', 'Custom Session', '2015-08-20', 'jp002', 'ss001'),
('RS014', 'Test Session', '2015-08-20', 'jp003', 'ss001'),
('RS015', 'New Session', '2015-08-20', 'jp002', 'ss001'),
('RS016', 'Session new', '2015-08-20', 'jp001', 'ss001'),
('RS017', 'Test Session', '2015-08-21', 'jp003', 'ss001'),
('RS018', 'jnui', '2015-08-21', 'jp002', 'ss001'),
('RS019', 'sd', '2015-08-21', 'jp001', 'ss001'),
('RS020', 'new Session', '2015-08-24', 'jp002', 'ss001'),
('RS021', 'Session test', '2015-08-24', 'jp002', 'ss001'),
('RS022', 'Session test', '2015-08-24', 'jp002', 'ss001'),
('RS023', 'Happy Session', '2015-08-24', 'jp004', 'ss001'),
('RS024', 'Happy Session', '2015-08-24', 'jp004', 'ss001'),
('RS025', 'session jkl', '2015-08-31', 'jp003', 'ss001'),
('RS026', 'session uk', '2015-08-31', 'jp003', 'ss001'),
('RS027', 'session yui', '2015-08-31', 'jp001', 'ss001'),
('RS028', 'session jkln', '2015-08-31', 'jp002', 'ss001'),
('RS029', 'session opop', '2015-08-31', 'jp002', 'ss001'),
('RS030', 'session opopp', '2015-08-31', 'jp003', 'ss001'),
('RS031', 'nn', '2015-09-18', 'jp001', 'ss001');

-- --------------------------------------------------------

--
-- Table structure for table `sessionstatus`
--

CREATE TABLE IF NOT EXISTS `sessionstatus` (
  `sessionStatusID` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`sessionStatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessionstatus`
--

INSERT INTO `sessionstatus` (`sessionStatusID`, `status`, `description`) VALUES
('ss001', 'toCheckFiltered', 'system had filtered cvs,details needed to be checked'),
('ss002', 'toScheduleFirst', 'authorized have checked the filtered details and filled what has not been extracted.now schedule first interview'),
('ss003', 'toCompleteFirst', 'interview scheduling has been done,complete who are to be selected for second round '),
('ss004', 'toScheduleSecond', 'first interview has been completed,now schedule the second interview'),
('ss005', 'toCompleteSecond', 'need to select who needed to be recruited after second interview'),
('ss006', 'Finished', 'whole session was finished');

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
-- Constraints for table `recruitmentsession`
--
ALTER TABLE `recruitmentsession`
  ADD CONSTRAINT `recruitmentsession_ibfk_1` FOREIGN KEY (`sessionStatusID`) REFERENCES `sessionstatus` (`sessionStatusID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
