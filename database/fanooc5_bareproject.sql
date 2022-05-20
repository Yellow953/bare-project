-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 14, 2022 at 08:37 AM
-- Server version: 10.3.27-MariaDB-log
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fanooc5_bareproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblCompany`
--

CREATE TABLE `tblCompany` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Industry` int(11) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblCompany`
--

INSERT INTO `tblCompany` (`ID`, `Name`, `Industry`, `Active`) VALUES
(1, 'Fanooce LLC', 0, 1),
(2, 'Foreign Design', 0, 1),
(5, 'Bare Project', 96, 1),
(6, 'Hardey Group', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblDeliverable`
--

CREATE TABLE `tblDeliverable` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Owner` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` int(1) NOT NULL,
  `ProjectID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblDeliverable`
--

INSERT INTO `tblDeliverable` (`ID`, `Name`, `Owner`, `StartDate`, `EndDate`, `State`, `ProjectID`) VALUES
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-12-31', 0, 1014),
(1002, 'POV 12345', 'asdf@asdf.com', '0000-00-00', '2020-12-03', 1, 1002),
(1003, 'Blueprints', 'raghid@fanooce.com', '0000-00-00', '2021-04-30', 1, 1005),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2020-12-30', 1, 1004),
(1005, 'Huge Deliverable asdfj;alskdfj', 'raghid@fanooce.com', '0000-00-00', '2021-02-15', 1, 1005),
(1006, 'Big Dev Suite', 'asdf@asdf.com', '0000-00-00', '2020-11-10', 1, 1006),
(1008, 'User list page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-25', 1, 1015),
(1007, 'Reference guide', 'asdf@asdf.com', '0000-00-00', '2021-06-30', 0, 1006),
(1009, 'Add user from list page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-25', 1, 1015),
(1010, 'Project group list page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-26', 1, 1015),
(1011, 'Add project group from list page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-26', 1, 1015),
(1012, 'Insights page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015),
(1013, 'Track deliverable changes', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-26', 1, 1015),
(1014, 'Add industry field to account', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-03', 1, 1015),
(1015, 'Make deliverable name box expandable', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-24', 1, 1015),
(1016, 'Track user logins', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-28', 1, 1015),
(1017, 'Business Plan', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-29', 0, 1016),
(1018, 'Industry Prospect List', 'dal0323@gmail.com', '0000-00-00', '2021-01-07', 0, 1016),
(1019, 'Project Timing', 'dal0323@gmail.com', '0000-00-00', '2021-01-08', 0, 1016),
(1020, 'Sign Up Pilot Customers', 'dal0323@gmail.com', '0000-00-00', '2021-01-31', 0, 1016),
(1021, 'Contract-', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-31', 0, 1016),
(1022, 'Board Meeting', 'dal0323@gmail.com', '0000-00-00', '2020-12-28', 0, 1016),
(1023, 'Light Engine - Design', 'dal0323@gmail.com', '0000-00-00', '2020-12-23', 1, 1017),
(1024, 'LED Heat Sink Order', 'dal0323@gmail.com', '0000-00-00', '2021-01-15', 0, 1017),
(1025, 'LED PCB Order', 'dal0323@gmail.com', '0000-00-00', '2020-12-24', 0, 1017),
(1026, 'Order LEDs', 'dal0323@gmail.com', '0000-00-00', '0000-00-00', 0, 1017),
(1027, 'Assemble Prototype', 'dal0323@gmail.com', '0000-00-00', '0000-00-00', 0, 1017),
(1028, 'LED PCB Paste Order', 'dal0323@gmail.com', '0000-00-00', '0000-00-00', 0, 1017),
(1029, 'UL 8800 Certification', 'dal0323@gmail.com', '0000-00-00', '0000-00-00', 0, 1017),
(1030, 'Add description field to deliverable', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1031, 'Set password when creating user', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-31', 1, 1015),
(1032, 'Change own password', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-30', 1, 1015),
(1033, 'Reset password', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-31', 1, 1015),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1035, 'Managed no. of displayed deliverables', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1036, 'Velocity bar chart - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015),
(1037, 'Deliverable changes - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-08', 1, 1015),
(1038, 'User allocations - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-24', 1, 1015),
(1040, 'Tracking deliverable change vs save', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1041, 'CMS Filing', 'lana0731@gmail.com', '0000-00-00', '2021-02-15', 0, 1018),
(1042, 'ID cards', 'lana0731@gmail.com', '0000-00-00', '2020-12-30', 0, 1018),
(1043, 'Marketing Campaign', 'lana0731@gmail.com', '0000-00-00', '2020-12-20', 1, 1018),
(1044, 'Web Updates', 'lana0731@gmail.com', '0000-00-00', '2021-03-01', 0, 1018),
(1045, 'Pharmacy Setup', 'lana0731@gmail.com', '0000-00-00', '2021-02-11', 0, 1018),
(1046, 'Provider Training', 'lana0731@gmail.com', '0000-00-00', '2021-01-07', 0, 1018),
(1047, 'Market Research', 'raghid@fanooce.com', '0000-00-00', '2021-01-20', 1, 1005),
(1048, 'Certification', 'raghid@fanooce.com', '0000-00-00', '2021-01-08', 1, 1004),
(1049, '2020 Financial Updates', 'raghide@hotmail.com', '0000-00-00', '2021-01-10', 1, 1009),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-02-11', 1, 1009),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-04-04', 1, 1009),
(1052, 'Article to IJOMT', 'raghide@hotmail.com', '0000-00-00', '2021-01-13', 1, 1009),
(1053, 'Microsoft Azure Fundamentals Certification', 'raghide@hotmail.com', '0000-00-00', '2021-02-02', 1, 1009),
(1054, 'Amazon Cloud Associate Architect Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009),
(1055, 'SimpliLearn Data Analytics Courses', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009),
(1056, 'PMI-CBA Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009),
(1057, 'Adobe Analytics Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009),
(1058, 'Meal List', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1011),
(1059, 'Company name and industry update', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-28', 1, 1015),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-28', 1, 1015),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '2021-01-16', 1, 1002),
(1062, 'Kids 1st semester progress report', 'raghide@hotmail.com', '0000-00-00', '2021-01-15', 1, 1009),
(1063, 'Project addition from kanban', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-29', 1, 1015),
(1064, 'EMR Submission to Health Research Policy and Systems', 'raghide@hotmail.com', '0000-00-00', '2021-01-27', 1, 1009),
(1065, 'Multi-line deliverable name', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1081, 'Mobile Shell', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-14', 1, 1024),
(1066, 'Deliverables Icons in Project Kanban ', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-30', 1, 1015),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '2021-07-31', 0, 1009),
(1068, 'Projects Timeline', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1069, 'Floor plan', 'asdf@asdf.com', '0000-00-00', '2021-05-28', 1, 1004),
(1070, 'Valuation', 'asdf@asdf.com', '0000-00-00', '2021-07-30', 0, 1004),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '2021-03-25', 1, 1020),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-25', 1, 1021),
(1073, 'PM Summit Project to Product Mgt Submission', 'raghide@hotmail.com', '0000-00-00', '2021-06-03', 0, 1009),
(1074, 'Business Analysis Behavior Article', 'raghide@hotmail.com', '0000-00-00', '2021-07-31', 0, 1009),
(1075, 'Project Management Kindergarten Article', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009),
(1076, 'Auto Insurance 2021', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 1, 1009),
(1077, 'Signed Lowes Water Heater Papers', 'raghide@hotmail.com', '0000-00-00', '2021-04-01', 1, 1009),
(1078, 'RHU BA Seminar', 'raghide@hotmail.com', '0000-00-00', '2021-06-30', 0, 1009),
(1079, 'Strategy Document', 'raghid@fanooce.com', '0000-00-00', '2022-05-31', 0, 1023),
(1080, 'Blueprint', 'raghid@fanooce.com', '0000-00-00', '2022-06-25', 0, 1023),
(1082, 'Drag/drop unscheduled deliverables to timetable columns', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1085, 'Login', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-20', 0, 1024),
(1086, 'Register', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-25', 0, 1024),
(1084, 'Standalone user invited by many companies', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025),
(1087, 'Project Kanban Dashboard', 'joemazloum953@gmail.com', '0000-00-00', '2022-06-01', 0, 1024),
(1088, 'Deliverable Kanban Dashboard', 'joemazloum953@gmail.com', '0000-00-00', '2022-06-08', 0, 1024);

-- --------------------------------------------------------

--
-- Table structure for table `tblDeliverableChange`
--

CREATE TABLE `tblDeliverableChange` (
  `DeliverableID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Owner` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `State` int(1) NOT NULL,
  `ProjectID` int(11) NOT NULL,
  `ChangeBy` varchar(255) NOT NULL,
  `ChangeDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblDeliverableChange`
--

INSERT INTO `tblDeliverableChange` (`DeliverableID`, `Name`, `Owner`, `StartDate`, `EndDate`, `State`, `ProjectID`, `ChangeBy`, `ChangeDate`) VALUES
(1013, 'Track deliverable changes', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-01', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-26 13:31:56'),
(1013, 'Track deliverable changes', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-01', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-26 13:31:58'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-12', 0, 1014, 'raghid@fanooce.com', '2020-12-26 13:32:54'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-12', 2, 1014, 'raghid@fanooce.com', '2020-12-26 13:33:04'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-12', 0, 1014, 'raghid@fanooce.com', '2020-12-26 13:33:06'),
(1013, 'Track deliverable changes', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-26', 1, 1015, 'raghid.elyafouri@gmail.com', '2020-12-26 13:35:16'),
(1016, 'Track user logins', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-28', 1, 1015, 'raghid.elyafouri@gmail.com', '2020-12-28 14:22:52'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-28 14:36:00'),
(1035, 'Managed no. of displayed deliverables', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-28 14:36:14'),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2020-12-30', 0, 1004, 'raghid@fanooce.com', '2020-12-29 13:24:02'),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2020-12-16', 0, 1004, 'raghid@fanooce.com', '2020-12-29 13:24:10'),
(1032, 'Change own password', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-30', 1, 1015, 'raghid.elyafouri@gmail.com', '2020-12-30 13:23:25'),
(1033, 'Reset password', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-01', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-30 13:23:44'),
(1031, 'Set password when creating user', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-01', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-30 13:23:54'),
(1014, 'Add industry field to account', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-04', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-30 13:24:11'),
(1031, 'Set password when creating user', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-31', 1, 1015, 'raghid.elyafouri@gmail.com', '2020-12-31 09:59:13'),
(1033, 'Reset password', 'raghid.elyafouri@gmail.com', '0000-00-00', '2020-12-31', 1, 1015, 'raghid.elyafouri@gmail.com', '2020-12-31 10:35:03'),
(1012, 'Insights page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-11', 0, 1015, 'raghid.elyafouri@gmail.com', '2020-12-31 10:35:46'),
(1036, 'Velocity bar chart', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-11', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:40:52'),
(1036, 'Velocity bar chart - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-11', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:41:34'),
(1037, 'Deliverable changes - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:42:51'),
(1038, 'User allocations - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:43:21'),
(1037, 'Deliverable changes - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-18', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:43:54'),
(1038, 'User allocations - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-25', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:44:04'),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:45:39'),
(1040, 'Tracking deliverable change vs save', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-02 20:49:51'),
(1014, 'Add industry field to account', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-03', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-03 12:05:04'),
(1041, 'CMS Filing', 'dal0323@gmail.com', '0000-00-00', '2021-02-15', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:39:51'),
(1042, 'ID cards', 'dal0323@gmail.com', '0000-00-00', '2020-12-30', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:40:17'),
(1043, 'Marketing Campaign', 'dal0323@gmail.com', '0000-00-00', '2020-12-20', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:40:58'),
(1043, 'Marketing Campaign', 'dal0323@gmail.com', '0000-00-00', '2020-12-20', 1, 1018, 'dal0323@gmail.com', '2021-01-03 13:41:03'),
(1042, 'ID cards', 'lana0731@gmail.com', '0000-00-00', '2020-12-30', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:46:13'),
(1041, 'CMS Filing', 'lana0731@gmail.com', '0000-00-00', '2021-02-15', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:46:16'),
(1043, 'Marketing Campaign', 'lana0731@gmail.com', '0000-00-00', '2020-12-20', 1, 1018, 'dal0323@gmail.com', '2021-01-03 13:46:19'),
(1044, 'Web Updates', 'lana0731@gmail.com', '0000-00-00', '2021-03-01', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:46:52'),
(1045, 'Pharmacy Setup', 'lana0731@gmail.com', '0000-00-00', '2021-02-11', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:47:28'),
(1046, 'Provider Training', 'lana0731@gmail.com', '0000-00-00', '2021-01-07', 0, 1018, 'dal0323@gmail.com', '2021-01-03 13:48:17'),
(1024, 'LED Heat Sink Order', 'dal0323@gmail.com', '0000-00-00', '2021-01-15', 0, 1017, 'dal0323@gmail.com', '2021-01-03 13:55:20'),
(1002, 'POV 12345', 'asdf@asdf.com', '0000-00-00', '2020-12-02', 1, 1002, 'raghid@fanooce.com', '2021-01-03 21:46:11'),
(1002, 'POV 12345', 'asdf@asdf.com', '0000-00-00', '2020-11-30', 1, 1002, 'raghid@fanooce.com', '2021-01-03 21:47:13'),
(1047, 'sefdsf', 'raghid@fanooce.com', '0000-00-00', '0000-00-00', 0, 1004, 'raghid@fanooce.com', '2021-01-04 13:45:30'),
(1047, 'sefdsf', 'raghid@fanooce.com', '0000-00-00', '2021-01-22', 0, 1004, 'raghid@fanooce.com', '2021-01-04 13:45:41'),
(1047, 'sefdsf', 'raghid@fanooce.com', '0000-00-00', '2021-01-08', 0, 1004, 'raghid@fanooce.com', '2021-01-04 13:45:50'),
(1047, 'sefdsf', 'raghid@fanooce.com', '0000-00-00', '2021-01-08', 0, 1005, 'raghid@fanooce.com', '2021-01-04 13:46:25'),
(1047, 'Market Research', 'raghid@fanooce.com', '0000-00-00', '2021-01-08', 0, 1005, 'raghid@fanooce.com', '2021-01-04 15:16:56'),
(1048, 'Certification', 'raghid@fanooce.com', '0000-00-00', '0000-00-00', 0, 1004, 'raghid@fanooce.com', '2021-01-04 20:26:46'),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2021-02-02', 0, 1004, 'raghid@fanooce.com', '2021-01-04 20:27:04'),
(1048, 'Certification', 'raghid@fanooce.com', '0000-00-00', '2021-03-10', 0, 1004, 'raghid@fanooce.com', '2021-01-04 20:27:13'),
(1002, 'POV 12345', 'asdf@asdf.com', '0000-00-00', '2020-12-03', 1, 1002, 'raghid@fanooce.com', '2021-01-04 20:27:38'),
(1012, 'Insights page', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-05 14:19:56'),
(1036, 'Velocity bar chart - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-05 14:20:10'),
(1038, 'User allocations - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-05', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-05 14:20:47'),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-18', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-05 14:21:21'),
(1049, '2020 Financial Updates', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:56:22'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:57:21'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:57:40'),
(1052, 'Article to IJOMT', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:58:52'),
(1053, 'Microsoft Azure Fundamentals Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:59:17'),
(1054, 'Amazon Cloud Associate Architect Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 22:59:51'),
(1055, 'SimpliLearn Data Analytics Courses', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:00:25'),
(1056, 'PMI-CBA Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:00:47'),
(1057, 'Adobe Analytics Certification', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:02:52'),
(1049, '2020 Financial Updates', 'raghide@hotmail.com', '0000-00-00', '2021-01-17', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:03:18'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-02-14', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:03:39'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-01-17', 0, 1009, 'raghide@hotmail.com', '2021-01-06 23:04:04'),
(1058, 'Meal List', 'raghide@hotmail.com', '0000-00-00', '2021-01-24', 0, 1011, 'raghide@hotmail.com', '2021-01-06 23:22:45'),
(1059, 'Company name and industry update', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-06 23:29:36'),
(1059, 'Company name and industry update', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-25', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-06 23:30:07'),
(1037, 'Deliverable changes - Insight', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-08', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-08 21:58:06'),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-08 22:03:16'),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '0000-00-00', 0, 1002, 'raghid@fanooce.com', '2021-01-10 15:31:22'),
(1005, 'Huge Deliverable', 'raghid@fanooce.com', '0000-00-00', '2021-03-03', 0, 1005, 'raghid@fanooce.com', '2021-01-10 15:31:46'),
(1003, 'Blueprints', 'raghid@fanooce.com', '0000-00-00', '2021-01-14', 0, 1005, 'raghid@fanooce.com', '2021-01-10 15:34:02'),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '2021-01-16', 0, 1002, 'raghid@fanooce.com', '2021-01-10 15:36:12'),
(1003, 'Blueprints', 'raghid@fanooce.com', '0000-00-00', '0000-00-00', 0, 1005, 'raghid@fanooce.com', '2021-01-10 15:42:32'),
(1049, '2020 Financial Updates', 'raghide@hotmail.com', '0000-00-00', '2021-01-10', 0, 1009, 'raghide@hotmail.com', '2021-01-10 15:44:07'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-01-17', 1, 1009, 'raghide@hotmail.com', '2021-01-10 15:44:08'),
(1053, 'Microsoft Azure Fundamentals Certification', 'raghide@hotmail.com', '0000-00-00', '2021-01-31', 0, 1009, 'raghide@hotmail.com', '2021-01-10 15:44:34'),
(1049, '2020 Financial Updates', 'raghide@hotmail.com', '0000-00-00', '2021-01-10', 1, 1009, 'raghide@hotmail.com', '2021-01-13 11:02:35'),
(1052, 'Article to IJOMT', 'raghide@hotmail.com', '0000-00-00', '2021-01-13', 1, 1009, 'raghide@hotmail.com', '2021-01-13 11:03:14'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-01-17', 0, 1009, 'raghide@hotmail.com', '2021-01-13 11:03:25'),
(1062, 'Kids 1st semester progress report', 'raghide@hotmail.com', '0000-00-00', '2021-01-15', 0, 1009, 'raghide@hotmail.com', '2021-01-13 11:05:54'),
(1062, 'Kids 1st semester progress report', 'raghide@hotmail.com', '0000-00-00', '2021-01-15', 1, 1009, 'raghide@hotmail.com', '2021-01-16 10:33:59'),
(1063, 'Product addition from kanban', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-16 10:37:43'),
(1063, 'Project addition from kanban', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-17 11:01:24'),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-18', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-17 13:39:48'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-01-31', 0, 1009, 'raghide@hotmail.com', '2021-01-23 14:40:50'),
(1058, 'Meal List', 'raghide@hotmail.com', '0000-00-00', '2021-01-31', 0, 1011, 'raghide@hotmail.com', '2021-01-23 14:40:55'),
(1064, 'EMR Submission to Health Research Policy and Systems', 'raghide@hotmail.com', '0000-00-00', '2021-01-31', 0, 1009, 'raghide@hotmail.com', '2021-01-23 14:42:01'),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-25', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 12:28:59'),
(1015, 'Make deliverable name box expandable', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-24', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 13:03:31'),
(1065, 'Multi-line deliverable name', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 13:03:57'),
(1015, 'Make deliverable name box expandable', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-24', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 13:39:44'),
(1039, 'Deliverables kanban by month', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-24', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:00:00'),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-31', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:01:26'),
(1063, 'Project addition from kanban', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-31', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:01:38'),
(1035, 'Managed no. of displayed deliverables', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:03:21'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-03-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:03:28'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:03:57'),
(1040, 'Tracking deliverable change vs save', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-14', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-24 18:04:25'),
(1059, 'Company name and industry update', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-28', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 17:59:04'),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-31', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 17:59:31'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 18:00:22'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 18:01:11'),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-31', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 18:07:17'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 18:07:33'),
(1060, 'Option of insights by week', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-28', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-28 21:48:56'),
(1066, 'Deliverables Icons in Project Kanban ', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-29 16:53:16'),
(1066, 'Deliverables Icons in Project Kanban ', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-31', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-29 16:53:46'),
(1063, 'Project addition from kanban', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-29', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-29 16:56:05'),
(1064, 'EMR Submission to Health Research Policy and Systems', 'raghide@hotmail.com', '0000-00-00', '2021-01-27', 1, 1009, 'raghide@hotmail.com', '2021-01-30 22:07:24'),
(1053, 'Microsoft Azure Fundamentals Certification', 'raghide@hotmail.com', '0000-00-00', '2021-02-02', 0, 1009, 'raghide@hotmail.com', '2021-01-30 22:07:41'),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-01-30 22:08:23'),
(1066, 'Deliverables Icons in Project Kanban ', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-01-30', 1, 1015, 'raghid.elyafouri@gmail.com', '2021-01-30 22:09:33'),
(1068, 'Projects Timeline', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-30 22:19:48'),
(1068, 'Projects Timeline', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-21', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-01-30 22:23:25'),
(1069, 'Floor plan', 'asdf@asdf.com', '0000-00-00', '0000-00-00', 0, 1004, 'raghid@fanooce.com', '2021-01-30 22:24:52'),
(1070, 'Valuation', 'asdf@asdf.com', '0000-00-00', '0000-00-00', 0, 1004, 'raghid@fanooce.com', '2021-01-30 22:25:39'),
(1053, 'Microsoft Azure Fundamentals Certification', 'raghide@hotmail.com', '0000-00-00', '2021-02-02', 1, 1009, 'raghide@hotmail.com', '2021-02-02 21:48:37'),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '0000-00-00', 0, 1020, 'raghid@fanooce.com', '2021-02-11 12:52:42'),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '2021-03-25', 0, 1020, 'raghid@fanooce.com', '2021-02-11 12:52:53'),
(1005, 'Huge Deliverable', 'raghid@fanooce.com', '0000-00-00', '2021-02-17', 0, 1005, 'raghid@fanooce.com', '2021-02-11 12:53:14'),
(1005, 'Huge Deliverable', 'raghid@fanooce.com', '0000-00-00', '2021-02-17', 1, 1005, 'raghid@fanooce.com', '2021-02-11 12:53:25'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-10', 0, 1014, 'raghid@fanooce.com', '2021-02-11 12:54:11'),
(1047, 'Market Research', 'raghid@fanooce.com', '0000-00-00', '2021-02-26', 0, 1005, 'raghid@fanooce.com', '2021-02-11 12:54:52'),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '2021-01-16', 1, 1002, 'raghid@fanooce.com', '2021-02-11 12:54:56'),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2021-03-11', 0, 1004, 'raghid@fanooce.com', '2021-02-11 12:55:01'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-10', 2, 1014, 'raghid@fanooce.com', '2021-02-11 12:55:05'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '0000-00-00', 0, 1021, 'raghid@fanooce.com', '2021-02-11 13:59:30'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-04', 0, 1021, 'raghid@fanooce.com', '2021-02-11 13:59:44'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-12', 0, 1021, 'raghid@fanooce.com', '2021-02-11 13:59:53'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-25', 0, 1021, 'raghid@fanooce.com', '2021-02-11 14:00:00'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-25', 1, 1021, 'raghid@fanooce.com', '2021-02-11 14:00:04'),
(1005, 'Huge Deliverable asdfj;alskdfj', 'raghid@fanooce.com', '0000-00-00', '2021-02-17', 1, 1005, 'raghid@fanooce.com', '2021-02-11 14:05:21'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-25', 0, 1021, 'raghid@fanooce.com', '2021-02-11 18:20:34'),
(1005, 'Huge Deliverable asdfj;alskdfj', 'raghid@fanooce.com', '0000-00-00', '2021-02-17', 0, 1005, 'raghid@fanooce.com', '2021-02-11 18:20:40'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-02-10', 0, 1014, 'raghid@fanooce.com', '2021-02-11 18:20:43'),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '2021-01-16', 0, 1002, 'raghid@fanooce.com', '2021-02-11 18:20:47'),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '2021-03-25', 2, 1020, 'raghid@fanooce.com', '2021-02-11 19:01:12'),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '2021-03-25', 0, 1020, 'raghid@fanooce.com', '2021-02-11 19:01:14'),
(1050, '2021 Healthinf Presentation', 'raghide@hotmail.com', '0000-00-00', '2021-02-11', 1, 1009, 'raghide@hotmail.com', '2021-02-12 18:28:26'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-02-21', 0, 1009, 'raghide@hotmail.com', '2021-02-12 18:28:41'),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '2021-03-07', 0, 1009, 'raghide@hotmail.com', '2021-02-12 18:29:07'),
(1005, 'Huge Deliverable asdfj;alskdfj', 'raghid@fanooce.com', '0000-00-00', '2021-02-15', 1, 1005, 'raghid@fanooce.com', '2021-02-15 19:04:34'),
(1047, 'Market Research', 'raghid@fanooce.com', '0000-00-00', '2021-01-20', 1, 1005, 'raghid@fanooce.com', '2021-02-15 19:04:49'),
(1048, 'Certification', 'raghid@fanooce.com', '0000-00-00', '2021-01-08', 1, 1004, 'raghid@fanooce.com', '2021-02-15 19:04:59'),
(1004, 'Paving Paperererererer', 'raghid@fanooce.com', '0000-00-00', '2020-12-30', 1, 1004, 'raghid@fanooce.com', '2021-02-15 19:05:13'),
(1040, 'Tracking deliverable change vs save', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-03-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-02-26 18:51:10'),
(1068, 'Projects Timeline', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-03-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-02-26 18:51:26'),
(1035, 'Managed no. of displayed deliverables', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-03-14', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-02-26 18:51:39'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-02-07', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-02-26 18:51:41'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '2021-03-14', 0, 1015, 'raghid.elyafouri@gmail.com', '2021-02-26 18:51:48'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-03-21', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:07:58'),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '2021-04-30', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:08:15'),
(1073, 'Project to Product Management Article', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:08:52'),
(1073, 'Project to Product Management Article', 'raghide@hotmail.com', '0000-00-00', '2021-04-30', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:09:14'),
(1074, 'Business Analysis Behavior Article', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:11:38'),
(1073, 'Project to Product Management Article', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:12:09'),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:12:17'),
(1075, 'Project Management Kindergarten Article', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1009, 'raghide@hotmail.com', '2021-03-10 17:12:47'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-24 22:45:01'),
(1076, 'Auto Insurance 2021', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 0, 1009, 'raghide@hotmail.com', '2021-03-24 22:45:34'),
(1077, 'Signed Lowe\'s Water Heater Papers', 'raghide@hotmail.com', '0000-00-00', '2021-03-26', 0, 1009, 'raghide@hotmail.com', '2021-03-24 22:46:20'),
(1077, 'Signed Lowes Water Heater Papers', 'raghide@hotmail.com', '0000-00-00', '2021-03-26', 0, 1009, 'raghide@hotmail.com', '2021-03-24 22:46:59'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-04-04', 0, 1009, 'raghide@hotmail.com', '2021-04-04 17:18:56'),
(1076, 'Auto Insurance 2021', 'raghide@hotmail.com', '0000-00-00', '2021-03-31', 1, 1009, 'raghide@hotmail.com', '2021-04-04 17:19:13'),
(1051, '2020 Income Taxes', 'raghide@hotmail.com', '0000-00-00', '2021-04-04', 1, 1009, 'raghide@hotmail.com', '2021-04-04 17:19:21'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-05-21', 0, 1014, 'raghid@fanooce.com', '2021-05-17 16:44:12'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-05-26', 0, 1014, 'raghid@fanooce.com', '2021-05-17 20:50:10'),
(1077, 'Signed Lowes Water Heater Papers', 'raghide@hotmail.com', '0000-00-00', '2021-04-01', 1, 1009, 'raghide@hotmail.com', '2021-06-01 22:01:48'),
(1067, 'EMR Short Paper', 'raghide@hotmail.com', '0000-00-00', '2021-07-31', 0, 1009, 'raghide@hotmail.com', '2021-06-01 22:02:05'),
(1073, 'PM Summit Project to Product Mgt Submission', 'raghide@hotmail.com', '0000-00-00', '2021-06-03', 0, 1009, 'raghide@hotmail.com', '2021-06-01 22:03:19'),
(1074, 'Business Analysis Behavior Article', 'raghide@hotmail.com', '0000-00-00', '2021-07-31', 0, 1009, 'raghide@hotmail.com', '2021-06-01 22:03:36'),
(1078, 'RHU BA Seminar', 'raghide@hotmail.com', '0000-00-00', '2021-06-30', 0, 1009, 'raghide@hotmail.com', '2021-06-01 22:04:50'),
(1058, 'Meal List', 'raghide@hotmail.com', '0000-00-00', '0000-00-00', 0, 1011, 'raghide@hotmail.com', '2021-06-01 22:05:35'),
(1061, 'Del 123', 'raghid@fanooce.com', '0000-00-00', '2021-01-16', 1, 1002, 'raghid@fanooce.com', '2021-06-22 09:08:55'),
(1072, 'Creative Brief', 'raghid@fanooce.com', '0000-00-00', '2021-02-25', 1, 1021, 'raghid@fanooce.com', '2021-06-22 09:08:59'),
(1071, 'Del 1', 'asdf@asdf.com', '0000-00-00', '2021-03-25', 1, 1020, 'raghid@fanooce.com', '2021-06-22 09:09:05'),
(1003, 'Blueprints', 'raghid@fanooce.com', '0000-00-00', '2021-07-01', 0, 1005, 'raghid@fanooce.com', '2021-06-22 09:09:19'),
(1069, 'Floor plan', 'asdf@asdf.com', '0000-00-00', '2021-07-15', 0, 1004, 'raghid@fanooce.com', '2021-06-22 09:09:40'),
(1007, 'Reference guide', 'asdf@asdf.com', '0000-00-00', '2021-08-02', 0, 1006, 'raghid@fanooce.com', '2021-06-22 09:09:51'),
(1070, 'Valuation', 'asdf@asdf.com', '0000-00-00', '2021-08-31', 0, 1004, 'raghid@fanooce.com', '2021-06-22 09:10:04'),
(1003, 'Blueprints', 'raghid@fanooce.com', '0000-00-00', '2021-04-30', 1, 1005, 'raghid@fanooce.com', '2021-06-22 09:10:57'),
(1069, 'Floor plan', 'asdf@asdf.com', '0000-00-00', '2021-05-28', 1, 1004, 'raghid@fanooce.com', '2021-06-22 09:11:08'),
(1007, 'Reference guide', 'asdf@asdf.com', '0000-00-00', '2021-06-30', 0, 1006, 'raghid@fanooce.com', '2021-06-22 09:11:38'),
(1070, 'Valuation', 'asdf@asdf.com', '0000-00-00', '2021-07-30', 0, 1004, 'raghid@fanooce.com', '2021-06-22 09:11:46'),
(1001, 'POV 123', 'raghid@fanooce.com', '0000-00-00', '2021-12-31', 0, 1014, 'raghid@fanooce.com', '2021-12-02 14:52:47'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '0000-00-00', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:43:24'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-31', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:43:37'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '2022-04-30', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:44:06'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-07', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:44:25'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '0000-00-00', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:44:59'),
(1079, 'Strategy Document', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-31', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:45:10'),
(1080, 'Blueprint', 'joemazloum953@gmail.com', '0000-00-00', '2022-03-26', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:45:26'),
(1080, 'Blueprint', 'joemazloum953@gmail.com', '0000-00-00', '2022-06-25', 0, 1023, 'raghid@fanooce.com', '2022-05-03 09:46:12'),
(1079, 'Strategy Document', 'raghid@fanooce.com', '0000-00-00', '2022-05-31', 0, 1023, 'raghid@fanooce.com', '2022-05-03 16:25:26'),
(1080, 'Blueprint', 'raghid@fanooce.com', '0000-00-00', '2022-06-25', 0, 1023, 'raghid@fanooce.com', '2022-05-03 16:25:32'),
(1040, 'Tracking deliverable change vs save', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:31:39'),
(1068, 'Projects Timeline', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:31:46'),
(1034, 'Managed no. of displayed projects', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:31:52'),
(1035, 'Managed no. of displayed deliverables', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:32:00'),
(1030, 'Add description field to deliverable', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:32:06'),
(1065, 'Multi-line deliverable name', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-03 16:32:11'),
(1081, 'Mobile Shell', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-13', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-03 16:33:29'),
(1082, 'Drag/drop unscheduled deliverables to timetable columns', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-06 17:31:23'),
(1083, 'Drag/drop unscheduled deliverables to timetable columns', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-06 17:31:23'),
(1084, 'Standalone user invited by many companies', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 0, 1025, 'raghid.elyafouri@gmail.com', '2022-05-06 17:31:56'),
(1083, 'Drag/drop unscheduled deliverables to timetable columns', 'raghid.elyafouri@gmail.com', '0000-00-00', '0000-00-00', 2, 1025, 'raghid.elyafouri@gmail.com', '2022-05-06 17:32:51'),
(1081, 'Mobile Shell', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-14', 1, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:20:35'),
(1085, 'Login', 'joemazloum953@gmail.com', '0000-00-00', '0000-00-00', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:20:56'),
(1086, 'Register', 'joemazloum953@gmail.com', '0000-00-00', '0000-00-00', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:21:07'),
(1085, 'Login', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-20', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:21:45'),
(1086, 'Register', 'joemazloum953@gmail.com', '0000-00-00', '2022-05-25', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:21:57'),
(1087, 'Project Kanban Dashboard', 'joemazloum953@gmail.com', '0000-00-00', '2022-06-01', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:22:40'),
(1088, 'Deliverable Kanban Dashboard', 'joemazloum953@gmail.com', '0000-00-00', '2022-06-08', 0, 1024, 'raghid.elyafouri@gmail.com', '2022-05-14 08:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblIndustry`
--

CREATE TABLE `tblIndustry` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblIndustry`
--

INSERT INTO `tblIndustry` (`ID`, `Name`) VALUES
(47, 'Accounting'),
(94, 'Airlines/Aviation'),
(120, 'Alternative Dispute Resolution'),
(125, 'Alternative Medicine'),
(127, 'Animation'),
(19, 'Apparel & Fashion'),
(50, 'Architecture & Planning'),
(111, 'Arts and Crafts'),
(53, 'Automotive'),
(52, 'Aviation & Aerospace'),
(41, 'Banking'),
(12, 'Biotechnology'),
(36, 'Broadcast Media'),
(49, 'Building Materials'),
(138, 'Business Supplies and Equipment'),
(129, 'Capital Markets'),
(54, 'Chemicals'),
(90, 'Civic & Social Organization'),
(51, 'Civil Engineering'),
(128, 'Commercial Real Estate'),
(118, 'Computer & Network Security'),
(109, 'Computer Games'),
(3, 'Computer Hardware'),
(5, 'Computer Networking'),
(4, 'Computer Software'),
(48, 'Construction'),
(24, 'Consumer Electronics'),
(25, 'Consumer Goods'),
(91, 'Consumer Services'),
(18, 'Cosmetics'),
(65, 'Dairy'),
(1, 'Defense & Space'),
(99, 'Design'),
(69, 'Education Management'),
(132, 'E-Learning'),
(112, 'Electrical/Electronic Manufacturing'),
(28, 'Entertainment'),
(86, 'Environmental Services'),
(110, 'Events Services'),
(76, 'Executive Office'),
(122, 'Facilities Services'),
(63, 'Farming'),
(43, 'Financial Services'),
(38, 'Fine Art'),
(66, 'Fishery'),
(34, 'Food & Beverages'),
(23, 'Food Production'),
(101, 'Fund-Raising'),
(26, 'Furniture'),
(29, 'Gambling & Casinos'),
(145, 'Glass, Ceramics & Concrete'),
(75, 'Government Administration'),
(148, 'Government Relations'),
(140, 'Graphic Design'),
(124, 'Health, Wellness and Fitness'),
(68, 'Higher Education'),
(14, 'Hospital & Health Care'),
(31, 'Hospitality'),
(137, 'Human Resources'),
(134, 'Import and Export'),
(88, 'Individual & Family Services'),
(147, 'Industrial Automation'),
(84, 'Information Services'),
(96, 'Information Technology and Services'),
(42, 'Insurance'),
(74, 'International Affairs'),
(141, 'International Trade and Development'),
(6, 'Internet'),
(45, 'Investment Banking'),
(46, 'Investment Management'),
(73, 'Judiciary'),
(77, 'Law Enforcement'),
(9, 'Law Practice'),
(10, 'Legal Services'),
(72, 'Legislative Office'),
(30, 'Leisure, Travel & Tourism'),
(85, 'Libraries'),
(116, 'Logistics and Supply Chain'),
(143, 'Luxury Goods & Jewelry'),
(55, 'Machinery'),
(11, 'Management Consulting'),
(95, 'Maritime'),
(97, 'Market Research'),
(80, 'Marketing and Advertising'),
(135, 'Mechanical or Industrial Engineering'),
(126, 'Media Production'),
(17, 'Medical Devices'),
(13, 'Medical Practice'),
(139, 'Mental Health Care'),
(71, 'Military'),
(56, 'Mining & Metals'),
(3131, 'Mobile Games'),
(35, 'Motion Pictures and Film'),
(37, 'Museums and Institutions'),
(115, 'Music'),
(114, 'Nanotechnology'),
(81, 'Newspapers'),
(100, 'Non-Profit Organization Management'),
(57, 'Oil & Energy'),
(113, 'Online Media'),
(123, 'Outsourcing/Offshoring'),
(87, 'Package/Freight Delivery'),
(146, 'Packaging and Containers'),
(61, 'Paper & Forest Products'),
(39, 'Performing Arts'),
(15, 'Pharmaceuticals'),
(131, 'Philanthropy'),
(136, 'Photography'),
(117, 'Plastics'),
(107, 'Political Organization'),
(67, 'Primary/Secondary Education'),
(83, 'Printing'),
(105, 'Professional Training & Coaching'),
(102, 'Program Development'),
(79, 'Public Policy'),
(98, 'Public Relations and Communications'),
(78, 'Public Safety'),
(82, 'Publishing'),
(62, 'Railroad Manufacture'),
(64, 'Ranching'),
(44, 'Real Estate'),
(40, 'Recreational Facilities and Services'),
(89, 'Religious Institutions'),
(144, 'Renewables & Environment'),
(70, 'Research'),
(32, 'Restaurants'),
(27, 'Retail'),
(121, 'Security and Investigations'),
(7, 'Semiconductors'),
(58, 'Shipbuilding'),
(20, 'Sporting Goods'),
(33, 'Sports'),
(104, 'Staffing and Recruiting'),
(22, 'Supermarkets'),
(8, 'Telecommunications'),
(60, 'Textiles'),
(130, 'Think Tanks'),
(21, 'Tobacco'),
(108, 'Translation and Localization'),
(92, 'Transportation/Trucking/Railroad'),
(59, 'Utilities'),
(106, 'Venture Capital & Private Equity'),
(16, 'Veterinary'),
(93, 'Warehousing'),
(133, 'Wholesale'),
(142, 'Wine and Spirits'),
(119, 'Wireless'),
(103, 'Writing and Editing');

-- --------------------------------------------------------

--
-- Table structure for table `tblProject`
--

CREATE TABLE `tblProject` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Owner` varchar(255) NOT NULL,
  `State` int(1) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProject`
--

INSERT INTO `tblProject` (`ID`, `Name`, `Owner`, `State`, `CompanyID`) VALUES
(1001, 'Project ABC', 'raghid@fanooce.com', 1, 1),
(1002, 'Project ABC', 'raghid@fanooce.com', 0, 1),
(1003, 'Project XYZ', 'raghid@fanooce.com', 2, 1),
(1004, 'Antique Project', 'raghid@fanooce.com', 0, 1),
(1005, 'Bramble Ingestion', 'raghid@fanooce.com', 0, 1),
(1006, 'Power Dealing', 'asdf@asdf.com', 0, 1),
(1007, 'Whats Happenin', 'asdf@asdf.com', 2, 1),
(1008, 'Deleted Title', 'raghid@fanooce.com', 2, 1),
(1009, 'Raghid Personal', 'raghide@hotmail.com', 0, 2),
(1010, 'DollarDoc', 'raghide@hotmail.com', 0, 2),
(1011, 'Meal Plan', 'raghide@hotmail.com', 0, 2),
(1012, 'For Sure', 'raghid@iamforeign.com', 0, 2),
(1013, 'Around the Clock', 'raghide@hotmail.com', 0, 2),
(1014, 'Thursday Plan', 'raghid@fanooce.com', 0, 1),
(1015, 'Bare Project MVP', 'raghid.elyafouri@gmail.com', 1, 5),
(1016, 'Start a Business', 'raghid.elyafouri@gmail.com', 0, 5),
(1017, 'LED Grow Light', 'dal0323@gmail.com', 0, 5),
(1018, 'Medicare Product', 'lana0731@gmail.com', 0, 5),
(1019, 'Project from Kanban', 'raghid@fanooce.com', 0, 1),
(1020, 'CAI Project A', 'raghid@fanooce.com', 0, 1),
(1021, 'Aaron A', 'raghid@fanooce.com', 0, 1),
(1022, 'New Pro Text', 'raghide@hotmail.com', 0, 2),
(1023, 'May2022 Project', 'raghid@fanooce.com', 0, 1),
(1024, 'Bare Project Mobile App MVP', 'raghid.elyafouri@gmail.com', 0, 5),
(1025, 'Bare Project Beta', 'raghid.elyafouri@gmail.com', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblProjectGroup`
--

CREATE TABLE `tblProjectGroup` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjectGroup`
--

INSERT INTO `tblProjectGroup` (`ID`, `Name`, `Active`, `CompanyID`) VALUES
(1001, 'Group ABC', 1, 1),
(1002, 'XYZ Enterprises', 1, 1),
(1003, 'Product Bold', 1, 1),
(1004, 'Program Compass', 1, 1),
(1005, 'Career', 1, 2),
(1007, 'Household', 1, 2),
(1006, 'Business', 1, 2),
(1008, 'Family', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblProjectGroupCombo`
--

CREATE TABLE `tblProjectGroupCombo` (
  `ProjectID` int(11) NOT NULL,
  `ProjectGroupID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblProjectGroupCombo`
--

INSERT INTO `tblProjectGroupCombo` (`ProjectID`, `ProjectGroupID`) VALUES
(1002, 1001),
(1002, 1002),
(1002, 1004),
(1003, 1001),
(1004, 1001),
(1005, 1004),
(1007, 1001),
(1007, 1004),
(1010, 1006),
(1011, 1008),
(1014, 1001),
(1014, 1002),
(1019, 1004),
(1021, 1001),
(1021, 1002),
(1023, 1001),
(1023, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `tblUser`
--

CREATE TABLE `tblUser` (
  `Email` varchar(255) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Valid` int(11) NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `CompanyID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUser`
--

INSERT INTO `tblUser` (`Email`, `Password`, `Name`, `Valid`, `Active`, `CompanyID`) VALUES
('raghid@fanooce.com', 'YafouriEl', 'Raghid Fanooce', 2096226148, 1, 1),
('raghid@iamforeign.com', '', 'Raghid Foreign', 0, 0, 2),
('raghide@hotmail.com', 'raghide@', 'Raghid E.', 0, 1, 2),
('asdf@asdf.com', 'Relkje#45', 'Allen Parks', 0, 1, 1),
('raghid.elyafouri@gmail.com', 'BareProject11', 'Raghid El-Yafouri', 0, 1, 5),
('dal0323@gmail.com', 'BareProject12', 'Dalibor Djordjevic', 0, 1, 5),
('joemazloum953@gmail.com', '70285659.joe', 'Joe Mazloum', 0, 1, 5),
('lana0731@gmail.com', '˜,>H¢‚jÇ', 'Lana D', 2014280588, 1, 5),
('hardey.ilya@gmail.com', 'Hardey11', 'Ilya Hardey', 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tblUserLogin`
--

CREATE TABLE `tblUserLogin` (
  `Email` varchar(255) NOT NULL,
  `LoginDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUserLogin`
--

INSERT INTO `tblUserLogin` (`Email`, `LoginDate`) VALUES
('dal0323@gmail.com', '2021-01-03 13:30:09'),
('dal0323@gmail.com', '2021-03-12 10:33:14'),
('hardey.ilya@gmail.com', '2021-01-04 15:17:48'),
('joemazloum953@gmail.com', '2022-04-02 10:02:28'),
('raghid.elyafouri@gmail.com', '2020-12-28 14:21:39'),
('raghid.elyafouri@gmail.com', '2020-12-28 14:22:32'),
('raghid.elyafouri@gmail.com', '2020-12-29 13:16:33'),
('raghid.elyafouri@gmail.com', '2020-12-30 13:22:50'),
('raghid.elyafouri@gmail.com', '2020-12-31 09:58:41'),
('raghid.elyafouri@gmail.com', '2020-12-31 10:34:55'),
('raghid.elyafouri@gmail.com', '2021-01-01 20:29:29'),
('raghid.elyafouri@gmail.com', '2021-01-02 12:23:29'),
('raghid.elyafouri@gmail.com', '2021-01-02 20:39:33'),
('raghid.elyafouri@gmail.com', '2021-01-03 11:45:48'),
('raghid.elyafouri@gmail.com', '2021-01-03 13:48:26'),
('raghid.elyafouri@gmail.com', '2021-01-03 15:27:09'),
('raghid.elyafouri@gmail.com', '2021-01-03 21:15:08'),
('raghid.elyafouri@gmail.com', '2021-01-04 01:17:14'),
('raghid.elyafouri@gmail.com', '2021-01-04 13:47:14'),
('raghid.elyafouri@gmail.com', '2021-01-04 13:47:39'),
('raghid.elyafouri@gmail.com', '2021-01-04 14:38:42'),
('raghid.elyafouri@gmail.com', '2021-01-04 15:12:26'),
('raghid.elyafouri@gmail.com', '2021-01-04 15:22:55'),
('raghid.elyafouri@gmail.com', '2021-01-04 16:03:30'),
('raghid.elyafouri@gmail.com', '2021-01-05 14:19:42'),
('raghid.elyafouri@gmail.com', '2021-01-06 23:29:12'),
('raghid.elyafouri@gmail.com', '2021-01-07 18:26:14'),
('raghid.elyafouri@gmail.com', '2021-01-07 20:03:45'),
('raghid.elyafouri@gmail.com', '2021-01-08 21:05:18'),
('raghid.elyafouri@gmail.com', '2021-01-09 14:11:30'),
('raghid.elyafouri@gmail.com', '2021-01-13 11:01:49'),
('raghid.elyafouri@gmail.com', '2021-01-16 10:35:30'),
('raghid.elyafouri@gmail.com', '2021-01-17 11:00:41'),
('raghid.elyafouri@gmail.com', '2021-01-17 13:24:27'),
('raghid.elyafouri@gmail.com', '2021-01-17 15:17:16'),
('raghid.elyafouri@gmail.com', '2021-01-24 12:27:26'),
('raghid.elyafouri@gmail.com', '2021-01-24 16:45:17'),
('raghid.elyafouri@gmail.com', '2021-01-24 21:10:33'),
('raghid.elyafouri@gmail.com', '2021-01-25 09:12:57'),
('raghid.elyafouri@gmail.com', '2021-01-25 11:32:26'),
('raghid.elyafouri@gmail.com', '2021-01-28 13:33:39'),
('raghid.elyafouri@gmail.com', '2021-01-28 13:58:22'),
('raghid.elyafouri@gmail.com', '2021-01-28 16:55:01'),
('raghid.elyafouri@gmail.com', '2021-01-28 17:31:21'),
('raghid.elyafouri@gmail.com', '2021-01-28 17:50:05'),
('raghid.elyafouri@gmail.com', '2021-01-28 17:58:12'),
('raghid.elyafouri@gmail.com', '2021-01-28 19:20:04'),
('raghid.elyafouri@gmail.com', '2021-01-28 20:59:38'),
('raghid.elyafouri@gmail.com', '2021-01-29 14:33:18'),
('raghid.elyafouri@gmail.com', '2021-01-29 15:12:24'),
('raghid.elyafouri@gmail.com', '2021-01-29 16:52:21'),
('raghid.elyafouri@gmail.com', '2021-01-29 21:08:22'),
('raghid.elyafouri@gmail.com', '2021-01-29 21:30:27'),
('raghid.elyafouri@gmail.com', '2021-01-30 20:24:04'),
('raghid.elyafouri@gmail.com', '2021-01-30 21:34:40'),
('raghid.elyafouri@gmail.com', '2021-01-30 22:09:17'),
('raghid.elyafouri@gmail.com', '2021-01-31 18:20:05'),
('raghid.elyafouri@gmail.com', '2021-02-01 20:30:07'),
('raghid.elyafouri@gmail.com', '2021-02-26 18:50:18'),
('raghid.elyafouri@gmail.com', '2021-03-05 21:56:21'),
('raghid.elyafouri@gmail.com', '2021-03-10 17:01:47'),
('raghid.elyafouri@gmail.com', '2021-03-12 10:28:45'),
('raghid.elyafouri@gmail.com', '2021-03-12 10:52:17'),
('raghid.elyafouri@gmail.com', '2021-03-12 11:24:26'),
('raghid.elyafouri@gmail.com', '2021-03-12 17:51:16'),
('raghid.elyafouri@gmail.com', '2021-03-12 20:33:21'),
('raghid.elyafouri@gmail.com', '2021-12-06 10:09:40'),
('raghid.elyafouri@gmail.com', '2022-05-03 09:34:06'),
('raghid.elyafouri@gmail.com', '2022-05-03 09:53:00'),
('raghid.elyafouri@gmail.com', '2022-05-03 16:28:40'),
('raghid.elyafouri@gmail.com', '2022-05-06 17:29:24'),
('raghid.elyafouri@gmail.com', '2022-05-14 08:01:52'),
('raghid.elyafouri@gmail.com', '2022-05-14 08:19:46'),
('raghid.elyafouri@gmail.com', '2022-05-14 08:27:07'),
('raghid@fanooce.com', '2020-12-28 14:22:05'),
('raghid@fanooce.com', '2020-12-29 13:21:35'),
('raghid@fanooce.com', '2020-12-29 15:56:03'),
('raghid@fanooce.com', '2020-12-29 17:39:51'),
('raghid@fanooce.com', '2020-12-29 19:05:00'),
('raghid@fanooce.com', '2020-12-29 19:25:29'),
('raghid@fanooce.com', '2020-12-29 20:17:01'),
('raghid@fanooce.com', '2020-12-30 09:45:04'),
('raghid@fanooce.com', '2020-12-30 11:53:48'),
('raghid@fanooce.com', '2020-12-30 12:12:21'),
('raghid@fanooce.com', '2020-12-30 12:21:02'),
('raghid@fanooce.com', '2020-12-30 12:45:53'),
('raghid@fanooce.com', '2020-12-30 13:13:33'),
('raghid@fanooce.com', '2020-12-30 13:15:58'),
('raghid@fanooce.com', '2020-12-30 15:35:18'),
('raghid@fanooce.com', '2020-12-30 16:31:26'),
('raghid@fanooce.com', '2020-12-30 17:57:34'),
('raghid@fanooce.com', '2020-12-30 18:10:36'),
('raghid@fanooce.com', '2020-12-30 18:15:35'),
('raghid@fanooce.com', '2020-12-30 20:11:57'),
('raghid@fanooce.com', '2020-12-30 20:34:44'),
('raghid@fanooce.com', '2020-12-30 20:41:03'),
('raghid@fanooce.com', '2020-12-30 20:49:33'),
('raghid@fanooce.com', '2020-12-30 20:52:58'),
('raghid@fanooce.com', '2020-12-31 09:52:24'),
('raghid@fanooce.com', '2020-12-31 10:30:37'),
('raghid@fanooce.com', '2021-01-03 18:23:14'),
('raghid@fanooce.com', '2021-01-03 19:00:16'),
('raghid@fanooce.com', '2021-01-03 21:45:56'),
('raghid@fanooce.com', '2021-01-03 23:29:32'),
('raghid@fanooce.com', '2021-01-04 13:42:03'),
('raghid@fanooce.com', '2021-01-04 13:57:51'),
('raghid@fanooce.com', '2021-01-04 14:00:03'),
('raghid@fanooce.com', '2021-01-04 14:16:25'),
('raghid@fanooce.com', '2021-01-04 15:13:30'),
('raghid@fanooce.com', '2021-01-04 16:59:57'),
('raghid@fanooce.com', '2021-01-05 14:12:50'),
('raghid@fanooce.com', '2021-01-06 17:07:39'),
('raghid@fanooce.com', '2021-01-06 23:14:18'),
('raghid@fanooce.com', '2021-01-09 10:29:24'),
('raghid@fanooce.com', '2021-01-10 15:27:56'),
('raghid@fanooce.com', '2021-01-29 16:50:16'),
('raghid@fanooce.com', '2021-01-30 22:01:09'),
('raghid@fanooce.com', '2021-01-30 22:23:45'),
('raghid@fanooce.com', '2021-01-31 18:37:23'),
('raghid@fanooce.com', '2021-02-04 14:23:06'),
('raghid@fanooce.com', '2021-02-11 11:33:43'),
('raghid@fanooce.com', '2021-02-11 12:49:22'),
('raghid@fanooce.com', '2021-02-11 13:03:14'),
('raghid@fanooce.com', '2021-02-11 13:57:59'),
('raghid@fanooce.com', '2021-02-11 18:16:54'),
('raghid@fanooce.com', '2021-02-15 19:04:19'),
('raghid@fanooce.com', '2021-02-25 20:28:55'),
('raghid@fanooce.com', '2021-03-12 11:13:06'),
('raghid@fanooce.com', '2021-03-12 20:27:47'),
('raghid@fanooce.com', '2021-05-17 16:22:04'),
('raghid@fanooce.com', '2021-05-17 20:19:17'),
('raghid@fanooce.com', '2021-05-17 21:53:03'),
('raghid@fanooce.com', '2021-06-22 09:08:14'),
('raghid@fanooce.com', '2021-10-05 16:13:21'),
('raghid@fanooce.com', '2021-12-02 14:51:53'),
('raghid@fanooce.com', '2021-12-06 10:10:35'),
('raghid@fanooce.com', '2022-03-31 18:30:42'),
('raghid@fanooce.com', '2022-04-01 10:06:02'),
('raghid@fanooce.com', '2022-04-01 15:47:54'),
('raghid@fanooce.com', '2022-04-02 09:11:47'),
('raghid@fanooce.com', '2022-04-27 01:25:46'),
('raghid@fanooce.com', '2022-05-02 11:12:27'),
('raghid@fanooce.com', '2022-05-03 09:29:30'),
('raghid@fanooce.com', '2022-05-03 09:36:49'),
('raghid@fanooce.com', '2022-05-03 16:25:11'),
('raghide@hotmail.com', '2020-12-29 17:59:05'),
('raghide@hotmail.com', '2020-12-29 20:16:31'),
('raghide@hotmail.com', '2020-12-30 12:09:17'),
('raghide@hotmail.com', '2020-12-31 09:54:25'),
('raghide@hotmail.com', '2020-12-31 10:34:21'),
('raghide@hotmail.com', '2021-01-06 22:53:21'),
('raghide@hotmail.com', '2021-01-06 23:10:59'),
('raghide@hotmail.com', '2021-01-06 23:20:14'),
('raghide@hotmail.com', '2021-01-07 18:25:57'),
('raghide@hotmail.com', '2021-01-10 15:43:38'),
('raghide@hotmail.com', '2021-01-13 11:02:09'),
('raghide@hotmail.com', '2021-01-16 10:33:29'),
('raghide@hotmail.com', '2021-01-23 14:40:26'),
('raghide@hotmail.com', '2021-01-30 22:03:58'),
('raghide@hotmail.com', '2021-02-02 21:47:54'),
('raghide@hotmail.com', '2021-02-12 18:28:05'),
('raghide@hotmail.com', '2021-03-10 17:07:28'),
('raghide@hotmail.com', '2021-03-10 18:54:19'),
('raghide@hotmail.com', '2021-03-12 11:10:30'),
('raghide@hotmail.com', '2021-03-24 22:43:55'),
('raghide@hotmail.com', '2021-04-04 17:18:17'),
('raghide@hotmail.com', '2021-06-01 22:00:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblCompany`
--
ALTER TABLE `tblCompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblDeliverable`
--
ALTER TABLE `tblDeliverable`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblDeliverableChange`
--
ALTER TABLE `tblDeliverableChange`
  ADD PRIMARY KEY (`DeliverableID`,`ChangeDate`);

--
-- Indexes for table `tblIndustry`
--
ALTER TABLE `tblIndustry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblProject`
--
ALTER TABLE `tblProject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblProjectGroup`
--
ALTER TABLE `tblProjectGroup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblProjectGroupCombo`
--
ALTER TABLE `tblProjectGroupCombo`
  ADD PRIMARY KEY (`ProjectID`,`ProjectGroupID`);

--
-- Indexes for table `tblUser`
--
ALTER TABLE `tblUser`
  ADD PRIMARY KEY (`Email`,`CompanyID`);

--
-- Indexes for table `tblUserLogin`
--
ALTER TABLE `tblUserLogin`
  ADD PRIMARY KEY (`Email`,`LoginDate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
