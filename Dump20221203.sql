-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: abode
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `amenities` (
  `amenitiesid` int(11) NOT NULL AUTO_INCREMENT,
  `amenities` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`amenitiesid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Do you have any stand out Amenities?'),(2,'What about these  guest favourites?'),(3,'Have any of these safety items?');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenitiesoptions`
--

DROP TABLE IF EXISTS `amenitiesoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `amenitiesoptions` (
  `optionsid` int(11) NOT NULL AUTO_INCREMENT,
  `amenitiesid` int(11) NOT NULL,
  `optionname` tinytext,
  `icon` tinytext,
  PRIMARY KEY (`optionsid`,`amenitiesid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenitiesoptions`
--

LOCK TABLES `amenitiesoptions` WRITE;
/*!40000 ALTER TABLE `amenitiesoptions` DISABLE KEYS */;
INSERT INTO `amenitiesoptions` VALUES (4,1,'Pool','2b03296b-ace1-4060-a0f9-a8756aefa388.png'),(5,1,'Hot tub','d4b09693-d982-44d3-b614-0b1f6e05bbc9.png'),(6,1,'Fire pit','6c9d8692-5e23-4080-954d-15c8901eb56e.png'),(7,1,'Pool Table','02d658a0-e5ea-4e2f-a7ac-19b74433c4d1.png'),(8,2,'Wifi','296e82a3-79b6-488e-8b3c-53321e14bd08.gif'),(9,2,'TV','1c88b13a-9afa-414f-bd1b-2b867304b834.png'),(10,2,'Air Conditioner','dde7034f-433c-4990-ad5e-fd344c95ef95.png'),(11,3,'Fire exit','90abee95-b78c-44f0-8f9c-95a9ba7617df.png'),(12,3,'First Aid Box','c33e0ddb-a141-43a0-bdd7-e239095d445a.png'),(13,1,'Patio','1f7f8d1d-fc50-425e-a7bd-5885bb484d6a.png'),(14,1,'BBQ Grill','99acd740-5e7c-4eda-a702-669c585e0b3f.png'),(15,1,'Indoor Fireplace','8f604c3f-2b20-4881-a16d-27af1075c144.png'),(16,1,'Exercise equipments','fb698779-3ed4-4d26-9f1e-89c79ffbd811.png'),(17,2,'Kitchen','854c51b3-c867-41da-a927-8846dd07456e.png'),(18,2,'Washing Machine','a7920330-3779-4cf6-b854-7f9e98f9a18d.png'),(19,2,'Free Parking on premises','5074779d-639a-4821-a5d3-246206e4828d.png'),(20,2,'Paid Parking on premises','38fa0ff7-89e6-4771-a618-301dd4ea49fd.png'),(21,2,'Dedicated workspace','0f98ea69-795a-469b-85c5-167e50785b51.png'),(22,2,'Outdoor Shower','c5ea527b-f97d-4d81-9439-e708ed2457ed.png'),(25,3,'Lock on Bedroom','c6a2bea7-ecdd-4dc6-844a-284495e217ae.jpg'),(26,3,'Smoke alarm','34b4d1a1-32d4-443a-ab90-e163029ed11c.png');
/*!40000 ALTER TABLE `amenitiesoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cities` (
  `cityid` int(11) NOT NULL AUTO_INCREMENT,
  `stateid` int(11) NOT NULL,
  `cityname` text,
  `picture` text,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (2,2,'Gwalior','{\"0\":\"1.png\",\"1\":\"2.png\",\"2\":\"3.png\",\"3\":\"4.png\"}'),(7,2,'Rewa','{\"0\":\"5.png\",\"1\":\"6.png\",\"2\":\"7.png\",\"3\":\"8.png\"}'),(8,1,'Jaipur','{\"0\":\"9.png\",\"1\":\"10.png\",\"2\":\"11.png\",\"3\":\"12.png\"}'),(9,1,'Ajmer','{\"0\":\"13.png\",\"1\":\"14.png\",\"2\":\"15.png\",\"3\":\"16.png\"}'),(10,1,'Karauli','{\"0\":\"13.png\",\"1\":\"14.png\",\"2\":\"15.png\",\"3\":\"16.png\"}'),(11,2,'Indore','{\"0\":\"13.png\",\"1\":\"14.png\",\"2\":\"15.png\",\"3\":\"16.png\"}'),(12,23,'Agra','{\"0\":\"51558cfd-ce78-4cff-bf65-b18ce141e26f.png\",\"1\":\"3f40806e-73c4-483c-98d8-7a573d828971.png\",\"2\":\"31b201ff-5618-4002-ac23-e69e71e89e96.png\",\"3\":\"4d8a8db8-19e6-4b18-bddc-a908f5dda259.png\",\"4\":\"8471b835-4a3b-4e6e-aa19-25125027b4f5.png\"}');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertysubtype`
--

DROP TABLE IF EXISTS `propertysubtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `propertysubtype` (
  `propertyid` int(11) NOT NULL,
  `subpropertyid` int(11) NOT NULL AUTO_INCREMENT,
  `subpropertyname` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subpropertyid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertysubtype`
--

LOCK TABLES `propertysubtype` WRITE;
/*!40000 ALTER TABLE `propertysubtype` DISABLE KEYS */;
INSERT INTO `propertysubtype` VALUES (2,2,'Rental unit','A rented place within a multi-unit residential building or complex.'),(2,3,'Apartment','A place within a multi-unit building or complex owned by the residents.'),(2,4,'Loft','An open-plan flat or apartment, which may have short interior walls.'),(2,5,'Serviced apartment','An apartment with hotel-like amenities serviced by a professional management company'),(3,6,'Casa Particular','A finished rental property that includes a kitchen and bathroom and may offer some guest services such as a reception desk');
/*!40000 ALTER TABLE `propertysubtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `states` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `statename` text,
  `picture` text,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Rajasthan','d5884563-af81-4ab7-ab92-3221206ad8bd.png'),(2,'Madhya Pradesh','9e107a4d-07e5-4363-bb7e-d7135e04e8cd.png'),(13,'Andhra Pradesh','4174122c-8299-4dc9-a521-de486082f30e.png'),(16,'Bihar','32313eb5-2d84-4335-b607-ade2212f972c.png'),(22,'Gujrat','00f03911-f3ca-409f-a8fb-ab915128a750.png'),(23,'Uttar Pradesh','cef64e3e-e2b5-407b-ac72-b494069341c1.png'),(24,'Goa','060afd81-bff8-46de-a23d-362014d2a33e.jpg'),(25,'Maharashtra','e34387f3-6d7d-4f5e-86b7-c06ef61eaec6.png'),(26,'Haryana','b6e2fdc6-b370-4218-8268-c463a5f5352b.png'),(27,'Chandigarh','c91e38ab-efcf-48f3-9953-50bf97740c3d.png'),(28,'Chattisgarh','3b7f3198-589d-429d-878c-80fb0b6555f6.png'),(29,'Arunachal Pradesh','88fe5915-d615-49f8-9110-e2ca93396092.png'),(30,'Assam','b918d12e-8542-47d1-9f24-2bd93b22e6d7.jpg'),(31,'Himachal Pradesh','25b4b803-fa23-4bdf-bab3-2646275848e1.png'),(32,'Jharkhand','8f188961-e6f5-4859-911d-848d77d8add5.png'),(33,'Karnataka','1e503865-c07d-4a6e-8dde-413a0bec6497.jpg');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superadmin`
--

DROP TABLE IF EXISTS `superadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `superadmin` (
  `emailid` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superadmin`
--

LOCK TABLES `superadmin` WRITE;
/*!40000 ALTER TABLE `superadmin` DISABLE KEYS */;
INSERT INTO `superadmin` VALUES ('jakshat736@gmail.com','Akshat','Jain','Akshat22');
/*!40000 ALTER TABLE `superadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typesofproperties`
--

DROP TABLE IF EXISTS `typesofproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `typesofproperties` (
  `propertyid` int(11) NOT NULL AUTO_INCREMENT,
  `propertytype` varchar(45) NOT NULL,
  `propertyicon` text NOT NULL,
  PRIMARY KEY (`propertyid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typesofproperties`
--

LOCK TABLES `typesofproperties` WRITE;
/*!40000 ALTER TABLE `typesofproperties` DISABLE KEYS */;
INSERT INTO `typesofproperties` VALUES (1,'Full space','acb28acb-9aae-4d48-aa18-1a407f0a5d6c.jpeg'),(2,'Flat','8681ccf7-6abb-4af2-9af7-8dc738a64495.jpeg'),(3,'House','4998f601-9a3f-4994-a5e5-ac6cd29c7399.jpg'),(4,'Secondary unit','e07fde4d-0dc5-4e66-8618-d459568fa87f.jpg'),(5,'Unique space','2ea30110-fc44-4879-b7ac-8a044f2fde65.jpg'),(6,'Bed and Breakfat','2ea30110-fc44-4879-b7ac-8a044f2fde65.jpg');
/*!40000 ALTER TABLE `typesofproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendorproperties`
--

DROP TABLE IF EXISTS `vendorproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vendorproperties` (
  `vendorpropertyid` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(45) DEFAULT NULL,
  `mobileno` varchar(45) DEFAULT NULL,
  `propertyid` int(11) DEFAULT NULL,
  `subpropertyid` int(11) DEFAULT NULL,
  `propertystatus` text,
  `address` text,
  `placeoffer` text,
  `amenities` text,
  `pictures` text,
  `placedescription` text,
  `title` text,
  `price` int(11) DEFAULT NULL,
  `offerprice` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'notcompleted',
  PRIMARY KEY (`vendorpropertyid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendorproperties`
--

LOCK TABLES `vendorproperties` WRITE;
/*!40000 ALTER TABLE `vendorproperties` DISABLE KEYS */;
INSERT INTO `vendorproperties` VALUES (2,'jakshat736@gmail.com','7225051627',2,3,'1','{\"latlng\":{\"lat\":10.873811,\"lng\":78.7070959},\"street\":\"Number 1 Tollgate Road, No 1 Tollgate\",\"flat\":\"\",\"city\":\"jaipuri\",\"state\":\"India\",\"country\":\"621216\",\"postcode\":\"474011\"}','[{\"id\":1,\"option\":\"Guests\",\"value\":2},{\"id\":2,\"option\":\"Beds\",\"value\":2},{\"id\":3,\"option\":\"Bedrooms\",\"value\":2},{\"id\":4,\"option\":\"Bathrooms\",\"value\":2}]','{\"4\":{\"icon\":\"2b03296b-ace1-4060-a0f9-a8756aefa388.png\",\"optionid\":4,\"optionname\":\"Pool\"},\"5\":{\"icon\":\"d4b09693-d982-44d3-b614-0b1f6e05bbc9.png\",\"optionid\":5,\"optionname\":\"Hot tub\"},\"7\":{\"icon\":\"02d658a0-e5ea-4e2f-a7ac-19b74433c4d1.png\",\"optionid\":7,\"optionname\":\"Pool Table\"},\"10\":{\"icon\":\"dde7034f-433c-4990-ad5e-fd344c95ef95.png\",\"optionid\":10,\"optionname\":\"Air Conditioner\"},\"11\":{\"icon\":\"90abee95-b78c-44f0-8f9c-95a9ba7617df.png\",\"optionid\":11,\"optionname\":\"Fire exit\"},\"12\":{\"icon\":\"c33e0ddb-a141-43a0-bdd7-e239095d445a.png\",\"optionid\":12,\"optionname\":\"First Aid Box\"},\"13\":{\"icon\":\"1f7f8d1d-fc50-425e-a7bd-5885bb484d6a.png\",\"optionid\":13,\"optionname\":\"Patio\"},\"14\":{\"icon\":\"99acd740-5e7c-4eda-a702-669c585e0b3f.png\",\"optionid\":14,\"optionname\":\"BBQ Grill\"},\"17\":{\"icon\":\"854c51b3-c867-41da-a927-8846dd07456e.png\",\"optionid\":17,\"optionname\":\"Kitchen\"},\"19\":{\"icon\":\"5074779d-639a-4821-a5d3-246206e4828d.png\",\"optionid\":19,\"optionname\":\"Free Parking on premises\"},\"20\":{\"icon\":\"38fa0ff7-89e6-4771-a618-301dd4ea49fd.png\",\"optionid\":20,\"optionname\":\"Paid Parking on premises\"}}','{\"0\":\"5a73d0a4-5f60-4217-bffe-e4ae171749e0.jpeg\",\"1\":\"a707ce7c-8f9b-4cbf-b841-3aa7beac810b.jpeg\",\"2\":\"0d080d96-afb0-497a-bbe0-0ca4b269443a.jpg\"}','good place','place',9000,8000,'completed'),(3,'Akshat12@gmail.com','7415967627',2,3,'2','{\"latlng\":{\"lat\":26.2160995,\"lng\":78.20230590000001},\"street\":\"numericinfosystems, Mayur Nagar\",\"flat\":\"\",\"city\":\"Gwalior\",\"state\":\"Madhya Pradesh\",\"country\":\"India\",\"postcode\":\"474011\"}','[{\"id\":1,\"option\":\"Guests\",\"value\":4},{\"id\":2,\"option\":\"Beds\",\"value\":2},{\"id\":3,\"option\":\"Bedrooms\",\"value\":4},{\"id\":4,\"option\":\"Bathrooms\",\"value\":4}]','{\"4\":{\"icon\":\"2b03296b-ace1-4060-a0f9-a8756aefa388.png\",\"optionid\":4,\"optionname\":\"Pool\"},\"6\":{\"icon\":\"6c9d8692-5e23-4080-954d-15c8901eb56e.png\",\"optionid\":6,\"optionname\":\"Fire pit\"},\"7\":{\"icon\":\"02d658a0-e5ea-4e2f-a7ac-19b74433c4d1.png\",\"optionid\":7,\"optionname\":\"Pool Table\"},\"8\":{\"icon\":\"296e82a3-79b6-488e-8b3c-53321e14bd08.gif\",\"optionid\":8,\"optionname\":\"Wifi\"},\"9\":{\"icon\":\"1c88b13a-9afa-414f-bd1b-2b867304b834.png\",\"optionid\":9,\"optionname\":\"TV\"},\"12\":{\"icon\":\"c33e0ddb-a141-43a0-bdd7-e239095d445a.png\",\"optionid\":12,\"optionname\":\"First Aid Box\"},\"14\":{\"icon\":\"99acd740-5e7c-4eda-a702-669c585e0b3f.png\",\"optionid\":14,\"optionname\":\"BBQ Grill\"},\"15\":{\"icon\":\"8f604c3f-2b20-4881-a16d-27af1075c144.png\",\"optionid\":15,\"optionname\":\"Indoor Fireplace\"},\"16\":{\"icon\":\"fb698779-3ed4-4d26-9f1e-89c79ffbd811.png\",\"optionid\":16,\"optionname\":\"Exercise equipments\"}}','{\"0\":\"80a848a5-b23b-4b3e-8f01-17807493c927.png\",\"1\":\"cd194280-13f1-4c77-9e3e-d2e147466873.png\",\"2\":\"a3cdb75b-a643-436d-aadb-dc8157e9bd1a.png\",\"3\":\"ea6b9822-cc16-4b73-82e4-d5b6d396a172.png\",\"4\":\"a33ecd2a-9ece-4f6a-a704-d4e1d20eabc3.png\"}','A good place','Akshat\'s Place',1300,1200,'completed'),(4,'Jakshat736@gmail.com','7879212961',2,3,'1','{\"latlng\":{\"lat\":26.1993332,\"lng\":78.14845969999999},\"street\":\"Jiwaji Chowk, Sarafa Bazar\",\"flat\":\"\",\"city\":\"Gwalior\",\"state\":\"Madhya Pradesh\",\"country\":\"India\",\"postcode\":\"474001\"}','[{\"id\":1,\"option\":\"Guests\",\"value\":4},{\"id\":2,\"option\":\"Beds\",\"value\":3},{\"id\":3,\"option\":\"Bedrooms\",\"value\":3},{\"id\":4,\"option\":\"Bathrooms\",\"value\":3}]','{\"10\":{\"icon\":\"dde7034f-433c-4990-ad5e-fd344c95ef95.png\",\"optionid\":10,\"optionname\":\"Air Conditioner\"},\"17\":{\"icon\":\"854c51b3-c867-41da-a927-8846dd07456e.png\",\"optionid\":17,\"optionname\":\"Kitchen\"}}','{\"0\":\"3076bacc-e82b-417a-b13e-5aefb11e388d.jpeg\",\"1\":\"16fbb32a-53e9-4938-a7ad-a84da98f64a4.jpeg\",\"2\":\"db8b49fb-701b-4026-87ee-774603567375.jpeg\",\"3\":\"5ca341f6-2138-4712-bb5c-9391eff9292e.jpeg\"}','a good place','jain house',1500,1450,'completed'),(5,'AK123@gmail.com','8225818842',2,3,'1','{\"latlng\":{\"lat\":24.5379234,\"lng\":81.2573834},\"street\":\"Rewa Railway Station Road, Padra\",\"flat\":\"\",\"city\":\"Rewa\",\"state\":\"India\",\"country\":\"486001\",\"postcode\":\"474008\"}','[{\"id\":1,\"option\":\"Guests\",\"value\":2},{\"id\":2,\"option\":\"Beds\",\"value\":2},{\"id\":3,\"option\":\"Bedrooms\",\"value\":2},{\"id\":4,\"option\":\"Bathrooms\",\"value\":2}]','{\"5\":{\"icon\":\"d4b09693-d982-44d3-b614-0b1f6e05bbc9.png\",\"optionid\":5,\"optionname\":\"Hot tub\"},\"6\":{\"icon\":\"6c9d8692-5e23-4080-954d-15c8901eb56e.png\",\"optionid\":6,\"optionname\":\"Fire pit\"},\"13\":{\"icon\":\"1f7f8d1d-fc50-425e-a7bd-5885bb484d6a.png\",\"optionid\":13,\"optionname\":\"Patio\"},\"14\":{\"icon\":\"99acd740-5e7c-4eda-a702-669c585e0b3f.png\",\"optionid\":14,\"optionname\":\"BBQ Grill\"},\"16\":{\"icon\":\"fb698779-3ed4-4d26-9f1e-89c79ffbd811.png\",\"optionid\":16,\"optionname\":\"Exercise equipments\"}}','{\"0\":\"c1ce7fa5-7e0c-4693-b6ac-783c7c22458e.png\",\"1\":\"b24cbc70-dd85-4740-a8f4-3815459aae6a.png\",\"2\":\"1f1c6a54-6e2a-4d79-a6da-747532dfbd96.png\",\"3\":\"a77770d5-a79d-404f-a19f-ad9dbbeec345.png\",\"4\":\"6d14b8b9-8e5b-4cf0-8ab7-bd771b787fc2.png\"}','A well luxury room','Luxury room',1450,1300,'completed'),(6,'achal@gmail.com','6265125885',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted'),(7,'k@gmail.com','7412124585',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted'),(8,'Achal@gmail.com','4546848585',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted'),(9,'Akshat@gmail.com','1234567899',2,2,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted'),(10,'Jaskaht123@gmail.com','1234567891',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted'),(11,'j@gmail.com','7455848586',2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'notcompleted');
/*!40000 ALTER TABLE `vendorproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vendors` (
  `emailid` varchar(45) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mobileno`,`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES ('Jaskaht123@gmail.com','1234567891','Akshat ','Jain','2022-09-11'),('Akshat@gmail.com','1234567899','Ram','Sharma','2022-08-01'),('Achal@gmail.com','4546848585','Akshat ','achal','2022-07-01'),('achal@gmail.com','6265125885','Akshat ','achal','2022-07-10'),('jakshat736@gmail.com','7225051627','Akshat ','Jain','2022-07-18'),('k@gmail.com','7412124585','Akshat ','achal','2022-07-03'),('Akshat12@gmail.com','7415967627','Achal','Akshat ','2022-07-18'),('j@gmail.com','7455848586','Akshat ','Achal','2022-11-01'),('Jakshat736@gmail.com','7879212961','Akshat ','Jain','2022-07-18'),('AK123@gmail.com','8225818842','Ram','Kumar','2022-07-03');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-03 20:38:43
