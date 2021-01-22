-- --------------------------------------------------------
-- Host:                         81.31.151.15
-- Server version:               10.3.25-MariaDB-log - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for interna5_savecom
CREATE DATABASE IF NOT EXISTS `interna5_savecom` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `interna5_savecom`;

-- Dumping structure for table interna5_savecom.person
CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(50) DEFAULT NULL,
  `person_subname` varchar(50) DEFAULT NULL,
  `person_password` varchar(50) DEFAULT NULL,
  `person_username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table interna5_savecom.person: ~0 rows (approximately)
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` (`person_id`, `person_name`, `person_subname`, `person_password`, `person_username`) VALUES
	(1, 'Eri', 'Musa', 'macklemore808', 'rei.etrc@gmail.com');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;

-- Dumping structure for table interna5_savecom.portofolio
CREATE TABLE IF NOT EXISTS `portofolio` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` text DEFAULT NULL,
  `project_tools` text DEFAULT NULL,
  `img_one` varchar(50) DEFAULT NULL,
  `img_two` varchar(50) DEFAULT NULL,
  `project_desc` longtext DEFAULT NULL,
  `project_category` varchar(50) DEFAULT NULL,
  `project_link` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_post`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table interna5_savecom.portofolio: ~13 rows (approximately)
/*!40000 ALTER TABLE `portofolio` DISABLE KEYS */;
INSERT INTO `portofolio` (`id_post`, `project_name`, `project_tools`, `img_one`, `img_two`, `project_desc`, `project_category`, `project_link`, `user_id`) VALUES
	(1, 'Cruscotto Di Controllo Aziendale', 'PHP , SQL , JAVASCRIPT ,BOOTSTRAP , HTML5 , CSS3 ,JQUERY', '1604485494.jpg', '1604485494135.jpg', ' \nCruscotto di controllo the first and only cloud management control software based on the Balanced Scorecard that measures the health and business continuity, essential for the auditor and the entrepreneur, and complies with the requirements of art. 2086 2nd paragraph of the Italian Civil Code, art. 14 paragraph 1 of Legislative Decree 14/2019 and ISA 570 and 210', 'Web Development Software', 'https://www.cruscottodicontrollo.it/', 1),
	(2, 'CASCO CRM', 'PHP , AJAX ,JQUERY,BOOTSTRAP ,JAVASCRIPT ', '1604476263.jpg', '1604476263135.jpg', 'CASCO is a management system of a company`s employees where they enter enter and register the work they have done  and regarding the tipology of work are asked to compleate specific  filds. On management  side you can se reports of every kind  for a specific  employer,team , company or industry  they have registered , the reports are in datas and graphics  also there are reports coming  and in  the emails  witch are  everydays  , one time of week  to see what point is the work you have done .', 'Web Development Software', 'https://libra.cruscottostudio.it/', 1),
	(3, 'My Personal Website', 'REACTJS ,JAVASCRIPT ,PHP', '1604487462.jpg', '1604487462135.jpg', 'This is my personal website compleatly  constructed  with react js  where  is displayed  all my personal datas projects and more.. Also  here is a dashboard  where i can make all the post dinamicy  and more management .', 'Web Development Software', 'https://dilaver-musa.com/', 1),
	(4, 'Contract  Management CRM', 'PHP, SQL , AJAX, JAVASCRIPT ,BOOTSTRAP ', '1604480807.jpg', '1604480807135.jpg', 'This software the owners  of a specific  business  can keep all the datas regarding  his contracts  made with the other  business`s , on this  CRM allows  you to keep your payments  you have received  , expired  and they witch are cooming, also ther are coupled othe other repoerts like  event participation , gifts sended  , birthdays coming  ,clients activities, etc...', 'Web Development Software', 'https://gestionale.cruscottodicontrollo.it/', 1),
	(5, 'Educazione Cruscoto di controllo ', 'JAVASCRIPT , JQUERY , AJAX , PHP , SQL BOOSTRAP', '1604481381.jpg', '1604481381135.jpg', 'This software a course  CRM for the users who have buyed Crusscotto Di Controllo witch help them to understand  better the functionality of the software and also how to keep ther business  up and healthy.', 'Web Development Software', 'https://education.cruscottodicontrollo.it/', 1),
	(6, 'Salva Commercialista', 'PHP , SQL , JAVASCRIPT  , BOOTSTRAP, AJAX', '1604482885.jpg', '1604482885135.jpg', 'Thi is a free demo software  of  one of the topologies  of Cruscotto Di Controllo where the client and register for free and use in general same of the main software tools  .', 'Web Development Software', 'https://salvacommercialista.cruscottodicontrollo.it/', 1),
	(7, 'Mappa Strategica', 'PHP , SQL , JQUERY, JAVASCRIPT , BOOTSTRAP, HTML5 ,CSS3', '1604484225.jpg', '1604484225135.jpg', 'This software help the client  to generate a map where he can work  more easily on the point and the targets  he want to go .', 'Web Development Software', 'https://www.mappastrategica.it/dashboard/', 1),
	(8, 'Commecialisti Chat ', 'AJAX , PHP , JAVASCRIPT ,JQUERY,SQL , BOOTSTRAP,CSS3, HTML5', '1604484909.jpg', '1604484909135.jpg', 'On this software the clients are registered and they  can communicate  with each other  the admin or the client  can make  topics by ther own and  everyone can be joined by  ther self or by the person ho made that topic.', 'Web Development Software', 'https://communication.consulentiaziendaliditalia.it/', 1),
	(10, 'Clima Aziendale', 'PHP , SQL , BOOSTRAP , JQUERY', '1604486040.jpg', '1604486040135.jpg', 'This is a software like a survey where the  administrator create a couple of questions  and  his employer`s can anter in ther accounts and answers to  the questions not everyday but in in specific  days .', 'Web Development Software', 'https://climaaziendale.it', 1),
	(11, 'Agile Survey', 'PHP , SQL , BOOTSTRAP ,JQUERY, ', '1604486796.jpg', '1604486796135.jpg', 'This project is a survey where the client enter and  answer  to same question and at the end of this survey it generates  a graphic  witch tell him where his business is located  economically .', 'Web Development Software', 'https://controlloaziendale.it/agile-free-questionario/', 1),
	(12, 'Indici Ocri', 'Javascript  PHP AJAX', '1604328449.jpg', '1604328449135.jpg', 'This is a demo software of main software Crusccotto Di Controllo which includes part of the actions and those in general terms.', 'Web Development Software', 'https://www.indiciocri.it/', 1),
	(15, 'Cress Capital', 'PHP , JAVASCRIPT ,SQL ,BOOSTRAP ', '1604487074.png', '1604487074135.png', 'Cress Capital il a website for a call center company   here is  included  a presentation  pages with book also an dashboard where his client`s  ther datas witch are working for this business. ', 'Web Development Software', 'https://cress-capital.com/', 1),
	(16, 'Controllo Iva', 'PHP,SQL', '1604479972.jpg', '1604479972135.jpg', 'This is a software connected with the government  servers and controll with a specific data and show you how  that  industry is going .', 'Web Development Software', 'https://www.consulentiaziendaliditalia.it/checkpiva', 1);
/*!40000 ALTER TABLE `portofolio` ENABLE KEYS */;

-- Dumping structure for table interna5_savecom.trackpeople
CREATE TABLE IF NOT EXISTS `trackpeople` (
  `track_id` int(11) NOT NULL AUTO_INCREMENT,
  `track_ip` varchar(100) DEFAULT NULL,
  `track_city` varchar(100) DEFAULT NULL,
  `track_country` varchar(100) DEFAULT NULL,
  `track_continent` varchar(100) DEFAULT NULL,
  `track_time` datetime DEFAULT NULL,
  `track_net` text DEFAULT NULL,
  `track_position` text DEFAULT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table interna5_savecom.trackpeople: ~26 rows (approximately)
/*!40000 ALTER TABLE `trackpeople` DISABLE KEYS */;
INSERT INTO `trackpeople` (`track_id`, `track_ip`, `track_city`, `track_country`, `track_continent`, `track_time`, `track_net`, `track_position`) VALUES
	(1, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:52', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(2, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:40', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(3, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:21', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(4, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:33', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(5, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:03', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(6, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:17', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(7, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:46', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(8, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:06', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(9, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:03', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(10, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:05', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(11, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:17', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(12, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:50', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(13, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:55', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(14, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 14:11:11', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(15, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-04 15:11:54', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(16, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-05 08:11:29', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(17, '185.49.25.178', 'Florence', 'Italy', 'Europe', '2020-11-06 10:11:53', 'VIVO Communications Sh p k', '43.77925 11.24626'),
	(18, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:03', 'Nisatel LTD', '40.4686 19.48318'),
	(19, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:11', 'Nisatel LTD', '40.4686 19.48318'),
	(20, '79.98.113.3', 'Vlore', 'Albania', 'Europe', '2020-11-07 20:11:49', 'Nisatel LTD', '40.4686 19.48318'),
	(21, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:31', 'Nisatel LTD', '40.4686 19.48318'),
	(22, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:49', 'Nisatel LTD', '40.4686 19.48318'),
	(23, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:09', 'Nisatel LTD', '40.4686 19.48318'),
	(24, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:12', 'Nisatel LTD', '40.4686 19.48318'),
	(25, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:12', 'Nisatel LTD', '40.4686 19.48318'),
	(26, '79.98.113.1', 'Vlore', 'Albania', 'Europe', '2020-11-08 15:11:37', 'Nisatel LTD', '40.4686 19.48318');
/*!40000 ALTER TABLE `trackpeople` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
