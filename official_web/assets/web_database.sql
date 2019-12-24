-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2019 at 06:10 AM
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
  `adminname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `phone` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Adminid`, `adminname`, `firstname`, `lastname`, `Date`, `phone`, `mail`, `password`, `createDate`) VALUES
(6, 'abcd', 'tran', 'con', '2019-12-03', 1234567890, 'abcd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-12-23 21:13:30'),
(102, 'fancol', 'Ngọc', 'Trần', '2019-12-03', 1234567890, 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-12-24 02:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Classid` int(11) NOT NULL,
  `classname` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Classid`, `classname`, `createDate`) VALUES
(10000, 'K62CD', '2019-12-23 07:19:41'),
(10001, 'K62CE', '2019-12-23 07:19:55'),
(10002, 'K62CF', '2019-12-23 07:20:02'),
(10003, 'K62CG', '2019-12-23 07:20:11'),
(10004, 'K62CH', '2019-12-23 07:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `ExamId` int(11) NOT NULL,
  `Examcode` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `SchoolName` varchar(45) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`ExamId`, `Examcode`, `Year`, `SchoolName`, `CreatedDate`) VALUES
(1, 'm001', '2019', 'DHCN', '2019-12-23 07:21:26'),
(2, 'm002', '2019', 'DHCN', '2019-12-23 07:21:31'),
(3, 'm003', '2019', 'DHCN', '2019-12-23 07:21:36'),
(4, 'm004', '2019', 'DHCN', '2019-12-23 07:21:42'),
(5, 'm005', '2019', 'DHCN', '2019-12-23 07:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `examdetail`
--

CREATE TABLE `examdetail` (
  `ExamDetailid` int(11) NOT NULL,
  `Sub` varchar(45) NOT NULL,
  `ro` varchar(45) NOT NULL,
  `ExamDate` date NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeEnd` time NOT NULL,
  `CreateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examdetail`
--

INSERT INTO `examdetail` (`ExamDetailid`, `Sub`, `ro`, `ExamDate`, `TimeStart`, `TimeEnd`, `CreateDate`) VALUES
(10003, 'Lý', 'GD3', '2019-12-26', '13:00:00', '14:00:00', '2019-12-24 05:05:59'),
(10005, 'Sinh', 'G3', '2019-02-18', '04:30:00', '05:30:00', '2019-12-24 00:04:33'),
(10006, 'Toán ', 'G3', '1900-01-02', '08:30:00', '05:20:00', '2019-12-24 05:06:12'),
(10007, 'Anh', 'G3', '2019-03-01', '04:30:00', '05:30:00', '2019-12-24 05:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `exroom`
--

CREATE TABLE `exroom` (
  `ExroomId` int(11) NOT NULL,
  `ExRoomAddress` varchar(45) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exroom`
--

INSERT INTO `exroom` (`ExroomId`, `ExRoomAddress`, `CreatedDate`) VALUES
(100, 'G3', '2019-12-23 07:44:54'),
(101, 'GĐ2', '2019-12-23 07:45:07'),
(102, 'GĐ3', '2019-12-23 07:45:20'),
(103, 'G3', '2019-12-23 07:45:34'),
(104, 'G4', '2019-12-23 07:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `groupexamdetailexroom`
--

CREATE TABLE `groupexamdetailexroom` (
  `Exroom_ExroomId` int(11) NOT NULL,
  `maxMember` int(11) NOT NULL,
  `ExamDetail_ExamDetailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupexamdetailexroom`
--

INSERT INTO `groupexamdetailexroom` (`Exroom_ExroomId`, `maxMember`, `ExamDetail_ExamDetailid`) VALUES
(100, 500, 50),
(101, 600, 51),
(102, 700, 52),
(103, 800, 53);

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
(17020886, 101, 51),
(17020887, 102, 52),
(17020888, 103, 53),
(17020889, 104, 54);

-- --------------------------------------------------------

--
-- Table structure for table `groupstudentsubject`
--

CREATE TABLE `groupstudentsubject` (
  `Students_studentid` int(11) NOT NULL,
  `subject_SubjectID` int(11) NOT NULL,
  `Exam_ExamId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupstudentsubject`
--

INSERT INTO `groupstudentsubject` (`Students_studentid`, `subject_SubjectID`, `Exam_ExamId`) VALUES
(17020885, 1111, 1),
(17020886, 1111, 1),
(17020889, 1111, 1),
(17020890, 1111, 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning`
--

CREATE TABLE `learning` (
  `studentid` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `dateofbirth` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT current_timestamp(),
  `Classid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `learning`
--

INSERT INTO `learning` (`studentid`, `username`, `password`, `firstname`, `lastname`, `sex`, `dateofbirth`, `mail`, `createDate`, `Classid`) VALUES
(17020885, 'phthai01', '', 'Nguyễn Thiệu ', 'Nam ', 'Nữ', '1999-05-20', '', '2019-12-23 13:55:25', 10000),
(17020886, 'tdmanh02', '123456', 'Lí Thị ', 'Tả', 'Nam', '1997-12-23', 'aiyiuea@gmail.com', '2019-12-23 13:56:23', 10001),
(17020887, '', '', 'Tran Tuan', 'Ngoc', 'Nu', '2000-05-18', '', '2019-12-23 13:55:56', 10002),
(17020888, 'ngngoc01', '123456', 'Nguyen', 'Ngoc', 'Nu', '1998-10-13', 'ngngoc2000@gmail.com', '2019-12-23 13:56:49', 10003),
(17020889, 'dtrung05', '123456', 'Dinh Thanh', 'Trung', 'NAM', '1996-05-05', 'dttrung96@gmail.com', '2019-12-23 13:57:07', 10004);

-- --------------------------------------------------------

--
-- Table structure for table `Lit`
--

CREATE TABLE `Lit` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `dateofbirth` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Classname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Lit`
--

INSERT INTO `Lit` (`studentid`, `firstname`, `lastname`, `dateofbirth`, `mail`, `password`, `Classname`, `sex`) VALUES
(17020887, 'Manh', 'Tran ', '1998-01-07', 'fdsa', 'fdsa', 'fdas', 'nu'),
(17020888, 'Nam', 'Tran Van', '1998-04-02', 'abc@gmail.com', '123456', 'k62', 'nu'),
(17020889, 'Nghia', 'Tran Tuan', '1992-08-01', 'abgc@gmail.com', '123456', 'K62', 'Nu'),
(17020890, 'Phuoc', 'Tran Van ', '1998-02-01', 'fdsa', 'fdas', 'fdas', 'fdsa');

-- --------------------------------------------------------

--
-- Table structure for table `Ma`
--

CREATE TABLE `Ma` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `dateofbirth` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `Classname` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ma`
--

INSERT INTO `Ma` (`studentid`, `firstname`, `lastname`, `dateofbirth`, `mail`, `password`, `Classname`, `sex`) VALUES
(17020887, 'tu', 'Trang', '2019-08-01', 'fdsa', 'fas', 'fdsa', 'fdsa'),
(17020890, 'a', 'nguyen van ', '1992-10-10', 'fda', 'dfa', 'fda', 'Nu');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentid` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `dateofbirth` date NOT NULL,
  `mail` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `Classname` varchar(11) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentid`, `firstname`, `lastname`, `dateofbirth`, `mail`, `password`, `sex`, `Classname`, `createDate`) VALUES
(17020885, 'Mạnh', 'Trần ', '1998-01-15', 'tdm98@gmaiil.com', '123456', 'Nam', 'K62CD', '2019-12-23 23:55:31'),
(17020886, 'Ngọc', 'Trần ', '1996-05-05', 'tranngoc96@gmaiil.com', '123456', 'Nam', 'K62CE', '2019-12-23 23:55:31'),
(17020889, 'Mạnh', 'Trần Văn', '1998-08-01', 'manhbede@gmail.com', '123456', 'Nữ', '123456', '2019-12-24 01:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(45) NOT NULL,
  `TimeExam` date NOT NULL,
  `CreatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`SubjectID`, `SubjectName`, `TimeExam`, `CreatedDate`) VALUES
(1111, 'Toán', '2019-09-01', '2019-12-24 09:07:13'),
(1112, 'Toán rời rạc', '2019-01-01', '2019-12-24 09:07:27'),
(1113, 'Phát triển web', '2019-08-01', '2019-12-24 09:07:39');

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
  ADD PRIMARY KEY (`ExamDetailid`);

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
-- Indexes for table `learning`
--
ALTER TABLE `learning`
  ADD PRIMARY KEY (`studentid`,`Classid`),
  ADD KEY `fk_Students_Class1_idx` (`Classid`);

--
-- Indexes for table `Lit`
--
ALTER TABLE `Lit`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `Ma`
--
ALTER TABLE `Ma`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`);

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
  MODIFY `Adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `Classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `examdetail`
--
ALTER TABLE `examdetail`
  MODIFY `ExamDetailid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;

--
-- AUTO_INCREMENT for table `learning`
--
ALTER TABLE `learning`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17020919;

--
-- AUTO_INCREMENT for table `Lit`
--
ALTER TABLE `Lit`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17020891;

--
-- AUTO_INCREMENT for table `Ma`
--
ALTER TABLE `Ma`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17020891;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17020890;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1137;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `fk_GroupStudentExamDetail_Exroom1` FOREIGN KEY (`Exroom_ExroomId`) REFERENCES `mydb`.`exroom` (`ExroomId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `groupstudentsubject`
--
ALTER TABLE `groupstudentsubject`
  ADD CONSTRAINT `fk_GroupStudentSubject_Exam1` FOREIGN KEY (`Exam_ExamId`) REFERENCES `mydb`.`exam` (`ExamId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_GroupStudentSubject_subject1` FOREIGN KEY (`subject_SubjectID`) REFERENCES `mydb`.`subject` (`SubjectID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table9_Students` FOREIGN KEY (`Students_studentid`) REFERENCES `mydb`.`students` (`studentid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `learning`
--
ALTER TABLE `learning`
  ADD CONSTRAINT `fk_Students_Class1` FOREIGN KEY (`Classid`) REFERENCES `mydb`.`class` (`Classid`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
