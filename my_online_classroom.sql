-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 07:37 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_online_classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `Assignment_number` char(3) NOT NULL,
  `DueDate` date DEFAULT NULL,
  `Subject_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`Assignment_number`, `DueDate`, `Subject_number`) VALUES
('001', '2021-01-01', '001'),
('001', '2021-01-01', '002'),
('001', '2021-01-03', '003'),
('001', '2021-01-03', '004'),
('001', '2021-01-01', '005'),
('001', '2021-01-02', '006'),
('001', '2021-01-08', '007'),
('001', '2021-01-01', '008'),
('001', '2021-01-02', '009'),
('001', '2021-01-02', '010'),
('001', '2021-01-08', '011'),
('001', '2021-01-11', '012'),
('002', '2021-01-02', '001'),
('002', '2021-01-02', '002'),
('002', '2021-01-04', '003'),
('002', '2021-01-03', '004'),
('002', '2021-01-04', '005'),
('002', '2021-01-05', '006'),
('002', '2021-01-10', '007'),
('002', '2021-01-02', '008'),
('002', '2021-01-03', '009'),
('002', '2021-01-04', '010'),
('002', '2021-01-06', '011'),
('002', '2021-01-01', '012');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_name`) VALUES
('12A-1'),
('12A-2'),
('12A-3'),
('12A-4'),
('12A-5'),
('12B-1'),
('12B-2'),
('12B-3'),
('12B-4'),
('12B-5'),
('12C-1'),
('12C-2'),
('12C-3'),
('12C-4'),
('12C-5'),
('12M-1'),
('12M-2'),
('12M-3'),
('12M-4'),
('12M-5'),
('12M-6');

-- --------------------------------------------------------

--
-- Table structure for table `class_t`
--

CREATE TABLE `class_t` (
  `Teacher_ID` char(3) NOT NULL,
  `Class_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_t`
--

INSERT INTO `class_t` (`Teacher_ID`, `Class_name`) VALUES
('006', '12A-1'),
('007', '12A-2'),
('008', '12A-3'),
('009', '12A-4'),
('003', '12B-1'),
('005', '12B-2'),
('010', '12C-1'),
('011', '12C-2'),
('012', '12C-3'),
('001', '12M-1'),
('002', '12M-2'),
('004', '12M-3');

-- --------------------------------------------------------

--
-- Table structure for table `has_sub`
--

CREATE TABLE `has_sub` (
  `Stream_ID` char(3) NOT NULL,
  `Subject_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has_sub`
--

INSERT INTO `has_sub` (`Stream_ID`, `Subject_number`) VALUES
('001', '001'),
('001', '002'),
('001', '003'),
('001', '004'),
('002', '002'),
('002', '003'),
('002', '005'),
('003', '010'),
('003', '011'),
('003', '012'),
('004', '006'),
('004', '007'),
('004', '008'),
('004', '009');

-- --------------------------------------------------------

--
-- Table structure for table `head_t`
--

CREATE TABLE `head_t` (
  `Teacher_ID` char(3) NOT NULL,
  `Stream_ID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_t`
--

INSERT INTO `head_t` (`Teacher_ID`, `Stream_ID`) VALUES
('013', '001'),
('014', '002'),
('015', '003'),
('016', '004');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `Parent_ID` char(3) NOT NULL,
  `Parent_name` varchar(50) DEFAULT NULL,
  `Parent_ContactNo` char(10) DEFAULT NULL,
  `Class_T_ID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`Parent_ID`, `Parent_name`, `Parent_ContactNo`, `Class_T_ID`) VALUES
('001', 'Mr.Sumith Lakshan', '0765689900', '001'),
('002', 'Ms.Kamani Nisansala', '0712334456', '002'),
('003', 'Mr.Ruwan Dileepa', '0756456789', '002'),
('004', 'Mr.Kasun Dileepa', '0751116780', '004'),
('005', 'Mr.Ruwan Shanath', '0756450000', '001'),
('006', 'Ms.Sewwandi Wasana', '0702456777', '002'),
('007', 'Mr.Sanath Kasuntha', '0751111782', '001'),
('008', 'Mr.Suneth Dileesha', '0701256780', '003'),
('009', 'Mr.Ramani Dahami', '0711116780', '003'),
('010', 'Ms.leesha Seuni', '0766656781', '003'),
('011', 'Mr.Pawan Shamika', '0701333380', '005'),
('012', 'Ms.Chamika Dilhani', '0751344480', '005'),
('013', 'Mr.Mewan Shamika', '0711333380', '006'),
('014', 'Ms.Janani Imasha', '0765332220', '007'),
('015', 'Mr.Saveen Kanishka', '0711555580', '008'),
('016', 'Mr.Pradeep Rangana', '0766666380', '009'),
('017', 'Mr.Sudeera Shamika', '0711333555', '010'),
('018', 'Mr.Sudeera Pawan', '0719999555', '011'),
('019', 'Mr.Lakshan Sampath', '0719911111', '011'),
('020', 'Mr.Meleesha Yasas', '0712356789', '012');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Questions` varchar(100) NOT NULL,
  `Subject_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Questions`, `Subject_number`) VALUES
('2018 A/L Peo Maths Part1 Q-5', '001'),
('2015 A/L Chemistry mcq 1-20', '002'),
('2015 A/L Physics Part2 Q-1', '003'),
('2019 A/L ICT mcq 1-30', '004'),
('2019 A/L Bio mcq', '005'),
('2017 A/L Sinhala Part1 Q-5', '006'),
('2017 A/L Logic Part2 Q-4', '007'),
('2014 A/L History Part2 Q-3', '008'),
('2018 A/L Dancing Part2 Q-1', '009'),
('2015 A/L BS Part1 Q-3', '010'),
('2015 A/L Accounting Part1 Q-2', '011'),
('2020 A/L Econ Part1 Q-2', '012');

-- --------------------------------------------------------

--
-- Table structure for table `register_for`
--

CREATE TABLE `register_for` (
  `RegNo` char(3) NOT NULL,
  `Class_name` char(5) DEFAULT NULL,
  `Stream_ID` char(3) DEFAULT NULL,
  `School_ID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register_for`
--

INSERT INTO `register_for` (`RegNo`, `Class_name`, `Stream_ID`, `School_ID`) VALUES
('A01', '12A-1', '004', '112'),
('A02', '12A-2', '004', '113'),
('A03', '12A-3', '004', '114'),
('A04', '12A-4', '004', '115'),
('B01', '12B-1', '002', '107'),
('B02', '12B-2', '002', '108'),
('B03', '12B-3', '002', '109'),
('B04', '12B-4', '002', '110'),
('B05', '12B-5', '002', '111'),
('C01', '12C-1', '003', '116'),
('C02', '12C-2', '003', '117'),
('C03', '12C-3', '003', '118'),
('C04', '12C-4', '003', '119'),
('M01', '12M-1', '001', '100'),
('M02', '12M-2', '001', '101'),
('M03', '12M-3', '001', '102'),
('M04', '12M-4', '001', '103'),
('M05', '12M-5', '001', '104'),
('M06', '12M-6', '001', '105'),
('M07', '12M-6', '001', '106');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `Stream_ID` char(3) NOT NULL,
  `Stream_name` varchar(50) DEFAULT NULL,
  `MinQualification` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`Stream_ID`, `Stream_name`, `MinQualification`) VALUES
('001', 'Physical Science', 'All Main subjects should be passed'),
('002', 'Biology', 'All Main subjects should be passed'),
('003', 'Commerce', 'All Main subjects should be passed'),
('004', 'Arts', 'All Main subjects should be passed');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `School_ID` char(3) NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `ContactNo` char(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Maths_Result` char(1) DEFAULT NULL,
  `Sinhala_Result` char(1) DEFAULT NULL,
  `English_Result` char(1) DEFAULT NULL,
  `Buddhism_Result` char(1) DEFAULT NULL,
  `Science_Result` char(1) DEFAULT NULL,
  `History_Result` char(1) DEFAULT NULL,
  `BucketSub1_Result` char(1) DEFAULT NULL,
  `BucketSub2_Result` char(1) DEFAULT NULL,
  `BucketSub3_Result` char(1) DEFAULT NULL,
  `Student_username` varchar(50) DEFAULT NULL,
  `Student_password` varchar(50) DEFAULT NULL,
  `Parent_ID` char(3) DEFAULT NULL,
  `Applied_Stream_ID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`School_ID`, `Fname`, `Lname`, `DOB`, `Address`, `ContactNo`, `Email`, `Maths_Result`, `Sinhala_Result`, `English_Result`, `Buddhism_Result`, `Science_Result`, `History_Result`, `BucketSub1_Result`, `BucketSub2_Result`, `BucketSub3_Result`, `Student_username`, `Student_password`, `Parent_ID`, `Applied_Stream_ID`) VALUES
('100', 'Madush', 'Mewan', '2003-05-21', 'No.43,Pannipitiya,Agulana', '0713425666', 'madushmewan@gmail.com', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'madush', 'mewan', '001', '001'),
('101', 'Hasitha', 'Lakshan', '2003-06-21', 'No.233,Kadulana,Kadawatha', '0713411111', 'hasithalakshan@gmail.com', 'A', 'B', 'B', 'A', 'A', 'B', 'A', 'A', 'A', 'hasitha', 'lakshan', '002', '001'),
('102', 'Ramith', 'Deelaka', '2003-09-11', 'No.43, Main Street, Aluthgama', '0702325666', 'ramithdeelaka@gmail.com', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'A', 'ramith', 'deelaka', '003', '001'),
('103', 'Hirushi', 'Vasana', '2003-07-21', 'No.43,Pannipitiya Road,Moratuwa', '0713425999', 'hirushivasana@gmail.com', 'A', 'A', 'A', 'A', 'C', 'A', 'A', 'A', 'A', 'hirushi', 'vasana', '004', '001'),
('104', 'Sayani', 'Nayanathara', '2003-12-25', 'No.43,Elpitiya Road,Karandeniya', '0701235669', 'sayaninayanathara@gmail.com', 'A', 'A', 'B', 'A', 'A', 'A', 'A', 'A', 'A', '104', 'nayanathara', '005', '001'),
('105', 'Hasini', 'Aparna', '2003-01-25', 'No.43,Silva Road,Moratuwa', '0703335669', 'hasiniaparna@gmail.com', 'A', 'A', 'B', 'A', 'A', 'A', 'A', 'A', 'A', '105', 'nayanathara', '006', '001'),
('106', 'Navod', 'Dinidu', '2003-04-15', 'No.21,Silva Road,Kalegana', '0703311119', 'navoddinidu@gmail.com', 'A', 'A', 'B', 'A', 'A', 'A', 'A', 'A', 'A', '106', 'dinidu', '007', '001'),
('107', 'Suvin', 'Lakshan', '2003-01-22', 'No.421,Kaburupitiya Road,Matara', '0711135669', 'suvinlakshan@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '107', 'lakshan', '008', '002'),
('108', 'Achintha', 'Sachin', '2003-06-07', 'No.4,Hewawasam Road,Kegalla', '0711135660', 'achinthasachin@gmail.com', 'A', 'A', 'B', 'A', 'B', 'C', 'A', 'A', 'A', '108', 'sachin', '009', '002'),
('109', 'Ovin', 'Sadeera', '2003-01-08', 'No.421,Kaburupitiya Road,Wellawatta', '0711135667', 'ovinsadeera@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '109', 'Sadeera', '010', '002'),
('110', 'Harindu', 'Samith', '2003-09-22', 'No.9,Main Street,Kadawatha', '0719995669', 'harindusamith@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '110', 'samith', '011', '002'),
('111', 'Dahami', 'Minoli', '2003-09-23', 'No.3,Main Street,Kalutaraa', '0722135669', 'dahamiminoli@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '111', 'Minoli', '012', '002'),
('112', 'Isuru', 'Sampath', '2003-01-09', 'No.421,Main Street,Panadura', '0711135611', 'isurusampath@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '112', 'Sampath', '013', '004'),
('113', 'Avishka', 'Mithun', '2003-01-19', 'No.421,Main Street,Galle', '0719995611', 'avishkamithun@gmail.com', 'A', 'C', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '113', 'Mithun', '014', '004'),
('114', 'Thinuri', 'Yasmi', '2003-01-11', 'No.421,Main Street,Kaduwela', '0711135666', 'thinuriyasmi@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'C', 'A', '114', 'Yasmi', '015', '004'),
('115', 'Ayomi', 'Nishmi', '2003-11-09', 'No.421,Main Street,Elpitiya', '0711135677', 'ayominishmi@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '115', 'Nishmi', '016', '004'),
('116', 'Dinusha', 'Sampath', '2003-01-03', 'No.76,Main Street,Rabukkana', '0768935611', 'dinushasampath@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '116', 'Sampath', '017', '003'),
('117', 'Hiruni', 'Ayomi', '2003-11-13', 'No.76,Main Street,Ragama', '0768935612', 'hiruniayomi@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '117', 'Ayomi', '018', '003'),
('118', 'Sachini', 'Wasana', '2003-07-03', 'No.56,Main Street,Kadugannawa', '0768935699', 'sachiniwasana@gmail.com', 'A', 'A', 'B', 'A', 'B', 'A', 'A', 'A', 'A', '118', 'Wasana', '019', '003'),
('119', 'Kavindi', 'Imasha', '2003-09-23', 'No.6,Main Street,Benthara', '0768935222', 'kavindiimasha@gmail.com', 'A', 'A', 'B', 'A', 'A', 'A', 'A', 'A', 'A', '119', 'Imasha', '020', '003');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Subject_number` char(3) NOT NULL,
  `Subject_name` varchar(100) DEFAULT NULL,
  `Subject_T_ID` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_number`, `Subject_name`, `Subject_T_ID`) VALUES
('001', 'Maths', '001'),
('002', 'Chemistry', '002'),
('003', 'Physics', '003'),
('004', 'ICT', '004'),
('005', 'Biology', '005'),
('006', 'Sinhala', '006'),
('007', 'Logic', '007'),
('008', 'History', '008'),
('009', 'Dancing & Drama', '009'),
('010', 'Business Studies', '010'),
('011', 'Accounting', '011'),
('012', 'Economics', '012');

-- --------------------------------------------------------

--
-- Table structure for table `subject_references`
--

CREATE TABLE `subject_references` (
  `Subject_References` varchar(100) NOT NULL,
  `Subject_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_references`
--

INSERT INTO `subject_references` (`Subject_References`, `Subject_number`) VALUES
('https://www.mathsapi.com/2017/09/combined-maths-notes.html', '001'),
('https://www.mathsapi.com/2018/11/advanced-level-chemistry-short-notes.html', '002'),
('https://gurupaara.lk/forum/t/a-l-physics', '003'),
('https://ict.apepanthiya.lk/al_notes.html', '004'),
('http://www.nie.lk/showom', '005'),
('https://www.edulanka.lk/teachers/al-sinhala-teacher', '006'),
('https://www.alevelapi.com/logic-past-papers/2019-al-logic-paper-sinhala-medium/', '007'),
('https://www.edulanka.lk/a-level/43', '008'),
('https://www.alevelapi.com/dancing-past-papers/2019-al-dancing-indigenous-paper-sinhala-medium/', '009'),
('https://www.edulanka.lk/teachers/bs-teacher', '010'),
('https://www.edulanka.lk/download-center/al/commerce/47-accounting', '011'),
('https://www.edulanka.lk/a-level/economics', '012');

-- --------------------------------------------------------

--
-- Table structure for table `subject_t`
--

CREATE TABLE `subject_t` (
  `Teacher_ID` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_t`
--

INSERT INTO `subject_t` (`Teacher_ID`) VALUES
('001'),
('002'),
('003'),
('004'),
('005'),
('006'),
('007'),
('008'),
('009'),
('010'),
('011'),
('012');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` char(3) NOT NULL,
  `Teacher_name` varchar(50) DEFAULT NULL,
  `Teacher_username` varchar(50) DEFAULT NULL,
  `Teacher_password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `teacher_contactNo` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teacher_ID`, `Teacher_name`, `Teacher_username`, `Teacher_password`, `email`, `address`, `teacher_contactNo`) VALUES
('001', 'Mr.Mahendra Bandara', 'T001', 'mahendra', 'mahendrabandara@gmail.com', 'N0 32/1,Thelwatta,Mahaoya', '0776545671'),
('002', 'Mrs.Thewin Alahakoon', 'T002', 'thewin', 'thewinalahakoon@gmail.com', 'No 2,Madampe,Panadura', '0787995688'),
('003', 'Mr.Arjuna Withanage', 'T003', 'arjuna', 'arjunawithanage@gmail.com', 'No 55/2,Main Street,Kalutara', '0772225673'),
('004', 'Mr.Yohan Herath', 'T004', 'yohan', 'yohanherath@gmail.com', 'No 23,Wakwalla Road,Galle', '0711115671'),
('005', 'Mr.Harindu Yasas', 'T005', 'harindu', 'harinduyasas@gmail.com', 'N0 2, Dewata, Maradana', '0711115333'),
('006', 'Mrs.Binuki Yasara', 'T006', 'binuki', 'binukiyasara@gmail.com', 'No 23,Dewata Road,Rabukkana', '0765115699'),
('007', 'Mr.Vikum Jayalath', 'T007', 'vikum', 'vikumjayalath@gmail.com', 'No 67, Silva Road. Panadura', '0722215671'),
('008', 'Mrs.senuri Sewmini', 'T008', 'senuri', 'senurisewmini@gmail.com', 'No 9, College Road, Pannipitiya', '0711114466'),
('009', 'Mr.Hasara De Silva', 'T009', 'hasara', 'hasaradesilva@gmail.com', 'No 23,New Road, Gampaha', '0703145678'),
('010', 'Mrs.Geetha Nishadi', 'T010', 'geetha', 'geethanishadi@gmail.com', 'No.43, Pinnaduwa,Benthara', '0769915671'),
('011', 'Mr.Thewin Almedha', 'T011', 'thewin', 'thewinalmedha@gmail.com', 'No.765,Kaluwadumulla,Kadawatha', '0775432343'),
('012', 'Ms.Suvini Hansima', 'T012', 'suvini', 'suvinihansima@gmail.com', 'No.43/2, Pieris Road , Aluthgama', '0704123456'),
('013', 'Mr.Rohan Thilakarathne', 'T013', 'rohan', 'rohanthilakarathne@gmail.com', 'No.76 , Pallwatta, Kahawa', '0773256999'),
('014', 'Mrs.Thisumi Liyanage', 'T014', 'thisumi', 'thisumiliyanage@gmail.com', 'No.58 , Udugama, Uduwila', '0719889900'),
('015', 'Mr.Pasindu Perera', 'T015', 'pasindu', 'pasinduperera@gmail.com', 'No.21, Kaluwela,Kalutara', '0761221234'),
('016', 'Ms.Nayani Weerathunga', 'T016', 'nayani', 'nayaniweerathunga@gmail.com', 'No.543, Main STreet, Rabukkana', '0751223456'),
('017', 'Mr.Kithsiri Silva', 'T017', 'kithsiri', 'kithsirisilva@gmail.com', 'No876, Malabe, Colombo', '0776545678'),
('018', 'Ms.Pushpa Senanayake', 'T018', 'pushpa', 'pushpasenanayake@gmail.com', 'No.45 , otukanda, Ragama', '0705467567'),
('019', 'Mr.Thilak Bandara', 'T019', 'thilak', 'thilakbandara@gmail.com', 'No. 241, Deawta , Kadugannawa', '0768989100'),
('020', 'Ms.Kamani Hewawasam', 'T020', 'kamani', 'kamanihewawasam@gmail.com', 'No. 67, Katukurunda Road, Moratuwa', '0778877789');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `Day` varchar(20) NOT NULL,
  `Time` time NOT NULL,
  `Subject_number` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`Day`, `Time`, `Subject_number`) VALUES
('Friday', '08:00:00', '001'),
('Friday', '08:00:00', '005'),
('Friday', '08:00:00', '006'),
('Friday', '08:00:00', '010'),
('Friday', '11:00:00', '002'),
('Friday', '11:00:00', '007'),
('Friday', '11:00:00', '011'),
('Friday', '13:00:00', '003'),
('Friday', '13:00:00', '008'),
('Friday', '13:00:00', '012'),
('Friday', '15:00:00', '004'),
('Friday', '15:00:00', '009'),
('Monday', '08:00:00', '001'),
('Monday', '08:00:00', '005'),
('Monday', '08:00:00', '006'),
('Monday', '08:00:00', '010'),
('Monday', '11:00:00', '002'),
('Monday', '11:00:00', '007'),
('Monday', '11:00:00', '011'),
('Monday', '13:00:00', '003'),
('Monday', '13:00:00', '008'),
('Monday', '13:00:00', '012'),
('Monday', '15:00:00', '004'),
('Monday', '15:00:00', '009'),
('Wednesday', '08:00:00', '001'),
('Wednesday', '08:00:00', '005'),
('Wednesday', '08:00:00', '006'),
('Wednesday', '08:00:00', '010'),
('Wednesday', '11:00:00', '002'),
('Wednesday', '11:00:00', '007'),
('Wednesday', '11:00:00', '011'),
('Wednesday', '13:00:00', '003'),
('Wednesday', '13:00:00', '008'),
('Wednesday', '13:00:00', '012'),
('Wednesday', '15:00:00', '004'),
('Wednesday', '15:00:00', '009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`Assignment_number`,`Subject_number`),
  ADD KEY `Subject_number` (`Subject_number`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_name`);

--
-- Indexes for table `class_t`
--
ALTER TABLE `class_t`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD KEY `Class_name` (`Class_name`);

--
-- Indexes for table `has_sub`
--
ALTER TABLE `has_sub`
  ADD PRIMARY KEY (`Stream_ID`,`Subject_number`),
  ADD KEY `Subject_number` (`Subject_number`);

--
-- Indexes for table `head_t`
--
ALTER TABLE `head_t`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD KEY `Stream_ID` (`Stream_ID`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`Parent_ID`),
  ADD KEY `Class_T_ID` (`Class_T_ID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Subject_number`,`Questions`);

--
-- Indexes for table `register_for`
--
ALTER TABLE `register_for`
  ADD PRIMARY KEY (`RegNo`),
  ADD KEY `Class_name` (`Class_name`),
  ADD KEY `Stream_ID` (`Stream_ID`),
  ADD KEY `School_ID` (`School_ID`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`Stream_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`School_ID`),
  ADD UNIQUE KEY `Student_username` (`Student_username`),
  ADD KEY `Parent_ID` (`Parent_ID`),
  ADD KEY `Applied_Stream_ID` (`Applied_Stream_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_number`),
  ADD KEY `Subject_T_ID` (`Subject_T_ID`);

--
-- Indexes for table `subject_references`
--
ALTER TABLE `subject_references`
  ADD PRIMARY KEY (`Subject_number`,`Subject_References`);

--
-- Indexes for table `subject_t`
--
ALTER TABLE `subject_t`
  ADD PRIMARY KEY (`Teacher_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`),
  ADD UNIQUE KEY `Teacher_username` (`Teacher_username`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`Day`,`Time`,`Subject_number`),
  ADD KEY `Subject_number` (`Subject_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`Subject_number`) REFERENCES `subject` (`Subject_number`) ON UPDATE CASCADE;

--
-- Constraints for table `class_t`
--
ALTER TABLE `class_t`
  ADD CONSTRAINT `class_t_ibfk_1` FOREIGN KEY (`Class_name`) REFERENCES `class` (`Class_name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `has_sub`
--
ALTER TABLE `has_sub`
  ADD CONSTRAINT `has_sub_ibfk_1` FOREIGN KEY (`Stream_ID`) REFERENCES `stream` (`Stream_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `has_sub_ibfk_2` FOREIGN KEY (`Subject_number`) REFERENCES `subject` (`Subject_number`) ON UPDATE CASCADE;

--
-- Constraints for table `head_t`
--
ALTER TABLE `head_t`
  ADD CONSTRAINT `head_t_ibfk_1` FOREIGN KEY (`Stream_ID`) REFERENCES `stream` (`Stream_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`Class_T_ID`) REFERENCES `class_t` (`Teacher_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`Subject_number`) REFERENCES `subject` (`Subject_number`) ON UPDATE CASCADE;

--
-- Constraints for table `register_for`
--
ALTER TABLE `register_for`
  ADD CONSTRAINT `register_for_ibfk_1` FOREIGN KEY (`Class_name`) REFERENCES `class` (`Class_name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `register_for_ibfk_2` FOREIGN KEY (`Stream_ID`) REFERENCES `stream` (`Stream_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `register_for_ibfk_3` FOREIGN KEY (`School_ID`) REFERENCES `student` (`School_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Parent_ID`) REFERENCES `parent` (`Parent_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Applied_Stream_ID`) REFERENCES `stream` (`Stream_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`Subject_T_ID`) REFERENCES `subject_t` (`Teacher_ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subject_references`
--
ALTER TABLE `subject_references`
  ADD CONSTRAINT `subject_references_ibfk_1` FOREIGN KEY (`Subject_number`) REFERENCES `subject` (`Subject_number`) ON UPDATE CASCADE;

--
-- Constraints for table `time_table`
--
ALTER TABLE `time_table`
  ADD CONSTRAINT `time_table_ibfk_1` FOREIGN KEY (`Subject_number`) REFERENCES `subject` (`Subject_number`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
