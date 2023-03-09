-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.48-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rtosystem
--

CREATE DATABASE IF NOT EXISTS rtosystem;
USE rtosystem;

--
-- Definition of table `cancelapplication`
--

DROP TABLE IF EXISTS `cancelapplication`;
CREATE TABLE `cancelapplication` (
  `cancelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cancelid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancelapplication`
--

/*!40000 ALTER TABLE `cancelapplication` DISABLE KEYS */;
INSERT INTO `cancelapplication` (`cancelid`,`user_name`,`reason`) VALUES 
 (1,'kavya','expiry'),
 (2,'latha','not interested'),
 (3,'deeksha','efd'),
 (4,'15','no');
/*!40000 ALTER TABLE `cancelapplication` ENABLE KEYS */;


--
-- Definition of table `ceasedvehicle`
--

DROP TABLE IF EXISTS `ceasedvehicle`;
CREATE TABLE `ceasedvehicle` (
  `ceasedvehicleid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `register_no` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_no` int(10) unsigned DEFAULT NULL,
  `vehicle_model` varchar(45) DEFAULT NULL,
  `vehicle_name` varchar(45) DEFAULT NULL,
  `vehicle_type` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `amount` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ceasedvehicleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ceasedvehicle`
--

/*!40000 ALTER TABLE `ceasedvehicle` DISABLE KEYS */;
INSERT INTO `ceasedvehicle` (`ceasedvehicleid`,`register_no`,`user_name`,`address`,`phone_no`,`vehicle_model`,`vehicle_name`,`vehicle_type`,`reason`,`amount`) VALUES 
 (1,'KA 4545','keerthi','ballalbagh',991626344,'2000','scorpio','Car','no Parking',10000),
 (2,'KA 8545','kavya','Lalbagh',991626345,'2000','zen car','Car','loan',40000),
 (3,'KA20M1234','megha','udupi',1234567777,'2015','i20','4 wheeler','NO PARKING',1500);
/*!40000 ALTER TABLE `ceasedvehicle` ENABLE KEYS */;


--
-- Definition of table `drivinglicense`
--

DROP TABLE IF EXISTS `drivinglicense`;
CREATE TABLE `drivinglicense` (
  `drivinglicenseid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `drivinglicenseno` varchar(60) DEFAULT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `dob` varchar(60) DEFAULT NULL,
  `paddress` varchar(60) DEFAULT NULL,
  `blood` varchar(60) DEFAULT NULL,
  `valid_from` varchar(45) DEFAULT NULL,
  `valid_to` varchar(45) DEFAULT NULL,
  `issue_date` varchar(45) DEFAULT NULL,
  `submission_date` varchar(45) DEFAULT NULL,
  `image` varchar(600) DEFAULT NULL,
  `license` varchar(60) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`drivinglicenseid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivinglicense`
--

/*!40000 ALTER TABLE `drivinglicense` DISABLE KEYS */;
INSERT INTO `drivinglicense` (`drivinglicenseid`,`drivinglicenseno`,`user_name`,`dob`,`paddress`,`blood`,`valid_from`,`valid_to`,`issue_date`,`submission_date`,`image`,`license`,`Status`,`phone`,`license_no`) VALUES 
 (4,'DMA7879','latha','1980-02-05 00:00:00','urva store','AB positive','2017-02-14 00:00:00','2033-02-15 00:00:00','2017-02-08 00:00:00','2017-02-02 00:00:00','Untitled-1.jpg','(d)4 Wheel Car','Issued','874548552',NULL),
 (7,'DMA1212','pooja','6/13/1990 12:00:00 AM','THRA apt,urva,mangalore,575003','AB positive','2017-03-14','3/14/2032 12:00:00 AM','2017-03-14','2017-03-15','f0d98c10fddce2e1908b26b3c74d4cbb.jpg','(a)Motor Cycle without Gear','Issued','8745125445','11'),
 (8,'DMA1213','kalpana','2/8/1994 12:00:00 AM','RK APT,urva store','AB positive','2017-03-14','3/14/2032 12:00:00 AM','2017-03-14','2017-03-15','images (4).jpg','Motor Cycle without Gear','Issued','8945651245','12'),
 (9,'DMA1214','raj','2/13/1979 12:00:00 AM','KR APT,MANGALDEVI','AB positive','2002-01-01','1/1/2017 12:00:00 AM','2017-03-14','2017-03-15','images (9).jpg','Motor Cycle without Gear','Issued','8745124578','13'),
 (10,'DMA1215','ranveer','7/25/1989 12:00:00 AM','tiya apt,bendoor','AB positive','2017-03-21','3/21/2032 12:00:00 AM','2017-03-14','2017-03-15','images (6).jpg','Motor Cycle without Gear','Issued','8951844444','14'),
 (11,'DMA1215','kareena','6/30/1980 12:00:00 AM','yari apt,2nd floor,Mangalore','AB positive','2002-02-05','2/5/2017 12:00:00 AM','2017-03-14','2017-03-15','th (3).jpg','Motor Cycle without Gear','Issued','8951845454','15'),
 (12,'ADM1234','megha','1994-06-05 00:00:00','udupi','AB positive','2021-05-01','01/05/2036 12:00:00 AM','2021-05-08','2021-05-08','','(a)Motor Cycle without Gear','Issued','9874563210','21');
/*!40000 ALTER TABLE `drivinglicense` ENABLE KEYS */;


--
-- Definition of table `emission`
--

DROP TABLE IF EXISTS `emission`;
CREATE TABLE `emission` (
  `emission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `register_no` varchar(45) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  PRIMARY KEY (`emission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emission`
--

/*!40000 ALTER TABLE `emission` DISABLE KEYS */;
INSERT INTO `emission` (`emission_id`,`register_no`,`valid_from`,`valid_to`) VALUES 
 (6,'KA4545','2016-01-13 00:00:00','2017-01-13 00:00:00'),
 (7,'KA8585','2016-01-15 00:00:00','2017-01-15 00:00:00'),
 (8,'KA6565','2017-03-01 00:00:00','2018-03-01 00:00:00'),
 (9,'KA20M1233','2021-05-31 00:00:00','2021-07-02 00:00:00');
/*!40000 ALTER TABLE `emission` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`,`name`,`phone`,`date`,`message`) VALUES 
 (2,'KAVYA','894565412','3/24/2017 12:55:34 PM','GOOD SERVICE'),
 (3,'KARTHIK','8951844444','3/24/2017 12:56:38 PM','Good Website Services'),
 (4,'Venu','8951844444','3/24/2017 12:57:36 PM','Good Website Services,thanku'),
 (5,'Megha','98747898747','31/05/2021 11:46:49 AM','good service');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `learnerlicense`
--

DROP TABLE IF EXISTS `learnerlicense`;
CREATE TABLE `learnerlicense` (
  `learnerlicenseid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) DEFAULT NULL,
  `gender` varchar(60) DEFAULT NULL,
  `dob` varchar(60) DEFAULT NULL,
  `pob` varchar(60) DEFAULT NULL,
  `relation_name` varchar(60) DEFAULT NULL,
  `relation_type` varchar(60) DEFAULT NULL,
  `license` varchar(60) DEFAULT NULL,
  `paddress` varchar(60) DEFAULT NULL,
  `taddress` varchar(60) DEFAULT NULL,
  `education` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `phone_no` varchar(60) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `blood` varchar(60) DEFAULT NULL,
  `fitness` varchar(60) DEFAULT NULL,
  `fees` varchar(60) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  `image` varchar(600) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `card` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`learnerlicenseid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `learnerlicense`
--

/*!40000 ALTER TABLE `learnerlicense` DISABLE KEYS */;
INSERT INTO `learnerlicense` (`learnerlicenseid`,`user_name`,`gender`,`dob`,`pob`,`relation_name`,`relation_type`,`license`,`paddress`,`taddress`,`education`,`city`,`phone_no`,`email`,`blood`,`fitness`,`fees`,`date`,`image`,`Status`,`age`,`card`) VALUES 
 (11,'pooja','Female','6/13/1990 12:00:00 AM','mangalore','Latha','Mother',' Motor cycle without gear','THRA apt,urva,mangalore,575003','THRA apt,urva,mangalore,575003','BCOM','Mangalore','8745125445','pooja@gmail.com','O positive','Yes','Rs.500','3/24/2017 2:09:26 AM','f0d98c10fddce2e1908b26b3c74d4cbb.jpg','Approval','26','ds03122016_0001.jpg'),
 (13,'raj','Male','2/13/1979 12:00:00 AM','Bangalore','prakash','father',' Motor cycle without gear','KR APT,MANGALDEVI','KR APT,MANGALDEVI','BAHRD','Mangalore','8745124578','raj@gmail.com','A positive','Yes','Rs.500','3/24/2017 2:14:31 AM','images (9).jpg','Approval','38','ds03122016_0001.jpg'),
 (14,'ranveer','Male','7/25/1989 12:00:00 AM','Bangalore','Kumar','father',' Wheel Car','tiya apt,bendoor','tiya apt,bendoor','BCOM','Mangalore','8951844444','RAN@GMAIL.COM','AB negative','Yes','Rs.500','3/24/2017 2:20:51 AM','images (6).jpg','Approval','26','ds03122016_0001.jpg'),
 (15,'kareena','Female','6/30/1980 12:00:00 AM','mangalore','lalitha','Mother',' Motor cycle without gear','yari apt,2nd floor,Mangalore','yari apt,2nd floor,Mangalore','Bca','Mangalore','8951845454','KAR@gmail.com','AB negative','Yes','Rs.500','3/24/2017 2:24:54 AM','th (3).jpg','Cancel','36','ds03122016_0001.jpg'),
 (16,'KAVYASHREE','Female','2/12/1996 12:00:00 AM','mangalore','Latha','Mother',' Wheel Car','KODIALBAIL,BALLALBAGH','KODIALBAIL,BALLALBAGH','BCOM','Mangalore','8951844444','Kavy012@gmail.com','B negative','Yes','Rs.500','3/24/2017 11:03:36 AM','images (3).jpg','Cancel','21','ds03122016_0001.jpg'),
 (19,'jenny','Female','11-06-1992 00:00:00','Mangalore','Latha','Mother',' Motor cycle with gear','ballalbagh','ballalbagh','degree','mangalore','8951844444','kavy012@gmail.com','A positive','Yes','Rs.500','02-04-2017 21:56:21','images (3).jpg','Approval\'Rejected','26','th.jpg'),
 (21,'megha','Female','1994-06-05 00:00:00','Udupi','shraval','brother',' Motor cycle without gear','udupi','udupi','mca','Udupi','9874563210','m@gmail.com','O negative','Yes','Rs.500','29/05/2021 9:59:34 AM','','Approval','20','');
/*!40000 ALTER TABLE `learnerlicense` ENABLE KEYS */;


--
-- Definition of table `locationmanager`
--

DROP TABLE IF EXISTS `locationmanager`;
CREATE TABLE `locationmanager` (
  `locationid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(40) NOT NULL,
  PRIMARY KEY (`locationid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locationmanager`
--

/*!40000 ALTER TABLE `locationmanager` DISABLE KEYS */;
INSERT INTO `locationmanager` (`locationid`,`location`) VALUES 
 (1,'KONCHADY'),
 (2,'LOHITH NAGAR'),
 (3,'SHAKTINAGAR'),
 (4,'URWA'),
 (5,'DEREBAIL'),
 (6,'BAJPE ROAD'),
 (7,'KUNTIKAN'),
 (8,'KODIALBAIL'),
 (9,'MAROLI'),
 (10,'ALAKE'),
 (11,'HAMPANKATTA'),
 (12,'PRASHANTH BAGH'),
 (13,'PRAGATHI COLONY'),
 (14,'DEVANAGARI'),
 (15,'KADRI'),
 (16,'BENDOOR'),
 (17,'ASHOK NAGAR');
/*!40000 ALTER TABLE `locationmanager` ENABLE KEYS */;


--
-- Definition of table `policemaster`
--

DROP TABLE IF EXISTS `policemaster`;
CREATE TABLE `policemaster` (
  `policemasterid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `police_name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `education` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`policemasterid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policemaster`
--

/*!40000 ALTER TABLE `policemaster` DISABLE KEYS */;
INSERT INTO `policemaster` (`policemasterid`,`police_name`,`designation`,`age`,`dob`,`address`,`city`,`phone_no`,`education`) VALUES 
 (1,'Keerthiraj','traffic police','25','1980-02-02 00:00:00','gantore 1 cross nilaya','bangalore','89431354','2 PUC'),
 (3,'vivek','traffic Police','30','1986-04-09 00:00:00','urva store,mangalore','mangalore','9916263454','2nd PUC'),
 (4,'Kiran','Traffic Police','31','1985-02-19 00:00:00','kodialbail,mangalore','mangalore','8951844444','2nd PUC'),
 (5,'karan singh','assistant Traffic Police','25','1990-02-12 00:00:00','adya apt 1st Floor,kadri','mangalore','8951844444','Degree'),
 (6,'kirthan','traffic Police','28','1987-06-10 00:00:00','pooja apt,1st floor,boloor','mangalore','7911004545','bca'),
 (7,'kashish','traffic Police','25','1997-06-18 00:00:00','raj apt,2nd Floor,urva store','mangalore','8951844444','Bcom'),
 (8,'karthik','traffic Police','26','1990-12-19 00:00:00','Gandhi nagar 1st cross road,birla apt','Mangalore','9916263454','BCOM'),
 (9,'kishan','traffic Police','28','1990-12-19 00:00:00','birla apt,2nd Floor urva .','Mangalore','9916263454','BCOM'),
 (10,'kitto','traffic Police','24','1992-03-10 00:00:00','kanaka apt,2nd Floor near urva market','Mangalore','9916263454','2nd PUC'),
 (11,'ajay','traffic Police','28','1988-08-17 00:00:00','kiranapt,7nd Floor near urva market','Mangalore','7911004545','2nd PUC'),
 (12,'aftaz','traffic Police','28','1988-08-26 00:00:00','kodialbail mangalore','Mangalore','8951844444','diploma'),
 (13,'ranveer','traffic Police','30','1986-12-25 00:00:00','divya apt,mangalore','Mangalore','9916263454','2nd PU'),
 (14,'ranvijay','traffic Police','27','1989-08-16 00:00:00','deepa apt,3 Floor,kodialbail','mangalore','8951844444','diploma'),
 (15,'sanjay','traffic Police','30','1987-11-10 00:00:00','deepa apt,4 Floor,kodialbail','mangalore','9916263454','diploma'),
 (16,'tharak','traffic Police','29','1986-07-17 00:00:00','divya apt,1st Floor,Lalabagh','mangalore','8951844444','BAHRD'),
 (17,'PRITHVI','traffic Police','32','1985-07-10 00:00:00','kodialbail,mangalore','mangalore','9916263454','BCA');
/*!40000 ALTER TABLE `policemaster` ENABLE KEYS */;


--
-- Definition of table `testpassedlist`
--

DROP TABLE IF EXISTS `testpassedlist`;
CREATE TABLE `testpassedlist` (
  `testpassedlist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `location_selection` varchar(45) DEFAULT NULL,
  `license` varchar(45) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `testedby` varchar(45) DEFAULT NULL,
  `license_no` varchar(45) DEFAULT NULL,
  `test` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`testpassedlist`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testpassedlist`
--

/*!40000 ALTER TABLE `testpassedlist` DISABLE KEYS */;
INSERT INTO `testpassedlist` (`testpassedlist`,`user_name`,`phone_no`,`location_selection`,`license`,`date`,`remarks`,`testedby`,`license_no`,`test`) VALUES 
 (2,'kavya','895417552','vamanjuru','(a) Motor cycle without gear','2017-01-03 00:00:00','null','raj','1','Fail'),
 (3,'kavyashree','89544663255','Vamanjuro','Written Test','13-4-2017','no','shankar','8','Pass'),
 (4,'pooja','8745125445','Vamanjuro','Written Test','3/27/2017','no','Shankar','11','Pass'),
 (5,'raj','8745124578','Vamanjuro','Oral Test','3/27/2017','no','Shankar','13','Pass'),
 (6,'kalpana','8945651245','BC road','Written Test','3/27/2017','no','Shankar','12','Pass'),
 (7,'ranveer','8951844444','Vamanjuro','Oral Test','3/27/2017','no','Shankar','14','Pass'),
 (8,'megha','9874563210','BC road','Written Test','6/10/2021','Passed','S','21','Pass');
/*!40000 ALTER TABLE `testpassedlist` ENABLE KEYS */;


--
-- Definition of table `testslot`
--

DROP TABLE IF EXISTS `testslot`;
CREATE TABLE `testslot` (
  `testslotid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `license_test` varchar(45) DEFAULT NULL,
  `location_selection` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `llicense_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`testslotid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testslot`
--

/*!40000 ALTER TABLE `testslot` DISABLE KEYS */;
INSERT INTO `testslot` (`testslotid`,`user_name`,`phone_no`,`license_test`,`location_selection`,`date`,`Status`,`llicense_no`) VALUES 
 (3,'kavyashree','89544663255','Written Test','Vamanjuro','6/12/2021','Pending','8'),
 (5,'pooja','8745125445','Written Test','Vamanjuro','3/27/2017','Booked','11'),
 (6,'kalpana','8945651245','Written Test','BC road','3/27/2017','Booked','12'),
 (7,'raj','8745124578','Oral Test','Vamanjuro','3/27/2017','Booked','13'),
 (8,'ranveer','8951844444','Oral Test','Vamanjuro','6/12/2021','Booked','14'),
 (9,'megha','9874563210','Written Test','BC road','6/10/2021','Booked','21');
/*!40000 ALTER TABLE `testslot` ENABLE KEYS */;


--
-- Definition of table `usercreation`
--

DROP TABLE IF EXISTS `usercreation`;
CREATE TABLE `usercreation` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `confirm_password` varchar(250) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercreation`
--

/*!40000 ALTER TABLE `usercreation` DISABLE KEYS */;
INSERT INTO `usercreation` (`userid`,`user_name`,`password`,`confirm_password`,`user_type`) VALUES 
 (10,'kalpana','MTIzNDU2Nzg=','kalpana111','User'),
 (11,'pooja','MTIzNDU2Nzg=','12345678','User'),
 (14,'kareena','MTIzNDU2Nzg=','12345678','User'),
 (15,'KAVYASHREE','MTIzNDU2Nzg=','12345678','Admin'),
 (16,'kiran','dHJhZmZpYzEyMw==','traffic111','Staff'),
 (18,'keerthiraj','dHJhZmZpYzEyMw==','keerthi111','Staff'),
 (19,'raj','MTIzNDU2Nzg=','12345678','User'),
 (20,'ranveer','MTIzNDU2Nzg=','12345678','Staff'),
 (21,'deepa','MTIzNDU2Nzg=','12345678','Traffic Police'),
 (22,'jenny','MTIzNDU2Nzg=','12345678','User'),
 (23,'megha','bWVnaGExMjM=','megha123','User'),
 (24,'Harish','MTIzNDU2Nzg=','12345678','Staff'),
 (25,'Harishh','MTIzNDU2Nzg=','12345678','Traffic Police');
/*!40000 ALTER TABLE `usercreation` ENABLE KEYS */;


--
-- Definition of table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
CREATE TABLE `userregistration` (
  `userregistrationid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `confirm` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userregistrationid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` (`userregistrationid`,`user_name`,`dob`,`address`,`phone_no`,`city`,`password`,`confirm`) VALUES 
 (1,'kavya','2017-02-01 00:00:00','ballalbagh','8951844444','mangalore',NULL,NULL),
 (3,'priya','1995-07-13 00:00:00','urva','8951844444','mangalore',NULL,NULL),
 (9,'kalpana','1994-02-08 00:00:00','RK APT,urva store','8945651245','mangalore','kalpana111','kalpana111'),
 (10,'pooja','1990-06-13 00:00:00','THRA apt,urva,mangalore,575003','8745125445','Mangalore','12345678','12345678'),
 (11,'raj','1989-02-13 00:00:00','KR APT,MANGALDEVI','8745124578','Mangalore','12345678','12345678'),
 (12,'ranveer','1989-07-25 00:00:00','tiya apt,bendoor','8951844444','Mangalore','12345678','12345678'),
 (13,'kareena','1980-07-30 00:00:00','yari apt,2nd floor,Mangalore','8951845454','Mangalore','12345678','12345678'),
 (14,'KAVYASHREE','1996-02-12 00:00:00','KODIALBAIL,BALLALBAGH','8951844444','Mangalore','12345678','12345678'),
 (15,'jenny','1992-06-11 00:00:00','ballalbagh','8951844444','mangalore','12345678','12345678'),
 (16,'megha','1994-06-05 00:00:00','udupi','9874563210','Udupi','megha123','megha123');
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;


--
-- Definition of table `vehicleregistration`
--

DROP TABLE IF EXISTS `vehicleregistration`;
CREATE TABLE `vehicleregistration` (
  `registerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `register_no` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `relation_name` varchar(45) DEFAULT NULL,
  `relation_type` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `paddress` varchar(45) DEFAULT NULL,
  `dealers_details` varchar(45) DEFAULT NULL,
  `motor_vehicle` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `makers_name` varchar(45) NOT NULL,
  `vehicle_name` varchar(45) NOT NULL,
  `type_of_vehicle` varchar(45) NOT NULL,
  `vehicle_color` varchar(45) DEFAULT NULL,
  `horse_power` varchar(45) DEFAULT NULL,
  `chasis_no` varchar(45) DEFAULT NULL,
  `seating` varchar(45) DEFAULT NULL,
  `fuel` varchar(45) DEFAULT NULL,
  `weigth` varchar(45) DEFAULT NULL,
  `particulars` varchar(45) DEFAULT NULL,
  `vehicleinsured` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`registerid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleregistration`
--

/*!40000 ALTER TABLE `vehicleregistration` DISABLE KEYS */;
INSERT INTO `vehicleregistration` (`registerid`,`register_no`,`name`,`relation_name`,`relation_type`,`age`,`dob`,`paddress`,`dealers_details`,`motor_vehicle`,`date`,`makers_name`,`vehicle_name`,`type_of_vehicle`,`vehicle_color`,`horse_power`,`chasis_no`,`seating`,`fuel`,`weigth`,`particulars`,`vehicleinsured`,`company_name`,`valid_from`,`valid_to`,`phone`) VALUES 
 (1,'KA4545','Keerthi','latha','mother','30','1986-05-21 00:00:00','ballalbagh','yamaha','New Vehicle','2015-08-02 00:00:00','Yamaha','scorpio','Car','white','5000','200','6','petrol','15','no','yes','LIC','2017-01-05 00:00:00','2030-01-05 00:00:00','8951844444'),
 (2,'KA8585','krithi','githa','Mother','30','1986-02-12 00:00:00','adya apt,urva','suzuki','New Vehicle','2016-09-10 00:00:00','Suzuki','4 Wheeler ','Car','white','2000','1023','5','diesel','150 kg','no','No','lic','2017-01-02 00:00:00','2027-01-02 00:00:00','8951844444'),
 (3,'KA6565','karthik','githa','Mother','30','1986-02-12 00:00:00','birla apt,2nd floor','suzuki','Ex-Army Vehicle','2010-02-02 00:00:00','Suzuki','4 Wheeler ','Car','white','2000','1023','5','diesel','150 kg','no','No','IDBI','2017-01-02 00:00:00','2027-01-02 00:00:00','8951844444'),
 (4,'KA20M1233','Meghaa','shraval','Brother','20','1990-06-05','udupi','Yamaha','New Vehicle','1994-05-01 00:00:00','hundai','i20','4 wheeler','white','5000','200','4','petrol','120','no','yes','LIC','2021-05-01 00:00:00','2028-05-01 00:00:00','1231234567');
/*!40000 ALTER TABLE `vehicleregistration` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
