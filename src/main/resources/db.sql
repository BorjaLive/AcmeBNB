-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: acmebnb
-- ------------------------------------------------------
-- Server version	8.0.17

USE `acmebnb`;

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_country` varchar(3) DEFAULT NULL,
  `phone_number` varchar(9) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `pwd` varchar(64) NOT NULL,
  `surname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jj3mmcc0vjobqibj67dvuwihk` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (9,0,'admin@acme.com','Admin','ESP','192168101',NULL,'$2a$10$FCUp7Q76G7jyudJfWPnQU.Kk6K.UHVpJaVvUkVMCcejdP5Aj5FK.y','B0vE');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbol`
--

DROP TABLE IF EXISTS `arbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbol` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `altura` double NOT NULL,
  `expecie` varchar(255) NOT NULL,
  `fecha_plantacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbol`
--

LOCK TABLES `arbol` WRITE;
/*!40000 ALTER TABLE `arbol` DISABLE KEYS */;
/*!40000 ALTER TABLE `arbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `draft` bit(1) NOT NULL,
  `text` text NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8hnhy90824i0co92q01ku31nw` (`author_id`),
  KEY `FKm5kf067hm8pf45a1ofcifcyv6` (`property_id`),
  CONSTRAINT `FK8hnhy90824i0co92q01ku31nw` FOREIGN KEY (`author_id`) REFERENCES `auditor` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKm5kf067hm8pf45a1ofcifcyv6` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_attachment`
--

DROP TABLE IF EXISTS `audit_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_attachment` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `audit_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKir24i6vso5fbrumas6fpdrxf8` (`audit_id`),
  CONSTRAINT `FKir24i6vso5fbrumas6fpdrxf8` FOREIGN KEY (`audit_id`) REFERENCES `audit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_attachment`
--

LOCK TABLES `audit_attachment` WRITE;
/*!40000 ALTER TABLE `audit_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor`
--

DROP TABLE IF EXISTS `auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditor` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_country` varchar(3) DEFAULT NULL,
  `phone_number` varchar(9) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `pwd` varchar(64) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lmcp5r2bol31t270dvfqypbmk` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor`
--

LOCK TABLES `auditor` WRITE;
/*!40000 ALTER TABLE `auditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `stars` int(11) NOT NULL,
  `text` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `target_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnfaps0y6vh2by2xs2jib28u0m` (`target_id`),
  CONSTRAINT `FKnfaps0y6vh2by2xs2jib28u0m` FOREIGN KEY (`target_id`) REFERENCES `commentable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commentable`
--

DROP TABLE IF EXISTS `commentable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commentable` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commentable`
--

LOCK TABLES `commentable` WRITE;
/*!40000 ALTER TABLE `commentable` DISABLE KEYS */;
/*!40000 ALTER TABLE `commentable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (10);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `ammount` double NOT NULL,
  `credit_card_cvv` varchar(3) DEFAULT NULL,
  `credit_card_expiracy_month` int(11) DEFAULT NULL,
  `credit_card_expiracy_year` int(11) DEFAULT NULL,
  `credit_card_number` varchar(20) DEFAULT NULL,
  `date` datetime NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `vat` varchar(255) NOT NULL,
  `request_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h753c3mte9jo6vrgr0w0qe5px` (`request_id`),
  CONSTRAINT `FKmxixmlqdemt44twwq6chp2eq7` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessor`
--

DROP TABLE IF EXISTS `lessor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessor` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_country` varchar(3) DEFAULT NULL,
  `phone_number` varchar(9) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `pwd` varchar(64) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `credit_card_cvv` varchar(3) DEFAULT NULL,
  `credit_card_expiracy_month` int(11) DEFAULT NULL,
  `credit_card_expiracy_year` int(11) DEFAULT NULL,
  `credit_card_number` varchar(20) DEFAULT NULL,
  `commentable_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hhepqk22qd4emrqmt18kldhg` (`commentable_id`),
  UNIQUE KEY `UK_6wxhy7pam03cp913t2pyosrqe` (`email`),
  CONSTRAINT `FK7leatmkccmbsg6bx7crph18d1` FOREIGN KEY (`commentable_id`) REFERENCES `commentable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessor`
--

LOCK TABLES `lessor` WRITE;
/*!40000 ALTER TABLE `lessor` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `n_audits` int(11) NOT NULL DEFAULT '0',
  `n_requests` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `rate` double NOT NULL,
  `propietary_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKge6smuuo2m9iuycrumh6hg7e0` (`propietary_id`),
  CONSTRAINT `FKge6smuuo2m9iuycrumh6hg7e0` FOREIGN KEY (`propietary_id`) REFERENCES `lessor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute`
--

DROP TABLE IF EXISTS `property_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_attribute` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sys_default` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ro26g070jy9akexs8wc1k2mc1` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute`
--

LOCK TABLES `property_attribute` WRITE;
/*!40000 ALTER TABLE `property_attribute` DISABLE KEYS */;
INSERT INTO `property_attribute` VALUES (4,0,'Country',_binary ''),(5,0,'Province',_binary ''),(6,0,'State',_binary ''),(7,0,'City',_binary ''),(8,0,'Capacity',_binary '');
/*!40000 ALTER TABLE `property_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_value`
--

DROP TABLE IF EXISTS `property_attribute_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_attribute_value` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh8sg32qvushq58wcc73506hxg` (`attribute_id`),
  KEY `FK11uhrfa9wjvu1wys88vyfsgl1` (`property_id`),
  CONSTRAINT `FK11uhrfa9wjvu1wys88vyfsgl1` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKh8sg32qvushq58wcc73506hxg` FOREIGN KEY (`attribute_id`) REFERENCES `property_attribute` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_value`
--

LOCK TABLES `property_attribute_value` WRITE;
/*!40000 ALTER TABLE `property_attribute_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_picture`
--

DROP TABLE IF EXISTS `property_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_picture` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `property_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK571a2u4pb9jph3xgkf7b7fw2u` (`property_id`),
  CONSTRAINT `FK571a2u4pb9jph3xgkf7b7fw2u` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_picture`
--

LOCK TABLES `property_picture` WRITE;
/*!40000 ALTER TABLE `property_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `date` datetime NOT NULL,
  `lessor_credit_card_cvv` varchar(3) DEFAULT NULL,
  `lessor_credit_card_expiracy_month` int(11) DEFAULT NULL,
  `lessor_credit_card_expiracy_year` int(11) DEFAULT NULL,
  `lessor_credit_card_number` varchar(20) DEFAULT NULL,
  `lessor_fee` double NOT NULL,
  `rate` double NOT NULL,
  `smoker` bit(1) NOT NULL,
  `status` int(11) NOT NULL,
  `tenant_credit_card_cvv` varchar(3) DEFAULT NULL,
  `tenant_credit_card_expiracy_month` int(11) DEFAULT NULL,
  `tenant_credit_card_expiracy_year` int(11) DEFAULT NULL,
  `tenant_credit_card_number` varchar(20) DEFAULT NULL,
  `tenant_fee` double NOT NULL,
  `property_id` bigint(20) NOT NULL,
  `tenant_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKckkthesv1bn2kopwq4wrw3xiw` (`property_id`),
  KEY `FK9nbxjvp7a75eqok71995w4inf` (`tenant_id`),
  CONSTRAINT `FK9nbxjvp7a75eqok71995w4inf` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKckkthesv1bn2kopwq4wrw3xiw` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_identity`
--

DROP TABLE IF EXISTS `social_identity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_identity` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `nick` varchar(100) NOT NULL,
  `social_network` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `actor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_identity`
--

LOCK TABLES `social_identity` WRITE;
/*!40000 ALTER TABLE `social_identity` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_identity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,0,'feeTenant','1.00'),(2,0,'feeLessor','1.00'),(3,0,'bnbVat','999999999');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_country` varchar(3) DEFAULT NULL,
  `phone_number` varchar(9) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `pwd` varchar(64) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `credit_card_cvv` varchar(3) DEFAULT NULL,
  `credit_card_expiracy_month` int(11) DEFAULT NULL,
  `credit_card_expiracy_year` int(11) DEFAULT NULL,
  `credit_card_number` varchar(20) DEFAULT NULL,
  `smoker` bit(1) DEFAULT NULL,
  `commentable_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sgrsk8cuw2p5ds28dlix8mc94` (`commentable_id`),
  UNIQUE KEY `UK_1wuu4ilo8ya2tm94iswtp6ev1` (`email`),
  CONSTRAINT `FK9eqyjbqkwpfga3vptt6sokr79` FOREIGN KEY (`commentable_id`) REFERENCES `commentable` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23 21:32:51

