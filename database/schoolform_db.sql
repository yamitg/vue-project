-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolform
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `qualifications`
--

DROP TABLE IF EXISTS `qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` varchar(45) DEFAULT NULL,
  `current_educational_institution` varchar(45) DEFAULT NULL,
  `field_of_study` varchar(45) DEFAULT NULL,
  `percentage` varchar(45) DEFAULT NULL,
  `academic_achievements` longtext,
  `awards` longtext,
  `extracurricular_activities` varchar(45) DEFAULT NULL,
  `relevant_certifications` varchar(45) DEFAULT NULL,
  `skills` varchar(45) DEFAULT NULL,
  `any_additional_information` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifications`
--

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;
INSERT INTO `qualifications` VALUES (1,'4','WETGH','FRDGS','SFDG','dfgxh','dfgxh','fgndbv','dfgndbf','dfghfg','dfgnb'),(2,'4','werdtyshgshf','ertyhtdgd','76%','{\"title\":\"at_dgyjhkjn\",\"year\":\"2022\",\"description\":\"ad_xfcghgvjbhk\"}','\"{\"title\":\"awt_cfgbhkjnmk\",\"body\":\"awb_dxgcfhgvjbhkjn\",\"year\":\"2023\"}\"','cfhgkjlcfgk','cfhmbgnbcgnm','html,css','xghlghxgdthgukhgdth'),(3,'12','central u h','Edge','76%','{\"title\":\"at_dgyjhkjn\",\"year\":\"2022\",\"description\":\"ad_xfcghgvjbhk\"}','\"{\"title\":\"awt_cfgbhkjnmk\",\"body\":\"awb_dxgcfhgvjbhkjn\",\"year\":\"2023\"}\"','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg'),(4,'13','central u h','Edge','76%','{\"title\":\"at_dgyjhkjn\",\"year\":\"2022\",\"description\":\"ad_xfcghgvjbhk\"}','\"{\"title\":\"awt_cfgbhkjnmk\",\"body\":\"awb_dxgcfhgvjbhkjn\",\"year\":\"2023\"}\"','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg'),(5,'14','central u h','Edge','76%','{\"title\":\"at_dgyjhkjn\",\"year\":\"2022\",\"description\":\"ad_xfcghgvjbhk\"}','\"{\"title\":\"awt_cfgbhkjnmk\",\"body\":\"awb_dxgcfhgvjbhkjn\",\"year\":\"2023\"}\"','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg'),(6,'15','central u h','Edge','76%','{\"title\":\"at_dgyjhkjn\",\"year\":\"2022\",\"description\":\"ad_xfcghgvjbhk\"}','\"{\"title\":\"awt_cfgbhkjnmk\",\"body\":\"awb_dxgcfhgvjbhkjn\",\"year\":\"2023\"}\"','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg'),(7,'16','central u h','Edge','76%','','','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg'),(8,'17','central u h','Edge','76%','','','gfhgjhjyhbdf','hfjgvhkjnd','html','fhedghkjkfxdg');
/*!40000 ALTER TABLE `qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  `Date_of_Birth` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Email_Address` varchar(45) DEFAULT NULL,
  `Contact_Number` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Preferred_Language` varchar(45) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Emergency_Contact_Name` varchar(45) DEFAULT NULL,
  `Emergency_Contact_Number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Amit Kumar','Last_Name','09-09-2023','male','AMY@321GMAIL.COM','9876543211','village jant poast office\nalwqAN','MAHENDRAGARH','HARYANA','INDIA','english','indian','ajay yadav','8886543214'),(2,'Amit Kumar','Last_Name','09-09-2023','male','AMY@321GMAIL.COM','9876543211','village jant poast office\nalwqAN','MAHENDRAGARH','HARYANA','INDIA','english','indian','ajay yadav','8886543214'),(3,'Amit Kumar','Last_Name','09-09-2023','male','AMY@321GMAIL.COM','9876543211','village jant poast office\nalwqAN','MAHENDRAGARH','HARYANA','INDIA','english','indian','ajay yadav','8886543214'),(4,'Amit Kumar','Last_Name','09-09-2023','male','AMY@321GMAIL.COM','9876543211','village jant poast office alwqAN','MAHENDRAGARH','HARYANA','INDIA','english','indian','ajay yadav','8886543214'),(5,'vertyujhjfgdxfhkbvnbnbm','bvmvcbhmvnbnbhj','','','','','','','','','','','',''),(6,'monu','yadav','','','','','','','','','','','',''),(7,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(8,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(9,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(10,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(11,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(12,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(13,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(14,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(15,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(16,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495'),(17,'ajay yadav','monika ji','06/12/1996','female','ajaykumar123@gmail.com','9466076046','jant','mahendragarh','Haryana','India','English','ALBANIAN','amit','9518049495');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentmoredetail`
--

DROP TABLE IF EXISTS `studentmoredetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentmoredetail` (
  `details_id` int NOT NULL AUTO_INCREMENT,
  `qualifications_id` varchar(45) DEFAULT NULL,
  `detail_type` varchar(45) DEFAULT NULL,
  `detail_title` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentmoredetail`
--

LOCK TABLES `studentmoredetail` WRITE;
/*!40000 ALTER TABLE `studentmoredetail` DISABLE KEYS */;
INSERT INTO `studentmoredetail` VALUES (1,'7','achieve','dgfhkjlkjh','2023-09-20','fhcgjkhj'),(2,'7','award','dgfhkjlkjh','2023-09-14','fhcgjkhj'),(3,'8','achieve','dgfhkjlkjh','2023-09-06','fhcgjkhj'),(4,'8','award','dgfhkjlkjh','2023-09-20','fhcgjkhj');
/*!40000 ALTER TABLE `studentmoredetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-09 17:12:47
