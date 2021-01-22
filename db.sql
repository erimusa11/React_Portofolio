-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2021 at 07:34 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dilaxzzk_eri`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `person_name` varchar(50) DEFAULT NULL,
  `person_subname` varchar(50) DEFAULT NULL,
  `person_password` varchar(50) DEFAULT NULL,
  `person_username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `person_name`, `person_subname`, `person_password`, `person_username`) VALUES
(1, 'Eri', 'Musa', 'macklemore808', 'rei.etrc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id_post` int(11) NOT NULL,
  `project_name` text DEFAULT NULL,
  `project_tools` text DEFAULT NULL,
  `img_one` varchar(50) DEFAULT NULL,
  `img_two` varchar(50) DEFAULT NULL,
  `project_desc` longtext DEFAULT NULL,
  `project_category` varchar(50) DEFAULT NULL,
  `project_link` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id_post`, `project_name`, `project_tools`, `img_one`, `img_two`, `project_desc`, `project_category`, `project_link`, `user_id`) VALUES
(1, 'Cruscotto Di Controllo Aziendale', 'PHP , SQL , JAVASCRIPT ,BOOTSTRAP , HTML5 , CSS3 ,JQUERY', '1604485494.jpg', '1604485494135.jpg', ' \nCruscotto di controllo the first and only cloud management control software based on the Balanced Scorecard that measures the health and business continuity, essential for the auditor and the entrepreneur, and complies with the requirements of art. 2086 2nd paragraph of the Italian Civil Code, art. 14 paragraph 1 of Legislative Decree 14/2019 and ISA 570 and 210', 'Web Development Software', 'https://www.cruscottodicontrollo.it/', 1),
(2, 'CASCO CRM', 'PHP , AJAX ,JQUERY,BOOTSTRAP ,JAVASCRIPT ', '1604476263.jpg', '1604476263135.jpg', 'CASCO is a management system of a company`s employees where they enter enter and register the work they have done  and regarding the tipology of work are asked to compleate specific  filds. On management  side you can se reports of every kind  for a specific  employer,team , company or industry  they have registered , the reports are in datas and graphics  also there are reports coming  and in  the emails  witch are  everydays  , one time of week  to see what point is the work you have done .', 'Web Development Software', 'https://libra.cruscottostudio.it/', 1),
(3, 'My Personal Website', 'REACTJS ,JAVASCRIPT ,PHP', '1604487462.jpg', '1604487462135.jpg', 'This is my personal website compleatly  constructed  with react js  where  is displayed  all my personal datas projects and more.. Also  here is a dashboard  where i can make all the post dinamicy  and more management .', 'Web Development Software', 'https://dilavermusa.com/', 1),
(4, 'Contract  Management CRM', 'PHP, SQL , AJAX, JAVASCRIPT ,BOOTSTRAP ', '1604480807.jpg', '1604480807135.jpg', 'This software the owners  of a specific  business  can keep all the datas regarding  his contracts  made with the other  business`s , on this  CRM allows  you to keep your payments  you have received  , expired  and they witch are cooming, also ther are coupled othe other repoerts like  event participation , gifts sended  , birthdays coming  ,clients activities, etc...', 'Web Development Software', 'https://gestionale.cruscottodicontrollo.it/', 1),
(5, 'Educazione Cruscoto di controllo ', 'JAVASCRIPT , JQUERY , AJAX , PHP , SQL BOOSTRAP', '1604481381.jpg', '1604481381135.jpg', 'This software a course  CRM for the users who have buyed Crusscotto Di Controllo witch help them to understand  better the functionality of the software and also how to keep ther business  up and healthy.', 'Web Development Software', 'https://education.cruscottodicontrollo.it/', 1),
(6, 'Salva Commercialista', 'PHP , SQL , JAVASCRIPT  , BOOTSTRAP, AJAX', '1604482885.jpg', '1604482885135.jpg', 'Thi is a free demo software  of  one of the topologies  of Cruscotto Di Controllo where the client and register for free and use in general same of the main software tools  .', 'Web Development Software', 'https://salvacommercialista.cruscottodicontrollo.it/', 1),
(7, 'Mappa Strategica', 'PHP , SQL , JQUERY, JAVASCRIPT , BOOTSTRAP, HTML5 ,CSS3', '1604484225.jpg', '1604484225135.jpg', 'This software help the client  to generate a map where he can work  more easily on the point and the targets  he want to go .', 'Web Development Software', 'https://www.mappastrategica.it/dashboard/', 1),
(8, 'Commecialisti Chat ', 'AJAX , PHP , JAVASCRIPT ,JQUERY,SQL , BOOTSTRAP,CSS3, HTML5', '1604484909.jpg', '1604484909135.jpg', 'On this software the clients are registered and they  can communicate  with each other  the admin or the client  can make  topics by ther own and  everyone can be joined by  ther self or by the person ho made that topic.', 'Web Development Software', 'https://communication.consulentiaziendaliditalia.it/', 1),
(10, 'Clima Aziendale', 'PHP , SQL , BOOSTRAP , JQUERY', '1604486040.jpg', '1604486040135.jpg', 'This is a software like a survey where the  administrator create a couple of questions  and  his employer`s can anter in ther accounts and answers to  the questions not everyday but in in specific  days .', 'Web Development Software', 'https://climaaziendale.it', 1),
(11, 'Agile Survey', 'PHP , SQL , BOOTSTRAP ,JQUERY, ', '1604486796.jpg', '1604486796135.jpg', 'This project is a survey where the client enter and  answer  to same question and at the end of this survey it generates  a graphic  witch tell him where his business is located  economically .', 'Web Development Software', 'https://controlloaziendale.it/agile-free-questionario/', 1),
(12, 'Indici Ocri', 'Javascript  PHP AJAX', '1604328449.jpg', '1604328449135.jpg', 'This is a demo software of main software Crusccotto Di Controllo which includes part of the actions and those in general terms.', 'Web Development Software', 'https://www.indiciocri.it/', 1),
(15, 'Cress Capital', 'PHP , JAVASCRIPT ,SQL ,BOOSTRAP ', '1604487074.png', '1604487074135.png', 'Cress Capital il a website for a call center company   here is  included  a presentation  pages with book also an dashboard where his client`s  ther datas witch are working for this business. ', 'Web Development Software', 'https://cress-capital.com/', 1),
(16, 'Controllo Iva', 'PHP,SQL', '1604479972.jpg', '1604479972135.jpg', 'This is a software connected with the government  servers and controll with a specific data and show you how  that  industry is going .', 'Web Development Software', 'https://www.consulentiaziendaliditalia.it/checkpiva', 1),
(19, 'BNP Praribas Bank', 'PHP , SQL', '1604929812.jpg', '1604929812135.jpg', 'This is a presentation  business  for a bank where also is included and dashboard where his clients can enter .', 'This is a presentation  business  for a bank where', 'https://investmentbtnpparibas.site/', 1),
(21, 'Adeguati assetti 2086', 'PHP , SQL, JAVASCRIPT ,BOOTSTRAP', '1608276688.png', '1608276688135.png', 'This is a survey software where the user give the answer to same question and at the end get generated a report in word regarding the answer.', 'Web Development Software', 'https://adeguatiassetti.2086.it', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trackpeople`
--

CREATE TABLE `trackpeople` (
  `track_id` int(11) NOT NULL,
  `track_ip` varchar(100) DEFAULT NULL,
  `track_city` varchar(100) DEFAULT NULL,
  `track_country` varchar(100) DEFAULT NULL,
  `track_continent` varchar(100) DEFAULT NULL,
  `track_time` datetime DEFAULT NULL,
  `track_net` text DEFAULT NULL,
  `track_position` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trackpeople`
--

INSERT INTO `trackpeople` (`track_id`, `track_ip`, `track_city`, `track_country`, `track_continent`, `track_time`, `track_net`, `track_position`) VALUES
(18, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:03', 'Nisatel LTD', '40.4686 19.48318'),
(19, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:11', 'Nisatel LTD', '40.4686 19.48318'),
(20, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:49', 'Nisatel LTD', '40.4686 19.48318'),
(21, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:31', 'Nisatel LTD', '40.4686 19.48318'),
(22, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:49', 'Nisatel LTD', '40.4686 19.48318'),
(23, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:09', 'Nisatel LTD', '40.4686 19.48318'),
(24, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:12', 'Nisatel LTD', '40.4686 19.48318'),
(25, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:12', 'Nisatel LTD', '40.4686 19.48318'),
(26, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:37', 'Nisatel LTD', '40.4686 19.48318'),
(27, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-09 10:11:56', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(28, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-09 10:11:59', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(29, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-09 10:11:38', 'Google LLC', '38.00881 -122.11746'),
(48, '34.221.86.174', 'Portland', 'United States', 'North America', '2020-11-10 09:11:28', 'Amazon.com', '45.52345 -122.67621'),
(49, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-10 11:11:47', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(50, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-10 14:11:24', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(51, '163.172.163.53', 'Paris', 'France', 'Europe', '2020-11-10 17:11:40', 'Online S.a.s.', '48.85341 2.3488'),
(52, '163.172.163.53', 'Paris', 'France', 'Europe', '2020-11-10 17:11:52', 'Online S.a.s.', '48.85341 2.3488'),
(53, '185.220.101.13', 'Amsterdam', 'Netherlands', 'Europe', '2020-11-10 23:11:35', 'Markus Koch', '52.37403 4.88969'),
(54, '205.169.39.4', 'Seattle', 'United States', 'North America', '2020-11-11 18:11:27', 'CenturyLink Communications, LLC', '47.60621 -122.33207'),
(55, '44.234.148.172', 'Portland', 'United States', 'North America', '2020-11-11 22:11:53', 'Amazon.com', '45.52345 -122.67621'),
(56, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-11 23:11:13', 'Nisatel LTD', '40.4686 19.48318'),
(57, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-12 08:11:28', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(58, '3.220.101.67', 'Ashburn', 'United States', 'North America', '2020-11-12 10:11:29', 'Amazon Technologies Inc.', '39.04372 -77.48749'),
(59, '3.220.101.67', 'Ashburn', 'United States', 'North America', '2020-11-12 10:11:30', 'Amazon Technologies Inc.', '39.04372 -77.48749'),
(60, '209.141.118.234', 'Meridian', 'United States', 'North America', '2020-11-12 20:11:07', 'Syringa Networks', '43.61211 -116.39151'),
(61, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-13 14:11:19', 'Google LLC', '38.00881 -122.11746'),
(62, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-13 15:11:12', 'Google LLC', '38.00881 -122.11746'),
(63, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-13 22:11:49', 'Google LLC', '38.00881 -122.11746'),
(64, '69.160.160.58', 'Tucson', 'United States', 'North America', '2020-11-14 02:11:48', 'Login, Inc.', '32.22174 -110.92648'),
(65, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-14 03:11:16', 'Google LLC', '38.00881 -122.11746'),
(66, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-14 16:11:18', 'Nisatel LTD', '40.4686 19.48318'),
(67, '84.20.83.169', 'Tirana', 'Albania', 'Europe', '2020-11-14 18:11:36', 'Pronet sh.p.k.', '41.3275 19.81889'),
(68, '84.20.83.169', 'Tirana', 'Albania', 'Europe', '2020-11-14 18:11:54', 'Pronet sh.p.k.', '41.3275 19.81889'),
(69, '84.20.83.169', 'Tirana', 'Albania', 'Europe', '2020-11-14 18:11:06', 'Pronet sh.p.k.', '41.3275 19.81889'),
(70, '5.173.50.232', 'Warsaw', 'Poland', 'Europe', '2020-11-14 22:11:19', 'Playonline', '52.22977 21.01178'),
(71, '5.173.50.232', 'Warsaw', 'Poland', 'Europe', '2020-11-14 22:11:15', 'Playonline', '52.22977 21.01178'),
(72, '84.185.99.233', 'Berlin', 'Germany', 'Europe', '2020-11-15 11:11:01', 'Deutsche Telekom AG', '52.52437 13.41053'),
(73, '188.172.109.14', 'Tirana', 'Albania', 'Europe', '2020-11-15 16:11:51', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(74, '3.138.116.217', 'Columbus', 'United States', 'North America', '2020-11-16 23:11:01', 'Amazon.com', '39.96118 -82.99879'),
(75, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-17 08:11:46', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(76, '5.173.69.52', 'Krakow', 'Poland', 'Europe', '2020-11-17 12:11:19', 'Playonline', '50.06143 19.93658'),
(77, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-20 16:11:41', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(78, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-11-22 04:11:24', 'Google LLC', '38.00881 -122.11746'),
(79, '18.218.122.38', 'Columbus', 'United States', 'North America', '2020-11-22 08:11:24', 'Amazon.com', '39.96118 -82.99879'),
(80, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-22 10:11:08', 'Google LLC', '38.00881 -122.11746'),
(81, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-22 10:11:08', 'Google LLC', '38.00881 -122.11746'),
(82, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-11-23 07:11:45', 'Google LLC', '38.00881 -122.11746'),
(83, '79.98.112.197', 'Shijak', 'Albania', 'Europe', '2020-11-24 18:11:34', 'Nisatel LTD', '41.34556 19.56722'),
(84, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-27 09:11:19', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(85, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-27 09:11:03', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(86, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-11-27 10:11:53', 'Google LLC', '38.00881 -122.11746'),
(87, '66.249.66.201', 'Mountain View', 'United States', 'North America', '2020-11-27 10:11:01', 'Google LLC', '38.00881 -122.11746'),
(88, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-27 18:11:57', 'Nisatel LTD', '40.4686 19.48318'),
(89, '79.98.113.126', 'Vlore', 'Albania', 'Europe', '2020-11-27 20:11:44', 'Nisatel LTD', '40.4686 19.48318'),
(90, '184.160.18.121', 'Montreal', 'Canada', 'North America', '2020-11-27 20:11:20', 'Videotron Ltee', '45.50884 -73.58781'),
(91, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-11-27 23:11:25', 'Google LLC', '38.00881 -122.11746'),
(92, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-11-28 00:11:28', 'Google LLC', '38.00881 -122.11746'),
(93, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-11-28 00:11:33', 'Google LLC', '38.00881 -122.11746'),
(94, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2020-11-28 00:11:56', 'Google LLC', '38.00881 -122.11746'),
(95, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-11-28 00:11:51', 'Google LLC', '38.00881 -122.11746'),
(96, '188.172.108.241', 'Tirana', 'Albania', 'Europe', '2020-11-28 17:11:18', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(97, '3.140.1.215', 'Columbus', 'United States', 'North America', '2020-11-28 18:11:02', 'Amazon.com', '39.96118 -82.99879'),
(98, '66.249.66.201', 'Mountain View', 'United States', 'North America', '2020-11-28 22:11:56', 'Google LLC', '38.00881 -122.11746'),
(99, '66.249.66.201', 'Mountain View', 'United States', 'North America', '2020-11-30 03:11:33', 'Google LLC', '38.00881 -122.11746'),
(100, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-01 11:12:22', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(101, '3.12.149.222', 'Columbus', 'United States', 'North America', '2020-12-01 11:12:56', 'Amazon.com', '39.96118 -82.99879'),
(102, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-01 14:12:14', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(109, '79.98.112.2', 'Shijak', 'Albania', 'Europe', '2020-12-01 18:12:40', 'Nisatel LTD', '41.34556 19.56722'),
(110, '79.98.112.6', 'Shijak', 'Albania', 'Europe', '2020-12-01 19:12:23', 'Nisatel LTD', '41.34556 19.56722'),
(111, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-02 11:12:05', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(112, '184.160.18.121', 'Montreal', 'Canada', 'North America', '2020-12-02 15:12:04', 'Videotron Ltee', '45.50884 -73.58781'),
(113, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-03 16:12:20', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(114, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-03 16:12:48', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(115, '3.137.166.3', 'Columbus', 'United States', 'North America', '2020-12-03 20:12:58', 'Amazon.com', '39.96118 -82.99879'),
(116, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-04 15:12:36', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(117, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-04 15:12:29', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(118, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-04 15:12:33', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(119, '79.98.112.6', 'Shijak', 'Albania', 'Europe', '2020-12-04 21:12:29', 'Nisatel LTD', '41.34556 19.56722'),
(120, '79.98.112.12', 'Shijak', 'Albania', 'Europe', '2020-12-05 11:12:31', 'Nisatel LTD', '41.34556 19.56722'),
(121, '188.172.108.145', 'Tirana', 'Albania', 'Europe', '2020-12-05 12:12:39', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(122, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-06 19:12:59', 'Google LLC', '38.00881 -122.11746'),
(123, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-06 19:12:11', 'Google LLC', '38.00881 -122.11746'),
(124, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-07 13:12:25', 'Google LLC', '38.00881 -122.11746'),
(125, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-07 16:12:24', 'Google LLC', '38.00881 -122.11746'),
(126, '79.98.112.76', 'Shijak', 'Albania', 'Europe', '2020-12-07 16:12:30', 'Nisatel LTD', '41.34556 19.56722'),
(127, '79.98.112.76', 'Shijak', 'Albania', 'Europe', '2020-12-07 16:12:50', 'Nisatel LTD', '41.34556 19.56722'),
(128, '79.98.112.76', 'Shijak', 'Albania', 'Europe', '2020-12-07 16:12:30', 'Nisatel LTD', '41.34556 19.56722'),
(129, '173.252.87.118', 'Coffeyville', 'United States', 'North America', '2020-12-07 16:12:09', 'Facebook, Inc.', '37.0373 -95.61637'),
(130, '66.220.149.36', 'Coffeyville', 'United States', 'North America', '2020-12-07 16:12:56', 'Facebook, Inc.', '37.0373 -95.61637'),
(131, '31.13.115.22', 'Coffeyville', 'United States', 'North America', '2020-12-07 16:12:32', 'Facebook Ireland Ltd', '37.0373 -95.61637'),
(132, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-07 19:12:37', 'Google LLC', '38.00881 -122.11746'),
(133, '79.98.112.7', 'Shijak', 'Albania', 'Europe', '2020-12-07 20:12:38', 'Nisatel LTD', '41.34556 19.56722'),
(134, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2020-12-07 22:12:00', 'Google LLC', '38.00881 -122.11746'),
(135, '188.172.108.127', 'Tirana', 'Albania', 'Europe', '2020-12-08 07:12:25', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(136, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-08 10:12:00', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(137, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-08 15:12:24', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(138, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-08 15:12:08', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(139, '3.15.13.253', 'Columbus', 'United States', 'North America', '2020-12-09 06:12:30', 'Amazon.com', '39.96118 -82.99879'),
(140, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-09 10:12:59', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(141, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-09 13:12:01', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(142, '184.160.18.121', 'Montreal', 'Canada', 'North America', '2020-12-09 16:12:51', 'Videotron Ltee', '45.50884 -73.58781'),
(143, '79.98.113.17', 'Vlore', 'Albania', 'Europe', '2020-12-09 22:12:04', 'Nisatel LTD', '40.4686 19.48318'),
(144, '79.98.113.17', 'Vlore', 'Albania', 'Europe', '2020-12-09 22:12:17', 'Nisatel LTD', '40.4686 19.48318'),
(145, '79.98.112.7', 'Shijak', 'Albania', 'Europe', '2020-12-11 23:12:42', 'Nisatel LTD', '41.34556 19.56722'),
(146, '217.73.129.38', 'Elbasan', 'Albania', 'Europe', '2020-12-12 21:12:45', 'Tirana, Albania', '41.1125 20.08222'),
(147, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-14 11:12:28', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(148, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-14 23:12:30', 'Google LLC', '38.00881 -122.11746'),
(149, '151.56.201.145', 'Andria', 'Italy', 'Europe', '2020-12-15 12:12:41', 'WIND Telecomunicazioni S.p.A', '41.23117 16.29797'),
(150, '151.56.201.145', 'Andria', 'Italy', 'Europe', '2020-12-15 12:12:06', 'WIND Telecomunicazioni S.p.A', '41.23117 16.29797'),
(151, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-15 20:12:28', 'Google LLC', '38.00881 -122.11746'),
(152, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-15 22:12:11', 'Google LLC', '38.00881 -122.11746'),
(153, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-16 05:12:36', 'Google LLC', '38.00881 -122.11746'),
(154, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-16 11:12:33', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(155, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-16 11:12:43', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(156, '79.98.113.4', 'Vlore', 'Albania', 'Europe', '2020-12-16 18:12:29', 'Nisatel LTD', '40.4686 19.48318'),
(157, '201.147.204.85', 'Mexico City', 'Mexico', 'North America', '2020-12-16 19:12:14', 'Uninet S.A. de C.V.', '19.42847 -99.12766'),
(158, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-16 21:12:50', 'Google LLC', '38.00881 -122.11746'),
(159, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-17 19:12:25', 'Google LLC', '38.00881 -122.11746'),
(160, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-18 01:12:32', 'Google LLC', '38.00881 -122.11746'),
(161, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-18 08:12:12', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(162, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-18 08:12:00', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(163, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-18 08:12:10', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(164, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-18 08:12:12', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(165, '178.149.72.73', 'Nis', 'Serbia', 'Europe', '2020-12-18 15:12:50', 'Serbia BroadBand-Srpske Kablovske mreze d.o.o.', '43.32472 21.90333'),
(166, '79.98.114.4', 'Vlore', 'Albania', 'Europe', '2020-12-20 20:12:06', 'Nisatel LTD', '40.4686 19.48318'),
(167, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-20 22:12:37', 'Google LLC', '38.00881 -122.11746'),
(168, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 08:12:14', 'Google LLC', '38.00881 -122.11746'),
(169, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 11:12:20', 'Google LLC', '38.00881 -122.11746'),
(170, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 12:12:45', 'Google LLC', '38.00881 -122.11746'),
(171, '172.223.49.80', 'Ashland', 'United States', 'North America', '2020-12-21 13:12:17', 'Charter Communications', '33.27373 -85.83607'),
(172, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-21 14:12:14', 'Google LLC', '38.00881 -122.11746'),
(173, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 17:12:24', 'Google LLC', '38.00881 -122.11746'),
(174, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-21 17:12:43', 'Google LLC', '38.00881 -122.11746'),
(175, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 20:12:52', 'Google LLC', '38.00881 -122.11746'),
(176, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 20:12:12', 'Google LLC', '38.00881 -122.11746'),
(177, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-21 23:12:58', 'Google LLC', '38.00881 -122.11746'),
(178, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 03:12:32', 'Google LLC', '38.00881 -122.11746'),
(179, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 08:12:53', 'Google LLC', '38.00881 -122.11746'),
(180, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 08:12:34', 'Google LLC', '38.00881 -122.11746'),
(181, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-22 12:12:36', 'Google LLC', '38.00881 -122.11746'),
(182, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 12:12:09', 'Google LLC', '38.00881 -122.11746'),
(183, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 16:12:29', 'Google LLC', '38.00881 -122.11746'),
(184, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 17:12:56', 'Google LLC', '38.00881 -122.11746'),
(185, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 17:12:26', 'Google LLC', '38.00881 -122.11746'),
(186, '79.98.113.7', 'Vlore', 'Albania', 'Europe', '2020-12-22 21:12:48', 'Nisatel LTD', '40.4686 19.48318'),
(187, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 22:12:53', 'Google LLC', '38.00881 -122.11746'),
(188, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-22 22:12:22', 'Google LLC', '38.00881 -122.11746'),
(189, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 02:12:40', 'Google LLC', '38.00881 -122.11746'),
(190, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-23 02:12:09', 'Google LLC', '38.00881 -122.11746'),
(191, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 02:12:47', 'Google LLC', '38.00881 -122.11746'),
(192, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-23 07:12:45', 'Google LLC', '38.00881 -122.11746'),
(193, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 07:12:11', 'Google LLC', '38.00881 -122.11746'),
(194, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-12-23 08:12:50', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(195, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 13:12:48', 'Google LLC', '38.00881 -122.11746'),
(196, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 13:12:27', 'Google LLC', '38.00881 -122.11746'),
(197, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-23 13:12:44', 'Google LLC', '38.00881 -122.11746'),
(198, '46.252.46.79', 'Tirana', 'Albania', 'Europe', '2020-12-23 13:12:33', 'Tirana, Albania', '41.3275 19.81889'),
(199, '54.88.91.91', 'Ashburn', 'United States', 'North America', '2020-12-23 15:12:49', 'Amazon Technologies Inc.', '39.04372 -77.48749'),
(200, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-23 17:12:53', 'Google LLC', '38.00881 -122.11746'),
(201, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-23 17:12:03', 'Google LLC', '38.00881 -122.11746'),
(202, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 22:12:58', 'Google LLC', '38.00881 -122.11746'),
(203, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-23 22:12:07', 'Google LLC', '38.00881 -122.11746'),
(204, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-23 22:12:45', 'Google LLC', '38.00881 -122.11746'),
(205, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-24 02:12:38', 'Google LLC', '38.00881 -122.11746'),
(206, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-24 02:12:39', 'Google LLC', '38.00881 -122.11746'),
(207, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 07:12:16', 'Google LLC', '38.00881 -122.11746'),
(208, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-24 07:12:17', 'Google LLC', '38.00881 -122.11746'),
(209, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 07:12:52', 'Google LLC', '38.00881 -122.11746'),
(210, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 11:12:17', 'Google LLC', '38.00881 -122.11746'),
(211, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-24 11:12:20', 'Google LLC', '38.00881 -122.11746'),
(212, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 17:12:12', 'Google LLC', '38.00881 -122.11746'),
(213, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 17:12:26', 'Google LLC', '38.00881 -122.11746'),
(214, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 17:12:06', 'Google LLC', '38.00881 -122.11746'),
(215, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-24 17:12:35', 'Google LLC', '38.00881 -122.11746'),
(216, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-24 21:12:08', 'Google LLC', '38.00881 -122.11746'),
(217, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-24 21:12:08', 'Google LLC', '38.00881 -122.11746'),
(218, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 02:12:44', 'Google LLC', '38.00881 -122.11746'),
(219, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-25 02:12:50', 'Google LLC', '38.00881 -122.11746'),
(220, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 02:12:26', 'Google LLC', '38.00881 -122.11746'),
(221, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 06:12:25', 'Google LLC', '38.00881 -122.11746'),
(222, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-25 06:12:25', 'Google LLC', '38.00881 -122.11746'),
(223, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-25 11:12:22', 'Google LLC', '38.00881 -122.11746'),
(224, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 11:12:24', 'Google LLC', '38.00881 -122.11746'),
(225, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 11:12:31', 'Google LLC', '38.00881 -122.11746'),
(226, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-25 15:12:01', 'Google LLC', '38.00881 -122.11746'),
(227, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 15:12:01', 'Google LLC', '38.00881 -122.11746'),
(228, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 20:12:46', 'Google LLC', '38.00881 -122.11746'),
(229, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-25 20:12:47', 'Google LLC', '38.00881 -122.11746'),
(230, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-25 20:12:03', 'Google LLC', '38.00881 -122.11746'),
(231, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-26 00:12:54', 'Google LLC', '38.00881 -122.11746'),
(232, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-26 00:12:54', 'Google LLC', '38.00881 -122.11746'),
(233, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-26 11:12:54', 'Google LLC', '38.00881 -122.11746'),
(234, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-26 11:12:05', 'Google LLC', '38.00881 -122.11746'),
(235, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-26 11:12:30', 'Google LLC', '38.00881 -122.11746'),
(236, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-26 11:12:30', 'Google LLC', '38.00881 -122.11746'),
(237, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-26 11:12:45', 'Google LLC', '38.00881 -122.11746'),
(238, '79.98.114.17', 'Vlore', 'Albania', 'Europe', '2020-12-26 18:12:11', 'Nisatel LTD', '40.4686 19.48318'),
(239, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-26 20:12:55', 'Google LLC', '38.00881 -122.11746'),
(240, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-26 21:12:11', 'Google LLC', '38.00881 -122.11746'),
(241, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-26 21:12:23', 'Google LLC', '38.00881 -122.11746'),
(242, '66.249.66.199', 'Mountain View', 'United States', 'North America', '2020-12-26 21:12:32', 'Google LLC', '38.00881 -122.11746'),
(243, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-26 21:12:08', 'Google LLC', '38.00881 -122.11746'),
(244, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 07:12:27', 'Google LLC', '38.00881 -122.11746'),
(245, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 07:12:46', 'Google LLC', '38.00881 -122.11746'),
(246, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 07:12:13', 'Google LLC', '38.00881 -122.11746'),
(247, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 07:12:47', 'Google LLC', '38.00881 -122.11746'),
(248, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-27 08:12:09', 'Google LLC', '38.00881 -122.11746'),
(249, '217.73.129.38', 'Elbasan', 'Albania', 'Europe', '2020-12-27 10:12:03', 'Tirana, Albania', '41.1125 20.08222'),
(250, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 18:12:08', 'Google LLC', '38.00881 -122.11746'),
(251, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 18:12:17', 'Google LLC', '38.00881 -122.11746'),
(252, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 18:12:23', 'Google LLC', '38.00881 -122.11746'),
(253, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 18:12:23', 'Google LLC', '38.00881 -122.11746'),
(254, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-27 18:12:48', 'Google LLC', '38.00881 -122.11746'),
(255, '66.249.66.218', 'Mountain View', 'United States', 'North America', '2020-12-28 05:12:00', 'Google LLC', '38.00881 -122.11746'),
(256, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 05:12:09', 'Google LLC', '38.00881 -122.11746'),
(257, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 05:12:09', 'Google LLC', '38.00881 -122.11746'),
(258, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 05:12:11', 'Google LLC', '38.00881 -122.11746'),
(259, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 05:12:32', 'Google LLC', '38.00881 -122.11746'),
(260, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-28 14:12:08', 'Google LLC', '38.00881 -122.11746'),
(261, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 14:12:10', 'Google LLC', '38.00881 -122.11746'),
(262, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 14:12:12', 'Google LLC', '38.00881 -122.11746'),
(263, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-28 14:12:17', 'Google LLC', '38.00881 -122.11746'),
(264, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-28 16:12:07', 'Google LLC', '38.00881 -122.11746'),
(265, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 18:12:11', 'Google LLC', '38.00881 -122.11746'),
(266, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-28 18:12:18', 'Google LLC', '38.00881 -122.11746'),
(267, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 00:12:13', 'Google LLC', '38.00881 -122.11746'),
(268, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 00:12:28', 'Google LLC', '38.00881 -122.11746'),
(269, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 00:12:37', 'Google LLC', '38.00881 -122.11746'),
(270, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 01:12:16', 'Google LLC', '38.00881 -122.11746'),
(271, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 03:12:54', 'Google LLC', '38.00881 -122.11746'),
(272, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 03:12:23', 'Google LLC', '38.00881 -122.11746'),
(273, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 09:12:38', 'Google LLC', '38.00881 -122.11746'),
(274, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 09:12:45', 'Google LLC', '38.00881 -122.11746'),
(275, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 09:12:54', 'Google LLC', '38.00881 -122.11746'),
(276, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 10:12:33', 'Google LLC', '38.00881 -122.11746'),
(277, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 13:12:26', 'Google LLC', '38.00881 -122.11746'),
(278, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 13:12:09', 'Google LLC', '38.00881 -122.11746'),
(279, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 20:12:06', 'Google LLC', '38.00881 -122.11746'),
(280, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 20:12:28', 'Google LLC', '38.00881 -122.11746'),
(281, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 20:12:56', 'Google LLC', '38.00881 -122.11746'),
(282, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-29 23:12:11', 'Google LLC', '38.00881 -122.11746'),
(283, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-29 23:12:24', 'Google LLC', '38.00881 -122.11746'),
(284, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-30 01:12:47', 'Google LLC', '38.00881 -122.11746'),
(285, '80.110.102.58', 'Vienna', 'Austria', 'Europe', '2020-12-30 09:12:46', 'UPC Austria', '48.20849 16.37208'),
(286, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2020-12-30 11:12:18', 'Google LLC', '38.00881 -122.11746'),
(287, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2020-12-30 18:12:49', 'Google LLC', '38.00881 -122.11746'),
(288, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-30 18:12:06', 'Google LLC', '38.00881 -122.11746'),
(289, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-30 18:12:23', 'Google LLC', '38.00881 -122.11746'),
(290, '79.98.114.16', 'Vlore', 'Albania', 'Europe', '2020-12-30 20:12:54', 'Nisatel LTD', '40.4686 19.48318'),
(291, '66.249.66.216', 'Mountain View', 'United States', 'North America', '2020-12-30 21:12:07', 'Google LLC', '38.00881 -122.11746'),
(292, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2020-12-31 01:12:09', 'Google LLC', '38.00881 -122.11746'),
(293, '3.138.134.28', 'Columbus', 'United States', 'North America', '2020-12-31 14:12:59', 'Amazon.com', '39.96118 -82.99879'),
(294, '79.98.114.6', 'Vlore', 'Albania', 'Europe', '2020-12-31 19:12:31', 'Nisatel LTD', '40.4686 19.48318'),
(295, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-01 04:01:02', 'Google LLC', '38.00881 -122.11746'),
(296, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-01 11:01:03', 'Google LLC', '38.00881 -122.11746'),
(297, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-02 02:01:54', 'Google LLC', '38.00881 -122.11746'),
(298, '217.73.129.38', 'Elbasan', 'Albania', 'Europe', '2021-01-02 11:01:23', 'Tirana, Albania', '41.1125 20.08222'),
(299, '205.169.39.141', 'Seattle', 'United States', 'North America', '2021-01-02 13:01:06', 'CenturyLink Communications, LLC', '47.60621 -122.33207'),
(300, '205.169.39.27', 'Seattle', 'United States', 'North America', '2021-01-02 13:01:49', 'CenturyLink Communications, LLC', '47.60621 -122.33207'),
(301, '54.38.152.16', 'Limburg an der Lahn', 'Germany', 'Europe', '2021-01-02 14:01:26', 'OVH SAS', '50.3836 8.0503'),
(302, '44.234.34.119', 'Portland', 'United States', 'North America', '2021-01-03 06:01:58', 'Amazon.com', '45.52345 -122.67621'),
(303, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-04 11:01:28', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(304, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-04 12:01:40', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(305, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-04 14:01:59', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(306, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-04 15:01:40', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(307, '188.172.108.127', 'Tirana', 'Albania', 'Europe', '2021-01-06 07:01:57', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(308, '188.172.108.127', 'Tirana', 'Albania', 'Europe', '2021-01-06 07:01:40', 'Vodafone Albania Sh.A.', '41.3275 19.81889'),
(309, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-06 08:01:37', 'Google LLC', '38.00881 -122.11746'),
(310, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-06 08:01:42', 'Google LLC', '38.00881 -122.11746'),
(311, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-06 08:01:57', 'Google LLC', '38.00881 -122.11746'),
(312, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-06 11:01:09', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(313, '66.249.66.33', 'Mountain View', 'United States', 'North America', '2021-01-06 11:01:30', 'Google LLC', '38.00881 -122.11746'),
(314, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-06 12:01:21', 'Google LLC', '38.00881 -122.11746'),
(315, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-06 12:01:18', 'Google LLC', '38.00881 -122.11746'),
(316, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:45', 'Google LLC', '38.00881 -122.11746'),
(317, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:51', 'Google LLC', '38.00881 -122.11746'),
(318, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:55', 'Google LLC', '38.00881 -122.11746'),
(319, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:59', 'Google LLC', '38.00881 -122.11746'),
(320, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:31', 'Google LLC', '38.00881 -122.11746'),
(321, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 08:01:43', 'Google LLC', '38.00881 -122.11746'),
(322, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 12:01:00', 'Google LLC', '38.00881 -122.11746'),
(323, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 12:01:48', 'Google LLC', '38.00881 -122.11746'),
(324, '2.47.34.130', 'Ivrea', 'Italy', 'Europe', '2021-01-07 12:01:48', 'Vodafone Italia S.p.A.', '45.46723 7.87617'),
(325, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 22:01:04', 'Google LLC', '38.00881 -122.11746'),
(326, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-07 22:01:06', 'Google LLC', '38.00881 -122.11746'),
(327, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-07 22:01:07', 'Google LLC', '38.00881 -122.11746'),
(328, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-07 22:01:35', 'Google LLC', '38.00881 -122.11746'),
(329, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-07 22:01:24', 'Google LLC', '38.00881 -122.11746'),
(330, '66.249.66.33', 'Mountain View', 'United States', 'North America', '2021-01-08 03:01:35', 'Google LLC', '38.00881 -122.11746'),
(331, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-08 04:01:58', 'Google LLC', '38.00881 -122.11746'),
(332, '66.249.66.33', 'Mountain View', 'United States', 'North America', '2021-01-08 04:01:51', 'Google LLC', '38.00881 -122.11746'),
(333, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-08 09:01:21', 'Google LLC', '38.00881 -122.11746'),
(334, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-08 09:01:55', 'Google LLC', '38.00881 -122.11746'),
(335, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-08 10:01:52', 'Google LLC', '38.00881 -122.11746'),
(336, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-08 10:01:56', 'Google LLC', '38.00881 -122.11746'),
(337, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2021-01-08 11:01:14', 'VIVO Communications Sh p k', '43.77925 11.24626'),
(338, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-08 16:01:10', 'Google LLC', '38.00881 -122.11746'),
(339, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-08 16:01:44', 'Google LLC', '38.00881 -122.11746'),
(340, '66.249.66.33', 'Mountain View', 'United States', 'North America', '2021-01-08 16:01:28', 'Google LLC', '38.00881 -122.11746'),
(341, '79.98.112.19', 'Shijak', 'Albania', 'Europe', '2021-01-08 18:01:24', 'Nisatel LTD', '41.34556 19.56722'),
(342, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-10 21:01:16', 'Google LLC', '38.00881 -122.11746'),
(343, '66.249.66.195', 'Mountain View', 'United States', 'North America', '2021-01-10 21:01:27', 'Google LLC', '38.00881 -122.11746'),
(344, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-10 22:01:41', 'Google LLC', '38.00881 -122.11746'),
(345, '66.249.66.214', 'Mountain View', 'United States', 'North America', '2021-01-10 22:01:50', 'Google LLC', '38.00881 -122.11746'),
(346, '66.249.66.63', 'Mountain View', 'United States', 'North America', '2021-01-10 23:01:44', 'Google LLC', '38.00881 -122.11746'),
(347, '185.66.128.246', 'Lezhe', 'Albania', 'Europe', '2021-01-11 08:01:46', 'Nisatel LTD', '41.78361 19.64361'),
(348, '185.66.128.246', 'Lezhe', 'Albania', 'Europe', '2021-01-11 10:01:19', 'Nisatel LTD', '41.78361 19.64361'),
(349, '185.66.128.246', 'Lezhe', 'Albania', 'Europe', '2021-01-11 10:01:41', 'Nisatel LTD', '41.78361 19.64361'),
(350, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-12 15:01:58', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(351, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-12 16:01:06', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(352, '79.98.114.4', 'Vlore', 'Albania', 'Europe', '2021-01-12 21:01:48', 'Nisatel LTD', '40.4686 19.48318'),
(353, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-14 13:01:51', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(354, '87.66.101.222', 'Aubange', 'Belgium', 'Europe', '2021-01-15 10:01:59', 'Proximus NV', '49.56652 5.80492'),
(355, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-15 16:01:54', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(356, '188.172.109.88', 'Durres', 'Albania', 'Europe', '2021-01-16 21:01:53', 'Vodafone Albania Sh.A.', '41.32355 19.45469'),
(357, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2021-01-17 02:01:37', 'Google LLC', '38.00881 -122.11746'),
(358, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2021-01-17 02:01:11', 'Google LLC', '38.00881 -122.11746'),
(359, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2021-01-17 02:01:56', 'Google LLC', '38.00881 -122.11746'),
(360, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2021-01-17 03:01:39', 'Google LLC', '38.00881 -122.11746'),
(361, '66.249.64.193', 'Mountain View', 'United States', 'North America', '2021-01-17 23:01:37', 'Google LLC', '38.00881 -122.11746'),
(362, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2021-01-18 10:01:50', 'Google LLC', '38.00881 -122.11746'),
(363, '66.249.64.86', 'Mountain View', 'United States', 'North America', '2021-01-18 16:01:04', 'Google LLC', '38.00881 -122.11746'),
(364, '66.249.64.73', 'Mountain View', 'United States', 'North America', '2021-01-18 18:01:39', 'Google LLC', '38.00881 -122.11746'),
(365, '66.249.64.86', 'Mountain View', 'United States', 'North America', '2021-01-19 08:01:32', 'Google LLC', '38.00881 -122.11746'),
(366, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-19 15:01:29', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(367, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-19 15:01:03', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(368, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-20 12:01:11', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(369, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-20 12:01:25', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(370, '66.249.64.85', 'Mountain View', 'United States', 'North America', '2021-01-20 14:01:44', 'Google LLC', '38.00881 -122.11746'),
(371, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2021-01-20 20:01:07', 'Nisatel LTD', '40.4686 19.48318'),
(372, '49.230.104.249', 'Amphoe Phra Pradaeng', 'Thailand', 'Asia', '2021-01-21 04:01:52', 'Advance Wireless Network', '13.65855 100.53362'),
(373, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 10:01:00', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(374, '151.72.111.4', 'Bari', 'Italy', 'Europe', '2021-01-21 11:01:35', 'WIND Telecomunicazioni S.p.A', '41.12066 16.86982'),
(375, '151.72.111.4', 'Bari', 'Italy', 'Europe', '2021-01-21 12:01:55', 'WIND Telecomunicazioni S.p.A', '41.12066 16.86982'),
(376, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 12:01:14', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(377, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 12:01:05', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(378, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 13:01:22', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(379, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 13:01:37', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(380, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 13:01:12', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(381, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-21 13:01:53', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(382, '185.49.25.178', 'Durres', 'Albania', 'Europe', '2021-01-22 09:01:23', 'VIVO Communications Sh p k', '41.32355 19.45469'),
(383, '151.45.204.155', 'Barletta', 'Italy', 'Europe', '2021-01-22 11:01:31', 'WIND Telecomunicazioni S.p.A', '41.31429 16.28165'),
(384, '151.45.204.155', 'Barletta', 'Italy', 'Europe', '2021-01-22 11:01:45', 'WIND Telecomunicazioni S.p.A', '41.31429 16.28165'),
(385, '151.45.204.155', 'Barletta', 'Italy', 'Europe', '2021-01-22 11:01:49', 'WIND Telecomunicazioni S.p.A', '41.31429 16.28165');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `trackpeople`
--
ALTER TABLE `trackpeople`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `trackpeople`
--
ALTER TABLE `trackpeople`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
