CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `store`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `employeedetails2`
--

DROP TABLE IF EXISTS `employeedetails2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeedetails2` (
  `EMPID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(45) CHARACTER SET big5 NOT NULL,
  `LASTNAME` varchar(45) DEFAULT NULL,
  `GENDER` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `ROLE` varchar(45) DEFAULT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  `EMAIL` varchar(45) NOT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeedetails2`
--

LOCK TABLES `employeedetails2` WRITE;
/*!40000 ALTER TABLE `employeedetails2` DISABLE KEYS */;
INSERT INTO `employeedetails2` VALUES (1,'s','s','m','1995-05-05','A','Admin','-121-39-11188343172-46','R1','sriram.itec@gmail.com'),(2,'f','l','m','1995-05-06','S','Sales Manager','3138-514141-663847','R2','sriram.itec@gmail.com'),(3,'r1','l1','m','1995-05-07','S','Sales Representative','-9284-1845-4-395056','Reg1','sriram.itec@gmail.com'),(4,'r2','l2','m','1995-05-08','S','Sales Representative','86331009172-13490','Reg2','sriram.itec@gmail.com'),(5,'r3','l3','m','1995-05-09','S','Sales Representative','-118-70-34107-1216-69-23','Reg3','sriram.itec@gmail.com'),(6,'r4','l4','m','1995-05-03','S','Sales Representative','-4-125-5516728111-6','Reg4','sriram.itec@gmail.com');
/*!40000 ALTER TABLE `employeedetails2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` varchar(45) DEFAULT NULL,
  `REGION` varchar(45) DEFAULT NULL,
  `STORE` varchar(45) DEFAULT NULL,
  `PRODUCT_CATEGORY` varchar(45) DEFAULT NULL,
  `PRODUCT_NAME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'produc4','North','S','Home Appliances','milk products'),(2,'produc14','North','T','Home Appliances','Fine Clothes'),(3,'produc3','South','U','Men Apparel','Goods'),(4,'produc4','South','V','Men Apparel','Wires'),(5,'produc5','North','A','Kids Apparel','Boards'),(6,'produc6','North','B','Kids Apparel','tubes'),(7,'produc7','South','C','Women Apparel','sockets'),(8,'produc8','South','D','Women Apparel','exams sheets');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `billid` int(11) NOT NULL AUTO_INCREMENT,
  `selling_date` varchar(45) DEFAULT NULL,
  `sales_amount` int(11) DEFAULT NULL,
  `cust_name` varchar(45) DEFAULT NULL,
  `cust_address` varchar(45) DEFAULT NULL,
  `contact_no` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'4aug',34,'Alex','12',0,4);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `store` varchar(45) DEFAULT NULL,
  `product_category` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('produc2','North','S','Home Appliances','milk products',0),('produc3','North','S','Home Appliances','milk products',0),('produc4','North','S','Home Appliances','milk products',0),('produc3','North','T','Home Appliances','Fine Clothes',0),('produc4','North','T','Home Appliances','Fine Clothes',0),('produc5','North','T','Home Appliances','Fine Clothes',0),('produc6','North','T','Home Appliances','Fine Clothes',0),('produc7','North','T','Home Appliances','Fine Clothes',0),('produc8','North','T','Home Appliances','Fine Clothes',0),('produc9','North','T','Home Appliances','Fine Clothes',0),('produc10','North','T','Home Appliances','Fine Clothes',0),('produc11','North','T','Home Appliances','Fine Clothes',0),('produc12','North','T','Home Appliances','Fine Clothes',0),('produc13','North','T','Home Appliances','Fine Clothes',0),('produc14','North','T','Home Appliances','Fine Clothes',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) DEFAULT NULL,
  `productquantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesworkflow_osms3`
--

DROP TABLE IF EXISTS `salesworkflow_osms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesworkflow_osms3` (
  `EMPID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_NAME` varchar(45) NOT NULL,
  `PRODUCT_QUANTITY` int(11) DEFAULT NULL,
  `DATEOFSALE` varchar(45) DEFAULT NULL,
  `REDUCTIONLIMIT` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesworkflow_osms3`
--

LOCK TABLES `salesworkflow_osms3` WRITE;
/*!40000 ALTER TABLE `salesworkflow_osms3` DISABLE KEYS */;
INSERT INTO `salesworkflow_osms3` VALUES (3,'milk',1,'4 th Aug',1),(4,'milk',4,'4 th Aug',2),(5,'Fine',2,'4 th Aug',45),(6,'milk',23,'12 May 2017',10);
/*!40000 ALTER TABLE `salesworkflow_osms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-02 23:39:21
