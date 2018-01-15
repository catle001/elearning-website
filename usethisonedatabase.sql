-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webappdemo
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(1) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Communication'),(2,'Decision Making'),(3,'Managing People & Performance'),(4,'Planning & Organization');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competency`
--

DROP TABLE IF EXISTS `competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competency` (
  `idCompetency` int(11) NOT NULL AUTO_INCREMENT,
  `Competency` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCompetency`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competency`
--

LOCK TABLES `competency` WRITE;
/*!40000 ALTER TABLE `competency` DISABLE KEYS */;
INSERT INTO `competency` VALUES (1,'Competence'),(2,'Character'),(3,'Communication'),(4,'Creativity'),(5,'Civil-mindness'),(7,'cgpa');
/*!40000 ALTER TABLE `competency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_links`
--

DROP TABLE IF EXISTS `content_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_links` (
  `content_id` int(100) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `category_id` varchar(20) DEFAULT NULL,
  `link` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_links`
--

LOCK TABLES `content_links` WRITE;
/*!40000 ALTER TABLE `content_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `content_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fileinfo_website4`
--

DROP TABLE IF EXISTS `fileinfo_website4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fileinfo_website4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10000) DEFAULT NULL,
  `description` text,
  `size` int(11) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL,
  `isCompleted` varchar(45) DEFAULT 'Not Completed',
  `date` varchar(20) DEFAULT NULL,
  `topic` text,
  `name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fileinfo_website4`
--

LOCK TABLES `fileinfo_website4` WRITE;
/*!40000 ALTER TABLE `fileinfo_website4` DISABLE KEYS */;
INSERT INTO `fileinfo_website4` VALUES (9,'application/pdf','Library sp for R programming',244971,'File/intro_sp.pdf','Completed','2017-10-28 21:40:37','Sp','intro_sp.pdf'),(10,'application/vnd.openxmlformats-officedocument.wordprocessingml.document','Sample essay',188329,'File/Final Essay.docx','Completed','2017-11-01 11:28:18','Essay','Final Essay.docx'),(12,'application/pdf','Summary Shiny R package',3084036,'File/shiny-cheatsheet.pdf','Not Completed','2017-11-01 16:18:05','Shiny','shiny-cheatsheet.pdf'),(13,'video/mp4','Video of transportatin visualization',21330674,'File/20kb.mp4','Not Completed','2017-10-28 22:40:37','Transportation','20kb.mp4'),(15,'image/jpeg',NULL,357828,'File/postalSgMap.jpg','Not Completed','2017-10-28 20:51','Postal Code Map','postalSgMap.jpg'),(22,'image/png','Just random image lor',93806,'File/14 oct progress dip.PNG','Not Completed','2017-11-01 11:28:18','Random Image Uploaded','14 oct progress dip.PNG'),(23,'image/jpeg','',190053,'File/WhatsApp Image 2017-09-06 at 16.39.15.jpeg','Not Completed','2017-11-01 16:18:05','Hello','WhatsApp Image 2017-09-06 at 16.39.15.jpeg');
/*!40000 ALTER TABLE `fileinfo_website4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `GroupID` int(3) NOT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `ProjectID` int(3) DEFAULT NULL,
  `LeaderName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'grp101',1,'leader101'),(2,'grp102',1,'leader102'),(3,'grp103',1,'leader103'),(4,'grp201',2,'leader201'),(5,'grp202',2,'leader202'),(6,'grp301',3,'leader301');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icon_url`
--

DROP TABLE IF EXISTS `icon_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icon_url` (
  `idicon-url` int(11) NOT NULL AUTO_INCREMENT,
  `ImageUrl` varchar(45) DEFAULT NULL,
  `type` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`idicon-url`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icon_url`
--

LOCK TABLES `icon_url` WRITE;
/*!40000 ALTER TABLE `icon_url` DISABLE KEYS */;
INSERT INTO `icon_url` VALUES (1,'icon/text.png','application/pdf'),(2,'icon/mp4.png','video/mp4'),(3,'icon/Photo-icon.png','image/png'),(4,'icon/text.png','application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(5,'icon/Photo-icon.png','image/jpeg');
/*!40000 ALTER TABLE `icon_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `student_ID` varchar(30) NOT NULL,
  `group_ID` int(5) NOT NULL,
  `role_ID` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_student_group`
--

DROP TABLE IF EXISTS `new_student_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_student_group` (
  `idnew_student_group` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) DEFAULT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  `project_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnew_student_group`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_student_group`
--

LOCK TABLES `new_student_group` WRITE;
/*!40000 ALTER TABLE `new_student_group` DISABLE KEYS */;
INSERT INTO `new_student_group` VALUES (2,'B','1','1'),(3,'C','1','1'),(4,'D','1','1'),(6,'F','1','1'),(7,'G','2','2'),(9,'Weijie','logistic','1'),(11,'Eli','bizmag','1'),(12,'test1','1','1'),(14,'Weijie','1','1'),(15,'Weijie','1','A'),(16,'Weijie','1','B');
/*!40000 ALTER TABLE `new_student_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf_file`
--

DROP TABLE IF EXISTS `pdf_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdf_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `path` varchar(45) DEFAULT NULL,
  `data` blob,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf_file`
--

LOCK TABLES `pdf_file` WRITE;
/*!40000 ALTER TABLE `pdf_file` DISABLE KEYS */;
INSERT INTO `pdf_file` VALUES (1,'OGR_shape_encoding.pdf',125591,'File/OGR_shape_encoding.pdf',NULL,NULL),(2,'intro_sp.pdf',244971,'File/intro_sp.pdf',NULL,NULL);
/*!40000 ALTER TABLE `pdf_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peer_ans`
--

DROP TABLE IF EXISTS `peer_ans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_ans` (
  `StudentName` varchar(45) NOT NULL,
  `StudentSumScore2c` decimal(4,3) DEFAULT NULL,
  `StudentSumScore1c` decimal(4,3) DEFAULT NULL,
  `StudentSumScore3c` decimal(4,3) DEFAULT NULL,
  `StudentSumScore4c` decimal(4,3) DEFAULT NULL,
  `StudentSumScore5c` decimal(4,3) DEFAULT NULL,
  PRIMARY KEY (`StudentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peer_ans`
--

LOCK TABLES `peer_ans` WRITE;
/*!40000 ALTER TABLE `peer_ans` DISABLE KEYS */;
INSERT INTO `peer_ans` VALUES ('aaa',2.300,3.550,1.200,3.400,4.000),('bbb',3.500,1.200,2.300,1.900,3.400),('Cat',4.600,2.500,3.100,2.600,1.000),('leaderA',2.000,3.000,4.000,5.000,1.000),('Weijie',3.400,2.400,4.200,1.100,4.100),('Xingmeng',4.000,2.000,3.000,4.000,2.000);
/*!40000 ALTER TABLE `peer_ans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peer_questions`
--

DROP TABLE IF EXISTS `peer_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peer_questions` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionText` varchar(20000) DEFAULT NULL,
  `Competency` varchar(45) DEFAULT NULL,
  `ProjectID` int(20) DEFAULT NULL,
  `QuestionNo` int(10) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peer_questions`
--

LOCK TABLES `peer_questions` WRITE;
/*!40000 ALTER TABLE `peer_questions` DISABLE KEYS */;
INSERT INTO `peer_questions` VALUES (3,'are you creative?','Creativity',1,3),(6,'hahaha','Character',2,1),(7,'77','Communication',2,2),(8,'88','Creativity',2,3),(9,'wwww','Communication',3,NULL),(10,'yeah','Communication',1,NULL),(11,'12334','Competence',3,NULL),(12,'yayaya','Character',1,NULL),(13,'are you good?','Creativity',1,NULL);
/*!40000 ALTER TABLE `peer_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(45) NOT NULL,
  `ProjectDescription` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ProjectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'proj1',NULL),(2,'proj2',NULL),(3,'proj3',NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `QuestionID` int(11) NOT NULL AUTO_INCREMENT,
  `QuestionText` varchar(45) NOT NULL,
  `Competency` varchar(45) NOT NULL,
  `ProjectID` int(11) DEFAULT NULL,
  `QuestionNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (3,'How old are you','Decision Making',1,NULL),(4,'Do you like EEE','Communication',2,NULL),(5,'Why are you NTU?','Planning & Organization',3,NULL),(6,'Are you Vietnamese','Competitive',4,NULL),(7,'Who are you','Communication',5,NULL),(10,'Does he got good communication skill?','Communication',2,NULL),(11,'Does he got good communication skill?','Communication',NULL,NULL);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self_questions`
--

DROP TABLE IF EXISTS `self_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `self_questions` (
  `Competency` varchar(15) DEFAULT NULL,
  `QuestionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `QuestionText` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self_questions`
--

LOCK TABLES `self_questions` WRITE;
/*!40000 ALTER TABLE `self_questions` DISABLE KEYS */;
INSERT INTO `self_questions` VALUES ('Civil-mindness',2,'23'),('Creativity',3,'11111'),('Communication',5,'333'),('Character',7,'22222'),('Competence',9,'222222');
/*!40000 ALTER TABLE `self_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selfevascore`
--

DROP TABLE IF EXISTS `selfevascore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selfevascore` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `1c` varchar(45) DEFAULT NULL,
  `2c` varchar(45) DEFAULT NULL,
  `3c` varchar(45) DEFAULT NULL,
  `4c` varchar(45) DEFAULT NULL,
  `5c` varchar(45) DEFAULT NULL,
  `studentname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selfevascore`
--

LOCK TABLES `selfevascore` WRITE;
/*!40000 ALTER TABLE `selfevascore` DISABLE KEYS */;
INSERT INTO `selfevascore` VALUES (1,'5','5','5','5','5','test1'),(2,'1','1','1','1',NULL,'leaderA');
/*!40000 ALTER TABLE `selfevascore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `NID` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(30) NOT NULL,
  `content_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `projectID` int(11) DEFAULT NULL,
  `projectName` varchar(45) DEFAULT NULL,
  `groupName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  UNIQUE KEY `studentID_UNIQUE` (`studentID`),
  UNIQUE KEY `studentName_UNIQUE` (`studentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,'aaa',1,'aa','ck'),(2,1,'bbb',1,'aa','ck'),(3,1,'ccc',1,'aa','ck'),(4,2,'xixixi',1,'aa','ch');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_list`
--

DROP TABLE IF EXISTS `student_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_list` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_list`
--

LOCK TABLES `student_list` WRITE;
/*!40000 ALTER TABLE `student_list` DISABLE KEYS */;
INSERT INTO `student_list` VALUES (1,'Cat','thiencat1997@gmail.com'),(2,'Weijie',NULL),(3,'Eli',NULL),(4,'Rahim',NULL),(5,'Jack','fansiyang970328@gmail.com'),(6,'Xingmeng',NULL);
/*!40000 ALTER TABLE `student_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentgroup`
--

DROP TABLE IF EXISTS `studentgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentgroup` (
  `student_name` varchar(30) NOT NULL,
  `GROUP` varchar(45) DEFAULT NULL,
  `LEADER` int(1) DEFAULT NULL,
  `ProjectId` int(2) DEFAULT NULL,
  `lineID` int(2) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`lineID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentgroup`
--

LOCK TABLES `studentgroup` WRITE;
/*!40000 ALTER TABLE `studentgroup` DISABLE KEYS */;
INSERT INTO `studentgroup` VALUES ('Cat','A',1,2,1),('Jack','A',NULL,2,2),('Rahim','B',NULL,2,3),('Weijie','B',NULL,2,4),('Xingmeng','B',1,2,5),('Jack','A',1,3,6),('Yiming','B',NULL,3,7);
/*!40000 ALTER TABLE `studentgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_enrolled`
--

DROP TABLE IF EXISTS `students_enrolled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_enrolled` (
  `StudentID` int(5) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(60) NOT NULL,
  `ProjectID` int(10) DEFAULT NULL,
  `GroupID` int(3) NOT NULL,
  `IsLeader` int(1) DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_enrolled`
--

LOCK TABLES `students_enrolled` WRITE;
/*!40000 ALTER TABLE `students_enrolled` DISABLE KEYS */;
INSERT INTO `students_enrolled` VALUES (1,'leaderA',1,1,NULL),(2,'member101',1,1,NULL),(3,'member102',2,1,NULL),(4,'leaderB',1,2,NULL),(5,'leaderC',2,3,NULL),(6,'leaderD',3,4,NULL),(7,'member103',3,1,NULL),(8,'member104',2,1,NULL),(9,'member105',1,1,NULL),(10,'member201',3,2,NULL);
/*!40000 ALTER TABLE `students_enrolled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentscore`
--

DROP TABLE IF EXISTS `studentscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentscore` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `1c` varchar(45) DEFAULT NULL,
  `2c` varchar(45) DEFAULT NULL,
  `3c` varchar(45) DEFAULT NULL,
  `4c` varchar(45) DEFAULT NULL,
  `5c` varchar(45) DEFAULT NULL,
  `studentname` varchar(45) DEFAULT NULL,
  `svr` varchar(45) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentscore`
--

LOCK TABLES `studentscore` WRITE;
/*!40000 ALTER TABLE `studentscore` DISABLE KEYS */;
INSERT INTO `studentscore` VALUES (1,'25','5','20','10','5','A','B','hi'),(2,'25','5','20','10','5','B','C','hii'),(3,'25','5','20','10','5','C','D','hii'),(4,'25','5','20','10','5','D','E','hiii'),(5,'25','5','20','10','5','E','F','hiiii'),(6,NULL,NULL,NULL,NULL,NULL,'F','G','hiiiiii'),(7,NULL,NULL,NULL,NULL,NULL,'G',NULL,NULL),(8,'25','5','20','10','5','leaderA','B','good');
/*!40000 ALTER TABLE `studentscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatedate`
--

DROP TABLE IF EXISTS `updatedate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatedate` (
  `peer_date` datetime DEFAULT NULL,
  `self_date` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatedate`
--

LOCK TABLES `updatedate` WRITE;
/*!40000 ALTER TABLE `updatedate` DISABLE KEYS */;
INSERT INTO `updatedate` VALUES ('2017-12-10 10:25:06','2017-11-10 03:17:06',0),('2017-12-10 10:25:06','2017-11-10 03:17:06',0),('2017-12-10 10:25:06','2017-11-10 03:17:06',0);
/*!40000 ALTER TABLE `updatedate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updatetime`
--

DROP TABLE IF EXISTS `updatetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatetime` (
  `self_date` datetime DEFAULT NULL,
  `peer_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updatetime`
--

LOCK TABLES `updatetime` WRITE;
/*!40000 ALTER TABLE `updatetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `updatetime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraddress`
--

DROP TABLE IF EXISTS `useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraddress` (
  `userID` int(11) NOT NULL,
  `useraddresscol` int(11) NOT NULL,
  PRIMARY KEY (`userID`,`useraddresscol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraddress`
--

LOCK TABLES `useraddress` WRITE;
/*!40000 ALTER TABLE `useraddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username_pwd`
--

DROP TABLE IF EXISTS `username_pwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `username_pwd` (
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `roleId` varchar(45) DEFAULT NULL,
  `Fullname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username_pwd`
--

LOCK TABLES `username_pwd` WRITE;
/*!40000 ALTER TABLE `username_pwd` DISABLE KEYS */;
INSERT INTO `username_pwd` VALUES ('a','a','0','aa'),('b','b','0','bb'),('c','c','1','cc'),('d','d','1','dd'),('e','e','2','ee'),('f','f','2','ff');
/*!40000 ALTER TABLE `username_pwd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userregistration`
--

DROP TABLE IF EXISTS `userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userregistration` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `middlename` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `saltedpassword` varchar(45) DEFAULT NULL,
  `studentname` varchar(45) DEFAULT NULL,
  `q8` varchar(45) DEFAULT NULL,
  `q9` varchar(45) DEFAULT NULL,
  `q10` varchar(45) DEFAULT NULL,
  `tb` varchar(11000) DEFAULT NULL,
  `radresult` varchar(45) DEFAULT NULL,
  `qnno` varchar(45) DEFAULT NULL,
  `textbox` varchar(45) DEFAULT NULL,
  `namelist` varchar(45) DEFAULT NULL,
  `commentbox` varchar(1000) DEFAULT NULL,
  `avgvalue` varchar(45) DEFAULT NULL,
  `svr` varchar(45) DEFAULT NULL,
  `nameofc` varchar(45) DEFAULT NULL,
  `1c` varchar(45) DEFAULT NULL,
  `2c` varchar(45) DEFAULT NULL,
  `3c` varchar(45) DEFAULT NULL,
  `4c` varchar(45) DEFAULT NULL,
  `5c` varchar(45) DEFAULT NULL,
  `pc` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userregistration`
--

LOCK TABLES `userregistration` WRITE;
/*!40000 ALTER TABLE `userregistration` DISABLE KEYS */;
INSERT INTO `userregistration` VALUES (1,'Student C','1','1','1','1','1',NULL,NULL,'1','1','1','1','I love eating people.Do you?','1','1',NULL,'A','He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.He likes to eat meat.',NULL,NULL,'CGPA',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Student B','5','5','5','5','3',NULL,NULL,'5','5','3','3','I love throwing people down the building.','5','2','hello','B','He likes to eat people.',NULL,NULL,'Continuity',NULL,NULL,NULL,NULL,NULL,NULL),(3,'Changlu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hi',NULL,'4',NULL,'C','He likes to think he eats people.','5',NULL,'Competence','25','20','15','5','10',NULL),(4,'Zijie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'bye',NULL,'5',NULL,'D','He is hungry for human meat.','5',NULL,'Creativity','25','20','15','5','10',NULL),(5,'Rahim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'die',NULL,'6',NULL,'E','He is a cannibal.','5',NULL,'Character','25','20','15','5','10',NULL),(6,'WeiJie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'go away',NULL,'7',NULL,'A','She likes to think he eats people.','5',NULL,'Civic-Mindedness','25','20','15','5','10',NULL),(7,'Cat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'hello',NULL,'8',NULL,'B','He is helpful.','5',NULL,'Communication','25','20','15','5','10',NULL),(8,'Elizabeth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gg',NULL,'9',NULL,'C','He is bad.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Siyang',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ggwp',NULL,'10',NULL,'D','He is a good cannibal.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'Yilin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gg10',NULL,'3',NULL,'E','He wants to eat you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Student D','5','5','5','2','2',NULL,NULL,'5','5','3','3',NULL,'5',NULL,'D sucks','F','He likes to drink blood.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Student E','5','5','5','4','2',NULL,NULL,'5','5','3','3',NULL,'5',NULL,'E rules','L','He eats cats.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Student F','3','3','1','3','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M','He hates eating himself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,'2','1','1','3','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'He likes to eat himself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `userregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `id_no` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` mediumtext,
  `date_joined` date DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `id_no` (`id_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (NULL,NULL,'2',NULL,'a','a',NULL,NULL),('AAA','AAA','AAA','aaa','aaa','7E240DE74FB1ED08FA08D38063F6A6A91462A815','2017-12-10',2),('','','0000001','','admin','D033E22AE348AEB5660FC2140AEC35850C4DA997','2017-09-22',0),('SIYANG','FAN','U1520606D','fans0009@e.ntu.edu.sg','fans0009','D4DB90550681B750916774167C1DAA92EECE635B','2017-12-10',1),('1','1','1','1','leaderA','356A192B7913B04C54574D18C28D46E6395428AB','2017-12-10',2),('TEST','TEST','TEST','test','test','B444AC06613FC8D63795BE9AD0BEAF55011936AC','2017-09-22',2),('TEST1','TEST','TEST1','TEST1','test1','B444AC06613FC8D63795BE9AD0BEAF55011936AC','2017-11-09',2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11  0:55:03
