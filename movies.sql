-- MySQL dump 10.16  Distrib 10.2.14-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: levi
-- ------------------------------------------------------
-- Server version	10.2.14-MariaDB

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(50) DEFAULT NULL,
  `movie_format` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Fast and the Furious','DVD'),(2,'2 Fast 2 Furious','DVD'),(3,'Fast Five','DVD'),(4,'Furious 6','Blu-Ray'),(5,'The Departed','DVD'),(6,'Terminator: Salvation','DVD'),(7,'Hitman','DVD'),(8,'Street Kings','DVD'),(9,'Underworld: Rise of the Lycans','DVD'),(10,'Underworld: Evolution','DVD'),(11,'Underworld','DVD'),(12,'Underworld: Blood Wars','DVD'),(13,'Sherlock Holmes','DVD'),(14,'Sherlock Holmes: Game of Shadows','DVD'),(15,'Oceans 12','DVD'),(16,'Oceans 11','DVD'),(17,'Bad Boys','DVD'),(18,'Bad Boys 2','DVD'),(19,'Four Brothers','DVD'),(20,'The Island','DVD'),(21,'Riddick: Pitch Black','DVD'),(22,'Riddick: Chronicles of Riddick','DVD'),(23,'Riddick','DVD'),(24,'Lord of War','DVD'),(25,'Iron Man','Blu-Ray'),(26,'Iron Man 2','Blu-Ray'),(27,'Iron Man 3','Blu-Ray'),(28,'Total Recall','Blu-Ray'),(29,'Jason Bourne: Bourne Ultimatum','DVD'),(30,'Jason Bourne: Bourne Legacy','DVD'),(31,'Jason Bourne: Bourne Supremacy','DVD'),(32,'Jason Bourne: Bourne Identity','DVD'),(33,'Resident Evil','DVD'),(34,'Resident Evil: Apocolypse','DVD'),(35,'Resident Evil: Extinction','DVD'),(36,'Resident Evil: Afterlife','DVD'),(37,'Sex Drive','DVD'),(38,'The Girl with the Dragon Tattoo','DVD'),(39,'Green Zone','DVD'),(40,'Ninja Assassin','Blu-Ray'),(41,'Babylon AD','DVD'),(42,'The Expendables','DVD'),(43,'21 Jump Street','DVD'),(44,'22 Jump Street','Blu-Ray'),(45,'The Fast and the Furious: Tokyo Drift','DVD'),(46,'Fast and Furious','DVD'),(47,'Furious 7','Blu-Ray'),(48,'Never Back Down','DVD'),(49,'Flight','DVD'),(50,'The Wolfman','DVD'),(51,'San Andreas','DVD'),(52,'Jack Reacher','DVD'),(53,'The Amazing Spiderman','DVD'),(54,'The Amazing Spiderman 2','DVD'),(55,'007: Casino Royale','DVD'),(56,'007: Quantum of Solace','DVD'),(57,'007: Skyfall','DVD'),(58,'007: Spectre','Blu-Ray'),(59,'The Mummy','DVD'),(60,'The Mummy Returns','DVD'),(61,'The Mummy: Tomb of the Dragon Emperor','DVD'),(62,'Deadpool','Blu-Ray'),(63,'Jumper','Blu-Ray'),(64,'The Last Witch Hunter','DVD'),(65,'The Next Three Days','Blu-Ray'),(66,'Know1ng','Blu-Ray'),(67,'3:10 to Yuma','Blu-Ray'),(68,'A Few Good Men','Blu-Ray'),(69,'AVP: Requiem','DVD'),(70,'The Other Guys','DVD'),(71,'BraveHeart','DVD'),(72,'iRobot','DVD'),(73,'We Were Soldiers','DVD'),(74,'Serenity','DVD'),(75,'Troy','DVD'),(76,'Easy A','DVD'),(77,'The Maxtrix','DVD'),(78,'The Matrix: Reloaded','DVD'),(79,'The Matrix: Revolutions','DVD'),(80,'Sucker Punch','Blu-Ray'),(81,'Defiance','Blu-Ray'),(82,'Man on Fire','Blu-Ray'),(83,'The Last of the Mohicans','Blu-Ray'),(84,'Public Enemies','DVD'),(85,'Batman: Begins','DVD'),(86,'The Dark Knight','DVD'),(87,'Batman: The Dark Knight Rises','DVD'),(88,'Gladiator','DVD'),(89,'Tropic Thunder','DVD'),(90,'2 Guns','Blu-Ray'),(91,'Fired Up','DVD'),(92,'Savages','DVD'),(93,'In Time','DVD'),(94,'Men In Black','DVD'),(95,'Men In Black 2','DVD'),(96,'Inception','DVD'),(97,'Shutter Island','Blu-Ray'),(98,'Vehicle 19','DVD'),(99,'The Losers','DVD'),(100,'Constantine','Blu-Ray'),(101,'AVP: Alient Versus Predator','DVD'),(102,'Sleepy Hollow','DVD'),(103,'Dracula Untold','DVD'),(104,'Next','DVD'),(105,'Zombieland','Blu-Ray'),(106,'Max Payne','DVD'),(107,'Fight Club','Blu-Ray'),(108,'Gamer','DVD'),(109,'The Wolverine','DVD'),(110,'Push','Blu-Ray'),(111,'Hansel & Gretel: Witch Hunters','DVD'),(112,'Law Abiding Citizen','DVD'),(113,'Taken','DVD'),(114,'Taken 2','DVD'),(115,'The League of Extraordinary Gentlemen','DVD'),(116,'The Italian Job','DVD'),(117,'Blade','DVD'),(118,'Blade 2','DVD'),(119,'Hercules','Blu-Ray'),(120,'Lucy','DVD'),(121,'Apollo 13','DVD'),(122,'Pirates of the Caribbean: Curse of Black Pearl','DVD'),(123,'The Rundown','DVD'),(124,'Pain & Gain','DVD'),(125,'The Town','DVD'),(126,'HellBoy','DVD'),(127,'Escape Plan','DVD'),(128,'Salt','DVD'),(129,'300: Rise of an Empire','DVD'),(130,'American Gangster','DVD'),(131,'The Legend of Tarzan','DVD'),(132,'Joe Dirt','DVD'),(133,'Horrible Bosses','DVD'),(134,'Bruce Almighty','DVD'),(135,'Looper','DVD'),(136,'Resident Evil: The Final Chapter','DVD'),(137,'Bad Santa','DVD'),(138,'Nerve','DVD'),(139,'Jason Bourne','DVD'),(140,'Logan','DVD'),(141,'Supernatural: Season 1','DVD'),(142,'Supernatural: Season 7','DVD'),(143,'Supernatural: Season 8','DVD'),(144,'Supernatural: Season 9','DVD'),(145,'Supernatural: Season 10','DVD'),(146,'Supernatural: Season 11','DVD'),(147,'Supernatural: Season 12','DVD');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01  8:26:17
