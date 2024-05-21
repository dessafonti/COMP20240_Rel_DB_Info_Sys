-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: pires23221657
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates` (
  `candidate_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates`
--

LOCK TABLES `candidates` WRITE;
/*!40000 ALTER TABLE `candidates` DISABLE KEYS */;
INSERT INTO `candidates` VALUES (1009,'Marie','Byrne','78 Camden Street, Dubin, Ireland',831941593,'marie.byrne123@gmail.com'),(1010,'Jhon','Doyle','88 Wicklow Street, Dublin, Ireland',831944576,'jhondoyle@hotmail.com'),(1011,'Claudia','Fonseca','96 Pearse Street, Dublin, Ireland',832341893,'clau.fonseca@gmail.com'),(1012,'Mike','O\'Neill','103 South Circular Road, Dublin, Ireland',831943756,'mikeoneill17@gmail.com'),(1013,'Steve','Collins','3 Leeson Street, Dubin, Ireland',833319937,'stevecollins@hotmail.com'),(1014,'Tomas','Tedesco','24 Abbey Street, Dublin, Ireland',839091594,'tedescotomas@gmail.com'),(1015,'Lorcan','Lynch','54 Capper Village, Dublin, Ireland',832346178,'lorcanly@gmail.com'),(1016,'Michele','Duffy','21 Stone Road, Dublin, Ireland',836798765,'micheleduffy95@gmail.com'),(1017,'Lidia','Zambini','77 Crumlin Road, Dublin, Ireland',831908646,'zambinilidia@gmail.com'),(1018,'Julia','Smith','108 Ranelagh Road, Dublin, Ireland',873452085,'julia_smith21@hotmail.com'),(1019,'Peter','O\'Reilly','27 Clanbrassil Street, Dublin, Ireland',871384753,'peteroreilly2001@hotmail.com'),(1020,'Rodolfo','Mattia','39 Donnybrook Road, Dublin, Ireland',842764874,'mattiarodolfo@gmail.com'),(1021,'Stela','McMurphy','4 Meath Street, Dublin, Ireland',865993744,'mcmurphy_stela@gmail.com'),(1022,'Patrick','Cohen','68 Cork Street, Dublin, Ireland',843726138,'patcohen@gmail.com'),(1023,'Miriam','Talsh','12 Druncomda Avenue, Dublin, Ireland',876354662,'miriam.talsh@hotmail.com'),(1024,'Louis','Gerraldi','7 Vernon Avenue, Dublin, Ireland',825663654,'gerraldi_louis@gmail.com'),(1025,'Carol','White','65 Blackrock Street, Dubin, Ireland',876364522,'white-carol@gmail.com'),(1026,'Judith','Adelman','8 Abbey Street, Dublin, Ireland',836478472,'adelman.ju@hotmail.com');
/*!40000 ALTER TABLE `candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidates_skills`
--

DROP TABLE IF EXISTS `candidates_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidates_skills` (
  `candidate_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`candidate_id`,`skill_id`),
  KEY `k2_idx` (`skill_id`),
  CONSTRAINT `k1` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `k2` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidates_skills`
--

LOCK TABLES `candidates_skills` WRITE;
/*!40000 ALTER TABLE `candidates_skills` DISABLE KEYS */;
INSERT INTO `candidates_skills` VALUES (1009,109),(1010,109),(1011,109),(1012,109),(1013,109),(1024,109),(1025,109),(1014,112),(1026,112),(1010,210),(1017,210),(1019,269),(1020,269),(1014,298),(1010,301),(1011,301),(1013,301),(1022,321),(1022,341),(1011,347),(1021,347),(1011,412),(1012,412),(1017,412),(1024,412),(1011,431),(1012,431),(1025,431),(1014,543),(1016,543),(1009,561),(1011,561),(1012,561),(1024,561),(1017,623),(1021,632),(1022,632),(1020,645),(1026,645),(1017,654),(1021,654),(1016,765),(1018,784),(1025,784),(1019,843),(1020,843),(1010,865),(1019,918),(1020,918),(1014,965),(1016,997),(1026,997);
/*!40000 ALTER TABLE `candidates_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `extension_line` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `office_room` int(11) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `extension_line_UNIQUE` (`extension_line`),
  UNIQUE KEY `office_room_UNIQUE` (`office_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (17,'Administrative Department','Gordon House, Barrow Street, Dublin, Ireland',10,'administrative@google.com',1717),(26,'Project Management Department\n','Gordon House, Barrow Street, Dublin, Ireland',20,'projectmanagement@google.com',2626),(34,'Web Design Department','Gordon House, Barrow Street, Dublin, Ireland',31,'webdesign@google.com',3434),(36,'UX Design Department','Gordon House, Barrow Street, Dublin, Ireland',32,'uxdesign@google.com',3636),(37,'Graphic Design Department','Gordon House, Barrow Street, Dublin, Ireland',30,'graphicdesign@google.com',3232),(39,'UI Design Department','Gordon House, Barrow Street, Dublin, Ireland',33,'uidesign@google.com',3939),(59,'Sales and Client Relations Department\n','Gordon House, Barrow Street, Dublin, Ireland',50,'salesandrelations@google.com',5959),(69,'Office Management','Gordon House, Barrow Street, Dublin, Ireland',60,'officemanagement@google.com',6969),(72,'Art and Illustration Department','Gordon House, Barrow Street, Dublin, Ireland',70,'artandillustration@google.com',7272),(89,'Marketing and Branding Department','Gordon House, Barrow Street, Dublin, Ireland',80,'marketingandbranding@google.com',8989);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviews`
--

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `interview_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `interview_date` varchar(45) DEFAULT NULL,
  `interview_time` varchar(45) DEFAULT NULL,
  `interview_local` int(11) DEFAULT NULL,
  PRIMARY KEY (`interview_id`,`candidate_id`),
  KEY `k3_idx` (`candidate_id`),
  KEY `k4_idx` (`position_id`),
  CONSTRAINT `k3` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `k4` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviews`
--

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES (1234,1011,238,'20/09/2023','10am',2626),(1235,1011,238,'29/09/2023','10am',2626),(1324,1026,343,'22/09/2023','10am',3939),(1342,1023,745,'28/09/2023','10am',7272),(1415,1019,721,'27/09/2023','10pm',7272),(1934,1020,721,'27/09/2023','2pm',7272),(1935,1020,721,'29/09/2023','10am',7272),(1988,1017,538,'24/09/2023','10am',5959),(2131,1021,864,'25/09/2023','10am',8989),(2132,1021,864,'30/09/2023','10am',8989),(2135,1014,323,'18/09/2023','10am',3434),(2136,1014,323,'22/09/2023','10am',3434),(2162,1015,319,'20/09/2023','10am',3636),(2367,1009,238,'20/09/2023','2pm',2626),(2713,1022,745,'28/09/2023','2pm',7272),(3116,1025,629,'15/09/2023','10am',6969),(3117,1025,629,'24/09/2023','10am',6969),(3123,1013,319,'20/09/2023','2pm',3636),(3419,1016,378,'15/09/2023','10am',3232),(6532,1024,175,'10/09/2023','10am',1717),(6543,1010,147,'14/09/2023','10am',1717),(6544,1010,147,'16/09/2023','10am',1717),(7117,1018,629,'15/09/2023','2pm',6969),(9887,1012,175,'10/09/2023','2am',1717);
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_type` varchar(45) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `positions_available` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  KEY `k7_idx` (`department_id`),
  CONSTRAINT `k7` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (147,'Administrative Secretary',17,'2'),(175,'Executive Assistant',17,'2'),(238,'Project Manager',26,'1'),(319,'UX Designer',36,'2'),(323,'Web Designer',34,'1'),(343,'UI Designer',39,'1'),(378,'Graphic Designer',37,'2'),(538,'Business Support Manager',59,'1'),(629,'Office Coordinator',69,'1'),(721,'3D Artist',72,'2'),(745,'Art Director',72,'1'),(864,'Branding Specialist',89,'1');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions_offered`
--

DROP TABLE IF EXISTS `positions_offered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_offered` (
  `offer_id` int(11) NOT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`offer_id`),
  KEY `k5_idx` (`candidate_id`),
  KEY `k6_idx` (`position_id`),
  CONSTRAINT `k5` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`candidate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `k6` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions_offered`
--

LOCK TABLES `positions_offered` WRITE;
/*!40000 ALTER TABLE `positions_offered` DISABLE KEYS */;
INSERT INTO `positions_offered` VALUES (1471,1010,147),(1751,1012,175),(1752,1024,175),(2381,1011,238),(3231,1014,323),(3431,1026,343),(3781,1016,378),(5381,1017,538),(6291,1025,629),(7211,1020,721),(7212,1019,721),(7451,1022,745),(8641,1021,864);
/*!40000 ALTER TABLE `positions_offered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions_skills`
--

DROP TABLE IF EXISTS `positions_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions_skills` (
  `position_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`skill_id`),
  KEY `k9_idx` (`skill_id`),
  CONSTRAINT `k8` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `k9` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions_skills`
--

LOCK TABLES `positions_skills` WRITE;
/*!40000 ALTER TABLE `positions_skills` DISABLE KEYS */;
INSERT INTO `positions_skills` VALUES (147,109),(175,109),(238,109),(319,109),(629,109),(323,112),(343,112),(147,210),(538,210),(147,219),(721,269),(323,298),(147,301),(175,301),(238,301),(319,301),(864,301),(745,321),(745,324),(745,341),(238,347),(864,347),(175,412),(238,412),(538,412),(864,412),(175,431),(238,431),(629,431),(323,543),(378,543),(175,561),(238,561),(629,561),(538,623),(745,632),(864,632),(323,645),(343,645),(378,645),(721,645),(538,654),(864,654),(538,756),(378,765),(538,784),(629,784),(721,843),(147,865),(175,865),(238,865),(629,865),(745,865),(319,918),(721,918),(319,965),(323,965),(343,965),(319,987),(343,997),(378,997);
/*!40000 ALTER TABLE `positions_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (109,'Organizational Skills'),(112,'Web Dev Principles'),(210,'Multitasking'),(219,'Time Management'),(269,'3D Modeling'),(298,'Responsive Design'),(301,'Communication'),(321,'Animation'),(324,'Adaptability'),(341,'Creative Direction'),(347,'Stakeholder Management'),(412,'Problem-Solving'),(431,'Leadership'),(532,'Crisis Management'),(543,'Photoshop/Illustrator'),(561,'Interpersonal Skills'),(623,'Risk Management'),(632,'Visual Identity'),(645,'Continuous Learning'),(654,'Market Research'),(756,'Budget Management'),(765,'Graphic Design Softwares'),(784,'Negotiation Skills'),(843,'Prototyping'),(865,'Administrative Skills'),(918,'Usability Testing'),(965,'Concept Development'),(987,'Research'),(997,'Interaction Design');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pires23221657'
--

--
-- Dumping routines for database 'pires23221657'
--
/*!50003 DROP PROCEDURE IF EXISTS `candidates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidates`(
    IN p_candidate_id INT(11),
    IN p_first_name VARCHAR(45),
    IN p_surname VARCHAR(45),
    IN p_email VARCHAR(55),
    IN p_phone INT(11),
    IN p_address VARCHAR(45)
)
BEGIN
    INSERT INTO candidates (candidate_id, first_name, surname, email, phone, address)
    VALUES (p_candidate-id, p_first_name, p_surname, p_email, p_phone, p_address);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `candidate_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `candidate_skills`(
    IN p_candidate_id INT(11),
    IN p_skill_id INT(11)
)
BEGIN
    INSERT INTO candidate_skills (candidate_id, skill_id)
    VALUES (p_candidate_id, p_skill_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `departments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `departments`(
    IN p_department_id INT (11),
    IN p_department_name VARCHAR(45),
    IN p_address VARCHAR(45),
    IN p_extension_line INT(11),
    IN p_email VARCHAR(45),
    IN p_office_room INT (11)
)
BEGIN
    INSERT INTO departments (department_id, department_name, address, extension_line,
    email, office_room)
    VALUES (p_department_id, p_department_name, p_address, p_extension_line,
    p_email, p_office_room);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `interviews` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `interviews`(
    IN p_interview_id INT(11),
    IN p_candidate_id INT(11),
    IN p_position_id INT(11),
    IN p_interview_date VARCHAR(45),
    IN p_interview_time VARCHAR(45),
    IN p_interview_local INT(11)
)
BEGIN
    INSERT INTO interviews (interview_id, candidate_id, position_id, interview_date, 
    interview_time, interview_local)
    VALUES (p_interview_id,p_candidate_id,p_position_id, p_interview_date, 
    p_interview_time, p_interview_local);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `positions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `positions`(
    IN p_position_id INT(11),
    IN p_position_type VARCHAR(45),
    IN p_department_id INT(11),
    IN p_positions_available INT(11)
)
BEGIN
    INSERT INTO positions (position_id, position_type, department_id, positions_available)
    VALUES (p_position_id, p_position_type, p_department_id,p_positions_available);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `positions_offered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `positions_offered`(
    IN p_offer_id INT(11),
    IN p_candidate_id INT(11),
	IN p_position_id INT(11)
)
BEGIN
    INSERT INTO position_offered (offer_id, candidate_id, position_id)
    VALUES (p_offer_id, p_candidate_id, p_position_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `positions_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `positions_skills`(
    IN p_position_id INT(11),
    IN p_skill_id INT(11)
)
BEGIN
    INSERT INTO positions_skills (position_id, skill_id)
    VALUES (p_position_id, p_skill_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q10_positions_departments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q10_positions_departments`()
BEGIN
	SELECT positions.position_id, positions.position_type,
    departments.department_id, departments.department_name
	FROM positions, departments
	WHERE positions.department_id = departments.department_id;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q11_candidates_interviewed_morex1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q11_candidates_interviewed_morex1`()
BEGIN
	SELECT candidates.candidate_id, candidates.first_name, candidates.surname
	FROM candidates, interviews
	WHERE candidates.candidate_id = interviews.candidate_id 
    GROUP BY candidate_id
    HAVING count(interviews.interview_date ) > 1;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q1_candidate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q1_candidate`(IN candidate_name VARCHAR(200))
BEGIN
SELECT candidate_id, first_name, surname
FROM candidates
WHERE candidate_name=first_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q2_candidate_surname` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q2_candidate_surname`(IN candidate_identifier VARCHAR(200))
BEGIN
SELECT surname
FROM candidates
WHERE candidate_identifier=candidate_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q3_departments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q3_departments`(IN department VARCHAR(200))
BEGIN
SELECT department_id, department_name, address, extension_line, email, office_room
FROM departments
WHERE department=department_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q4_candidates_with_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q4_candidates_with_skill`()
BEGIN
	SELECT DISTINCT candidates.candidate_id, candidates.first_name, candidates.surname
	FROM candidates_skills, candidates
	WHERE candidates_skills.candidate_id = candidates.candidate_id 
    and candidates_skills.skill_id IS NOT NULL; 
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q5_positions_skill` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q5_positions_skill`(IN skill VARCHAR(200))
BEGIN
	SELECT positions.position_id, positions.position_type
	FROM positions, skills, positions_skills
	WHERE positions.position_id =  positions_skills.position_id 
    and skills.skill_id = positions_skills.skill_id 
    and skill=skills.skill_name;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q6_n_candidates_offered_position` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q6_n_candidates_offered_position`()
BEGIN
	SELECT count(candidate_id) 
	FROM positions_offered;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q7_n_positions_adm_skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q7_n_positions_adm_skills`()
BEGIN
	SELECT count(positions_skills.position_id)
	FROM positions_skills, skills
	WHERE positions_skills.skill_id=skills.skill_id 
    and skills.skill_name= "Administrative Skills";
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q8_idcandidates_interview_ondate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q8_idcandidates_interview_ondate`(IN interviewing_date VARCHAR(200))
BEGIN
	SELECT DISTINCT candidate_id
	FROM interviews
	WHERE interviewing_date = interview_date;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Q9_interview_ondate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Q9_interview_ondate`(IN interviewing_date VARCHAR(200))
BEGIN
	SELECT interview_id
	FROM interviews
	WHERE interviewing_date = interview_date;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `skills` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `skills`(
    IN p_skill_id INT(11),
    IN p_skill_name VARCHAR(45)
)
BEGIN
    INSERT INTO skills (skill_id, skill_name)
    VALUES (p_skill_id, p_skill_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-18 12:10:56
