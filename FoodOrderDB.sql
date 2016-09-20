-- MySQL dump 10.13  Distrib 5.7.10, for Win64 (x86_64)
--
-- Host: localhost    Database: food_order
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `menucatagory`
--

DROP TABLE IF EXISTS `menucatagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menucatagory` (
  `MenuCatagoryId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Order` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MenuCatagoryId`),
  KEY `Name` (`Name`),
  KEY `Order` (`Order`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menucatagory`
--

LOCK TABLES `menucatagory` WRITE;
/*!40000 ALTER TABLE `menucatagory` DISABLE KEYS */;
INSERT INTO `menucatagory` VALUES (1,'Vegetables',0,'2016-09-11 08:17:53'),(2,'Fruit',0,'2016-09-11 08:17:53'),(3,'Grain / high cereal fibre',0,'2016-09-11 08:17:53'),(4,'Meat',0,'2016-09-11 08:17:53'),(5,'Dairy',0,'2016-09-11 08:17:53');
/*!40000 ALTER TABLE `menucatagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem` (
  `MenuItemId` int(11) NOT NULL AUTO_INCREMENT,
  `MenuCatagoryId` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Order` int(11) NOT NULL,
  `Visible` tinyint(1) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MenuItemId`),
  KEY `a_foreignKey` (`MenuCatagoryId`),
  KEY `Name` (`Name`),
  KEY `Description` (`Description`),
  KEY `Price` (`Price`),
  KEY `Order` (`Order`),
  KEY `Visible` (`Visible`),
  CONSTRAINT `fk_MenCatagoryId_o` FOREIGN KEY (`MenuCatagoryId`) REFERENCES `menucatagory` (`MenuCatagoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES (1,1,'Salad','Greek Salad',30.00,0,0,'2016-09-11 08:24:06'),(2,1,'Tomato','baby Tomato',10.00,0,0,'2016-09-11 08:24:06'),(3,2,'Orange','Orange',5.00,0,0,'2016-09-11 08:24:06'),(4,2,'Apple','Apple',5.00,0,0,'2016-09-11 08:24:06'),(5,3,'Porrage','Pro Nutro',35.00,0,0,'2016-09-11 08:24:06'),(6,3,'Porrage','weetbix',40.00,0,0,'2016-09-11 08:24:06'),(7,4,'Poltry','Chicken Strips',30.00,0,0,'2016-09-11 08:27:08'),(8,4,'Fish','Snook',35.00,0,0,'2016-09-11 08:27:08'),(9,5,'Milk','Sterry Stumpy',15.00,0,0,'2016-09-11 08:28:44'),(10,5,'Yogurt','Denon Yogurt',20.00,0,0,'2016-09-11 08:28:44');
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem_h`
--

DROP TABLE IF EXISTS `menuitem_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem_h` (
  `MenuItemId` int(11) NOT NULL AUTO_INCREMENT,
  `MenuCatagoryId` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Order` int(11) NOT NULL,
  `Visible` tinyint(1) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`MenuItemId`),
  KEY `a_foreignKey` (`MenuCatagoryId`),
  KEY `Name` (`Name`),
  KEY `Description` (`Description`),
  KEY `Price` (`Price`),
  KEY `Order` (`Order`),
  KEY `Visible` (`Visible`),
  CONSTRAINT `fk_MenCatagoryId_h` FOREIGN KEY (`MenuCatagoryId`) REFERENCES `menucatagory` (`MenuCatagoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem_h`
--

LOCK TABLES `menuitem_h` WRITE;
/*!40000 ALTER TABLE `menuitem_h` DISABLE KEYS */;
INSERT INTO `menuitem_h` VALUES (1,1,'Salad','Greek Salad',30.00,0,0,'2016-09-11 08:24:06'),(2,1,'Tomato','baby Tomato',10.00,0,0,'2016-09-11 08:24:06'),(3,2,'Orange','Orange',5.00,0,0,'2016-09-11 08:24:06'),(4,2,'Apple','Apple',5.00,0,0,'2016-09-11 08:24:06'),(5,3,'Porrage','Pro Nutro',35.00,0,0,'2016-09-11 08:24:06'),(6,3,'Porrage','weetbix',40.00,0,0,'2016-09-11 08:24:06'),(7,4,'Poltry','Chicken Strips',30.00,0,0,'2016-09-11 08:27:08'),(8,4,'Fish','Snook',35.00,0,0,'2016-09-11 08:27:08'),(9,5,'Milk','Sterry Stumpy',15.00,0,0,'2016-09-11 08:28:44'),(10,5,'Yogurt','Denon Yogurt',20.00,0,0,'2016-09-11 08:28:44');
/*!40000 ALTER TABLE `menuitem_h` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-14 21:52:10
