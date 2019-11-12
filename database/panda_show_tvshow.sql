-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: panda_show
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Dumping data for table `tvshow`
--

LOCK TABLES `tvshow` WRITE;
/*!40000 ALTER TABLE `tvshow` DISABLE KEYS */;
INSERT INTO `tvshow` VALUES (1,'img/BreakingBad/breaking_bad_landscape.jpg','Breaking Bad','16+',2008,'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family s future','Bryan Cranston, Aaron Paul, Anna Gunn','Vince Gilligan'),(2,'img/Black-Mirror/black_mirror_land.jpg','Black Mirror','16+',2011,'An anthology series exploring a twisted, high-tech world where humanity s greatest innovations and darkest instincts collide.','Daniel Lapaine, Hannah John-Karmen, Michaela Coel','Charlie Brooker'),(3,'img/FleaBag/fleabag_land.jpg','FleaBag','18+',2016,'A comedy series adapted from the award-winning play about a young woman trying to cope with life in London whilst coming to terms with a recent tragedy.','Pheobe Walter-Bridge, Sian Clifford, Olivia Colman','Pheobe Walter-Bridge');
/*!40000 ALTER TABLE `tvshow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 11:28:42

ALTER table panda_show.tvshow ADD COLUMN season INT NOT NULL AFTER creator;

UPDATE `panda_show`.`tvshow` SET `season` = '5' WHERE (`id_show` = '1');
UPDATE `panda_show`.`tvshow` SET `season` = '5' WHERE (`id_show` = '2');
UPDATE `panda_show`.`tvshow` SET `season` = '2' WHERE (`id_show` = '3');



