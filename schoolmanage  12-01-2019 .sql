-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema schoolmanage
--

CREATE DATABASE IF NOT EXISTS schoolmanage;
USE schoolmanage;

--
-- Definition of table `academicyear`
--

DROP TABLE IF EXISTS `academicyear`;
CREATE TABLE `academicyear` (
  `yearid` int(11) NOT NULL auto_increment,
  `academicYear` varchar(255) default NULL,
  `yearStatus` varchar(255) default NULL,
  PRIMARY KEY  (`yearid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academicyear`
--

/*!40000 ALTER TABLE `academicyear` DISABLE KEYS */;
INSERT INTO `academicyear` (`yearid`,`academicYear`,`yearStatus`) VALUES 
 (1,'2019','primary'),
 (2,'2020','Primary'),
 (3,'2021','Primary'),
 (4,'2022','Primary'),
 (5,'2023','Primary'),
 (6,'2024','Primary'),
 (7,'2025','primary');
/*!40000 ALTER TABLE `academicyear` ENABLE KEYS */;


--
-- Definition of table `classname`
--

DROP TABLE IF EXISTS `classname`;
CREATE TABLE `classname` (
  `classid` int(11) NOT NULL auto_increment,
  `classname` varchar(255) default NULL,
  PRIMARY KEY  (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classname`
--

/*!40000 ALTER TABLE `classname` DISABLE KEYS */;
INSERT INTO `classname` (`classid`,`classname`) VALUES 
 (1,'One'),
 (2,'Two'),
 (3,'Three'),
 (4,'Four'),
 (5,'Five'),
 (6,'Six'),
 (7,'Seven'),
 (8,'Eight'),
 (9,'Nine'),
 (10,'Ten');
/*!40000 ALTER TABLE `classname` ENABLE KEYS */;


--
-- Definition of table `classroutine`
--

DROP TABLE IF EXISTS `classroutine`;
CREATE TABLE `classroutine` (
  `routineid` int(10) unsigned NOT NULL auto_increment,
  `tid` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `classid` int(10) unsigned NOT NULL,
  `secid` int(10) unsigned NOT NULL,
  `periodname` varchar(45) default NULL,
  `dayname` varchar(45) default NULL,
  `periodtime` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`routineid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroutine`
--

/*!40000 ALTER TABLE `classroutine` DISABLE KEYS */;
INSERT INTO `classroutine` (`routineid`,`tid`,`subid`,`classid`,`secid`,`periodname`,`dayname`,`periodtime`) VALUES 
 (11,3,2,1,5,'1st','Saturday','10:00 - 10:40'),
 (12,3,3,1,5,'3rd','Saturday','11:20-12:00'),
 (13,4,2,1,5,'2nd','Saturday','10:40-11:20'),
 (14,3,4,1,5,'4th','Saturday','12:00-12:40'),
 (15,3,1,2,5,'1st','Saturday','10:00 - 10:40'),
 (16,4,2,2,5,'2nd','Saturday','10:40-11:20'),
 (17,3,3,2,5,'3rd','Saturday','11:20-12:00'),
 (18,5,4,2,5,'4th','Saturday','12:00-12:40'),
 (19,4,1,3,5,'1st','Saturday','10:00-10:40'),
 (20,5,2,3,5,'2nd','Saturday','10:40-11:20'),
 (21,4,3,3,5,'3rd','Saturday','11:20-12:00'),
 (22,11,4,3,5,'4th','Saturday','12:00-12:40');
/*!40000 ALTER TABLE `classroutine` ENABLE KEYS */;


--
-- Definition of table `classsection`
--

DROP TABLE IF EXISTS `classsection`;
CREATE TABLE `classsection` (
  `secid` int(11) NOT NULL auto_increment,
  `classid` int(11) default NULL,
  `secname` varchar(255) default NULL,
  `secstatus` varchar(255) default NULL,
  PRIMARY KEY  (`secid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classsection`
--

/*!40000 ALTER TABLE `classsection` DISABLE KEYS */;
INSERT INTO `classsection` (`secid`,`classid`,`secname`,`secstatus`) VALUES 
 (5,1,'A','Runing'),
 (6,1,'B','Runing'),
 (7,2,'A','Runing'),
 (8,2,'B','Runing'),
 (9,3,'A','Runing'),
 (10,3,'B','Runing'),
 (11,4,'A','Runing'),
 (12,4,'B','Runing');
/*!40000 ALTER TABLE `classsection` ENABLE KEYS */;


--
-- Definition of table `classteacher`
--

DROP TABLE IF EXISTS `classteacher`;
CREATE TABLE `classteacher` (
  `assignid` int(10) unsigned NOT NULL auto_increment,
  `tid` int(10) unsigned NOT NULL,
  `secid` int(10) unsigned NOT NULL,
  `yearid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `classid` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`assignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classteacher`
--

/*!40000 ALTER TABLE `classteacher` DISABLE KEYS */;
INSERT INTO `classteacher` (`assignid`,`tid`,`secid`,`yearid`,`groupid`,`classid`) VALUES 
 (1,2,1,1,1,1),
 (2,5,2,2,2,3),
 (3,6,1,2,2,4),
 (4,7,1,3,2,3),
 (5,11,2,3,5,7),
 (6,8,1,1,4,5);
/*!40000 ALTER TABLE `classteacher` ENABLE KEYS */;


--
-- Definition of table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `contactid` int(10) unsigned NOT NULL auto_increment,
  `fname` varchar(45) default NULL,
  `lname` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `subject` varchar(100) default NULL,
  `massage` longtext,
  `status` varchar(45) default NULL,
  PRIMARY KEY  (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`contactid`,`fname`,`lname`,`email`,`subject`,`massage`,`status`) VALUES 
 (1,NULL,NULL,NULL,NULL,NULL,'User'),
 (2,NULL,NULL,NULL,NULL,NULL,'User'),
 (3,NULL,NULL,NULL,NULL,NULL,'User'),
 (4,NULL,NULL,NULL,NULL,NULL,'User'),
 (5,NULL,NULL,NULL,NULL,NULL,'User'),
 (6,NULL,NULL,NULL,NULL,NULL,'User'),
 (7,NULL,NULL,NULL,NULL,NULL,'User'),
 (8,NULL,NULL,NULL,NULL,NULL,'User'),
 (9,NULL,NULL,NULL,NULL,NULL,'User'),
 (10,NULL,NULL,NULL,NULL,NULL,'User'),
 (11,NULL,NULL,NULL,NULL,NULL,'User'),
 (12,NULL,NULL,NULL,NULL,NULL,'User');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Definition of table `examinfo`
--

DROP TABLE IF EXISTS `examinfo`;
CREATE TABLE `examinfo` (
  `examid` int(11) NOT NULL auto_increment,
  `examdate` date default NULL,
  `examdescrip` varchar(255) default NULL,
  `examtitle` varchar(255) default NULL,
  `subid` int(11) default NULL,
  PRIMARY KEY  (`examid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinfo`
--

/*!40000 ALTER TABLE `examinfo` DISABLE KEYS */;
INSERT INTO `examinfo` (`examid`,`examdate`,`examdescrip`,`examtitle`,`subid`) VALUES 
 (1,'2018-03-02','all','1st trum',3),
 (2,'2018-02-03','all','1st trum',2),
 (3,'2020-08-02','all\r\n','1st trum',3),
 (4,'2018-03-04','all','1st trum',4),
 (5,'2018-12-19','all','1st trum',5),
 (6,'2018-12-04','all\r\n\r\n','1st trum',1);
/*!40000 ALTER TABLE `examinfo` ENABLE KEYS */;


--
-- Definition of table `exammark`
--

DROP TABLE IF EXISTS `exammark`;
CREATE TABLE `exammark` (
  `markid` int(10) unsigned NOT NULL auto_increment,
  `yearid` int(10) unsigned NOT NULL,
  `secid` int(10) unsigned NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `stid` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `classid` int(10) unsigned NOT NULL,
  `markgrade` varchar(45) NOT NULL,
  `markobtain` int(10) unsigned NOT NULL,
  `examid` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`markid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exammark`
--

/*!40000 ALTER TABLE `exammark` DISABLE KEYS */;
INSERT INTO `exammark` (`markid`,`yearid`,`secid`,`groupid`,`stid`,`subid`,`classid`,`markgrade`,`markobtain`,`examid`) VALUES 
 (1,1,5,1,3,1,1,'A+',80,6),
 (2,1,5,1,4,1,1,'B',59,6),
 (3,1,5,1,5,1,1,'A',77,6),
 (4,1,5,1,6,1,1,'A+',87,6),
 (5,1,5,1,3,2,1,'A-',67,6),
 (6,1,5,1,4,2,1,'A+',87,6),
 (7,1,5,1,5,2,2,'B',56,1),
 (8,1,5,1,6,2,2,'A',76,1),
 (9,1,5,1,7,2,2,'A-',67,1),
 (10,1,5,1,3,1,3,'A-',67,1),
 (11,1,5,1,4,2,3,'A+',87,1),
 (12,1,5,1,5,3,3,'A-',67,1),
 (13,1,5,1,6,1,3,'A',78,1);
/*!40000 ALTER TABLE `exammark` ENABLE KEYS */;


--
-- Definition of table `monthlypayment`
--

DROP TABLE IF EXISTS `monthlypayment`;
CREATE TABLE `monthlypayment` (
  `payid` int(10) unsigned NOT NULL auto_increment,
  `regid` int(10) unsigned default NULL,
  `payammount` double default NULL,
  `paydate` date default NULL,
  `payofmonth` varchar(45) default NULL,
  `yearid` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`payid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlypayment`
--

/*!40000 ALTER TABLE `monthlypayment` DISABLE KEYS */;
INSERT INTO `monthlypayment` (`payid`,`regid`,`payammount`,`paydate`,`payofmonth`,`yearid`) VALUES 
 (5,1,5000,'2019-01-02','December',3),
 (6,1,5000,'2019-01-05','December',1),
 (7,1,5000,'2019-01-11','December',1),
 (8,2,5000,'2019-01-12','December',1);
/*!40000 ALTER TABLE `monthlypayment` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `noticeid` int(11) NOT NULL auto_increment,
  `noticedate` date default NULL,
  `noticedescrip` text,
  `noticestatus` varchar(255) default NULL,
  `noticetitle` varchar(255) default NULL,
  PRIMARY KEY  (`noticeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`noticeid`,`noticedate`,`noticedescrip`,`noticestatus`,`noticetitle`) VALUES 
 (1,'2019-02-07','Next 10 January 2019 school has been close . 11 January 2019 will be class start.','authority','vacation'),
 (2,'2019-01-08','Next 10 January 2019 school has been close . 11 January 2019 will be class start.','authority','vacation'),
 (3,'2019-01-04','Next 5 January 2019 school has been close . 6 January 2019 will be class start.','authority','Summar Vacation'),
 (4,'2018-12-14','frome 15 January 2019  to 17 January 2019 ,3 days school has been close . 18 January 2019 will be class start.','authority','vacation'),
 (5,'2019-01-20','frome 30 January 2019 midtrum exam will be start  .before 29 january pay your Fee and collect your admit card.','authority','Mid trum exam '),
 (6,'2018-12-14','frome 15 december 2018  to 28 december  2018 ,13 days school has been close . 29 december  2018 will be  school open for published result .','authority','vacation'),
 (7,'2019-01-15','frome 15 december 2018  to 28 december  2018 ,13 days school has been close . 29 december  2018 will be  school open for published result .','authority','vacation'),
 (8,'2018-12-02','frome 15 december 2018  to 28 december  2018 ,13 days school has been close . 29 december  2018 will be  school open for published result .','authority','v'),
 (9,'2018-12-10','frome 15 december 2018  to 28 december  2018 ,13 days school has been close . 29 december  2018 will be  school open for published result .','authority','vacation'),
 (10,'2019-01-11','Session 2019-2020 S.S.C Candidates Form Fill up will start 20 January 2019 to  10 February 2019.','Authority','S.S.C Form Fill up Notice');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `profileid` int(10) unsigned NOT NULL auto_increment,
  `fristname` varchar(45) default NULL,
  `lastname` varchar(45) default NULL,
  `address` varchar(255) default NULL,
  `occaption` varchar(45) default NULL,
  `relegion` varchar(45) default NULL,
  `dob` date default NULL,
  `contact` varchar(45) default NULL,
  `email` varchar(45) default NULL,
  `gender` varchar(45) default NULL,
  PRIMARY KEY  (`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;


--
-- Definition of table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
CREATE TABLE `stgroup` (
  `groupid` int(11) NOT NULL auto_increment,
  `groupname` varchar(255) default NULL,
  `groupstatus` varchar(255) default NULL,
  PRIMARY KEY  (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stgroup`
--

/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` (`groupid`,`groupname`,`groupstatus`) VALUES 
 (1,'science','ten'),
 (2,'Business Studies','nine'),
 (3,'Business Studies','ten'),
 (4,'arts','nine'),
 (5,'arts','ten'),
 (6,'scince','nine');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;


--
-- Definition of table `studentattendance`
--

DROP TABLE IF EXISTS `studentattendance`;
CREATE TABLE `studentattendance` (
  `atid` int(10) unsigned NOT NULL auto_increment,
  `regid` int(10) unsigned NOT NULL,
  `secid` int(10) unsigned default NULL,
  `groupid` int(10) unsigned default NULL,
  `stid` int(10) unsigned NOT NULL,
  `classid` int(10) unsigned NOT NULL,
  `atdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `atstatus` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`atid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentattendance`
--

/*!40000 ALTER TABLE `studentattendance` DISABLE KEYS */;
INSERT INTO `studentattendance` (`atid`,`regid`,`secid`,`groupid`,`stid`,`classid`,`atdate`,`atstatus`) VALUES 
 (1,2,5,1,3,1,'2019-01-10 00:00:00','Preasent'),
 (2,2,5,1,4,1,'2019-01-10 00:00:00','Preasent'),
 (3,4,5,1,5,1,'2019-01-10 00:00:00','Preasent'),
 (4,3,5,1,5,2,'2019-01-14 00:00:00','Preasent'),
 (5,8,5,2,6,3,'2019-01-10 00:00:00','Preasent'),
 (6,5,8,3,9,3,'2019-01-08 00:00:00','Preasent'),
 (7,7,7,1,9,3,'2019-01-10 12:09:32','Preasent');
/*!40000 ALTER TABLE `studentattendance` ENABLE KEYS */;


--
-- Definition of table `studentinfo`
--

DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `stid` int(11) NOT NULL auto_increment,
  `parmanentaddress` varchar(255) default NULL,
  `presentaddress` varchar(255) default NULL,
  `stage` varchar(255) default NULL,
  `stcontact` varchar(255) default NULL,
  `stdob` date default NULL,
  `stfathername` varchar(255) default NULL,
  `stgender` varchar(255) default NULL,
  `stmothername` varchar(255) default NULL,
  `stname` varchar(255) default NULL,
  `ststatus` varchar(255) default NULL,
  PRIMARY KEY  (`stid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

/*!40000 ALTER TABLE `studentinfo` DISABLE KEYS */;
INSERT INTO `studentinfo` (`stid`,`parmanentaddress`,`presentaddress`,`stage`,`stcontact`,`stdob`,`stfathername`,`stgender`,`stmothername`,`stname`,`ststatus`) VALUES 
 (3,'Chandpur','n.gonj','23','0193882746','2018-12-14','monir','male','monira','dipu','looking gread'),
 (4,'Narayangonj shodor','320/a doyagonj,wari ,dhaka','12','53874','2018-12-20','dider','male','Nasima','kobir','Reguler'),
 (5,'234/e , narayangonj','narayangonj sodor ,narayangong','10','75655','2018-12-12','taleb','male','monira','joni','Reguler'),
 (6,'hk','kjh','23','93465','2018-12-11','kjh','male','kjkj','hjh','lkfgjk'),
 (7,'Chandpur','320/a doyagonj,wari ,dhaka','27','01933932636','1991-12-15','didar','male','Nasima','dipu','good'),
 (9,'Narayangonj shodor','320/a doyagonj,wari ,dhaka','12','28376847','2010-06-15','joy','male','fatema','manik','Reguler'),
 (10,'narayangonj sodor ,narayangong','narayangonj sodor ,narayangong','10','34536','2009-06-23','monir','female','soniya','fatema','Reguler'),
 (11,'narayangonj sodor ,narayangong','narayangonj sodor ,narayangong','10','34667','2009-05-12','babu','female','moni','asma','Reguler'),
 (12,'narayangonj sodor ,narayangong','dha','10','48763876','2019-01-15','noyon','male','poni','badol','Reguler'),
 (13,'narayangonj sodor ,narayangong','320/a doyagonj,wari ,dhaka','10','32534557','2009-10-20','manik','male','soniya','akter','Reguler'),
 (14,'narayangonj sodor ,narayangong','320/a doyagonj,wari ,dhaka','12','43468','2009-06-19','sofian','male','sokina','noman','Reguler'),
 (15,'dhaka','320/a doyagonj,wari ,dhaka','12','57458764','2019-01-02','soleman','male','pakhi','dipu','Reguler'),
 (16,'narayangonj sodor ,narayangong','320/a doyagonj,wari ,dhaka','12','838746','2019-01-02','sofian','male','Nasima','dipu','Reguler'),
 (17,'dhaka','narayangonj sodor ,narayangong','12','459845989049398','2019-01-01','manik',NULL,'sokina','dipu','Reguler'),
 (18,'dhaka','dhaka','12','2348368472','2019-01-01','Didar',NULL,'nasima','dipu','Reguler');
/*!40000 ALTER TABLE `studentinfo` ENABLE KEYS */;


--
-- Definition of table `studentregistration`
--

DROP TABLE IF EXISTS `studentregistration`;
CREATE TABLE `studentregistration` (
  `regid` int(11) NOT NULL auto_increment,
  `classid` int(11) default NULL,
  `groupid` int(11) default NULL,
  `regdate` date default NULL,
  `secid` int(11) default NULL,
  `stid` int(11) default NULL,
  `stroll` varchar(255) default NULL,
  `yearid` int(11) default NULL,
  PRIMARY KEY  (`regid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentregistration`
--

/*!40000 ALTER TABLE `studentregistration` DISABLE KEYS */;
INSERT INTO `studentregistration` (`regid`,`classid`,`groupid`,`regdate`,`secid`,`stid`,`stroll`,`yearid`) VALUES 
 (1,1,1,'2018-12-10',1,3,'1',1),
 (2,1,1,'2018-12-10',1,4,'2',1),
 (3,1,1,'2019-01-02',5,4,'3',1),
 (4,2,1,'2019-01-02',5,6,'1',1),
 (5,2,1,'2019-01-01',5,7,'2',1),
 (6,2,1,'2019-01-01',5,7,'3',1),
 (7,3,1,'2019-01-02',5,8,'1',1),
 (8,3,1,'2019-01-02',5,9,'2',1),
 (9,3,1,'2019-01-02',5,9,'3',1),
 (10,4,1,'2019-01-01',5,10,'1',1),
 (11,4,1,'2019-01-01',5,11,'2',1),
 (12,4,1,'2019-01-01',5,12,'3',1),
 (13,4,1,'2019-01-01',5,13,'4',1),
 (14,4,1,'2019-01-01',5,14,'5',1);
/*!40000 ALTER TABLE `studentregistration` ENABLE KEYS */;


--
-- Definition of table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `subid` int(11) NOT NULL auto_increment,
  `subcode` varchar(255) default NULL,
  `subname` varchar(255) default NULL,
  PRIMARY KEY  (`subid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` (`subid`,`subcode`,`subname`) VALUES 
 (1,'101','bangla'),
 (2,'201','math'),
 (3,'202','English'),
 (4,'501','general knowledg'),
 (5,'702','islam');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;


--
-- Definition of table `teacherinfo`
--

DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `tid` int(11) NOT NULL auto_increment,
  `subid` int(11) default NULL,
  `taddress` varchar(255) default NULL,
  `tcontact` varchar(255) default NULL,
  `temail` varchar(255) default NULL,
  `tgender` varchar(255) default NULL,
  `tjoindate` date default NULL,
  `tname` varchar(255) default NULL,
  `tstatus` varchar(255) default NULL,
  `subname` varchar(45) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacherinfo`
--

/*!40000 ALTER TABLE `teacherinfo` DISABLE KEYS */;
INSERT INTO `teacherinfo` (`tid`,`subid`,`taddress`,`tcontact`,`temail`,`tgender`,`tjoindate`,`tname`,`tstatus`,`subname`) VALUES 
 (6,1,'dhaka','35635435','asdf@gmail.com','Male','2018-11-28','dipu',' Part Time',NULL),
 (9,2,'dhaka','456345','sdlf@gmail.com','Male','2018-12-04','dfsdf',' full Time',NULL),
 (10,3,'Fany','0125478','ghg@gmai.lcom','Male','2018-12-04','hfdfg',' Part Time',NULL),
 (11,2,'Barisel','3425','vbcn2@gamil.com','Male','2018-12-12','Tuhin',' Part Time',NULL),
 (12,2,'saver dhaka','0125478','ader@gmail.com','Male','2018-12-05','Sakibul',' Part Time',NULL),
 (13,1,'Rongpur','4827637547','ak@gmail.com','Male','2018-12-07','Akter',' full Time',NULL),
 (14,5,'Barisel','1738197','noman@gmail.com','Male','2018-12-09','Noman',' full Time',NULL),
 (15,4,'Dhaka','8742863','bablu@gmail.com','Male','2018-12-14','Bablu',' Part Time',NULL),
 (17,2,'saver dhaka','2345','fdgs@gmail.com','Male','2018-12-05','Ifty sorker',' Part Time',NULL),
 (18,1,'dhaka','01914548449','anik@gmail.com','Male','2018-12-11','anik',' Part Time','bangla'),
 (19,2,'dhaka','524635645','locman@gmail.com','Male','2018-12-14','locman',' Part Time','bangla'),
 (20,4,'n.gonj','3545765766','kamal@gmail.com','Male','2018-12-04','dipu','Assisten Teacher Part Time','math'),
 (21,1,'dhaka','42343534','sagor@gmail.com','Male','2018-12-04','sagor','Assisten Teacher Part Time','English');
/*!40000 ALTER TABLE `teacherinfo` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`) VALUES 
 ('ak@gmail.com',' 01933932636','akter'),
 ('asdf@gmail.com','1233','sdf'),
 ('bari@gmail.com','01933932636','bari'),
 ('dfl@gmail.com','123434','hgj'),
 ('dg@gmail.com','456','iuo'),
 ('dipu1@gmail.com','01933932636','dipu'),
 ('dipu2@gmail.com','01933932636','Dipu'),
 ('dipu@gmail.com','01933932636','Giyas Uddin (Dipu)'),
 ('dipudipu@gmail.com','+88','dipu'),
 ('fd@gmail.com','345','HIUYRE'),
 ('fdg@gmail.com','323','hjngvh'),
 ('kshdkh@gmail.com','+883453','fgh'),
 ('nasir@gmail.com','01933932636','Nasir Uddin'),
 ('razib@gmail.com','01918938723','Razibul Haq'),
 ('sakib@gmail.com','01933932636','sakib'),
 ('sdlf@gmail.com','123445','fgh'),
 ('shemul@gmail.com','1234567','shemul'),
 ('sorkar@gmail.com','018948446','sorkar'),
 ('tuhin@gmail.com','0192874637','Tuhin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `userrole` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`userrole`,`status`) VALUES 
 ('ak@gmail.com','123','ROLE_STUDENT','True'),
 ('bari@gmail.com','123','ROLE_GUARDIAN','True'),
 ('dipu2@gmail.com','123','ROLE_ADMIN','True'),
 ('nasir@gmail.com','123','ROLE_ADMIN','True'),
 ('razib@gmail.com','123','ROLE_TEACHER','True'),
 ('sakib@gmail.com','123','ROLE_TEACHER','True'),
 ('sorkar@gmail.com','123','ROLE_STUDENT','True'),
 ('tuhin@gmail.com','123','ROLE_STUDENT','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
