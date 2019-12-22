-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2019 at 04:28 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Adminid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `phone` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `createDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Adminid`, `firstname`, `lastname`, `Date`, `phone`, `mail`, `password`, `createDate`) VALUES
(9999, 'phan', 'minh', '0000-00-00', 355820526, 'h@gmail.com', '123456', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Classid` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `classname` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Classid`, `createDate`, `classname`) VALUES
(10000, '0000-00-00 00:00:00', 'K62CD'),
(10001, '0000-00-00 00:00:00', 'K62CE'),
(10002, '0000-00-00 00:00:00', 'K62CF'),
(10003, '0000-00-00 00:00:00', 'K62CG'),
(10004, '0000-00-00 00:00:00', 'K62CH');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamId` int(11) NOT NULL,
  `Examcode` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `SchoolName` varchar(45) NOT NULL,
  `RegStatus` varchar(45) NOT NULL,
  `CreatedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ExamId`, `Examcode`, `Year`, `SchoolName`, `RegStatus`, `CreatedDate`) VALUES
(1, 'm001', '2019', 'DHCN', 'N', '0000-00-00 00:00:00'),
(2, 'm002', '2019', 'DHCN', 'N', '0000-00-00 00:00:00'),
(3, 'm003', '2019', 'DHCN', 'N', '0000-00-00 00:00:00'),
(4, 'm004', '2019', 'DHCN', 'N', '0000-00-00 00:00:00'),
(5, 'm005', '2019', 'DHCN', 'N', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `examdetail`
--

CREATE TABLE `examdetail` (
  `ExamDetailid` int(11) NOT NULL,
  `ExamDate` varchar(45) NOT NULL,
  `Timestart` varchar(45) NOT NULL,
  `Timeend` varchar(45) NOT NULL,
  `ExamDetailCode` varchar(45) NOT NULL,
  `CreatedDate` varchar(45) NOT NULL,
  `Subject_SubjectID` int(11) NOT NULL,
  `Exam_ExamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examdetail`
--

INSERT INTO `examdetail` (`ExamDetailid`, `ExamDate`, `Timestart`, `Timeend`, `ExamDetailCode`, `CreatedDate`, `Subject_SubjectID`, `Exam_ExamId`) VALUES
(50, '0', '25', '30', '1', '0', 1111, 1),
(51, '0', '25', '30', '1', '0', 1112, 5),
(53, '0', '25', '30', '1', '0', 1113, 4),
(54, '0', '25', '30', '1', '0', 1114, 3);

-- --------------------------------------------------------

--
-- Table structure for table `exroom`
--

CREATE TABLE `exroom` (
  `ExroomId` int(11) NOT NULL,
  `ExRoomAddress` varchar(45) NOT NULL,
  `CreatedDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exroom`
--

INSERT INTO `exroom` (`ExroomId`, `ExRoomAddress`, `CreatedDate`) VALUES
(100, 'G3', '0'),
(101, 'G3', '0'),
(102, 'G3', '0'),
(103, 'G3', '0'),
(104, 'G3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `groupexamdetailexroom`
--

CREATE TABLE `groupexamdetailexroom` (
  `maxMember` int(11) NOT NULL,
  `NumMerber` varchar(45) NOT NULL,
  `Exroom_ExroomId` int(11) NOT NULL,
  `ExamDetail_ExamDetailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupexamdetailexroom`
--

INSERT INTO `groupexamdetailexroom` (`maxMember`, `NumMerber`, `Exroom_ExroomId`, `ExamDetail_ExamDetailid`) VALUES
(500, '1000', 100, 50),
(600, '1000', 101, 51),
(700, '1000', 102, 52),
(800, '1000', 103, 53);

-- --------------------------------------------------------

--
-- Table structure for table `groupstudentexamdetail`
--

CREATE TABLE `groupstudentexamdetail` (
  `Students_studentid` int(11) NOT NULL,
  `Exroom_ExroomId` int(11) NOT NULL,
  `ExamDetail_ExamDetailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupstudentexamdetail`
--

INSERT INTO `groupstudentexamdetail` (`Students_studentid`, `Exroom_ExroomId`, `ExamDetail_ExamDetailid`) VALUES
(17020885, 100, 50),
(17020885, 102, 52),
(17020885, 103, 54),
(17020885, 104, 50),
(17020886, 101, 51);

-- --------------------------------------------------------

--
-- Table structure for table `groupstudentsubject`
--

CREATE TABLE `groupstudentsubject` (
  `Examban` varchar(45) NOT NULL,
  `Students_studentid` int(11) NOT NULL,
  `subject_SubjectID` int(11) NOT NULL,
  `Exam_ExamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupstudentsubject`
--

INSERT INTO `groupstudentsubject` (`Examban`, `Students_studentid`, `subject_SubjectID`, `Exam_ExamId`) VALUES
('D', 17020885, 1111, 1),
('C', 17020886, 1111, 1),
('E', 17020889, 1111, 1),
('B', 17020890, 1111, 1),
('A', 170208808, 1111, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `date of birth` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `createDate` datetime NOT NULL,
  `sex` varchar(45) NOT NULL,
  `Class_Classid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentid`, `firstname`, `lastname`, `date of birth`, `mail`, `password`, `createDate`, `sex`, `Class_Classid`) VALUES
(17020885, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10000),
(17020886, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10000),
(17020887, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10001),
(17020888, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10001),
(17020889, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10002),
(17020890, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10002),
(17020891, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10003),
(17020892, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10003),
(17020893, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10004),
(17020894, 'tran', 'manh', '0000-00-00', 'f@gmail.com', '123', '0000-00-00 00:00:00', 'NAM', 10004);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(45) NOT NULL,
  `TimeExam` varchar(11) NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`, `TimeExam`, `CreatedDate`) VALUES
(1111, 'A', '45', '0000-00-00 00:00:00'),
(1112, 'A', '45', '0000-00-00 00:00:00'),
(1113, 'A', '45', '0000-00-00 00:00:00'),
(1114, 'A', '45', '0000-00-00 00:00:00'),
(1115, 'A', '45', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Adminid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Classid`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`ExamId`);

--
-- Indexes for table `examdetail`
--
ALTER TABLE `examdetail`
  ADD PRIMARY KEY (`ExamDetailid`,`Subject_SubjectID`,`Exam_ExamId`),
  ADD KEY `fk_ExamDetail_Subject1_idx` (`Subject_SubjectID`),
  ADD KEY `fk_ExamDetail_Exam1_idx` (`Exam_ExamId`);

--
-- Indexes for table `exroom`
--
ALTER TABLE `exroom`
  ADD PRIMARY KEY (`ExroomId`);

--
-- Indexes for table `groupexamdetailexroom`
--
ALTER TABLE `groupexamdetailexroom`
  ADD PRIMARY KEY (`Exroom_ExroomId`,`ExamDetail_ExamDetailid`),
  ADD KEY `fk_GroupExamDetailExroom_ExamDetail1_idx` (`ExamDetail_ExamDetailid`);

--
-- Indexes for table `groupstudentexamdetail`
--
ALTER TABLE `groupstudentexamdetail`
  ADD PRIMARY KEY (`Students_studentid`,`Exroom_ExroomId`,`ExamDetail_ExamDetailid`),
  ADD KEY `fk_GroupStudentExamDetail_Exroom1_idx` (`Exroom_ExroomId`),
  ADD KEY `fk_GroupStudentExamDetail_ExamDetail1_idx` (`ExamDetail_ExamDetailid`);

--
-- Indexes for table `groupstudentsubject`
--
ALTER TABLE `groupstudentsubject`
  ADD PRIMARY KEY (`Students_studentid`,`subject_SubjectID`,`Exam_ExamId`),
  ADD KEY `fk_table9_Students_idx` (`Students_studentid`),
  ADD KEY `fk_GroupStudentSubject_subject1_idx` (`subject_SubjectID`),
  ADD KEY `fk_GroupStudentSubject_Exam1_idx` (`Exam_ExamId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`,`Class_Classid`),
  ADD KEY `fk_Students_Class1_idx` (`Class_Classid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `Classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17020915;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1137;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examdetail`
--
ALTER TABLE `examdetail`
  ADD CONSTRAINT `fk_ExamDetail_Exam1` FOREIGN KEY (`Exam_ExamId`) REFERENCES `mydb`.`exam` (`ExamId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ExamDetail_Subject1` FOREIGN KEY (`Subject_SubjectID`) REFERENCES `mydb`.`subject` (`SubjectID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupexamdetailexroom`
--
ALTER TABLE `groupexamdetailexroom`
  ADD CONSTRAINT `fk_GroupExamDetailExroom_ExamDetail1` FOREIGN KEY (`ExamDetail_ExamDetailid`) REFERENCES `mydb`.`examdetail` (`ExamDetailid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GroupExamDetailExroom_Exroom1` FOREIGN KEY (`Exroom_ExroomId`) REFERENCES `mydb`.`exroom` (`ExroomId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupstudentexamdetail`
--
ALTER TABLE `groupstudentexamdetail`
  ADD CONSTRAINT `fk_GroupStudentExamDetail_ExamDetail1` FOREIGN KEY (`ExamDetail_ExamDetailid`) REFERENCES `mydb`.`examdetail` (`ExamDetailid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GroupStudentExamDetail_Exroom1` FOREIGN KEY (`Exroom_ExroomId`) REFERENCES `mydb`.`exroom` (`ExroomId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GroupStudentExamDetail_Students1` FOREIGN KEY (`Students_studentid`) REFERENCES `mydb`.`students` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupstudentsubject`
--
ALTER TABLE `groupstudentsubject`
  ADD CONSTRAINT `fk_GroupStudentSubject_Exam1` FOREIGN KEY (`Exam_ExamId`) REFERENCES `mydb`.`exam` (`ExamId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GroupStudentSubject_subject1` FOREIGN KEY (`subject_SubjectID`) REFERENCES `mydb`.`subject` (`SubjectID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table9_Students` FOREIGN KEY (`Students_studentid`) REFERENCES `mydb`.`students` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_Students_Class1` FOREIGN KEY (`Class_Classid`) REFERENCES `mydb`.`class` (`Classid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
