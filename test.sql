-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 03:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customs_qr`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add ajax', 7, 'add_ajax'),
(26, 'Can change ajax', 7, 'change_ajax'),
(27, 'Can delete ajax', 7, 'delete_ajax'),
(28, 'Can view ajax', 7, 'view_ajax'),
(29, 'Can add csv upload', 8, 'add_csvupload'),
(30, 'Can change csv upload', 8, 'change_csvupload'),
(31, 'Can delete csv upload', 8, 'delete_csvupload'),
(32, 'Can view csv upload', 8, 'view_csvupload'),
(33, 'Can add document', 9, 'add_document'),
(34, 'Can change document', 9, 'change_document'),
(35, 'Can delete document', 9, 'delete_document'),
(36, 'Can view document', 9, 'view_document'),
(37, 'Can add member', 10, 'add_member'),
(38, 'Can change member', 10, 'change_member'),
(39, 'Can delete member', 10, 'delete_member'),
(40, 'Can view member', 10, 'view_member'),
(41, 'Can add university', 11, 'add_university'),
(42, 'Can change university', 11, 'change_university'),
(43, 'Can delete university', 11, 'delete_university'),
(44, 'Can view university', 11, 'view_university'),
(45, 'Can add university list', 12, 'add_universitylist'),
(46, 'Can change university list', 12, 'change_universitylist'),
(47, 'Can delete university list', 12, 'delete_universitylist'),
(48, 'Can view university list', 12, 'view_universitylist'),
(49, 'Can add discipline', 13, 'add_discipline'),
(50, 'Can change discipline', 13, 'change_discipline'),
(51, 'Can delete discipline', 13, 'delete_discipline'),
(52, 'Can view discipline', 13, 'view_discipline'),
(53, 'Can add languages', 14, 'add_languages'),
(54, 'Can change languages', 14, 'change_languages'),
(55, 'Can delete languages', 14, 'delete_languages'),
(56, 'Can view languages', 14, 'view_languages'),
(57, 'Can add user', 15, 'add_user'),
(58, 'Can change user', 15, 'change_user'),
(59, 'Can delete user', 15, 'delete_user'),
(60, 'Can view user', 15, 'view_user'),
(61, 'Can add user role', 16, 'add_userrole'),
(62, 'Can change user role', 16, 'change_userrole'),
(63, 'Can delete user role', 16, 'delete_userrole'),
(64, 'Can view user role', 16, 'view_userrole'),
(65, 'Can add module status history', 17, 'add_modulestatushistory'),
(66, 'Can change module status history', 17, 'change_modulestatushistory'),
(67, 'Can delete module status history', 17, 'delete_modulestatushistory'),
(68, 'Can view module status history', 17, 'view_modulestatushistory'),
(69, 'Can add module_ status_ history', 17, 'add_module_status_history'),
(70, 'Can change module_ status_ history', 17, 'change_module_status_history'),
(71, 'Can delete module_ status_ history', 17, 'delete_module_status_history'),
(72, 'Can view module_ status_ history', 17, 'view_module_status_history');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` varchar(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `password`, `date_joined`) VALUES
(1, '2023-06-17 13:40:23.919466', 1, 'officer1', 'Akshay ', 'Singh', 'saurabh0108@gmail.com', '1', 1, 'pbkdf2_sha256$260000$rQ0ETcSktMIUcDtocrY9RD$+6Z/l7Iaz/x1xSEHL8V0qoakJ7bGpTkqx0BGVPUy2mo=', '2021-02-09 17:04:52.974314'),
(30, '2021-11-08 12:01:03.143462', 1, 'officer2', 'Raja', 'Reddy', 'singh.piyush.ku@gmail.com', '1', 1, 'pbkdf2_sha256$260000$D7DJt9yEjAtzOcRbDqjcCI$6Jz3iEEl4sKfjzNeSGz4zrmbUQAeiTZhCy6FjErQv7Y=', '2021-04-12 09:28:22.205424'),
(31, '2021-07-05 09:19:34.295478', 0, 'officer3', 'Suraj', 'Kumar', 'shill1@arden.ac.uk', '1', 1, 'pbkdf2_sha256$216000$woMHcimFmQBA$bFZU2qFlQDsZpvOKm9gdOwGkZjFTz64NWgwW6AqEoyM=', '2021-04-15 09:35:00.340814'),
(32, '2021-06-07 12:18:34.357823', 0, 'awatson', 'Alison', 'Watson', 'awatson1@arden.ac.uk', '1', 0, 'pbkdf2_sha256$216000$C36tC9UcBcxL$MbprK1ch83GYqlpgPRvcWx11roVvzY966nQGPCHU+lA=', '2021-04-15 15:01:25.437752'),
(33, '2021-05-06 14:18:47.192287', 0, 'Sharmila', 'Sharmila', 'Katre', 'sharmila.katre1@gusindia.global', '1', 0, 'pbkdf2_sha256$216000$ewZxHaEhPfzj$TvKA9838dVdL2oK7jR/tyHd358aBw+pRpUbyOm1H6zY=', '2021-04-21 14:46:51.947053'),
(34, '2021-04-26 15:06:57.895002', 0, 'mary_university', 'Mary', 'Bishop', 'marydalzielbishop1@gmail.com', '1', 0, 'pbkdf2_sha256$216000$ikqkmdrLBdfA$MT371VvsvThyeERSj+JbcMRjkYaYT9nqQtGMH38pkkg=', '2021-04-26 10:28:37.631603'),
(35, '2021-08-06 14:55:54.761847', 0, 'mary_arden', 'Mary', 'Bishop', 'mary2.bishop1@icloud.com', '1', 0, 'pbkdf2_sha256$216000$PJoo5xaMsHuG$TeATD46LrFab7v76f8Wro01BTjl3aFLThFZXgLl/DSw=', '2021-04-26 12:10:14.715592'),
(36, '2022-04-04 07:23:46.699568', 0, 'saurabh_ucw', 'Saurabh', 'Gupta', 'saurabh.gupta@guseducationindia.com', '1', 0, 'pbkdf2_sha256$260000$cxjaGKXXtXNALsjuA6TL8z$N+YauJCxEeBS7DpRu4uz9iypUZclf8vH53risxjWQgg=', '2021-04-26 14:56:05.980571'),
(38, '2021-04-29 08:10:40.472576', 0, 'mary_ucw', 'Mary', 'Bishop', 'garyjohn02bishop1@gmail.com', '1', 0, 'pbkdf2_sha256$216000$AiCvbJJfDs2w$rtu3FgZy3g/niKMzpcnSfTAQrYOOZED3bhDU8fGOWsY=', '2021-04-29 07:43:29.606307'),
(41, '2021-05-10 11:54:45.624590', 0, 'hka', 'Harpreet', 'Ahluwalia', 'accenture.saurabh@gmail.com', '1', 0, 'pbkdf2_sha256$216000$pnMsdeCGW2kH$hNGB+ii1424U5bgb8S+XTUF95TQyUpu4Y9zzyH3ti98=', '2021-04-30 13:55:07.171393'),
(43, '2021-08-12 09:36:58.385108', 0, 'vanderleeuw', 'Philine', 'van der Leeuw', 'philine.vanderleeuw1@ue-germany.com', '1', 0, 'pbkdf2_sha256$216000$q6knMPduXika$B8xh9WAuS7EEa9/lAbKOtpvieYS+ctVUUb6jeJOy2kw=', '2021-05-03 17:30:40.028518'),
(44, '2021-06-09 17:36:43.907478', 0, 'anna_ucw', 'Anna Lee', 'Boulton', 'annalee.boulton1@ucanwest.ca', '1', 0, 'pbkdf2_sha256$216000$HRDdZo3CmcuR$hdiFFRE5ft4zYD/lBCRJ5o8lZE7wT2ofWs0P1xm7dmo=', '2021-06-09 17:35:46.825083'),
(45, '2021-06-11 11:34:22.404302', 0, 'Sheetal1', 'SHEETAL', 'KHANKA', 'sheetal1@ddn.upes.ac.in', '1', 0, 'pbkdf2_sha256$216000$XDldxaKxIiyg$3vUpg9V9oDNugVSf7UCl0Yg2QUXsckDhnQwW2Zzuckg=', '2021-06-11 11:34:09.581801'),
(46, '2021-09-03 11:05:16.458995', 0, 'dekumar', 'Devender', 'Kumar', 'devender.kumar1@pearlacademy.com', '1', 0, 'pbkdf2_sha256$216000$woMHcimFmQBA$bFZU2qFlQDsZpvOKm9gdOwGkZjFTz64NWgwW6AqEoyM=', '2021-06-24 11:42:56.482427'),
(50, NULL, 0, 'test123', 'test', 'test', 'tt@gmail.com', '1', 0, 'pbkdf2_sha256$216000$Wrr0gjedUocf$HBjNBFviVpFdbNf8zqm0ePUMSN/lPcsVXyZN2M+Xzqk=', '2021-08-06 12:23:48.354547'),
(51, '2021-08-16 09:08:01.035573', 0, 'sheshu_ardu', 'sheshu_ardu', 'sheshu_ardu', 'sheshu.kumar@guseducationindia.com', '1', 0, 'pbkdf2_sha256$216000$E1aax8xswkF7$eT3aUaRsgNEQDP/0r6QD3laBX3x6Wc8JmNb0PykGwNs=', '2021-08-06 12:30:22.013888'),
(52, '2021-10-25 14:12:36.353103', 0, 'saurabh_ie_fin', 'Saurabh', 'IE', 'saurabh01018@gmail.com', '1', 0, 'pbkdf2_sha256$260000$IugKTiwGUST3o2gLFgxO5S$TGyVIKCqLUd1dEvNKWytV/Cj93T1Dr7CuLuQvbxP8AY=', '2021-08-06 14:40:49.062915'),
(53, '2021-10-25 14:13:04.469281', 0, 'saurabh_ie_hrm', 'Saurabh', 'HRM', 'saurabh.gusedu@gmail.com', '1', 0, 'pbkdf2_sha256$260000$gZ8FFxZBXyEpjnxqy46ety$Ezv2ms+eeUEQ3Qnuay1byjHgOh7nvezVGcMoYGi4Pdo=', '2021-08-06 14:42:53.753367'),
(54, '2021-08-12 07:28:23.828404', 0, 'sheshu_staff', 'sheshu', 'staff', 'staff@gmail.com', '1', 0, 'pbkdf2_sha256$216000$MFCAo4z0JjTq$0Sfq3GHufHb1n6eYUmbl+WpyDadfVbzDpouVTLWqIXY=', '2021-08-12 07:21:37.300079'),
(55, '2021-08-12 12:37:31.367350', 0, 'danielheuermann', 'Daniel', 'Heuermann', 'daniel.heuermann1@ue-germany.de', '1', 0, 'pbkdf2_sha256$216000$lKXlX9iVw5C7$q5v/dw9xdG5nda/xJGdgocpuaKRxvpBbWBIIisDnZTQ=', '2021-08-12 12:37:22.169323'),
(56, '2021-08-13 07:46:23.496410', 0, 'dheuermann', 'Daniel', 'Heuermann', 'danielfrederik.heuermann1@ue-germany.de', '1', 0, 'pbkdf2_sha256$216000$zYH8UglrMEaA$QaCZWsbf/gl69ZNJoZkcWBiOTmFmB7n2rDhC5g7RnN0=', '2021-08-13 07:43:00.490576'),
(57, '2022-05-25 10:48:21.088057', 0, 'saurabh_ardu', 'Saurabh', 'ARDU', 'saurabh@gmail.com', '1', 0, 'pbkdf2_sha256$260000$Fg5EnEox4hGGTrEYGREmcY$2tyN+D+3hcnUFRyCm2OcfY+zYh76SbpM8Zwaouz1orE=', '2021-08-20 19:14:06.601372'),
(59, '2022-05-25 10:53:03.634141', 0, 'saurabh_ngl', 'Saurabh', 'NGL', 'saurabh.techwave@gmail.com', '1', 0, 'pbkdf2_sha256$260000$n9HQT1POZHL5ihOKp1rXuX$etBqs86V6YtH04vvH8IKhUo1YLDpTbpeSNlcBHQw8Do=', '2021-08-24 18:26:11.136228'),
(60, '2022-04-05 18:14:13.381079', 0, 'saurabh_uerp', 'Saurabh', 'UERP', 'saurabh.gupta@alumni.outreach.iiit.ac.in', '1', 0, 'pbkdf2_sha256$260000$dsP4momATalO8Qa0xDLKIj$rlWTInXAQWAW3DjYKEZDOAnAshBNsIeqRGImJt4VAlk=', '2021-08-27 13:47:32.223837'),
(61, '2021-09-03 11:59:21.180920', 0, 'saurabh_ardu1', 'Saurabh', 'ARDU', 'saurabh.ardu@gmail.com', '1', 0, 'pbkdf2_sha256$216000$r4uCQqVLlG89$tWLvActf0i9AmGtycyXNrFnEeRvOSH1S87EuZtck3gw=', '2021-08-30 12:36:59.983653'),
(64, NULL, 0, 'saurabh_ardu4', 'Saurabh', 'ardu4', 'saurabh_ardu4@gmail.com', '1', 0, 'pbkdf2_sha256$216000$sh0zGQ7cBT3Z$1JZ6N8ssqlfDikUNBVBvOfGH1YhTo6fNww6DQOjUYkE=', '2021-08-30 13:04:10.675432'),
(65, NULL, 0, 'saurabh_ardu5', 'Saurabh', 'Gupta', 'saurabh_ardu5@gmail.com', '1', 0, 'pbkdf2_sha256$216000$P9pWVoxpchKo$X1DV88XPlmJ2jcGUlg7H7DZA8i2G6CoOuFnIP8LnmiY=', '2021-08-30 13:05:31.462837'),
(66, NULL, 0, 'mary_ulaw2', 'Mary', 'ULAW2', 'marydalzielbishop1@gmail.com', '1', 0, 'pbkdf2_sha256$216000$yxBDbK7DFbT3$B+73u/VPRz5r/KkBt3QXKXQnlQnalNsn7awMVCUOblA=', '2021-08-30 13:13:02.557958'),
(82, '2021-09-01 12:27:00.228309', 0, 'saurabh_ardu112', 'Saurabh', 'ARDU112', 'saurabh_ardu112@gmail.com', '1', 0, 'pbkdf2_sha256$216000$wYt6Rf4oizn3$ffzXVH4OQa4eKBzS7/pJI/TWuCTj7TcU4f3gDDpFwM4=', '2021-09-01 07:32:30.907446'),
(83, '2022-04-06 06:23:19.468638', 0, 'saurabh_marketing', 'saurabh', 'marketing', 'saurabh_marketing@gmail.com', '1', 0, 'pbkdf2_sha256$260000$mm2oOZ6FqOeyY78kG679RV$rAwV+fCVZ0T4HcupOJHl/PGFSE4EyD/FtiBSYlDrVjQ=', '2021-09-01 12:02:48.485996'),
(85, '2021-10-19 13:14:03.931240', 0, 'saurabh_upes11', 'Saurabh', 'UPES', 'saurabh_upes11@gmail.com', '1', 0, 'pbkdf2_sha256$260000$CRx3zlJ7yLzHdavResTUux$m0Fcv779az158PLqMYGQKMiBpF904kHKBd/REbbqkFg=', '2021-10-18 10:37:25.881354'),
(86, '2021-10-26 10:37:24.888939', 0, 'saurabh_mmt', 'Saurabh', 'MMT', 'saurah_mmt@gmail.com', '1', 0, 'pbkdf2_sha256$260000$p8jz5DcNWVfHH2nL2IBFcl$DXmseAaisU5uWpAkTeIjT8RvPyTSOLUoa9HbagdYmt4=', '2021-10-25 14:15:54.275651'),
(87, '2022-01-17 06:09:38.864171', 0, 'thomas_noller', 'Thomas', 'Noller', 'thomas.noller@ue-germany.com', '1', 0, 'pbkdf2_sha256$260000$ITCUpAu8q5q3VcPT1zcAt7$P97ewEIXQPHHyIXd9F6evdtCQ+tzfoxyGoZEDj0P8/4=', '2022-01-12 15:24:34.126231');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_backup`
--

CREATE TABLE `auth_user_backup` (
  `id` int(11) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` varchar(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `password` varchar(128) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_backup`
--

INSERT INTO `auth_user_backup` (`id`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `password`, `date_joined`) VALUES
(1, '2022-01-17 06:13:40.928193', 1, 'sheshukurnool', 'sheshu', 'kumar', 'sheshu.kumar1@guseducationindia.com', '1', 1, 'pbkdf2_sha256$260000$rQ0ETcSktMIUcDtocrY9RD$+6Z/l7Iaz/x1xSEHL8V0qoakJ7bGpTkqx0BGVPUy2mo=', '2021-02-09 17:04:52.974314'),
(30, '2021-11-08 12:01:03.143462', 1, 'mary_bishop', 'Mary', 'Bishop', 'singh.piyush.ku@gmail.com', '1', 1, 'pbkdf2_sha256$260000$D7DJt9yEjAtzOcRbDqjcCI$6Jz3iEEl4sKfjzNeSGz4zrmbUQAeiTZhCy6FjErQv7Y=', '2021-04-12 09:28:22.205424'),
(31, '2021-07-05 09:19:34.295478', 0, 'steve_ardu', 'Steve', 'Hill', 'shill1@arden.ac.uk', '1', 1, 'pbkdf2_sha256$216000$woMHcimFmQBA$bFZU2qFlQDsZpvOKm9gdOwGkZjFTz64NWgwW6AqEoyM=', '2021-04-15 09:35:00.340814'),
(32, '2021-06-07 12:18:34.357823', 0, 'awatson', 'Alison', 'Watson', 'awatson1@arden.ac.uk', '1', 1, 'pbkdf2_sha256$216000$C36tC9UcBcxL$MbprK1ch83GYqlpgPRvcWx11roVvzY966nQGPCHU+lA=', '2021-04-15 15:01:25.437752'),
(33, '2021-05-06 14:18:47.192287', 0, 'Sharmila', 'Sharmila', 'Katre', 'sharmila.katre1@gusindia.global', '1', 1, 'pbkdf2_sha256$216000$ewZxHaEhPfzj$TvKA9838dVdL2oK7jR/tyHd358aBw+pRpUbyOm1H6zY=', '2021-04-21 14:46:51.947053'),
(34, '2021-04-26 15:06:57.895002', 0, 'mary_university', 'Mary', 'Bishop', 'marydalzielbishop1@gmail.com', '1', 1, 'pbkdf2_sha256$216000$ikqkmdrLBdfA$MT371VvsvThyeERSj+JbcMRjkYaYT9nqQtGMH38pkkg=', '2021-04-26 10:28:37.631603'),
(35, '2021-08-06 14:55:54.761847', 0, 'mary_arden', 'Mary', 'Bishop', 'mary2.bishop1@icloud.com', '1', 1, 'pbkdf2_sha256$216000$PJoo5xaMsHuG$TeATD46LrFab7v76f8Wro01BTjl3aFLThFZXgLl/DSw=', '2021-04-26 12:10:14.715592'),
(36, '2022-01-12 16:46:14.925910', 0, 'saurabh_ucw', 'Saurabh', 'Gupta', 'saurabh.gupta@guseducationindia.com', '1', 1, 'pbkdf2_sha256$260000$cxjaGKXXtXNALsjuA6TL8z$N+YauJCxEeBS7DpRu4uz9iypUZclf8vH53risxjWQgg=', '2021-04-26 14:56:05.980571'),
(38, '2021-04-29 08:10:40.472576', 0, 'mary_ucw', 'Mary', 'Bishop', 'garyjohn02bishop1@gmail.com', '1', 1, 'pbkdf2_sha256$216000$AiCvbJJfDs2w$rtu3FgZy3g/niKMzpcnSfTAQrYOOZED3bhDU8fGOWsY=', '2021-04-29 07:43:29.606307'),
(41, '2021-05-10 11:54:45.624590', 0, 'hka', 'Harpreet', 'Ahluwalia', 'accenture.saurabh@gmail.com', '1', 1, 'pbkdf2_sha256$216000$pnMsdeCGW2kH$hNGB+ii1424U5bgb8S+XTUF95TQyUpu4Y9zzyH3ti98=', '2021-04-30 13:55:07.171393'),
(43, '2021-08-12 09:36:58.385108', 0, 'vanderleeuw', 'Philine', 'van der Leeuw', 'philine.vanderleeuw1@ue-germany.com', '1', 1, 'pbkdf2_sha256$216000$q6knMPduXika$B8xh9WAuS7EEa9/lAbKOtpvieYS+ctVUUb6jeJOy2kw=', '2021-05-03 17:30:40.028518'),
(44, '2021-06-09 17:36:43.907478', 0, 'anna_ucw', 'Anna Lee', 'Boulton', 'annalee.boulton1@ucanwest.ca', '1', 1, 'pbkdf2_sha256$216000$HRDdZo3CmcuR$hdiFFRE5ft4zYD/lBCRJ5o8lZE7wT2ofWs0P1xm7dmo=', '2021-06-09 17:35:46.825083'),
(45, '2021-06-11 11:34:22.404302', 0, 'Sheetal1', 'SHEETAL', 'KHANKA', 'sheetal1@ddn.upes.ac.in', '1', 1, 'pbkdf2_sha256$216000$XDldxaKxIiyg$3vUpg9V9oDNugVSf7UCl0Yg2QUXsckDhnQwW2Zzuckg=', '2021-06-11 11:34:09.581801'),
(46, '2021-09-03 11:05:16.458995', 0, 'dekumar', 'Devender', 'Kumar', 'devender.kumar1@pearlacademy.com', '1', 1, 'pbkdf2_sha256$216000$woMHcimFmQBA$bFZU2qFlQDsZpvOKm9gdOwGkZjFTz64NWgwW6AqEoyM=', '2021-06-24 11:42:56.482427'),
(50, NULL, 0, 'test123', 'test', 'test', 'tt@gmail.com', '1', 1, 'pbkdf2_sha256$216000$Wrr0gjedUocf$HBjNBFviVpFdbNf8zqm0ePUMSN/lPcsVXyZN2M+Xzqk=', '2021-08-06 12:23:48.354547'),
(51, '2021-08-16 09:08:01.035573', 0, 'sheshu_ardu', 'sheshu_ardu', 'sheshu_ardu', 'sheshu.kumar@guseducationindia.com', '1', 1, 'pbkdf2_sha256$216000$E1aax8xswkF7$eT3aUaRsgNEQDP/0r6QD3laBX3x6Wc8JmNb0PykGwNs=', '2021-08-06 12:30:22.013888'),
(52, '2021-10-25 14:12:36.353103', 0, 'saurabh_ie_fin', 'Saurabh', 'IE', 'saurabh0108@gmail.com', '1', 1, 'pbkdf2_sha256$260000$IugKTiwGUST3o2gLFgxO5S$TGyVIKCqLUd1dEvNKWytV/Cj93T1Dr7CuLuQvbxP8AY=', '2021-08-06 14:40:49.062915'),
(53, '2021-10-25 14:13:04.469281', 0, 'saurabh_ie_hrm', 'Saurabh', 'HRM', 'saurabh.gusedu@gmail.com', '1', 1, 'pbkdf2_sha256$260000$gZ8FFxZBXyEpjnxqy46ety$Ezv2ms+eeUEQ3Qnuay1byjHgOh7nvezVGcMoYGi4Pdo=', '2021-08-06 14:42:53.753367'),
(54, '2021-08-12 07:28:23.828404', 0, 'sheshu_staff', 'sheshu', 'staff', 'staff@gmail.com', '1', 1, 'pbkdf2_sha256$216000$MFCAo4z0JjTq$0Sfq3GHufHb1n6eYUmbl+WpyDadfVbzDpouVTLWqIXY=', '2021-08-12 07:21:37.300079'),
(55, '2021-08-12 12:37:31.367350', 0, 'danielheuermann', 'Daniel', 'Heuermann', 'daniel.heuermann1@ue-germany.de', '1', 1, 'pbkdf2_sha256$216000$lKXlX9iVw5C7$q5v/dw9xdG5nda/xJGdgocpuaKRxvpBbWBIIisDnZTQ=', '2021-08-12 12:37:22.169323'),
(56, '2021-08-13 07:46:23.496410', 0, 'dheuermann', 'Daniel', 'Heuermann', 'danielfrederik.heuermann1@ue-germany.de', '1', 1, 'pbkdf2_sha256$216000$zYH8UglrMEaA$QaCZWsbf/gl69ZNJoZkcWBiOTmFmB7n2rDhC5g7RnN0=', '2021-08-13 07:43:00.490576'),
(57, '2021-11-22 12:51:08.407775', 0, 'saurabh_ardu', 'Saurabh', 'ARDU', 'saurabh@gmail.com', '1', 1, 'pbkdf2_sha256$260000$Fg5EnEox4hGGTrEYGREmcY$2tyN+D+3hcnUFRyCm2OcfY+zYh76SbpM8Zwaouz1orE=', '2021-08-20 19:14:06.601372'),
(59, '2021-09-07 13:36:40.826546', 0, 'saurabh_ngl', 'Saurabh', 'NGL', 'saurabh.techwave@gmail.com', '1', 1, 'pbkdf2_sha256$216000$zOcA8df3B2QJ$Y2Z8QdIXPzHeZmH02BSaJDV3krXpwtC9HwqAdbrQ2+I=', '2021-08-24 18:26:11.136228'),
(60, '2022-01-06 07:45:35.982321', 0, 'saurabh_uerp', 'Saurabh', 'UERP', 'saurabh.gupta@alumni.outreach.iiit.ac.in', '1', 1, 'pbkdf2_sha256$260000$dsP4momATalO8Qa0xDLKIj$rlWTInXAQWAW3DjYKEZDOAnAshBNsIeqRGImJt4VAlk=', '2021-08-27 13:47:32.223837'),
(61, '2021-09-03 11:59:21.180920', 0, 'saurabh_ardu1', 'Saurabh', 'ARDU', 'saurabh.ardu@gmail.com', '1', 1, 'pbkdf2_sha256$216000$r4uCQqVLlG89$tWLvActf0i9AmGtycyXNrFnEeRvOSH1S87EuZtck3gw=', '2021-08-30 12:36:59.983653'),
(64, NULL, 0, 'saurabh_ardu4', 'Saurabh', 'ardu4', 'saurabh_ardu4@gmail.com', '1', 1, 'pbkdf2_sha256$216000$sh0zGQ7cBT3Z$1JZ6N8ssqlfDikUNBVBvOfGH1YhTo6fNww6DQOjUYkE=', '2021-08-30 13:04:10.675432'),
(65, NULL, 0, 'saurabh_ardu5', 'Saurabh', 'Gupta', 'saurabh_ardu5@gmail.com', '1', 1, 'pbkdf2_sha256$216000$P9pWVoxpchKo$X1DV88XPlmJ2jcGUlg7H7DZA8i2G6CoOuFnIP8LnmiY=', '2021-08-30 13:05:31.462837'),
(66, NULL, 0, 'mary_ulaw2', 'Mary', 'ULAW2', 'marydalzielbishop1@gmail.com', '1', 1, 'pbkdf2_sha256$216000$yxBDbK7DFbT3$B+73u/VPRz5r/KkBt3QXKXQnlQnalNsn7awMVCUOblA=', '2021-08-30 13:13:02.557958'),
(82, '2021-09-01 12:27:00.228309', 0, 'saurabh_ardu112', 'Saurabh', 'ARDU112', 'saurabh_ardu112@gmail.com', '1', 1, 'pbkdf2_sha256$216000$wYt6Rf4oizn3$ffzXVH4OQa4eKBzS7/pJI/TWuCTj7TcU4f3gDDpFwM4=', '2021-09-01 07:32:30.907446'),
(83, NULL, 0, 'saurabh_marketing', 'saurabh', 'marketing', 'saurabh_marketing@gmail.com', '1', 1, 'pbkdf2_sha256$216000$IqAhJUlRxTUb$PrMwS68L3hqAq3LHdxSy6abPzCZ43oAMxl9tzvRRB7w=', '2021-09-01 12:02:48.485996'),
(85, '2021-10-19 13:14:03.931240', 0, 'saurabh_upes11', 'Saurabh', 'UPES', 'saurabh_upes11@gmail.com', '1', 1, 'pbkdf2_sha256$260000$CRx3zlJ7yLzHdavResTUux$m0Fcv779az158PLqMYGQKMiBpF904kHKBd/REbbqkFg=', '2021-10-18 10:37:25.881354'),
(86, '2021-10-26 10:37:24.888939', 0, 'saurabh_mmt', 'Saurabh', 'MMT', 'saurah_mmt@gmail.com', '1', 1, 'pbkdf2_sha256$260000$p8jz5DcNWVfHH2nL2IBFcl$DXmseAaisU5uWpAkTeIjT8RvPyTSOLUoa9HbagdYmt4=', '2021-10-25 14:15:54.275651'),
(87, '2022-01-17 06:09:38.864171', 0, 'thomas_noller', 'Thomas', 'Noller', 'thomas.noller@ue-germany.com', '1', 1, 'pbkdf2_sha256$260000$ITCUpAu8q5q3VcPT1zcAt7$P97ewEIXQPHHyIXd9F6evdtCQ+tzfoxyGoZEDj0P8/4=', '2022-01-12 15:24:34.126231');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_ajax`
--

CREATE TABLE `crud_ajax` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_csvupload`
--

CREATE TABLE `crud_csvupload` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_discipline`
--

CREATE TABLE `crud_discipline` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `short_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_discipline`
--

INSERT INTO `crud_discipline` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `short_name`) VALUES
(1, 'Finance', 1, '2021-02-10 11:11:34.000000', '2021-02-10 11:11:35.000000', 'FIN'),
(2, 'HRM', 1, '2021-02-10 11:11:50.000000', '2021-02-10 11:11:51.000000', 'HRM'),
(3, 'Marketing', 1, '2021-02-10 11:12:06.000000', '2021-02-10 11:12:08.000000', 'MAR'),
(4, 'Management', 1, '2021-02-10 11:12:23.000000', '2021-02-10 11:12:24.000000', 'MMT'),
(5, 'Allied Life Skills', 1, '2021-02-10 11:12:38.000000', '2021-02-10 11:12:39.000000', 'ALS'),
(6, 'Negotiated Learning', 1, '2021-02-10 11:12:47.000000', '2021-02-10 11:12:48.000000', 'NGL');

-- --------------------------------------------------------

--
-- Table structure for table `crud_document`
--

CREATE TABLE `crud_document` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `document` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_document`
--

INSERT INTO `crud_document` (`id`, `description`, `document`, `uploaded_at`, `module_id`) VALUES
(13, 'testing', 'module/1628841061371_3_5_MarketingSalesCRM.pdf', '2021-08-13 07:51:01.371299', 13),
(14, 'testing', 'module/1628841302134_3_11_DigitalMediaCommunication.pdf', '2021-08-13 07:55:02.133857', 14),
(18, 'module', 'module/1629275207379_1629086607750.jpg', '2021-08-18 08:26:47.606949', 18),
(20, 'module', 'module/1629701480283_Lecture+Notes+CNN.pdf', '2021-08-23 06:51:20.405704', 20),
(21, 'module', 'module/1629703857992_Skylo_CAF.pdf', '2021-08-23 07:30:58.104102', 21),
(22, 'module', 'module/1629704139307_PR#61_(1).pdf', '2021-08-23 07:35:39.371944', 22),
(23, 'module', 'module/1629704530889_PR#61_(1).pdf', '2021-08-23 07:42:10.963294', 23),
(24, 'module', 'module/1629709398201_Amazon_Translate__(1).pdf', '2021-08-23 09:03:18.432115', 24),
(25, 'module', 'module/1629709880709_Lecture+Notes+-+Model+Selection+Practical+Considerations_(1).pdf', '2021-08-23 09:11:20.768986', 25),
(26, 'module', 'module/1629709916676_Energy-July2021.pdf', '2021-08-23 09:11:56.836643', 26),
(27, 'module', 'module/1629715169298_Energy-July2021.pdf', '2021-08-23 10:39:29.743851', 27),
(28, 'module', 'module/1629724754569_Energy-July2021.pdf', '2021-08-23 13:19:18.888874', 28),
(29, 'module', 'module/1629783067841_PR#61_(1).pdf', '2021-08-24 05:31:08.286578', 29),
(30, 'module', 'module/1629783438276_z-table_(2).pdf', '2021-08-24 05:37:18.424601', 30),
(31, 'module', 'module/1629783483481_Health_Total_with_Portability.pdf', '2021-08-24 05:38:03.606110', 31),
(32, 'module', 'module/1629789289647_Health_Total_with_Portability.pdf', '2021-08-24 07:14:49.737590', 32),
(33, 'module', 'module/1629798837841_Lecture+Notes+-+Model+Selection+Practical+Considerations_(1).pdf', '2021-08-24 09:53:58.092898', 33),
(34, 'module', 'module/1629802660834_Lecture+Notes+-+SVM.pdf', '2021-08-24 10:57:41.347995', 34),
(35, 'module', 'module/1629803956939_z-table_(2).pdf', '2021-08-24 11:19:17.180947', 35),
(36, 'module', 'module/1629804035753_Python_SciPy_Cheat_Sheet_Linear_Algebra_(4).pdf', '2021-08-24 11:20:36.034845', 36),
(37, 'module', 'module/1629876908884_z-table_(1).pdf', '2021-08-25 07:35:09.063377', 37),
(38, 'module', 'module/1629877111392_z-table_(1).pdf', '2021-08-25 07:38:31.478477', 38),
(39, 'module', 'module/1629955981586_z-table_(2).pdf', '2021-08-26 05:33:01.848319', 39),
(40, 'module', 'module/1629956035624_PR#61_(1).pdf', '2021-08-26 05:33:55.798035', 40),
(41, 'module', 'module/1629978645644_UK_Economics_after_Brexit.pdf', '2021-08-26 11:51:00.441196', 41),
(42, 'module', 'module/1629978682330_The_Sands_Of_Time.pdf', '2021-08-26 11:51:22.529328', 42),
(43, 'module', 'module/1629981737439_Amazon_Translate_.pdf', '2021-08-26 12:42:18.193750', 43),
(44, 'module', 'module/1629982325792_Use_of_Neural_Networks_in_Semiconductors.pdf', '2021-08-26 12:52:06.041651', 44),
(45, 'module', 'module/1630043844598_The_Sands_Of_Time.pdf', '2021-08-27 05:57:31.898484', 45),
(46, 'module', 'module/1630050271237_The_Sands_Of_Time.pdf', '2021-08-27 07:44:38.290944', 46),
(47, 'module', 'module/1630063607936_The_Sands_Of_Time.pdf', '2021-08-27 11:26:48.060153', 47),
(48, 'module', 'module/1630063962610_The_Sands_Of_Time.pdf', '2021-08-27 11:32:43.252565', 48),
(49, 'module', 'module/1630064032395_The_Sands_Of_Time.pdf', '2021-08-27 11:33:52.517715', 49),
(50, 'module', 'module/1630066673859_UK_Economics_after_Brexit.pdf', '2021-08-27 12:17:53.999069', 50),
(51, 'module', 'module/1630071933285_UK_Economics_after_Brexit.pdf', '2021-08-27 13:45:33.407385', 51),
(52, 'module', 'module/1630654782057_z-table_(2).pdf', '2021-09-03 07:39:47.161743', 52),
(53, 'module', 'module/1630667176370_z-table_(1).pdf', '2021-09-03 11:06:16.496616', 53),
(54, 'module', 'module/1630695638967_z-table_(2).pdf', '2021-09-03 19:00:39.106976', 54),
(55, 'module', 'module/1630696394038_z-table.pdf', '2021-09-03 19:13:14.177835', 55),
(56, 'module', 'module/1630696876342_Amazon_Translate_.pdf', '2021-09-03 19:21:16.963546', 56),
(57, 'module', 'module/1630928772242_Lecture+Notes+-+Hypothesis+Testing_(12).pdf', '2021-09-06 11:46:12.467561', 57),
(58, 'module', 'module/1630929048366_PR#61_(1).pdf', '2021-09-06 11:50:49.367238', 58),
(59, 'module', 'module/1631020294431_Amazon_Translate_.pdf', '2021-09-07 13:11:34.709775', 59),
(60, 'module', 'module/1634554473804_proctoring_points.docx', '2021-10-18 10:54:35.432137', 61),
(61, 'module', 'module/1634649283853_Amazon_Translate_.pdf', '2021-10-19 13:14:48.850427', 62),
(62, 'module', 'module/1634658618886_GUS_GEI_2021_Holiday_List_-_Copy.pdf', '2021-10-19 15:50:21.813109', 63),
(63, 'module', 'module/1634723020201_GUS_GEI_2021_Holiday_List.pdf', '2021-10-20 09:43:46.779050', 64),
(64, 'module', 'module/1634726788907_GUS_GEI_2021_Holiday_List.pdf', '2021-10-20 10:46:29.307792', 65),
(65, 'module', 'module/1635171462206_Amazon_Translate_.pdf', '2021-10-25 14:17:43.356316', 66),
(66, 'module', 'module/1635244378166_Amazon_Translate_.pdf', '2021-10-26 10:33:02.272193', 60),
(67, 'module', 'module/1649182427950_blockchain-book.pdf', '2022-04-05 18:13:48.383878', 68),
(68, 'module', 'module/1653475835883_Boarding_Pass_2.pdf', '2022-05-25 10:50:41.826513', 69);

-- --------------------------------------------------------

--
-- Table structure for table `crud_draft_decision`
--

CREATE TABLE `crud_draft_decision` (
  `id` bigint(20) NOT NULL,
  `module_id` bigint(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_gcg_module`
--

CREATE TABLE `crud_gcg_module` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `gcg_code` text DEFAULT NULL,
  `module_discipline` varchar(100) DEFAULT NULL,
  `module_level` varchar(100) DEFAULT NULL,
  `module_credit_rating` longtext DEFAULT NULL,
  `uk_credit_rating` longtext DEFAULT NULL,
  `shell_count` int(5) DEFAULT NULL,
  `shells_selected` varchar(100) DEFAULT NULL,
  `ilo1_comments` varchar(1000) DEFAULT NULL,
  `ilo2_comments` varchar(1000) DEFAULT NULL,
  `ilo3_comments` varchar(1000) DEFAULT NULL,
  `ilo4_comments` varchar(1000) DEFAULT NULL,
  `ilo5_comments` varchar(1000) DEFAULT NULL,
  `ilo6_comments` varchar(1000) DEFAULT NULL,
  `ilo7_comments` varchar(1000) DEFAULT NULL,
  `ilo8_comments` varchar(1000) DEFAULT NULL,
  `mapExpert` int(11) DEFAULT 0,
  `ie_mail_status` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_gcg_module`
--

INSERT INTO `crud_gcg_module` (`id`, `module_id`, `gcg_code`, `module_discipline`, `module_level`, `module_credit_rating`, `uk_credit_rating`, `shell_count`, `shells_selected`, `ilo1_comments`, `ilo2_comments`, `ilo3_comments`, `ilo4_comments`, `ilo5_comments`, `ilo6_comments`, `ilo7_comments`, `ilo8_comments`, `mapExpert`, `ie_mail_status`, `created_at`, `updated_at`) VALUES
(4, 13, '', 'MAR', 'UGCE', '5', '10.0', 2, '[\'ILO1\', \'ILO3\']', '', '', '', '', NULL, NULL, NULL, NULL, 83, 1, '2021-08-13 07:51:01', '2021-08-13 07:52:13'),
(5, 14, '', 'MAR', 'UGCE', '5', '10.0', 2, '[\'ILO2\', \'ILO4\']', '', 'Manually Adding Comments for test', '', 'Manually Adding Comments for test', NULL, NULL, NULL, NULL, 59, 1, '2021-08-13 07:55:02', '2021-08-13 07:55:30'),
(8, 18, 'GUSC/MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '4', '12.0', 2, '[\'ILO1\', \'ILO2\']', 'hdfhdh', 'tessgsg', '', '', '', '', '', '', 0, 0, '2021-08-18 08:26:47', '2021-08-18 08:29:07'),
(10, 21, 'GUSC/MAN_SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '11', '33.0', 7, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\', \'ILO6\', \'ILO7\', \'ILO8\']', 'ok ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 1, '2021-08-23 07:30:58', '2021-08-23 07:32:16'),
(11, 22, 'GUSC/ENG_MAN/BM/ALS/UGDE/20/21', 'ALS', 'UGDE', '5', '15.0', 3, '[\'ILO1\', \'ILO2\', \'ILO3\']', '', 'ok', 'ok', 'ok', NULL, NULL, NULL, NULL, 0, 0, '2021-08-23 07:35:39', '2021-08-23 07:36:29'),
(12, 23, 'GUSC/MAN_SPA/BM/NGL/UGDI/20/21', 'NGL', 'UGDI', '5', '15.0', 3, '[\'ILO2\', \'ILO3\', \'ILO4\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-23 07:42:11', '2021-08-23 10:38:15'),
(13, 24, 'GUSC/ENG/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '6', '18.0', 4, NULL, '', '', '', '', '', '', '', '', 0, 0, '2021-08-23 09:03:18', '2021-08-26 05:32:08'),
(14, 25, 'GUSC/MAN/BM/ALS/UGDE/20/21', 'ALS', 'UGDE', '2', '6.0', 1, '[\'ILO2\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-23 09:11:20', '2021-08-27 09:29:26'),
(15, 26, 'GUSC/MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '9', '27.0', 5, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO6\', \'ILO8\']', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-23 09:11:56', '2021-08-23 09:13:28'),
(16, 27, 'GUSC/ENG/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '6', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO5\', \'ILO6\']', 'sadfasfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-23 10:39:29', '2021-08-23 10:39:48'),
(17, 28, '', 'NGL', 'UGDE', '7', '21.0', 4, '', '', '', '', '', '', '', '', '', 0, 0, '2021-08-23 13:19:18', '2021-08-23 13:19:18'),
(18, 29, 'GUSC/SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '6', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO6\', \'ILO8\']', 'adsf', 'asdf', '', '', '', 'safd', '', 'asfd', 59, 1, '2021-08-24 05:31:08', '2021-08-24 06:33:15'),
(19, 30, 'GUSC/SPA/BM/FIN/UGDI/20/21', 'FIN', 'UGDI', '3', '9.0', 2, NULL, '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 05:37:18', '2021-08-26 05:31:49'),
(20, 31, 'GUSC/MAN/BM/HRM/UGDI/20/21', 'HRM', 'UGDI', '3', '9.0', 2, NULL, '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 05:38:03', '2021-08-26 05:31:30'),
(21, 32, 'GUSC/MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '13', '39.0', 8, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\', \'ILO5\', \'ILO6\', \'ILO7\', \'ILO8\']', 'Done. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 07:14:49', '2021-08-24 07:15:10'),
(22, 33, 'GUSC/MAN_SPA/BM/HRM/UGDE/20/21', 'HRM', 'UGDE', '3', '9.0', 2, '[\'ILO1\', \'ILO3\']', 'asdf', 'None', 'as', 'None', NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 09:53:58', '2021-08-26 05:29:43'),
(23, 34, 'GUSC/ENG_SPA/BM/FIN/UGDE/20/21', 'FIN', 'UGDE', '6', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\']', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 10:57:41', '2021-08-24 11:15:48'),
(24, 35, 'GUSC/SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '14', '42.0', 8, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\', \'ILO5\', \'ILO6\', \'ILO7\', \'ILO8\']', 'All 8 ILOs were checked. ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-24 11:19:17', '2021-08-24 11:19:38'),
(25, 36, 'GUSC/MAN_SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '12', '36.0', 7, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\', \'ILO5\', \'ILO6\', \'ILO8\']', 'asdfsaf', '', '', '', '', '', 'asdf', '', 0, 0, '2021-08-24 11:20:36', '2021-08-24 11:21:30'),
(26, 37, 'GUSC/ENG_SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '7', '21.0', 4, '[\'ILO1\', \'ILO3\', \'ILO6\', \'ILO8\']', '', '', '', '', '', '', '', '', 0, 0, '2021-08-25 07:35:09', '2021-08-25 08:19:55'),
(27, 38, 'GUSC/ENG_SPA/BM/MMT/UGDE/20/21', 'MMT', 'UGDE', '7', '21.0', 4, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\']', 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-25 07:38:31', '2021-08-25 08:19:09'),
(28, 20, 'GUSC/SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '10', '30.0', 6, NULL, '', '', '', '', '', '', '', '', 0, 0, '2021-08-26 05:29:55', '2021-08-26 05:30:04'),
(29, 39, 'GUSC/SPA/BM/FIN/UGDI/20/21', 'FIN', 'UGDI', '3', '9.0', 2, '[\'ILO2\', \'ILO3\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-26 05:33:02', '2021-08-26 05:33:25'),
(30, 40, 'GUSC/SPA/BM/MMT/UGF', 'MMT', 'UGF ', '4', '12.0', 2, '[\'ILO2\', \'ILO3\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-26 05:33:55', '2021-08-26 05:34:33'),
(31, 41, 'GUSC/ENG_SPA/BM/FIN/UGCE/20/21', 'FIN', 'UGCE', '5', '5.0', 1, '[\'ILO3\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-26 11:51:00', '2021-08-26 15:07:25'),
(32, 42, 'GUSC/ENG_SPA/BM/FIN/UGCE/20/21', 'FIN', 'UGCE', '4', '4.0', 1, '[\'ILO1\']', 'sadfasfs', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-26 11:51:22', '2021-08-26 11:51:48'),
(33, 44, 'GUSC/ENG/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '40', '40.0', 8, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\', \'ILO5\', \'ILO6\', \'ILO7\', \'ILO8\']', 'asdfasfasfasfasfsaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 1, '2021-08-26 12:52:06', '2021-08-26 12:53:16'),
(34, 45, 'GUSC/MAN/BM/FIN/UGDE/20/21', 'FIN', 'UGDE', '6', '6.0', 1, '[\'ILO2\']', '', 'asdfas', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-27 05:57:32', '2021-08-27 06:00:34'),
(35, 46, 'GUSC/ENG/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '14', '42.0', 8, NULL, 'ok', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-27 07:44:38', '2021-08-27 07:49:15'),
(36, 47, 'GUSC/SPA/BM/MAR/UGCE/20/21', 'MAR', 'UGCE', '7', '7.0', 1, '[\'ILO2\']', '', 'asdf', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-27 11:26:48', '2021-08-27 11:27:30'),
(37, 48, 'GUSC/SPA/BM/MMT/UGCE/20/21', 'MMT', 'UGCE', '16', '16.0', 3, '[\'ILO2\', \'ILO3\', \'ILO4\']', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, '2021-08-27 11:32:43', '2021-08-27 11:33:12'),
(38, 49, 'GUSC/SPA/BM/HRM/UGCE/20/21', 'HRM', 'UGCE', '18', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\']', 'safdsafas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-08-27 11:33:52', '2021-08-27 11:33:56'),
(39, 50, 'GUSC/ENG/BM/MAR/UGDE/20/21', 'MAR', 'UGDE', '4', '12.0', 2, '[\'ILO3\', \'ILO4\']', '', '', 'sadfasf', 'sadfasf', NULL, NULL, NULL, NULL, 83, 1, '2021-08-27 12:17:54', '2021-08-27 12:18:08'),
(40, 52, 'GUSC/SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '10', '10.0', 2, '[\'ILO2\', \'ILO7\']', '', 'sadfassadf', '', '', '', '', 'asfdasafda', '', 59, 1, '2021-09-03 07:39:47', '2021-09-03 07:40:07'),
(41, 53, 'GUSC/MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '4', '4.0', 1, '[\'ILO1\']', 'asdfasf', '', '', '', '', '', '', '', 59, 0, '2021-09-03 11:06:23', '2021-09-03 11:07:17'),
(42, 54, 'GUSC/SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '7', '7.0', 1, '[\'ILO2\']', '', 'asdfas', '', '', '', '', '', '', 0, 0, '2021-09-03 19:00:39', '2021-09-03 19:00:49'),
(43, 55, 'GUSC/MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '7', '7.0', 1, '[\'ILO2\']', '', 'asdf', '', '', '', '', '', '', 0, 0, '2021-09-03 19:13:14', '2021-09-03 19:13:21'),
(44, 58, 'GUSC/ENG_MAN/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '6', '12.0', 2, '[\'ILO2\', \'ILO7\']', '', 'asdfa', '', '', '', '', 'sadf', '', 59, 1, '2021-09-06 11:50:49', '2021-09-06 11:51:01'),
(45, 59, 'GUSC/MAN_SPA/BM/NGL/UGDE/20/21', 'NGL', 'UGDE', '8', '16.0', 3, '[\'ILO2\', \'ILO3\', \'ILO7\']', '', 'sadf', 'sadf', '', '', '', 'sadf', '', 59, 1, '2021-09-07 13:11:34', '2021-09-07 13:11:49'),
(46, 61, 'GUSC/SPA/BM/FIN/UGDI/20/21', 'FIN', 'UGDI', '6', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\']', 'sadf', NULL, NULL, NULL, '', '', '', '', 0, 0, '2021-10-18 10:54:35', '2021-10-18 10:54:41'),
(47, 62, 'GUSC/SPA/BM/MAR/UGCE/20/21', 'MAR', 'UGCE', '6', '18.0', 4, '[\'ILO1\', \'ILO2\', \'ILO3\', \'ILO4\']', 'ok', NULL, NULL, NULL, '', '', '', '', 0, 0, '2021-10-19 13:14:48', '2021-10-19 13:14:53'),
(48, 63, 'GUSC/SPA/BM/MAR/UGCE/20/21', 'MAR', 'UGCE', '4', '12.0', 2, '[\'ILO2\', \'ILO3\']', '', 'sdaf', 'sadf', '', '', '', '', '', 0, 0, '2021-10-19 15:50:21', '2021-10-19 15:50:28'),
(49, 64, 'GUSC/SPA/BM/HRM/UGDI/20/21', 'HRM', 'UGDI', '5', '15.0', 3, '[\'ILO1\', \'ILO2\', \'ILO3\']', 'ok', 'ok', 'ok', '', '', '', '', '', 0, 0, '2021-10-20 09:43:46', '2021-10-20 09:44:08'),
(50, 65, 'GUSC/SPA/BM/HRM/UGCE/20/21', 'HRM', 'UGCE', '4', '12.0', 2, '[\'ILO2\', \'ILO4\']', '', 'ok', '', 'ok', '', '', '', '', 0, 0, '2021-10-20 10:46:29', '2021-10-20 10:47:01'),
(51, 66, 'GUSC/SPA/BM/MMT/UGDI/20/21', 'MMT', 'UGDI', '4', '4.0', 1, '[\'ILO2\']', '', 'ok', '', '', '', '', '', '', 86, 1, '2021-10-25 14:17:43', '2021-10-25 14:17:49'),
(52, 60, 'GUSC/SPA/BM/HRM/UGCE/20/21', 'HRM', 'UGCE', '4', '4.0', 1, '[\'ILO2\']', '', 'ok', '', '', '', '', '', '', 0, 0, '2021-10-26 10:33:02', '2021-10-26 10:37:01'),
(53, 69, 'GUSC/ENG_SPA/BM/NGL/UGDI/20/22', 'NGL', 'UGDI', '4', '4.0', 1, '[\'ILO1\']', 'ok', '', '', '', '', '', '', '', 59, 0, '2022-05-25 10:50:41', '2022-05-25 10:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `crud_languages`
--

CREATE TABLE `crud_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `short_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_languages`
--

INSERT INTO `crud_languages` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `short_name`) VALUES
(1, 'English', 1, '2021-02-10 11:10:15.000000', '2021-02-10 11:10:16.000000', 'ENG'),
(2, 'Mandarin', 1, '2021-02-10 11:10:26.000000', '2021-02-10 11:10:28.000000', 'MAN'),
(3, 'Spanish', 1, '2021-02-10 11:10:38.000000', '2021-02-10 11:10:40.000000', 'SPA');

-- --------------------------------------------------------

--
-- Table structure for table `crud_member`
--

CREATE TABLE `crud_member` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `description` longtext NOT NULL,
  `location` longtext NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `crud_module_history`
--

CREATE TABLE `crud_module_history` (
  `id` int(11) NOT NULL,
  `module_id` int(10) NOT NULL COMMENT 'crud_university table id',
  `uni_name` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `text` text DEFAULT NULL,
  `document_url` text DEFAULT NULL,
  `m_s_h_id` varchar(10) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `document_type` enum('panel','module','provisional','draft') DEFAULT NULL,
  `email_status` int(20) NOT NULL DEFAULT 0,
  `is_active` int(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_module_history`
--

INSERT INTO `crud_module_history` (`id`, `module_id`, `uni_name`, `status`, `username`, `comments`, `text`, `document_url`, `m_s_h_id`, `created_at`, `updated_at`, `document_type`, `email_status`, `is_active`) VALUES
(16, 13, 'University of Europe', 'REQUESTED', 'Daniel Heuermann', '', '<b>University of Europe</b> Created this module on 2021-08-13 13:21:01 and created by <b>Daniel Heuermann</b>', '', '', '2021-08-13 07:51:01.373854', NULL, 'module', 1, 1),
(17, 14, 'University of Europe', 'REQUESTED', 'Daniel Heuermann', '', '<b>University of Europe</b> Created this module on 2021-08-13 13:25:02 and created by <b>Daniel Heuermann</b>', '', '', '2021-08-13 07:55:02.136819', NULL, 'module', 1, 1),
(21, 18, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-18 13:59:07 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-18 08:29:07.862680', NULL, 'module', 1, 1),
(24, 21, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-23 13:02:16 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-23 07:32:16.778796', NULL, 'module', 1, 1),
(25, 22, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-23 13:06:29 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-23 07:36:29.744292', NULL, 'module', 1, 1),
(26, 26, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-23 14:43:28 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-23 09:13:28.503471', NULL, 'module', 1, 1),
(27, 23, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-23 16:08:15 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-23 10:38:15.289607', NULL, 'module', 1, 1),
(28, 27, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-23 16:09:48 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-23 10:39:48.372859', NULL, 'module', 1, 1),
(29, 29, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-24 12:03:16 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-24 06:33:16.123058', NULL, 'module', 1, 1),
(30, 32, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-24 12:45:10 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-24 07:15:10.860879', NULL, 'module', 1, 1),
(31, 34, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-24 16:45:48 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-24 11:15:48.958614', NULL, 'module', 1, 1),
(32, 35, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-24 16:49:38 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-24 11:19:38.526987', NULL, 'module', 1, 1),
(33, 36, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-24 16:51:30 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-24 11:21:30.796426', NULL, 'module', 1, 1),
(34, 29, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'Approving. ', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-08-25 00:25:18', NULL, '25', '2021-08-24 18:55:18.459396', NULL, 'provisional', 1, 1),
(35, 38, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-25 13:49:10 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-25 08:19:10.011580', NULL, 'module', 1, 1),
(36, 37, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-25 13:49:55 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-25 08:19:55.242241', NULL, 'module', 1, 1),
(37, 33, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-26 10:59:43 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-26 05:29:43.174694', NULL, 'module', 1, 1),
(38, 39, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-26 11:03:25 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-26 05:33:25.641301', NULL, 'module', 1, 1),
(39, 40, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-26 11:04:34 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-26 05:34:34.099668', NULL, 'module', 1, 1),
(40, 42, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-26 17:21:48 and created by <b>Devender Kumar</b>', '', '', '2021-08-26 11:51:48.403892', NULL, 'module', 1, 1),
(41, 43, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this module on 2021-08-26 18:12:18 and created by <b>Devender Kumar</b>', '', '', '2021-08-26 12:42:18.436075', NULL, 'module', 1, 1),
(42, 44, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-26 18:23:16 and created by <b>Devender Kumar</b>', '', '', '2021-08-26 12:53:16.204729', NULL, 'module', 1, 1),
(43, 44, 'GUS CAT Gateway', 'REJECTED', 'Saurabh NGL', 'Reject.', '<b>GUS CAT Gateway</b> Updated with the decision <b>REJECTED</b> on 2021-08-26 18:29:19', NULL, '37', '2021-08-26 12:59:19.458056', NULL, 'provisional', 1, 1),
(44, 44, 'GUS CAT Register', 'REVIEW_REQUESTED', 'sheshu kumar', 'recheck ur decision.', '<b>GUS CAT Register</b> Updated with the decision <b>REVIEW_REQUESTED</b> for <b>GUS CAT Gateway</b> on 2021-08-26 18:30:02 by <b>sheshu kumar</b>', NULL, '37', '2021-08-26 13:00:02.698919', NULL, 'panel', 1, 1),
(45, 44, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'ok, changing to accepted.', '<b>GUS CAT Gateway</b> Updated with the review decision <b>APPROVED</b> on 2021-08-26 18:31:36', NULL, '37', '2021-08-26 13:01:36.482125', NULL, 'provisional', 1, 1),
(46, 41, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-26 20:37:25 and created by <b>Devender Kumar</b>', '', '', '2021-08-26 15:07:25.548910', NULL, 'module', 1, 1),
(47, 45, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-27 11:30:34 and created by <b>Devender Kumar</b>', '', '', '2021-08-27 06:00:34.971654', NULL, 'module', 1, 1),
(48, 25, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-27 14:59:26 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-27 09:29:26.575467', NULL, 'module', 1, 1),
(49, 47, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-27 16:57:30 and created by <b>Devender Kumar</b>', '', '', '2021-08-27 11:27:30.274317', NULL, 'module', 1, 1),
(50, 48, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-27 17:03:12 and created by <b>Devender Kumar</b>', '', '', '2021-08-27 11:33:12.582086', NULL, 'module', 1, 1),
(51, 49, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-08-27 17:03:56 and created by <b>Devender Kumar</b>', '', '', '2021-08-27 11:33:56.733846', NULL, 'module', 1, 1),
(52, 50, 'University Canada West', 'REQUESTED', 'Saurabh Gupta', '', '<b>University Canada West</b> Created this GCG Module on 2021-08-27 17:48:08 and created by <b>Saurabh Gupta</b>', '', '', '2021-08-27 12:18:08.379184', NULL, 'module', 1, 1),
(53, 50, 'GUS CAT Gateway', 'APPROVED', 'Saurabh Marketing', 'sdlk;fjal;djs;fsa', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-08-27 17:49:53', NULL, '45', '2021-08-27 12:19:53.545597', NULL, 'provisional', 1, 1),
(54, 51, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this module on 2021-08-27 19:15:33 and created by <b>Saurabh ARDU</b>', '', '', '2021-08-27 13:45:33.516288', NULL, 'module', 1, 1),
(55, 51, 'University Canada West', 'APPROVED', 'Saurabh Gupta', 'Accepting. ', '<b>University Canada West</b> Updated with the decision <b>APPROVED</b> on 2021-08-27 19:16:05 by <b>Saurabh Gupta</b>', 'provisional/1630071964830_Amazon_Translate_.pdf', '47', '2021-08-27 13:46:05.068146', NULL, 'provisional', 1, 1),
(56, 51, 'University of Europe', 'REJECTED', 'Saurabh UERP', 'Rejecting.', '<b>University of Europe</b> Updated with the decision <b>REJECTED</b> on 2021-08-27 19:18:40 by <b>Saurabh UERP</b>', 'provisional/1630072120790_Use_of_Neural_Networks_in_Semiconductors.pdf', '46', '2021-08-27 13:48:40.873135', NULL, 'provisional', 1, 1),
(57, 14, 'GUS CAT Gateway', 'APPROVED', 'Saurabh Marketing', 'All right.', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-08-27 21:54:41', NULL, '13', '2021-08-27 16:24:41.024594', NULL, 'provisional', 1, 1),
(58, 52, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2021-09-03 13:10:07 and created by <b>Saurabh ARDU</b>', '', '', '2021-09-03 07:40:07.715843', NULL, 'module', 1, 1),
(59, 53, 'Pearl Academy', 'REQUESTED', 'Devender Kumar', '', '<b>Pearl Academy</b> Created this GCG Module on 2021-09-03 16:37:17 and created by <b>Devender Kumar</b>', '', '', '2021-09-03 11:07:17.411650', NULL, 'module', 1, 1),
(60, 54, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2021-09-04 00:30:49 and created by <b>Saurabh ARDU</b>', '', '', '2021-09-03 19:00:49.824463', NULL, 'module', 1, 1),
(61, 55, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2021-09-04 00:43:22 and created by <b>Saurabh ARDU</b>', '', '', '2021-09-03 19:13:22.048163', NULL, 'module', 1, 1),
(62, 56, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this module on 2021-09-04 00:51:17 and created by <b>Saurabh ARDU</b>', '', '', '2021-09-03 19:21:17.099471', NULL, 'module', 1, 1),
(63, 21, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'Approving. ', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-09-06 17:00:09', 'provisional/1630927809456_z-table.pdf', '20', '2021-09-06 11:30:09.588120', NULL, 'provisional', 1, 1),
(64, 58, 'University of Europe', 'REQUESTED', 'Saurabh UERP', '', '<b>University of Europe</b> Created this GCG Module on 2021-09-06 17:21:01 and created by <b>Saurabh UERP</b>', '', '', '2021-09-06 11:51:01.968880', NULL, 'module', 1, 1),
(65, 58, 'GUS CAT Gateway', 'REJECTED', 'Saurabh NGL', 'Rejecting', '<b>GUS CAT Gateway</b> Updated with the decision <b>REJECTED</b> on 2021-09-06 18:26:32', 'provisional/1630932992612_end_to_end_video_translation.py', '53', '2021-09-06 12:56:32.656692', NULL, 'provisional', 1, 1),
(66, 58, 'GUS CAT Register', 'REVIEW_REQUESTED', 'sheshu kumar', 'Reconsider ur decision.', '<b>GUS CAT Register</b> Updated with the decision <b>REVIEW_REQUESTED</b> for <b>GUS CAT Gateway</b> on 2021-09-06 18:29:19 by <b>sheshu kumar</b>', 'panel/1630933159689_The-Undiscovered-Country.pdf', '53', '2021-09-06 12:59:19.729562', NULL, 'panel', 1, 1),
(67, 58, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'Ok Accepting.', '<b>GUS CAT Gateway</b> Updated with the review decision <b>APPROVED</b> on 2021-09-06 18:31:20', 'provisional/1630933280871_0A2XV7UDFA_2020_07_05T12_51_58.pdf', '53', '2021-09-06 13:01:20.979522', NULL, 'provisional', 1, 1),
(68, 58, 'GUS CAT Register', 'RATIFIED_ACCEPTED', 'Saurabh NGL', 'Ok', '<b>GUS CAT Register</b> Updated with the decision <b>RATIFIED_ACCEPTED</b> for <b>GUS CAT Gateway</b> on 2021-09-06 19:40:17 by <b>Saurabh NGL</b>', NULL, '54', '2021-09-06 14:10:17.171815', NULL, 'panel', 1, 1),
(69, 52, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'Accept.', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-09-07 01:14:21', NULL, '48', '2021-09-06 19:44:21.441143', NULL, 'provisional', 1, 1),
(70, 51, 'GUS CAT Register', 'REVIEW_REQUESTED', 'sheshu kumar', 'Revisit ur decision', '<b>GUS CAT Register</b> Updated with the decision <b>REVIEW_REQUESTED</b> for <b>University of Europe</b> on 2021-09-07 12:44:07 by <b>sheshu kumar</b>', 'panel/1630998847100_Industry_4.0.pdf', '46', '2021-09-07 07:14:07.142223', NULL, 'panel', 1, 1),
(71, 59, 'University of Europe', 'REQUESTED', 'Saurabh UERP', '', '<b>University of Europe</b> Created this GCG Module on 2021-09-07 18:41:50 and created by <b>Saurabh UERP</b>', '', '', '2021-09-07 13:11:50.051435', NULL, 'module', 1, 1),
(72, 59, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'Haan ok', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2021-09-07 19:12:13', NULL, '55', '2021-09-07 13:42:13.293423', NULL, 'provisional', 1, 1),
(73, 56, 'University of Europe', 'REJECTED', 'Saurabh UERP', 'Not good.', '<b>University of Europe</b> Updated with the decision <b>REJECTED</b> on 2021-09-07 19:13:01 by <b>Saurabh UERP</b>', NULL, '52', '2021-09-07 13:43:01.114662', NULL, 'provisional', 1, 1),
(74, 51, 'University of Europe', 'APPROVED', 'Saurabh UERP', 'ok Accepting.', '<b>University of Europe</b> Updated with the review decision <b>APPROVED</b> on 2021-09-07 19:13:40 by <b>Saurabh UERP</b>', NULL, '46', '2021-09-07 13:43:40.884554', NULL, 'provisional', 1, 1),
(75, 51, 'GUS CAT Register', 'REVIEW_REQUESTED', 'sheshu kumar', 'Requesting a review. ', '<b>GUS CAT Register</b> Updated with the decision <b>REVIEW_REQUESTED</b> for <b>University of Europe</b> on 2021-09-07 19:17:30 by <b>sheshu kumar</b>', NULL, '56', '2021-09-07 13:47:30.119727', NULL, 'panel', 1, 1),
(76, 51, 'University of Europe', 'APPROVED', 'Saurabh UERP', 'Ok Accepting with new comments.', '<b>University of Europe</b> Updated with the review decision <b>APPROVED</b> on 2021-09-07 19:18:14 by <b>Saurabh UERP</b>', NULL, '56', '2021-09-07 13:48:14.063650', NULL, 'provisional', 1, 1),
(77, 61, 'University of Petroleum and Energy Studies', 'REQUESTED', 'Saurabh UPES', '', '<b>University of Petroleum and Energy Studies</b> Created this GCG Module on 2021-10-18 16:24:41 and created by <b>Saurabh UPES</b>', '', '', '2021-10-18 10:54:41.496979', NULL, 'module', 0, 1),
(78, 62, 'University of Petroleum and Energy Studies', 'REQUESTED', 'Saurabh UPES', '', '<b>University of Petroleum and Energy Studies</b> Created this GCG Module on 2021-10-19 18:44:53 and created by <b>Saurabh UPES</b>', '', '', '2021-10-19 13:14:53.867350', NULL, 'module', 0, 1),
(79, 63, 'University of Petroleum and Energy Studies', 'REQUESTED', 'Saurabh UPES', '', '<b>University of Petroleum and Energy Studies</b> Created this GCG Module on 2021-10-19 21:20:28 and created by <b>Saurabh UPES</b>', '', '', '2021-10-19 15:50:28.610281', NULL, 'module', 0, 1),
(80, 64, 'University of Petroleum and Energy Studies', 'REQUESTED', 'Saurabh UPES', '', '<b>University of Petroleum and Energy Studies</b> Created this GCG Module on 2021-10-20 15:14:09 and created by <b>Saurabh UPES</b>', '', '', '2021-10-20 09:44:09.071611', NULL, 'module', 0, 1),
(81, 65, 'University of Petroleum and Energy Studies', 'REQUESTED', 'Saurabh UPES', '', '<b>University of Petroleum and Energy Studies</b> Created this GCG Module on 2021-10-20 16:17:01 and created by <b>Saurabh UPES</b>', '', '', '2021-10-20 10:47:01.154897', NULL, 'module', 0, 1),
(82, 66, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2021-10-25 19:47:49 and created by <b>Saurabh ARDU</b>', '', '', '2021-10-25 14:17:49.882472', NULL, 'module', 0, 1),
(83, 14, 'GUS CAT Register', 'RATIFIED_ACCEPTED', 'sheshu kumar', 'ok', '<b>GUS CAT Register</b> Updated with the decision <b>RATIFIED_ACCEPTED</b> for <b>GUS CAT Gateway</b> on 2021-10-26 12:11:44 by <b>sheshu kumar</b>', NULL, '13', '2021-10-26 06:41:44.293273', NULL, 'panel', 1, 1),
(84, 51, 'GUS CAT Register', 'RATIFIED_ACCEPTED', 'sheshu kumar', 'ok', '<b>GUS CAT Register</b> Updated with the decision <b>RATIFIED_ACCEPTED</b> for <b>University Canada West</b> on 2021-10-26 13:13:34 by <b>sheshu kumar</b>', NULL, '47', '2021-10-26 07:43:34.516467', NULL, 'panel', 1, 1),
(85, 52, 'GUS CAT Register', 'RATIFIED_ACCEPTED', 'sheshu kumar', 'ok', '<b>GUS CAT Register</b> Updated with the decision <b>RATIFIED_ACCEPTED</b> for <b>GUS CAT Gateway</b> on 2021-10-26 13:42:28 by <b>sheshu kumar</b>', NULL, '48', '2021-10-26 08:12:28.459247', NULL, 'panel', 1, 1),
(86, 60, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2021-10-26 16:07:01 and created by <b>Saurabh ARDU</b>', '', '', '2021-10-26 10:37:01.677765', NULL, 'module', 0, 1),
(87, 68, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this module on 2022-04-05 23:43:48 and created by <b>Saurabh ARDU</b>', '', '', '2022-04-05 18:13:48.516780', NULL, 'module', 0, 1),
(88, 69, 'Arden University', 'REQUESTED', 'Saurabh ARDU', '', '<b>Arden University</b> Created this GCG Module on 2022-05-25 16:20:54 and created by <b>Saurabh ARDU</b>', '', '', '2022-05-25 10:50:54.647603', NULL, 'module', 0, 1),
(89, 69, 'GUS CAT Gateway', 'APPROVED', 'Saurabh NGL', 'All seems ok. The module is approved. ', '<b>GUS CAT Gateway</b> Updated with the decision <b>APPROVED</b> on 2022-05-25 16:23:49', NULL, '66', '2022-05-25 10:53:49.746061', NULL, 'provisional', 0, 1),
(90, 69, 'GUS CAT Register', 'RATIFIED_ACCEPTED', 'sheshu kumar', 'Good Decision by saurabh_ngl.', '<b>GUS CAT Register</b> Updated with the decision <b>RATIFIED_ACCEPTED</b> for <b>GUS CAT Gateway</b> on 2022-05-25 16:25:20 by <b>sheshu kumar</b>', NULL, '66', '2022-05-25 10:55:20.311651', NULL, 'panel', 0, 1),
(91, 69, 'GUS CAT Register', 'REVIEW_REQUESTED', 'sheshu kumar', 'Not ok. ', '<b>GUS CAT Register</b> Updated with the decision <b>REVIEW_REQUESTED</b> for <b>GUS CAT Gateway</b> on 2022-05-25 16:25:31 by <b>sheshu kumar</b>', NULL, '66', '2022-05-25 10:55:31.455973', NULL, 'panel', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crud_module_status_history`
--

CREATE TABLE `crud_module_status_history` (
  `id` int(11) NOT NULL,
  `module_id` varchar(100) NOT NULL COMMENT 'crud_university table id',
  `requestor_uni_id` int(11) NOT NULL,
  `map_uni_id` int(11) NOT NULL,
  `provisional_status` enum('REQUESTED','APPROVED','REJECTED','UNDER REVIEW') DEFAULT NULL,
  `provisional_username` varchar(50) DEFAULT NULL,
  `provisional_comments` longtext DEFAULT NULL,
  `provisional_document_url` varchar(500) DEFAULT NULL,
  `provisional_updatedon` datetime DEFAULT NULL,
  `provisional_updatedBy` int(11) DEFAULT NULL,
  `guscat_panel_status` enum('RATIFIED_ACCEPTED','RATIFIED_REJECTED','REVIEW_REQUESTED','') DEFAULT NULL,
  `guscat_panel_username` varchar(50) DEFAULT NULL,
  `guscat_panel_comments` longtext DEFAULT NULL,
  `guscat_panel_updatedon` datetime DEFAULT NULL,
  `guscat_panel_updatedBy` int(11) DEFAULT NULL,
  `email_status` int(20) DEFAULT 0,
  `ac_date` date DEFAULT NULL,
  `document_url` varchar(200) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `is_active` int(2) DEFAULT 1,
  `is_review_decision` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_module_status_history`
--

INSERT INTO `crud_module_status_history` (`id`, `module_id`, `requestor_uni_id`, `map_uni_id`, `provisional_status`, `provisional_username`, `provisional_comments`, `provisional_document_url`, `provisional_updatedon`, `provisional_updatedBy`, `guscat_panel_status`, `guscat_panel_username`, `guscat_panel_comments`, `guscat_panel_updatedon`, `guscat_panel_updatedBy`, `email_status`, `ac_date`, `document_url`, `created_at`, `updated_at`, `is_active`, `is_review_decision`) VALUES
(12, '13', 2, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-13 07:51:01.372740', NULL, 1, NULL),
(13, '14', 2, 7, 'APPROVED', 'saurabh_marketing_ie', 'All right.', NULL, '2021-08-27 16:24:40', 58, 'RATIFIED_ACCEPTED', 'sheshukurnool', 'ok', '2021-10-26 06:41:44', 1, 1, '2022-10-26', NULL, '2021-08-13 07:55:02.134850', NULL, 1, NULL),
(17, '18', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-18 08:29:07.861152', NULL, 1, NULL),
(20, '21', 3, 7, 'APPROVED', 'saurabh_ngl', 'Approving. ', 'provisional/1630927809456_z-table.pdf', '2021-09-06 11:30:09', 59, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-23 07:32:16.741407', NULL, 1, NULL),
(21, '22', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-23 07:36:29.717603', NULL, 1, NULL),
(22, '26', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-23 09:13:28.476126', NULL, 1, NULL),
(23, '23', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-23 10:38:15.187328', NULL, 1, NULL),
(24, '27', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-23 10:39:48.353853', NULL, 1, NULL),
(25, '29', 3, 7, 'APPROVED', 'saurabh_ngl', 'Approving. ', NULL, '2021-08-24 18:55:18', 59, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-24 06:33:16.054945', NULL, 1, NULL),
(26, '32', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-24 07:15:10.817197', NULL, 1, NULL),
(27, '34', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-24 11:15:48.932443', NULL, 1, NULL),
(28, '35', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-24 11:19:38.491162', NULL, 1, NULL),
(29, '36', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-24 11:21:30.768553', NULL, 1, NULL),
(30, '38', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-25 08:19:09.985163', NULL, 1, NULL),
(31, '37', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-25 08:19:55.191355', NULL, 1, NULL),
(32, '33', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 05:29:43.105884', NULL, 1, NULL),
(33, '39', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 05:33:25.567344', NULL, 1, NULL),
(34, '40', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 05:34:34.075554', NULL, 1, NULL),
(35, '42', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 11:51:48.347749', NULL, 1, NULL),
(36, '43', 6, 3, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 12:42:18.335826', NULL, 1, NULL),
(37, '44', 6, 7, 'REJECTED', 'saurabh_ngl', 'Reject.', NULL, '2021-08-26 12:59:19', 59, 'REVIEW_REQUESTED', 'sheshukurnool', 'recheck ur decision.', NULL, 1, 1, NULL, NULL, '2021-08-26 12:53:16.177946', NULL, 0, NULL),
(38, '44', 6, 7, 'APPROVED', 'saurabh_ngl', 'ok, changing to accepted.', NULL, '2021-08-26 13:01:36', 59, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 13:01:36.434367', NULL, 1, 1),
(39, '41', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-26 15:07:25.521414', NULL, 1, NULL),
(40, '45', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 06:00:34.936294', NULL, 1, NULL),
(41, '25', 3, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 09:29:26.535872', NULL, 1, NULL),
(42, '47', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 11:27:30.236832', NULL, 1, NULL),
(43, '48', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 11:33:12.547235', NULL, 1, NULL),
(44, '49', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 11:33:56.687847', NULL, 1, NULL),
(45, '50', 3, 7, 'APPROVED', 'saurabh_marketing_ie', 'sdlk;fjal;djs;fsa', NULL, '2021-08-27 12:19:53', 58, '', '', '', NULL, NULL, 1, NULL, '', '2021-08-27 12:18:08.333574', NULL, 1, NULL),
(46, '51', 1, 2, 'REJECTED', 'saurabh_uerp', 'Rejecting.', 'provisional/1630072120790_Use_of_Neural_Networks_in_Semiconductors.pdf', '2021-08-27 13:48:40', 60, 'REVIEW_REQUESTED', 'sheshukurnool', 'Revisit ur decision', NULL, 1, 1, NULL, 'panel/1630998847100_Industry_4.0.pdf', '2021-08-27 13:45:33.445694', NULL, 0, NULL),
(47, '51', 1, 3, 'APPROVED', 'saurabh_ucw', 'Accepting. ', 'provisional/1630071964830_Amazon_Translate_.pdf', '2021-08-27 13:46:05', 36, 'RATIFIED_ACCEPTED', 'sheshukurnool', 'ok', '2021-10-26 07:43:34', 1, 1, '2022-10-26', NULL, '2021-08-27 13:45:33.480456', NULL, 1, NULL),
(48, '52', 1, 7, 'APPROVED', 'saurabh_ngl', 'Accept.', NULL, '2021-09-06 19:44:21', 59, 'RATIFIED_ACCEPTED', 'sheshukurnool', 'ok', '2021-10-26 08:12:28', 1, 1, '2022-10-26', NULL, '2021-09-03 07:40:07.672828', NULL, 1, NULL),
(49, '53', 6, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-09-03 11:07:17.359792', NULL, 1, NULL),
(50, '54', 1, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-09-03 19:00:49.797845', NULL, 1, NULL),
(51, '55', 1, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-09-03 19:13:21.934277', NULL, 1, NULL),
(52, '56', 1, 2, 'REJECTED', 'saurabh_uerp', 'Not good.', NULL, '2021-09-07 13:43:00', 60, '', '', '', NULL, NULL, 1, NULL, '', '2021-09-03 19:21:17.007472', NULL, 1, NULL),
(53, '58', 2, 7, 'REJECTED', 'saurabh_ngl', 'Rejecting', 'provisional/1630932992612_end_to_end_video_translation.py', '2021-09-06 12:56:32', 59, 'REVIEW_REQUESTED', 'sheshukurnool', 'Reconsider ur decision.', NULL, 1, 0, NULL, 'panel/1630933159689_The-Undiscovered-Country.pdf', '2021-09-06 11:51:01.930203', NULL, 0, NULL),
(54, '58', 2, 7, 'APPROVED', 'saurabh_ngl', 'Ok Accepting.', 'provisional/1630933280871_0A2XV7UDFA_2020_07_05T12_51_58.pdf', '2021-09-06 13:01:20', 59, 'RATIFIED_ACCEPTED', 'saurabh_ngl', 'Ok', '2021-09-06 14:10:17', 59, 0, '2022-09-06', NULL, '2021-09-06 13:01:20.873582', NULL, 1, 1),
(55, '59', 2, 7, 'APPROVED', 'saurabh_ngl', 'Haan ok', NULL, '2021-09-07 13:42:13', 59, '', '', '', NULL, NULL, 0, NULL, '', '2021-09-07 13:11:50.024661', NULL, 1, NULL),
(56, '51', 1, 2, 'APPROVED', 'saurabh_uerp', 'ok Accepting.', NULL, '2021-09-07 13:43:40', 60, 'REVIEW_REQUESTED', 'sheshukurnool', 'Requesting a review. ', NULL, 1, 0, NULL, NULL, '2021-09-07 13:43:40.824842', NULL, 0, 1),
(57, '51', 1, 2, 'APPROVED', 'saurabh_uerp', 'Ok Accepting with new comments.', NULL, '2021-09-07 13:48:13', 60, '', '', '', NULL, NULL, 0, NULL, '', '2021-09-07 13:48:13.933477', NULL, 1, 1),
(58, '61', 4, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-18 10:54:41.461591', NULL, 1, NULL),
(59, '62', 4, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-19 13:14:53.832143', NULL, 1, NULL),
(60, '63', 4, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-19 15:50:28.574897', NULL, 1, NULL),
(61, '64', 4, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-20 09:44:08.909906', NULL, 1, NULL),
(62, '65', 4, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-20 10:47:01.128125', NULL, 1, NULL),
(63, '66', 1, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 0, NULL, '', '2021-10-25 14:17:49.855183', NULL, 1, NULL),
(64, '60', 1, 7, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 1, NULL, '', '2021-10-26 10:37:01.592997', NULL, 1, NULL),
(65, '68', 1, 2, 'REQUESTED', '', '', '', NULL, NULL, '', '', '', NULL, NULL, 0, NULL, '', '2022-04-05 18:13:48.445407', NULL, 1, NULL),
(66, '69', 1, 7, 'APPROVED', 'saurabh_ngl', 'All seems ok. The module is approved. ', NULL, '2022-05-25 10:53:49', 59, 'REVIEW_REQUESTED', 'sheshukurnool', 'Not ok. ', NULL, 1, 0, NULL, NULL, '2022-05-25 10:50:54.565499', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crud_university`
--

CREATE TABLE `crud_university` (
  `id` int(11) NOT NULL,
  `university_name` varchar(100) NOT NULL,
  `university_id` varchar(100) NOT NULL,
  `gus_cat_code` longtext NOT NULL,
  `country_timezone` varchar(100) NOT NULL,
  `module_level` varchar(100) NOT NULL,
  `languages` varchar(100) NOT NULL,
  `discipline` varchar(100) NOT NULL,
  `mapUniversity` varchar(100) NOT NULL,
  `institutional_module_code` longtext NOT NULL,
  `module_credit_rating` longtext NOT NULL,
  `module_title` varchar(100) NOT NULL,
  `module_programs` longtext NOT NULL,
  `pre_req_modules` varchar(100) NOT NULL,
  `program_description` longtext NOT NULL,
  `semester_taught` longtext NOT NULL,
  `is_active` int(2) DEFAULT 1,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `internal_status` tinyint(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_university`
--

INSERT INTO `crud_university` (`id`, `university_name`, `university_id`, `gus_cat_code`, `country_timezone`, `module_level`, `languages`, `discipline`, `mapUniversity`, `institutional_module_code`, `module_credit_rating`, `module_title`, `module_programs`, `pre_req_modules`, `program_description`, `semester_taught`, `is_active`, `created_at`, `updated_at`, `createdBy`, `internal_status`) VALUES
(1, 'University of Law', '5', 'ULAW/GMT/ENG/BAM/UGCE/20/Program1/3 Year UG/1SEP/21', 'England / GMT', 'UGCE', '[\'1\']', '[\'1\']', '[\'1\', \'2\', \'3\', \'4\']', 'marytestrandommodule', '20', 'marytestrandommodulece20', 'Program1', 'None', '3 Year UG', '1SEP', 1, '2021-04-26 12:07:08.562819', '2021-04-26 12:07:08.562825', 34, 0),
(4, 'University of Europe', '2', 'UERP/GMT+1/ENG/MAR/UGCE/5/Program1/3 Year UG/1SEP/21', 'Germany / GMT+1', 'UGCE', '[\'1\']', '[\'6\']', '[\'1\', \'3\', \'4\']', 'MSC', '5', 'Marketing, Sales & CRM', 'Program1', 'none', '3 Year UG', '1SEP', 1, '2021-05-05 10:40:20.169211', '2021-05-05 10:40:20.169217', 43, 0),
(5, 'University of Europe', '2', 'UERP/GMT+1/ENG/MAR/UGCE/5/Program1/3 Year UG/1OCT/21', 'Germany / GMT+1', 'UGCE', '[\'1\']', '[\'6\']', '[\'1\', \'3\', \'4\']', '3.11. DM&C', '5', 'Digital Media & Communication', 'Program1', 'none', '3 Year UG', '1OCT', 1, '2021-05-10 12:35:04.926108', '2021-05-10 12:35:04.926115', 43, 0),
(6, 'University of Europe', '2', 'UERP/GMT+1/ENG/MAR/UGDI/5/Program1/3 Year UG/1OCT/21', 'Germany / GMT+1', 'UGDI', '[\'1\']', '[\'6\']', '[\'1\', \'3\', \'4\']', '3.22. MM', '5', 'Modern Marketing', 'Program1', 'none', '3 Year UG', '1OCT', 1, '2021-05-10 12:37:47.103264', '2021-05-10 12:37:47.103270', 43, 0),
(7, 'University of Europe', '2', 'UERP/GMT+1/ENG/MAR/UGDI/5/Program1/3 Year UG/1OCT/21', 'Germany / GMT+1', 'UGDI', '[\'1\']', '[\'6\']', '[\'1\', \'3\', \'4\']', '3.26. CRM', '5', 'Customer Relationsship Management', 'Program1', 'none', '3 Year UG', '1OCT', 1, '2021-05-10 12:38:39.991140', '2021-05-10 12:38:39.991146', 43, 0),
(8, 'Arden University', '1', 'ARDU/GMT/ENG/BAM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'1\']', '[\'2\', \'3\', \'4\', \'5\']', 'BUS4001', '20', 'Understanding the Business Environment', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:33:02.619898', '2021-06-14 09:33:02.619904', 32, 0),
(9, 'Arden University', '1', 'ARDU/GMT/ENG/BAM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'1\']', '[\'2\', \'3\', \'4\', \'5\']', 'BUS4001', '20', 'Understanding the Business Environment', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:33:02.721197', '2021-06-14 09:33:02.721203', 32, 0),
(10, 'Arden University', '1', 'ARDU/GMT/ENG/BAM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'1\']', '[\'2\', \'3\', \'4\', \'5\']', 'BUS4001', '20', 'Understanding the Business Environment', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:33:02.949138', '2021-06-14 09:33:02.949144', 32, 0),
(11, 'Arden University', '1', 'ARDU/GMT/ENG/HRM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'10\']', '[\'2\', \'3\', \'4\', \'5\']', 'HRM4003', '20', 'Managing Human Resources', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:34:39.386845', '2021-06-14 09:34:39.386851', 32, 0),
(12, 'Arden University', '1', 'ARDU/GMT/ENG/BAM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'1\']', '[\'2\', \'3\', \'4\', \'5\']', 'BUS4002', '20', 'Management Information Systems', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:36:21.209431', '2021-06-14 09:36:21.209438', 32, 0),
(13, 'Arden University', '1', 'ARDU/GMT/ENG/MAR/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'6\']', '[\'2\', \'3\', \'4\', \'5\']', 'MKT4001', '20', 'Principles of Marketing ', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:37:26.130739', '2021-06-14 09:37:26.130745', 32, 0),
(14, 'Arden University', '1', 'ARDU/GMT/ENG/ACC/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'2\']', '[\'2\', \'3\', \'4\', \'5\']', 'FIN4001', '20', 'Introduction to Finance ', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:38:33.510500', '2021-06-14 09:38:33.510506', 32, 0),
(15, 'Arden University', '1', 'ARDU/GMT/ENG/MAR/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'6\']', '[\'2\', \'3\', \'4\', \'5\']', 'MKT4002', '20', 'Marketing Communications ', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:39:52.874398', '2021-06-14 09:39:52.874404', 32, 0),
(16, 'Arden University', '1', 'ARDU/GMT/ENG/ACC/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'2\']', '[\'2\', \'3\', \'4\', \'5\']', 'FIN4002', '20', 'Management Accounting', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:41:02.403673', '2021-06-14 09:41:02.403677', 32, 0),
(17, 'Arden University', '1', 'ARDU/GMT/ENG/HRM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'10\']', '[\'2\', \'3\', \'4\', \'5\']', 'HRM4001', '20', 'Developing Personal and Management Skills', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:42:19.719357', '2021-06-14 09:42:19.719363', 32, 0),
(18, 'Arden University', '1', 'ARDU/GMT/ENG/HRM/UGCE/20/Program1/3 Year UG/1SEP/21', 'United Kingdom / GMT', 'UGCE', '[\'1\']', '[\'10\']', '[\'2\', \'3\', \'4\', \'5\']', 'HRM4002', '20', 'People in Organisations ', 'Program1', 'n/a', '3 Year UG', '1SEP', 1, '2021-06-14 09:43:30.896852', '2021-06-14 09:43:30.896858', 32, 0),
(19, 'University of Petroleum and Energy Studies', '4', 'UPES/GMT+5:30/ENG/BAM/UGCE/3/Program1/3 Year UG/1SEP/21', 'India / GMT+5:30', 'UGCE', '[\'1\']', '[\'1\']', '[\'1\']', 'HBOC1002', '3', 'Bachelors in Business Administration', 'Program1', 'English at High School', '3 Year UG', '1SEP', 1, '2021-06-14 13:04:24.290072', '2021-06-14 13:04:24.290078', 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crud_universitylist`
--

CREATE TABLE `crud_universitylist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `univ_email` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_universitylist`
--

INSERT INTO `crud_universitylist` (`id`, `name`, `short_name`, `country`, `timezone`, `is_active`, `created_at`, `updated_at`, `univ_email`) VALUES
(1, 'Arden University', 'ARDU', 'United Kingdom', 'GMT', 1, '2021-02-09 17:12:26.000000', '2021-02-09 17:12:24.000000', 'saurabh0108@gmail.com'),
(2, 'University of Europe', 'UERP', 'Germany', 'GMT+1', 1, '2021-02-09 17:12:46.000000', '2021-02-09 17:12:48.000000', 'accenture.saurabh@gmail.com'),
(3, 'University Canada West', 'UCWT', 'Canada', 'GMT-5', 1, '2021-02-09 17:13:01.000000', '2021-02-09 17:13:03.000000', 'saurabh@gmail.com,harry@gmail.com'),
(4, 'University of Petroleum and Energy Studies', 'UPES', 'India', 'GMT+5:30', 1, '2021-02-09 17:13:20.000000', '2021-02-09 17:13:22.000000', 'sharmila.katre@gusindia.global'),
(5, 'University of Law', 'ULAW', 'England', 'GMT', 1, '2021-02-09 17:13:34.000000', '2021-02-09 17:13:36.000000', 'marydalzielbishop1@gmail.com'),
(6, 'Pearl Academy', 'PEARL', 'India', 'GMT+5:30', 1, '2021-08-06 16:34:38.000000', '2021-08-06 16:34:38.000000', 'saurabh_pearl2@gmail.com,sheshu_pearl@gmail.com,sheshu_pearl@gmail.com,shesu_pearl11@gmail.com'),
(7, 'GUS CAT Gateway', 'GCG', 'United Kingdom', 'GMT', 1, '2021-08-06 16:37:19.000000', '2021-08-06 16:37:19.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_userrole`
--

CREATE TABLE `crud_userrole` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` enum('admin','gus_staff','gus_student','other','super_admin','gus_cat_register','independent_expert') NOT NULL,
  `user_skill` int(10) DEFAULT 0,
  `is_active` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `university_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crud_userrole`
--

INSERT INTO `crud_userrole` (`id`, `user_id`, `role`, `user_skill`, `is_active`, `created_at`, `updated_at`, `university_id`) VALUES
(8, 1, 'super_admin', 0, 1, '2021-03-11 21:33:36.000000', '2021-03-11 21:33:36.000000', NULL),
(13, 30, 'super_admin', 0, 1, '2021-04-12 09:28:22.373283', '2021-04-12 09:28:22.373289', NULL),
(14, 31, 'admin', 0, 1, '2021-04-15 09:35:00.510881', '2021-04-15 09:35:00.510889', '1'),
(15, 32, 'admin', 0, 1, '2021-04-15 15:01:25.594149', '2021-04-15 15:01:25.594155', '1'),
(16, 33, 'admin', 0, 1, '2021-04-21 14:46:52.116699', '2021-04-21 14:46:52.116711', '4'),
(17, 34, 'admin', 0, 1, '2021-04-26 10:28:37.802195', '2021-04-26 10:28:37.802202', '5'),
(18, 35, 'admin', 0, 1, '2021-04-26 12:10:14.871074', '2021-04-26 12:10:14.871115', '1'),
(19, 36, 'admin', 0, 1, '2021-04-26 14:56:06.137461', '2021-04-26 14:56:06.137472', '3'),
(21, 38, 'admin', 0, 1, '2021-04-29 07:43:29.775862', '2021-04-29 07:43:29.775869', '3'),
(24, 41, 'admin', 0, 1, '2021-04-30 13:55:07.333934', '2021-04-30 13:55:07.333944', '3'),
(26, 43, 'admin', 0, 1, '2021-05-03 17:30:40.205298', '2021-05-03 17:30:40.205306', '2'),
(27, 44, 'gus_staff', 0, 1, '2021-06-09 17:35:47.003700', '2021-06-09 17:35:47.003708', NULL),
(28, 45, 'admin', 0, 1, '2021-06-11 11:34:09.760113', '2021-06-11 11:34:09.760120', '4'),
(29, 46, 'admin', 0, 1, '2021-06-24 11:42:56.662604', '2021-06-24 11:42:56.662614', '6'),
(32, 50, 'gus_staff', 0, 1, '2021-08-06 12:23:48.521655', '2021-08-06 12:23:48.521671', NULL),
(33, 51, 'admin', 0, 1, '2021-08-06 12:30:22.180413', '2021-08-06 12:30:22.180421', '1'),
(34, 52, 'independent_expert', 1, 1, '2021-08-06 14:40:49.240842', '2021-08-06 14:40:49.240848', '7'),
(35, 53, 'independent_expert', 2, 1, '2021-08-06 14:42:53.920358', '2021-08-06 14:42:53.920365', '7'),
(36, 54, 'admin', 0, 1, '2021-08-12 07:21:37.479915', '2021-08-12 07:21:37.479922', '6'),
(37, 55, 'gus_staff', 0, 1, '2021-08-12 12:37:22.348549', '2021-08-12 12:37:22.348556', NULL),
(38, 56, 'admin', 0, 1, '2021-08-13 07:43:00.672980', '2021-08-13 07:43:00.672988', '2'),
(39, 57, 'admin', 0, 1, '2021-08-20 19:14:07.338817', '2021-08-20 19:14:07.338817', '1'),
(41, 59, 'independent_expert', 6, 1, '2021-08-24 18:26:11.484274', '2021-08-24 18:26:11.484274', '7'),
(42, 60, 'admin', 0, 1, '2021-08-27 13:47:32.535800', '2021-08-27 13:47:32.535800', '2'),
(43, 61, 'admin', 0, 1, '2021-08-30 12:37:00.722273', '2021-08-30 12:37:00.722273', '1'),
(44, 64, 'admin', 0, 1, '2021-08-30 13:04:11.204892', '2021-08-30 13:04:11.204892', '1'),
(45, 65, 'admin', 0, 1, '2021-08-30 13:05:31.801406', '2021-08-30 13:05:31.801406', '1'),
(46, 66, 'admin', 0, 1, '2021-08-30 13:13:03.006869', '2021-08-30 13:13:03.006869', '5'),
(52, 82, 'admin', 0, 1, '2021-09-01 07:32:31.291168', '2021-09-01 07:32:31.291168', '1'),
(53, 83, 'independent_expert', 3, 1, '2021-09-01 12:02:48.713158', '2021-09-01 12:02:48.713158', '7'),
(54, 85, 'admin', 0, 1, '2021-10-18 10:37:26.375926', '2021-10-18 10:37:26.375926', '4'),
(55, 86, 'independent_expert', 4, 1, '2021-10-25 14:15:54.525924', '2021-10-25 14:15:54.525924', '7'),
(56, 87, 'admin', 0, 1, '2022-01-12 15:24:34.636884', '2022-01-12 15:24:34.636884', '2');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-08-30 14:44:47.248878', '49', 'UserRole object (49)', 3, '', 16, 1),
(2, '2021-08-30 14:45:04.714212', '48', 'UserRole object (48)', 3, '', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'crud', 'ajax'),
(8, 'crud', 'csvupload'),
(13, 'crud', 'discipline'),
(9, 'crud', 'document'),
(14, 'crud', 'languages'),
(10, 'crud', 'member'),
(17, 'crud', 'module_status_history'),
(11, 'crud', 'university'),
(12, 'crud', 'universitylist'),
(15, 'crud', 'user'),
(16, 'crud', 'userrole'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-02-09 17:02:34.091152'),
(2, 'auth', '0001_initial', '2021-02-09 17:02:36.378673'),
(3, 'admin', '0001_initial', '2021-02-09 17:02:47.613524'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-09 17:02:49.675383'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-09 17:02:49.712824'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-09 17:02:50.705690'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-09 17:02:52.097864'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-09 17:02:52.332322'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-09 17:02:52.417003'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-09 17:02:53.695538'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-09 17:02:53.867725'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-09 17:02:53.936210'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-09 17:02:54.083135'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-09 17:02:54.336692'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-09 17:02:54.515040'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-09 17:02:54.552634'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-09 17:02:54.853452'),
(18, 'crud', '0001_initial', '2021-02-09 17:02:56.170251'),
(19, 'crud', '0002_auto_20210209_2226', '2021-02-09 17:02:56.217104'),
(20, 'sessions', '0001_initial', '2021-02-09 17:02:56.449160'),
(21, 'crud', '0003_universitylist', '2021-02-09 17:08:15.364068'),
(22, 'crud', '0004_discipline_languages', '2021-02-10 11:07:51.113664'),
(23, 'crud', '0005_auto_20210210_1908', '2021-02-10 13:39:07.735532'),
(24, 'crud', '0006_auto_20210210_1913', '2021-02-10 13:46:21.812740'),
(25, 'crud', '0007_university_createdby', '2021-02-10 13:46:37.645519'),
(26, 'crud', '0008_auto_20210210_1919', '2021-02-10 13:49:18.090490'),
(27, 'crud', '0009_auto_20210210_1929', '2021-02-10 13:59:42.249323'),
(28, 'crud', '0002_universitylist_short_name', '2021-02-10 18:34:23.809066'),
(29, 'crud', '0003_auto_20210211_1335', '2021-02-11 08:05:21.877151'),
(30, 'crud', '0004_user', '2021-02-22 10:10:36.447504'),
(31, 'crud', '0005_auto_20210219_2120', '2021-02-22 10:10:42.900919'),
(32, 'crud', '0006_auto_20210222_1541', '2021-02-22 10:11:56.476620'),
(33, 'crud', '0007_document_download_url', '2021-02-22 10:19:15.549083'),
(34, 'crud', '0008_remove_document_download_url', '2021-02-22 16:18:01.760412'),
(35, 'crud', '0009_user', '2021-02-23 10:12:47.260036'),
(36, 'crud', '0010_delete_user', '2021-02-23 10:12:53.205798'),
(37, 'crud', '0011_userrole', '2021-02-23 10:26:39.815374'),
(38, 'crud', '0012_auto_20210224_1438', '2021-02-24 09:09:12.109272'),
(39, 'crud', '0002_auto_20210304_2207', '2021-03-04 16:37:52.116389'),
(40, 'crud', '0003_university_level1_updatedon', '2021-03-05 10:32:49.832879'),
(41, 'crud', '0004_university_level1_updatedby', '2021-03-05 13:03:29.906820'),
(42, 'crud', '0005_universitylist_email', '2021-03-11 15:21:18.620944'),
(43, 'crud', '0006_auto_20210311_2141', '2021-03-11 16:11:14.248758'),
(44, 'crud', '0007_modulestatushistory', '2021-03-16 12:40:57.849545'),
(45, 'crud', '0008_auto_20210316_1812', '2021-03-16 12:42:10.469098');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('02rf0shoqbrqrekixyb1dgehtacrda0v', '.eJxVjEEOwiAQRe_C2pBphSm4dN8zkIEZpWogKe3KeHdD0oVu_3vvv1Wgfcthb7KGhdVFGVCn3zFSekrphB9U7lWnWrZ1ibor-qBNz5XldT3cv4NMLfd6xBsOCSiBCHlBZ87oGCe2YAyAkBOebBKP3gEPYI2gJxkjWmb26vMFDlY4RQ:1ldYaR:KEfm__vql3UaOWwZ6WQq342Cf4pInCYfI_EuqbpX39Q', '2021-05-17 13:26:11.058946'),
('0cynt0yo1wqqzop7vhnpsagjjrxo4td2', '.eJxVjEEOwiAQRe_C2pC2MEVcuu8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqM6_Y6E8SFlJ3zHcqs61rIuM-ld0Qdteqosz-vh_h1kbPlbgxkspERICEDkTbKWjUDCDjrnIkcHPvZEaKgfPGHiMRrwckZhQFTvDy2nOXs:1miDCm:lOI8GLyrQ0Bvx4YWG-o0Eef2R3MYKlZGAZ-DKw67mqY', '2021-11-17 10:09:16.421960'),
('108ifjqmcggey8qhth4wuyhd3qpnfuu4', '.eJxVjMEOwiAQRP-FsyG0YNn16N1vILssSNXQpLQn47_bJj3ocea9mbcKtC4lrC3NYRR1Udaq02_JFJ-p7kQeVO-TjlNd5pH1ruiDNn2bJL2uh_t3UKiVbZ0tEmF0HXQeGJgwA3tj--zN4OTcA27Zs7XCIBDBGRwyEjtjssOkPl8ATDfK:1leepz:ggt3I6z1TIlPaXoR5UxxVEyO6cGQKGLNyiOtzrMQ0N4', '2021-05-20 14:18:47.194534'),
('1vhvaaokv3ndzbzdk0ier58abam038jp', '.eJxVjEEOwiAQRe_C2hAoZQou3XsGAjODVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnEWRovT75giPrjuhO6x3prEVtdlTnJX5EG7vDbi5-Vw_w5K7OVbewbUMHiNDIxuIjaWUs6TJm8dqZHI6GyiQUgKvMvDqFIGtgioPBrx_gAgdjim:1lmEiY:h5pE5WWaqi6dED5Spa1H6sQQafxBlXGYW2PwomgB95U', '2021-06-10 12:02:26.485762'),
('21rljjkyu6mwf54ysdn44yfc8h8lyqd4', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1nbmKU:ook6iqFESNm5lk0MSRSOnQkW_ZHDfcpb3ka884dTEZw', '2022-04-19 16:46:54.495176'),
('27ppj0b43nu8023cd2fj7555u1lokmhc', '.eJxVjEEOwiAQRe_C2pBphSm4dN8zkIEZpWogKe3KeHdD0oVu_3vvv1Wgfcthb7KGhdVFGVCn3zFSekrphB9U7lWnWrZ1ibor-qBNz5XldT3cv4NMLfd6xBsOCSiBCHlBZ87oGCe2YAyAkBOebBKP3gEPYI2gJxkjWmb26vMFDlY4RQ:1ldYdV:hzDdFVb-S-fDxdV4jUQQSLu9ilKACxSc6rANNAikPUw', '2021-05-17 13:29:21.031519'),
('2l1ft050fgby4x6j59aytbz0ncebaxmq', '.eJxVjMEOwiAQRP-FsyG0YNn16N1vILssSNXQpLQn47_bJj3ocea9mbcKtC4lrC3NYRR1Udaq02_JFJ-p7kQeVO-TjlNd5pH1ruiDNn2bJL2uh_t3UKiVbZ0tEmF0HXQeGJgwA3tj--zN4OTcA27Zs7XCIBDBGRwyEjtjssOkPl8ATDfK:1lav3c:jK9A9EG0nmB0mwS90aAstKtUD5l2LDLwSUMArBU6Ujw', '2021-05-10 06:49:24.553569'),
('2pvwcsh58nzeb7obbjqbvzkgcgo226ud', '.eJxVjMsOwiAURP-FtSHlVcCle7-B3AsXqRpISrsy_ruSdKHLmXNmXizAvpWwd1rDktiZuZmdfkuE-KA6SLpDvTUeW93WBflQ-EE7v7ZEz8vh_h0U6OW7VpPR6GX2FF224JCyoVlmgQastJCEmrQZgZDIi4wRtTeejFVKCc3eHyRTOHk:1mf0o4:8Ayyke_SbIzlfXPfU6FKavPVys8fk378bzaqnd0NoVE', '2021-11-08 14:18:32.637480'),
('3isanw2ig2cje50jx0yi7snz2pdi0xtp', '.eJxVjDsOwyAQRO9CHaE1HwMp0_sMaFkgOIlAMnYV5e6xJRdJNdK8N_NmHre1-K2nxc-RXdnALr9dQHqmeoD4wHpvnFpdlznwQ-En7XxqMb1up_t3ULCXfW1IQsw6RAk0miFDCsEmpQDBkUZyTiAJKRKOaCBDtkobQXYPSTpI9vkC9AQ38g:1mLKnL:8FqjWxYXFX3WxYna5F9u2Lg1p1bm7mVud8fQc7BAvNw', '2021-09-15 07:36:27.558848'),
('3yf1w5m0emsm8jenuht5ewdifka1mh4g', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mp8mq:j69Pd-ymGlghUr2VNeTWt8UKG0EGUlhbIJEX3WnY20c', '2021-12-06 12:51:08.683712'),
('4i4q7iml8rxa3n9bouux64rr606xnn2h', '.eJxVjMsOwiAUBf-FtSGFW6B16d5vIPcBUjU0Ke3K-O_apAvdnpk5LxVxW0vcWlriJOqswKnT70jIj1R3Inest1nzXNdlIr0r-qBNX2dJz8vh_h0UbOVbk8goLKb3wQkObIbQk8tuBANkDTjLYFlCZ7CzAICUk_PB-5C9ZGL1_gAPbDgv:1mC1GM:_XQ2FtTl7zZw2i5PtXBRZk9_FwVYCHo6LmPp7tDU8mA', '2021-08-20 14:55:54.763417'),
('5h1fh4nti8q4qauco6037xiatmj4dype', '.eJxVjMsOwiAQAP-FsyHlsUI9evcbyC4LUjWQlPZk_HdD0oNeZybzFgH3rYS9pzUsLC5Ci9MvI4zPVIfgB9Z7k7HVbV1IjkQetstb4_S6Hu3foGAvYwte28yWSRlipEzJAFvIWrnkDKCB2aKdDOoIOiegyTpHOCvvnD-z-HwB7vY3zg:1l9nNQ:Ohv-gmWhU0xxDqm1hbQVMybi3nLBrp8VYFWil9YRSVU', '2021-02-24 11:09:44.988690'),
('5p2q1h7vuibcd5lj94msnbo4ubm7udr5', '.eJxVjEEOwiAQRe_C2pC2MEVcuu8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqM6_Y6E8SFlJ3zHcqs61rIuM-ld0Qdteqosz-vh_h1kbPlbgxkspERICEDkTbKWjUDCDjrnIkcHPvZEaKgfPGHiMRrwckZhQFTvDy2nOXs:1n7glL:65hPCn5BlIi8TOBLV-gZ4aWhpEGkbKR7QuL7pWb_K0A', '2022-01-26 16:46:15.023938'),
('5rxc599d6jbz7qfumegt5k7xmna7g893', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1q6o2X:XSu0NYwVwK1Usw2RTfwDVDqSl9hQZcY3-ZqkMBUpR2g', '2023-06-21 07:57:09.474931'),
('745tt03sqvx82x1jmr6ek6632ak6huab', '.eJxVjMsOwiAURP-FtSFX3rh07zeQywWkaiAp7cr477ZJF7qaZM6ZebOA61LDOvIcpsQuTBp2-i0j0jO3naQHtnvn1NsyT5HvCj_o4Lee8ut6uH8HFUfd1pYkpKJjkkDGngvkGF1WChA8aSTvBZKQIqNBCwWKU9oKcltI0lGyzxccNTgq:1lefKc:al7XNGpnEOKeFd3FBuz6C2htxT3K28PlGhxh8n22zeY', '2021-05-20 14:50:26.810557'),
('7q2yx5k8uhfujuu30b0gnrdwdbh09g45', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mfJMm:mxDYSVsM_0oh5-0g22NneYzaQmh5IHR9bq7ON8leOG0', '2021-11-09 10:07:36.950611'),
('7za1jfi3dh1yf84msimymqllbgt3ibuq', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mfJD5:5BkFH_Wzj4l0Ytd8gFJ24G1U3FLgizFpa8HXIzm_XC0', '2021-11-09 09:57:35.776399'),
('9654tz2srjae4j5oa1gbtalpdmd5ul8p', '.eJxVjDsOwjAQBe_iGlk2_uBQ0nOG6Nm7iwMokeKkQtwdIqWA9s3Me6ke61L7tfHcD6TOykd1-B0zyoPHjdAd423SZRqXech6U_ROm75OxM_L7v4dVLT6rVmSkJRo4BCcIYuSCBwtR-DkE7oQbMeUcXTFp5isl2CcJXHixUO9Pzw5OPM:1lwNlD:_aa_fENH8j7HoShV-rTIWhqgZBXpFWKWZSuHak2owD0', '2021-07-08 11:43:07.814067'),
('9lz201k8jet0yajoeratk3b2bupf528y', '.eJxVjEEOwiAQRe_C2pC2MEVcuu8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqM6_Y6E8SFlJ3zHcqs61rIuM-ld0Qdteqosz-vh_h1kbPlbgxkspERICEDkTbKWjUDCDjrnIkcHPvZEaKgfPGHiMRrwckZhQFTvDy2nOXs:1miFV0:0pGfG7D_LOYZDzjbpI5PZnvaRGdBvi6XLuDdACs7Oy8', '2021-11-17 12:36:14.044242'),
('9otochmm8zq3std56m7q81wmo98dszua', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mcSlr:4oZ-4v13rHFWLoXMLll-CMN4a36Bwvar2Lv-6ou8Nqk', '2021-11-01 13:33:43.232751'),
('9wjxg34rstnmwm4bh60a1q26ih1f91au', '.eJxVjEEOwiAQRe_C2pC2MEVcuu8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqM6_Y6E8SFlJ3zHcqs61rIuM-ld0Qdteqosz-vh_h1kbPlbgxkspERICEDkTbKWjUDCDjrnIkcHPvZEaKgfPGHiMRrwckZhQFTvDy2nOXs:1mk3VN:jy_EkF7L1UmahmPX5gxA7X1z0urto8m8kXFqnBnPva0', '2021-11-22 12:12:05.808015'),
('9xkhqvhqr9f5ykfmyigxe4i9xv4ql0a7', '.eJxVjMsOwiAQRf-FtSE8C7h07zeQgRmkaiAp7cr479qkC93ec859sQjbWuM2aIkzsjPTip1-xwT5QW0neId26zz3ti5z4rvCDzr4tSM9L4f7d1Bh1G9tFQkPZoKkhQpgPSiUwTonSWZLqMFKl4wRQRSlYSoBfMFCOTuyCJK9P_f8OFs:1lqEDC:ebBkFtseXJaie6hwl3bWzo9iTg4ITLGeXp2oydOd0xs', '2021-06-21 12:18:34.359948'),
('a2wpwqc760gy3kx0fmapbfzrvsk0v8bu', '.eJxVjDsOwjAQBe_iGlnxrr-U9JzB8meNA8iW4qRC3B0ipYD2zcx7MR-2tfpt0OLnzM5MT-z0O8aQHtR2ku-h3TpPva3LHPmu8IMOfu2ZnpfD_TuoYdRvjQnJGmltNrIQBhVjwglFKqCyQAVCFhOjzslpUKDBkSYIRCChoLPs_QEGDzfe:1mNZ86:Hfl_yVpOQiIAfafdW3Gcic5hiQev3J0HloIO46K4JOk', '2021-09-21 11:19:06.142971'),
('avpeungkz33dqh6ozdu9an9fvhgzfo45', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1ntoYv:I6Wzq41oTzVa1wY6CxnaZ3ndvR34jwB7BdWBzO3clxc', '2022-06-08 10:48:21.182735'),
('b0ty8riggywm9y3gb06lnrrozuitszd2', '.eJxVjMEOwiAQRP-FsyHAdgt69O43kIUFqRqalPZk_Hdp0oOeZjJvZt7C07YWv7W0-InFRYASp98wUHymuhN-UL3PMs51XaYg94o8aJO3mdPrenT_Dgq10teJEAfF2qLqiueY0Fp2bgR0OudkjLI05O50iFmHEQgyhIAEHLVx4vMF9ds4LQ:1mk3Kf:1m9epjHXipBL9YzFKTwS0_8oFSXAPuMvFs8FbiXnupc', '2021-11-22 12:01:01.818828'),
('c0qxf1isojz1kkf17l0cml22oqpmgvhi', '.eJxVjMEOwiAQRP-FsyG0YNn16N1vILssSNXQpLQn47_bJj3ocea9mbcKtC4lrC3NYRR1Udaq02_JFJ-p7kQeVO-TjlNd5pH1ruiDNn2bJL2uh_t3UKiVbZ0tEmF0HXQeGJgwA3tj--zN4OTcA27Zs7XCIBDBGRwyEjtjssOkPl8ATDfK:1lZE8Q:EcM2b_HKZHMu9c9NtbOunMok_ONR7jNZmBKoSfj2SqM', '2021-05-05 14:47:22.049791'),
('c44e1m7w7wme58vy4xfyahm0bw5zxait', '.eJxVjMEOwiAQRP-FsyEFCt169N5vIMuySNWUpLQn479Lkx70NnnzZt7C475lv1de_RzFVcAgLr8wID15OZr4wOVeJJVlW-cgD0WebZVTify6ne7fQcaa2zo4g8koANu1YBlUctB3ehxSdIRJG-tG1gkaNhxQJaCelNMKR45E4vMFCcE4gA:1n7gP5:Or5GztKInjyHzDl5JMZ7B85OIq7PrF2C-93Oedk_lmA', '2022-01-26 16:23:15.184181'),
('cmn6hf6hmgvo1rxc7ievkimiugvw8ivj', '.eJxVjMEOwiAQRP-FsyEFCt169N5vIMuySNWUpLQn479Lkx70NnnzZt7C475lv1de_RzFVcAgLr8wID15OZr4wOVeJJVlW-cgD0WebZVTify6ne7fQcaa2zo4g8koANu1YBlUctB3ehxSdIRJG-tG1gkaNhxQJaCelNMKR45E4vMFCcE4gA:1n9LD0:bXt_sVuIufj88X0l6azX-ddKpgc7XzJUAklUWio_XEc', '2022-01-31 06:09:38.925631'),
('cxkxuurnam1mh8mue7yd1jnelugjnp1n', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1qAOMF:roIioJ75KsYhQQiiJiY5gT9xP06Vm1cVISm8BJO3v9U', '2023-07-01 05:20:19.744499'),
('cxrjghs4bsh3posktx4exyhptfydrewm', '.eJxVjMEOwiAQRP-FsyHAdgt69O43kIUFqRqalPZk_Hdp0oOeZjJvZt7C07YWv7W0-InFRYASp98wUHymuhN-UL3PMs51XaYg94o8aJO3mdPrenT_Dgq10teJEAfF2qLqiueY0Fp2bgR0OudkjLI05O50iFmHEQgyhIAEHLVx4vMF9ds4LQ:1mk3Kg:zghGYctWlniBCwotm_YNZK4S8EnSnamJiAUikVqer7c', '2021-11-22 12:01:02.399416'),
('d1xrccctsl6qgyq3jv94w4jeflxbdi2d', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mmBAU:URiEuhLeNrf1YycrA-CvRPzQsmttQM5ZnwjIp_Q_jjs', '2021-11-28 08:47:18.532575'),
('eybak11c2yp0pkvdzahsmyt24d6mjrcb', '.eJxVjMsOwiAQAP-FsyHlsUI9evcbyC4LUjWQlPZk_HdD0oNeZybzFgH3rYS9pzUsLC5Ci9MvI4zPVIfgB9Z7k7HVbV1IjkQetstb4_S6Hu3foGAvYwte28yWSRlipEzJAFvIWrnkDKCB2aKdDOoIOiegyTpHOCvvnD-z-HwB7vY3zg:1lP1aQ:kxQUOaduQe9y6ti6aR0fU11ES66oc1LJvFWE6W8cCwI', '2021-04-07 11:22:06.573275'),
('fvc3ft1dbdeb8cz4hh6305zxa17iumno', '.eJxVjMsOwiAURP-FtSHlVcCle7-B3AsXqRpISrsy_ruSdKHLmXNmXizAvpWwd1rDktiZuZmdfkuE-KA6SLpDvTUeW93WBflQ-EE7v7ZEz8vh_h0U6OW7VpPR6GX2FF224JCyoVlmgQastJCEmrQZgZDIi4wRtTeejFVKCc3eHyRTOHk:1mfJpc:nPb1gU7xry3R0H09xXAaxgmPfqZccIEvS8c04xh-sW4', '2021-11-09 10:37:24.932513'),
('hht4uf0rbciky80eg39yzjb1e48uuxcb', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1nbzNt:ZAFb3_Wr0XHva9fP9izdJVT9z2oSLtWL4zfgEGShma8', '2022-04-20 06:43:17.407102'),
('hj3adhuygf03xpcg40dvhzfz9hys3u98', '.eJxVjMEOwiAQRP-FsyEFCt169N5vIMuySNWUpLQn479Lkx70NnnzZt7C475lv1de_RzFVcAgLr8wID15OZr4wOVeJJVlW-cgD0WebZVTify6ne7fQcaa2zo4g8koANu1YBlUctB3ehxSdIRJG-tG1gkaNhxQJaCelNMKR45E4vMFCcE4gA:1n8h37:xO-w9d41iHIt4fSowYuDz7tpJedU1gem2dhwQKyLzi8', '2022-01-29 11:16:45.761810'),
('hqaipf2nds8f2cxqitbgl4771qp3r6vi', '.eJxVjDsOwjAQBe_iGlnxrr-U9JzB8meNA8iW4qRC3B0ipYD2zcx7MR-2tfpt0OLnzM5MT-z0O8aQHtR2ku-h3TpPva3LHPmu8IMOfu2ZnpfD_TuoYdRvjQnJGmltNrIQBhVjwglFKqCyQAVCFhOjzslpUKDBkSYIRCChoLPs_QEGDzfe:1mJege:0-UP8bxRO5q_XMzhSZxgPOeg0nA81kbR92m9e3LLVXM', '2021-09-10 16:26:36.651617'),
('ir85fa2zn2vr9fxxufbvv55cskd5x5kz', '.eJxVjDsOwyAQRO9CHaE1HwMp0_sMaFkgOIlAMnYV5e6xJRdJNdK8N_NmHre1-K2nxc-RXdnALr9dQHqmeoD4wHpvnFpdlznwQ-En7XxqMb1up_t3ULCXfW1IQsw6RAk0miFDCsEmpQDBkUZyTiAJKRKOaCBDtkobQXYPSTpI9vkC9AQ38g:1mH61p:ql7Oi59rYMRRrPQFXMT3VHaVaQLqQNxzqYYvTGao4es', '2021-09-03 15:01:53.511716'),
('j553csmr2tfnratpt883jrm9masaufpo', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mp2Zx:kaUrWeGMe6STLHWmuIrGZ4H_hgUb2fffkC1ZVMZD8_Y', '2021-12-06 06:13:25.989651'),
('kjqy4v558bqv8tqyqzog3vluyxgtlwil', '.eJxVjDsOwjAQBe_iGlk2_uBQ0nOG6Nm7iwMokeKkQtwdIqWA9s3Me6ke61L7tfHcD6TOykd1-B0zyoPHjdAd423SZRqXech6U_ROm75OxM_L7v4dVLT6rVmSkJRo4BCcIYuSCBwtR-DkE7oQbMeUcXTFp5isl2CcJXHixUO9Pzw5OPM:1mDkiR:fvcCu_gSaK4iasF_w5gXWFnj7gn-E_rOydHnqCbc_kI', '2021-08-25 09:40:03.185883'),
('krl0jzuz3cix20wnfk38kd35sosu6s05', '.eJxVjEEOwiAQRe_C2pC2MEVcuu8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uLMqM6_Y6E8SFlJ3zHcqs61rIuM-ld0Qdteqosz-vh_h1kbPlbgxkspERICEDkTbKWjUDCDjrnIkcHPvZEaKgfPGHiMRrwckZhQFTvDy2nOXs:1mmCqV:PwtNml1BtVbTgQ1sEZm24Hy6MhQ9lmCAs6-W4rWHXg0', '2021-11-28 10:34:47.445408'),
('kx96c0q73rdsy3zo4rzdeg709a4hp2ue', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mmBFB:Ozrf1dGJd1Ltg8i24SwEIhdRYHSpUZp802ZSz6322Vs', '2021-11-28 08:52:09.629061'),
('l0bhd1loy56coie9mvupaitm0k21rrr4', '.eJxVjEEOwiAQRe_C2hAow8C4dO8ZCDBUqoYmpV0Z765NutDtf-_9lwhxW2vYelnCxOIsjBen3zHF_ChtJ3yP7TbLPLd1mZLcFXnQLq8zl-flcP8Oauz1WxNk53wkBZbQWGVgJAbC7GOhZIi0BgcjZNR68Mw2eVR5KOytQ4Mo3h_YJTa5:1lc1L6:UGphB_W5PNcxlo6nkLHxxCzFT1-ip7o0G2TjYwC_dZs', '2021-05-13 07:44:00.875406'),
('lfj1ser17vbfrgl840mwcg57e8fcuy67', '.eJxVjEEOwiAQRe_C2hDKQGFcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWGsXpd4yUHtx2ku_UbrNMc1uXKcpdkQft8jpnfl4O9--gUq_fGsioSNoylwToC3uMRjEQIjiD3mnIOjoog0fIBQjYqkHlETDZUSfx_gANLze6:1lRw9f:lKAocB95eax1PixoL2-0pxuKf4BJioifIcGR7YwQCTA', '2021-04-15 12:10:31.055770'),
('ly3smwz4llv5eihb6pwzhqx8x3rmt9ku', '.eJxVjMEOwiAQRP-FsyEiu1A8eu83kAW2UjWQlPZk_HdL0oNeZpJ5M_MWnrY1-63x4uckrkKJ028WKD65dJAeVO5VxlrWZQ6yV-RBmxxr4tft6P4dZGp5X58HNFYTmGhQOQ3JMMVgAaYpgdUMF2aNQdtulJzaJSIikHEY9SA-X9SIN7M:1lRtmy:sK5ZD2rVDtlvPPar726AzxFNL66mzLYH3oyiTDeFhwM', '2021-04-15 09:38:56.130020'),
('lyu4qesue4hyv5fhunlrsun4hmdxg33f', '.eJxVjMEOwiAQRP-FsyFQLCwevfsNZNkFqRpISnsy_rtt0oPOcd6beYuA61LC2tMcJhYXAaM4_ZYR6ZnqTviB9d4ktbrMU5S7Ig_a5a1xel0P9--gYC_b2lgasgVSmRNkNaA2EL3n7DMqb7Nm5xKiBYvOeKARIpqz3QKkE7D4fAEfqzhm:1mcowO:890B_S6KEaUn_AGvC60LJdXQN4_91VKLlLE-zyMNqiA', '2021-11-02 13:14:04.075870'),
('m4jd26050zakd8ke9fvyf0yu74xg5tkx', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1qAWAB:Zon2AlOgN3Yei-4TQnhPq1_XqHGO1ZUFqpzNBJNeMYw', '2023-07-01 13:40:23.972666'),
('meluu302v7tth1chb74fbbo9semwu5o0', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1nbnio:GKWdU84S-5cbd4L9psQESuGiFiB36vNuG_QosaHq7E8', '2022-04-19 18:16:06.601930'),
('nh86jvct44oku06tkidy4jhmdog81upy', '.eJxVjDsOwyAQRO9CHaE1HwMp0_sMaFkgOIlAMnYV5e6xJRdJNdK8N_NmHre1-K2nxc-RXdnALr9dQHqmeoD4wHpvnFpdlznwQ-En7XxqMb1up_t3ULCXfW1IQsw6RAk0miFDCsEmpQDBkUZyTiAJKRKOaCBDtkobQXYPSTpI9vkC9AQ38g:1mNbRF:12Tzj-rn8nC3vnPRvxGxM5EvoEaqcNaIFTKqeVguinI', '2021-09-21 13:47:01.084970'),
('nofqeqja8kxaz11kul09dg8gexe0v5kx', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mfLhW:IUTtZEepcPo1Gj__M1dzHDZ_vkyo6x4ZFZ3bm675w78', '2021-11-09 12:37:10.021561'),
('o1tns907riqaf4edfo5r5mrjefdvio8c', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1n9LGu:HfU0_KvA1i9m8prssl_QzQ2YnzVkEVINa-c--Q7083Q', '2022-01-31 06:13:40.983285'),
('owjedc6nz3qtheoei7iime03n6xm4z9b', '.eJxVjMsOwiAQAP-FsyHlsUI9evcbyC4LUjWQlPZk_HdD0oNeZybzFgH3rYS9pzUsLC5Ci9MvI4zPVIfgB9Z7k7HVbV1IjkQetstb4_S6Hu3foGAvYwte28yWSRlipEzJAFvIWrnkDKCB2aKdDOoIOiegyTpHOCvvnD-z-HwB7vY3zg:1lP2EI:GbiE33l4ufo8sdMM77DJxo5qkgBVdnoWNFpZo7GomC4', '2021-04-07 12:03:18.621513'),
('pg4pee42572z4m8hdymbon03v8ku3fhn', '.eJxVjMsOwiAQAP-FsyHlsUI9evcbyC4LUjWQlPZk_HdD0oNeZybzFgH3rYS9pzUsLC5Ci9MvI4zPVIfgB9Z7k7HVbV1IjkQetstb4_S6Hu3foGAvYwte28yWSRlipEzJAFvIWrnkDKCB2aKdDOoIOiegyTpHOCvvnD-z-HwB7vY3zg:1lP0R1:0x80M0nt3t_47JLjtCcFPfSRY1JfI486ejfSyYMizWg', '2021-04-07 10:08:19.105564'),
('qcg71he2wr7ptf7kzcf0wq529ujgilti', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mf0mH:_a2UJ_ZX9jBygsBdcfDaEOep-gGh5ZvjFmsn-fmEkRI', '2021-11-08 14:16:41.999856'),
('qprvxlciojixei3hvjh3ncuw2ggo45lf', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1qAPpW:Pz9IQHM6pWZ1VnV6mg1bJuhJBqqpmwXeALztIjRxzXs', '2023-07-01 06:54:38.939076'),
('rd20de6ldojvmqs7oys4qomyeagyesk5', '.eJxVjMEOwiAQRP-FsyG0YNn16N1vILssSNXQpLQn47_bJj3ocea9mbcKtC4lrC3NYRR1Udaq02_JFJ-p7kQeVO-TjlNd5pH1ruiDNn2bJL2uh_t3UKiVbZ0tEmF0HXQeGJgwA3tj--zN4OTcA27Zs7XCIBDBGRwyEjtjssOkPl8ATDfK:1lb2lv:fhUwhYkgZzDrxGpSeizr6jMMflz281TYWdUEfI3S9Xk', '2021-05-10 15:03:39.438321'),
('s2ms0yv6oz0yjkizujwu9nzy1ufxp1iw', '.eJxVjMsOwiAURP-FtSFX3rh07zeQywWkaiAp7cr477ZJF7qaZM6ZebOA61LDOvIcpsQuTBp2-i0j0jO3naQHtnvn1NsyT5HvCj_o4Lee8ut6uH8HFUfd1pYkpKJjkkDGngvkGF1WChA8aSTvBZKQIqNBCwWKU9oKcltI0lGyzxccNTgq:1mJWWl:8lzapw4eZbMcP5vW0kdZycO7dhEl_9snhm3GDQX0sU0', '2021-09-10 07:43:51.050306'),
('ss4l0y9m184qbz4gvvlqhy78t8fk797a', '.eJxVjDsOwjAQBe_iGlmOf8lS0nMGa23v4gCypTipEHeHSCmgfTPzXiLgtpawdVrCnMVZmEGcfseI6UF1J_mO9dZkanVd5ih3RR60y2vL9Lwc7t9BwV6-tbZDTpydRzV6ApUQMpFFUNE4C5qZARS4ybJyCGQ8Gw2RNPGE0Y3i_QEXcziB:1lawxZ:4Kt1aISt75EruOatiBnzh8rLBMMiCjCXFT9ZovNAeYk', '2021-05-10 08:51:17.316453'),
('tj753s6nr3759lbfmlhz86ux1m6l9fq8', '.eJxVjDsOwjAQBe_iGlk2_uBQ0nOG6Nm7iwMokeKkQtwdIqWA9s3Me6ke61L7tfHcD6TOykd1-B0zyoPHjdAd423SZRqXech6U_ROm75OxM_L7v4dVLT6rVmSkJRo4BCcIYuSCBwtR-DkE7oQbMeUcXTFp5isl2CcJXHixUO9Pzw5OPM:1mDkWA:0VwvBX7-aIdhV5btgPpZXS7cVVaAIyu_559roWf_J9w', '2021-08-25 09:27:22.918650'),
('tn7j4fw1uo3g50zncbzmuwp641ixx6vp', '.eJxVjMsOwiAURP-FtSE8ysul-34DAe5FqgaS0q6M_y5NutDVJHPOzJv4sG_F7x1XvwC5Es3I5beMIT2xHgQeod4bTa1u6xLpodCTdjo3wNftdP8OSuhlrFEDWmFTcEpYlVV03IEbkThjyU0GrdERpeMqQszCcMnzYJO0GhIo8vkCB5037w:1n5NSq:R0pOPd-qdYdAqwsrp1rxkFaMCEVgabdjUI_YAp6hq7g', '2022-01-20 07:45:36.036475'),
('tolcjdd8aoqert9whszj2arc68jyhh3x', '.eJxVjMEOwiAQRP-FsyFQLCwevfsNZNkFqRpISnsy_rtt0oPOcd6beYuA61LC2tMcJhYXAaM4_ZYR6ZnqTviB9d4ktbrMU5S7Ig_a5a1xel0P9--gYC_b2lgasgVSmRNkNaA2EL3n7DMqb7Nm5xKiBYvOeKARIpqz3QKkE7D4fAEfqzhm:1mcQ3S:3KO8czAmsJ27WKmLyL206rqxwQquwaDXpA-kLXbYlh4', '2021-11-01 10:39:42.977233'),
('tzfiq5fn6o8e491pij6vdjx49gzis5ls', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mfHRS:zGoIsncHDc26s7DxC6hoDxvKnOjMq_5y5Uqtef9HiVg', '2021-11-09 08:04:18.492637'),
('ukxgcg6jmhx98amk3aujqd3hr0ro534q', '.eJxVjMsOwiAQRf-FtSE8C7h07zeQgRmkaiAp7cr479qkC93ec859sQjbWuM2aIkzsjPTip1-xwT5QW0neId26zz3ti5z4rvCDzr4tSM9L4f7d1Bh1G9tFQkPZoKkhQpgPSiUwTonSWZLqMFKl4wRQRSlYSoBfMFCOTuyCJK9P_f8OFs:1leCGM:YJz6nYJOnW79RD_fkFSwV_lIlc9JxcPA1G_T2WaQsic', '2021-05-19 07:48:06.465610'),
('uzcpf6grgglfak8ri0s5v4in8jyepi5u', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1mmN4X:QPlE_Fhh1bO46Aonmu-WInJU7IItNYDazdjvaaOynTM', '2021-11-28 21:29:57.430726'),
('v0y2xp5yieuwojz4nuzx2807lapupqcd', '.eJxVjEEOgkAMRe8yazMR2sLUpXvOQNqZqaAGEgZWxrsrCQvd_vfef7letnXot5KXfkzu4hDc6XdUiY887STdZbrNPs7Tuozqd8UftPhuTvl5Pdy_g0HK8K25almbIGqsJAaGikx1LapmLWaCGsG4AkIkgxTaJoYzU4XcUFBx7w8LGTeY:1mE790:YYwcNSN1nURfaA_W_xILj8cnTlIiLnmJzjwsZfUFQbM', '2021-08-26 09:36:58.386704'),
('v2kmkcr4rd28jk0ly0shvwfdxw1isah2', '.eJxVjEEOwiAQRe_C2hAYSgdcuvcMZBhAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hSuIsLIrT7xiJH7ntJN2p3WbJc1uXKcpdkQft8jqn_Lwc7t9BpV6_tWP0CJAMIhRUSRt0JhIyD8X75OJI3moYQStfKAIpa4h1dDAoQAbx_gDvtzdH:1mfJNc:TYT1zyF007NeboDgZI7DI0OhksdM6X8drCB9UBoNYSE', '2021-11-09 10:08:28.081809'),
('w8r3ctjmj7yuldwksnhapjs112vnbf1n', '.eJxVjMsOwiAQRf-FtSE8ZsC6dN9vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxYXAShOv2Ok9OC6k3ynemsytbouc5S7Ig_a5dgyP6-H-3dQqJdvbSAZ7SI5ZymBVjZGZfxAxjD46awjKo-O0DNPiC6hZfYAOQ86ezAs3h_xhjeh:1lrfQc:C1gBb1vCon4hICgoZy4rfQLEaOtdMnIszH9OEU9Tr5w', '2021-06-25 11:34:22.406470'),
('wnlf8z4ymhk1x8ph99r3fchharo3veag', '.eJxVjEsOAiEQBe_C2hA-zQAu3XsGQneDjBommc_KeHedZBa6fVX1XiLlbW1pW8qcRhZnocXpd8NMj9J3wPfcb5Okqa_ziHJX5EEXeZ24PC-H-3fQ8tK-NVmH3hbwFTRRUKwVKxuNz2gcQhwUeYBBF2OtqcHWHCKhQw0M7J0R7w_NcTc2:1lRDRt:YUpVvWxx0DYa6JgTWFO-kMro8l-U7boQzRbdmsh2ERg', '2021-04-13 12:26:21.664230'),
('x3746cu48jlea4t0pwj88lm3z71w6802', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1q7dCa:0yQOYVWmM3NPKa7gdBN12_L5i90kJaEmIo8wEHmiYco', '2023-06-23 14:34:56.185025'),
('xha68sivhxoxssn03ntl6ot8xx7bygdl', '.eJxVjEEOwiAQRe_C2hAoZQou3XsGAjODVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hJnEWRovT75giPrjuhO6x3prEVtdlTnJX5EG7vDbi5-Vw_w5K7OVbewbUMHiNDIxuIjaWUs6TJm8dqZHI6GyiQUgKvMvDqFIGtgioPBrx_gAgdjim:1lgSea:oDvMIG-uxn9lJGt4qrA1MtMKCa7Fu7GppxgmBU8GZMo', '2021-05-25 13:42:28.345154'),
('xxio0rtuxbujzpfacazop6l471q86isl', '.eJxVjDsOwjAQBe_iGln-rR1T0nMGa-3d4ABypDipEHeHSCmgfTPzXiLhtta0dV7SROIsIIrT75ixPLjthO7YbrMsc1uXKctdkQft8joTPy-H-3dQsddvnYOnENUA7DKCLTpbVNoYQDajZjdicINVSAWiheLQG-8DK-WoBAAS7w8GdjfN:1mM7rm:TvxBAA_yUtOkHO7UZ-i_RZp-Hsu_KVOaUBnFFgN5NTA', '2021-09-17 12:00:18.701106'),
('yjc2iq2fo82seuk0190b9vztqwsbh1pr', '.eJxVjDkOwjAUBe_iGlnefpxQ0nMGy38JDiBHipMKcXeIlALaNzPvpVLe1pK2JkuaWJ2VVaffDTM9pO6A77neZk1zXZcJ9a7ogzZ9nVmel8P9Oyi5lW89dGMGsjKw6aMzQhYQbQQ02UAwUQJFxGDZAjA5DMCdEx6dB997z-r9AeJUN7o:1ntoeq:bQnqYc5oModS7QPkYYLKwTNl5oIC7jU-Nv5mYjAsvMI', '2022-06-08 10:54:28.205025'),
('z16vur2gs53tp9ndzcjmhv6zsrtle8dh', '.eJxVjMsOwiAURP-FtSFX3rh07zeQywWkaiAp7cr477ZJF7qaZM6ZebOA61LDOvIcpsQuTBp2-i0j0jO3naQHtnvn1NsyT5HvCj_o4Lee8ut6uH8HFUfd1pYkpKJjkkDGngvkGF1WChA8aSTvBZKQIqNBCwWKU9oKcltI0lGyzxccNTgq:1mCzGg:kEF65BAlgliHEM3eWXCuMmBX5v7mV8nNadnmMdms9kU', '2021-08-23 07:00:14.613503');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_backup`
--
ALTER TABLE `auth_user_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crud_ajax`
--
ALTER TABLE `crud_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_csvupload`
--
ALTER TABLE `crud_csvupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_discipline`
--
ALTER TABLE `crud_discipline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_document`
--
ALTER TABLE `crud_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_draft_decision`
--
ALTER TABLE `crud_draft_decision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_gcg_module`
--
ALTER TABLE `crud_gcg_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_languages`
--
ALTER TABLE `crud_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_member`
--
ALTER TABLE `crud_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_module_history`
--
ALTER TABLE `crud_module_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_module_status_history`
--
ALTER TABLE `crud_module_status_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_university`
--
ALTER TABLE `crud_university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_universitylist`
--
ALTER TABLE `crud_universitylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_userrole`
--
ALTER TABLE `crud_userrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `auth_user_backup`
--
ALTER TABLE `auth_user_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_ajax`
--
ALTER TABLE `crud_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_csvupload`
--
ALTER TABLE `crud_csvupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_discipline`
--
ALTER TABLE `crud_discipline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `crud_document`
--
ALTER TABLE `crud_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `crud_draft_decision`
--
ALTER TABLE `crud_draft_decision`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crud_gcg_module`
--
ALTER TABLE `crud_gcg_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `crud_languages`
--
ALTER TABLE `crud_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crud_member`
--
ALTER TABLE `crud_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_module_history`
--
ALTER TABLE `crud_module_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `crud_module_status_history`
--
ALTER TABLE `crud_module_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `crud_university`
--
ALTER TABLE `crud_university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `crud_universitylist`
--
ALTER TABLE `crud_universitylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crud_userrole`
--
ALTER TABLE `crud_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
