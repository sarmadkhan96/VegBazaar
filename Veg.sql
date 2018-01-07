-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: veg
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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `Cust_id` int(11) DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Shipment_charges` int(11) DEFAULT NULL,
  KEY `Cust_id` (`Cust_id`),
  KEY `Product_id` (`Product_id`),
  CONSTRAINT `card_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`),
  CONSTRAINT `card_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `products` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_history`
--

DROP TABLE IF EXISTS `cust_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_history` (
  `Cust_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  KEY `Cust_id` (`Cust_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `cust_history_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`),
  CONSTRAINT `cust_history_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_history`
--

LOCK TABLES `cust_history` WRITE;
/*!40000 ALTER TABLE `cust_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cust_order`
--

DROP TABLE IF EXISTS `cust_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust_order` (
  `Cust_id` int(11) DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Shipment_charges` int(11) DEFAULT NULL,
  KEY `Cust_id` (`Cust_id`),
  KEY `Product_id` (`Product_id`),
  CONSTRAINT `cust_order_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`),
  CONSTRAINT `cust_order_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `products` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust_order`
--

LOCK TABLES `cust_order` WRITE;
/*!40000 ALTER TABLE `cust_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `cust_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cust_name` varchar(30) DEFAULT NULL,
  `Cust_Phone` bigint(20) DEFAULT NULL,
  `Cust_Adr` text,
  `Postal_Code` int(11) DEFAULT NULL,
  `Email` text,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'SaadKhan',3003629636,'demo demo street demo city demo lane',75300,'saadkhan12001@gmail.com','1234'),(2,'SaadKhan',3003629636,'demo demo street demo city demo lane',75300,'saadkhan12001@gmail.com','1234');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `Product_id` int(11) NOT NULL AUTO_INCREMENT,
  `Product_name` varchar(30) DEFAULT NULL,
  `Brand` varchar(30) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Tax` int(11) DEFAULT NULL,
  `discounted_price` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `Shipment_Charges` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `product_Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tomatoes','-',30,5,NULL,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'tomato.jpg'),(2,'Potatoes','-',40,5,NULL,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'Productalo.jpg'),(3,'Ginger','-',20,5,0,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'product1.jpg'),(4,'Cabbage','-',50,5,NULL,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'cabbage.jpg'),(5,'Chilli','-',10,5,NULL,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'chilli.jpg'),(6,'Cucumber','-',15,5,NULL,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',40,1000,'cucumber.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_images`
--

DROP TABLE IF EXISTS `products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_images` (
  `Product_id` int(11) DEFAULT NULL,
  `Product_Img` blob NOT NULL,
  KEY `Product_id` (`Product_id`),
  CONSTRAINT `products_images_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `products` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_images`
--

LOCK TABLES `products_images` WRITE;
/*!40000 ALTER TABLE `products_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-07 19:16:04
