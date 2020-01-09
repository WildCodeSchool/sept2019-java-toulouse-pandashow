CREATE DATABASE  IF NOT EXISTS `panda_show` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
CREATE USER 'panda'@'localhost' IDENTIFIED BY 'Pandash0w!';
GRANT ALL ON panda_show.* TO 'panda'@'localhost';

CREATE DATABASE  IF NOT EXISTS `panda_show` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `panda_show`;
-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: panda_show
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `episode` (
  `id_episode` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` text COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `summary` text COLLATE utf8_bin NOT NULL,
  `number` int(11) NOT NULL,
  `id_season` int(11) NOT NULL,
  PRIMARY KEY (`id_episode`),
  KEY `episode_season_FK` (`id_season`),
  CONSTRAINT `episode_season_FK` FOREIGN KEY (`id_season`) REFERENCES `season` (`id_season`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (1,'../img/BreakingBad/Saison_1/bb_1_1.jpg','Pilot','Diagnosed with terminal lung cancer, chemistry teacher Walter White teams up with his former student, Jesse Pinkman, to cook and sell crystal meth.',1,1),(2,'../img/BreakingBad/Saison_1/bb_1_2.jpg','Cats in the Bag...','After their first drug deal goes terribly wrong, Walt and Jesse are forced to deal with a corpse and a prisoner. Meanwhile, Skyler grows suspicious of Walt\'s activities',2,1),(3,'../img/BreakingBad/Saison_1/bb_1_3.jpg','...And the Bag s in the River','Walt and Jesse clean up after the bathtub incident before Walt decides what course of action to take with their prisoner Krazy-8.',3,1),(5,'../img/BreakingBad/Saison_1/bb_1_4.jpg','Cancer Man','Walt tells the rest of his family about his cancer. Jesse tries to make amends with his own parents.',4,1),(6,'../img/BreakingBad/Saison_1/bb_1_5.jpg','Gray Matter','Walt rejects everyone who tries to help him with the cancer. Jesse tries his best to create Walt\'s meth, with the help of an old friend.',5,1),(7,'../img/BreakingBad/Saison_1/bb_1_6.jpg','Crazy Handfull of Nothing','With the side effects and cost of his treatment mounting, Walt demands that Jesse finds a wholesaler to buy their drugs - which lands him in trouble.',6,1),(8,'../img/BreakingBad/Saison_1/bb_1_7.jpg','A No-Rough-Stuff-Type Deal','Walt and Jesse try to up their game by making more of the crystal every week for Tuco. Unfortunately, some of the ingredients they need are not easy to find. Meanwhile, Skyler realizes that her sister is a shoplifter.',7,1),(12,'../img/BreakingBad/Saison_2/bb_2_1.jpg','Seven Thirty-Seven','Walt and Jesse realize how dire their situation is. They must come up with a plan to kill Tuco before Tuco kills them first.',1,2),(13,'../img/BreakingBad/Saison_2/bb_2_2.jpg','Grilled','Walt\'s disappearance is met with investigation by both his wife and Hank, as Tuco Salamanca intends to leave town with his kidnapped cooks.',2,2),(14,'../img/BreakingBad/Saison_2/bb_2_3.jpg','Bit by a Dead Bee','Walt and Jesse try to come up with alibis for their disappearances.',3,2),(15,'../img/BreakingBad/Saison_2/bb_2_4.jpg','Down','Skyler keeps mysteriously leaving without talking to Walt. Jesse\'s parents throw him out of his own house.',4,2),(16,'../img/BreakingBad/Saison_2/bb_2_5.jpg','Breakage','Walt and Jesse decide to start their own little empire with the help of Jesse\'s friends: Skinny Pete, Combo, and Badger. Meanwhile, Hank tries to pull himself together after his encounter with Tuco.',5,2),(17,'../img/BreakingBad/Saison_2/bb_2_6.jpg','Peekaboo','After Skinny Pete gets ripped off, Walt makes Jesse go get the money. Meanwhile, Walt\'s cover story on how Elliott and Gretchen are paying for his medical treatment is on the verge of collapsing.',6,2),(18,'../img/BreakingBad/Saison_2/bb_2_7.jpg','Negro Y Azul','Rumor is spreading that Jesse killed the man that ripped Skinny Pete off. Walt uses this to his advantage on expanding their territory. Meanwhile, Hank has been promoted to the El Paso office. But it\'s not all he hoped it would be.',7,2),(19,'../img/BreakingBad/Saison_2/bb_2_8.jpg','Better Call Saul','Badger is caught by the DEA. Walt and Jesse hire the best criminal lawyer in town, Saul Goodman.',8,2),(20,'../img/BreakingBad/Saison_2/bb_2_9.jpg','4 Days Out','Walt and Jesse become stranded out in the middle of the desert after cooking more crystal.',9,2),(21,'../img/BreakingBad/Saison_2/bb_2_10.jpg','Over','Walt\'s cancer has greatly improved. Time to celebrate. Meanwhile Jesse tries to meet his new girlfriend\'s father.',10,2),(22,'../img/BreakingBad/Saison_2/bb_2_11.jpg','Mandala','Walt and Jesse\'s little empire begins to crumble. Saul tries to set them up with a mysterious distributor.',11,2),(23,'../img/BreakingBad/Saison_2/bb_2_12.jpg','Phoenix','Walt and Skyler have a baby girl. Now that Jesse is hooked on heroin, Walt refuses to give him his money until he gets clean. Meanwhile, as an excuse for his money, Walt decides to donate the money to himself through his son\'s new website.',12,2),(24,'../img/BreakingBad/Saison_2/bb_2_13.jpg','ABQ','Walt\'s lies have pushed Skyler to her limit. She leaves with the kids. Meanwhile, Jesse blames himself for Jane\'s death and goes into rehab.',13,2),(25,'../img/BreakingBad/Saison_3/bb_3_1.jpg','No Mas','Skyler goes through with her plans to divorce Walt. Jesse finishes rehab',1,3),(26,'../img/BreakingBad/Saison_3/bb_3_2.jpg','Caballo sin Nombre','Walter, Jr. is having a rough time accepting his parents\' separation. Jesse buys his old house from his parents. Meanwhile, two mysterious men have come into town looking for Walt.',2,3),(27,'../img/BreakingBad/Saison_3/bb_3_3.jpg','I.F.T.','Walt has moved back into the house without Skyler\'s consent. Now she can\'t get him out. Meanwhile, Jesse continues to cope with Jane\'s death.',3,3),(28,'../img/BreakingBad/Saison_3/bb_3_4.jpg','Green Light','Walt\'s world crumbles even more after finding out that Skyler is cheating on him. Jesse tries to set up a meeting with Gus to try and sell his own version of the blue meth. Meanwhile, Hank is growing obsessed with finding Heisenberg.',4,3),(29,'../img/BreakingBad/Saison_3/bb_3_5.jpg','Mas','Gus tries to get Walt back in the business by offering him three million dollars and a brand new lab. Jesse is furious that Walt received half of the money for his blue meth. Hank tries to track down the RV meth lab.',5,3),(30,'../img/BreakingBad/Saison_3/bb_3_6.jpg','Sunset','Heisenberg\'s organized and practical assistant Gale greatly aids his work in Gus\'s lab. Hank finally tracks the RV back to Jesse, as a concerned Walt finds any way to erase the evidence.',6,3),(31,'../img/BreakingBad/Saison_3/bb_3_7.jpg','One Minute','Jesse ends up in the hospital after getting beaten up by Hank. Now he is threatening to press charges against the DEA. To stop him, Walt decides to bring Jesse on as his partner, once again.',7,3),(32,'../img/BreakingBad/Saison_3/bb_3_8.jpg','I See You','Hank ends up in the hospital after being attacked by Tuco\'s cousins. Walt spends too much time by his family\'s side when he should be cooking meth.',8,3),(33,'../img/BreakingBad/Saison_3/bb_3_9.jpg','Kafkaesque','Skyler hatches a plan as Hank\'s hospital bills stack up. Meanwhile, Walt and Gus come to a better understanding as Jesse, looking for more independence, pursues a new opportunity.',9,3),(34,'../img/BreakingBad/Saison_3/bb_3_10.jpg','Fly','There is a fly loose in the lab. Walt and Jesse must do whatever they can to kill it before it contaminates the meth.',10,3),(35,'../img/BreakingBad/Saison_3/bb_3_11.jpg','Abiquiu','Skyler gets more involved in Walt\'s business, much to his chagrin, as Hank struggles with his recovery. Meanwhile, Jesse takes an active role in his new enterprise, leading him to a startling discovery.',11,3),(36,'../img/BreakingBad/Saison_3/bb_3_12.jpg','Half Measures','Against Walt\'s advice, Jesse lashes out. Fearing for Jesse\'s safety, Walt takes drastic action to intervene. Meanwhile a tragic event leads to a shocking confrontation.',12,3),(37,'../img/BreakingBad/Saison_3/bb_3_13.jpg','Full Measure','Jesse has disappeared and Walt is in big trouble with Gus. So Gus rehires Gale to learn from Walt\'s cooking so that they can dispose of Walt once and for all.',13,3),(44,'../img/BreakingBad/Saison_5/bb_5_1.jpg','Live Free or Die','Now that Gus is dead, Walt, Jesse, and Mike work to cover their tracks. Skyler panics when Ted Beneke wakes up.',1,6),(46,'../img/BreakingBad/Saison_5/bb_5_3.jpg','Hazard Pay','The guys put a business plan into action; Walt confesses to Marie.',3,6),(47,'../img/BreakingBad/Saison_5/bb_5_4.jpg','Fifty-One','It\'s Walt\'s 51st birthday. His return to the drug business causes Skyler to go into depression.',4,6),(48,'../img/BreakingBad/Saison_5/bb_5_5.jpg','Dead Freight','Walter White\'s domestic life continues to deteriorate; at the same time, his growing business venture aims to steal a train car chock full of methylamine.',5,6),(49,'../img/BreakingBad/Saison_5/bb_5_6.jpg','Buyout','In the aftermath of the train heist, Jesse and Mike decide to quit the business, leaving Walt to handle things on his own. Mike is being followed by the DEA.',6,6),(50,'../img/BreakingBad/Saison_5/bb_5_7.jpg','Say My Name','Mike and Jesse are out. Now Walt has to handle things on his own. Hank finally finds a rat in Mike\'s gang.',7,6),(51,'../img/BreakingBad/Saison_5/bb_5_8.jpg','Gliding Over All','Walt expands his business overseas, and the money is pouring in.',8,6),(52,'../img/BreakingBad/Saison_5/bb_5_9.jpg','Blood Money','Walt is out of the meth business and trying to move on with his life. Jesse tries to get rid of his money. Hank now knows that Walt is the famous Heisenberg.',9,6),(53,'../img/BreakingBad/Saison_5/bb_5_10.jpg','Buried','Hank is determined to bring down Walt. Walt scrambles to hide evidence before Hank gets to it, and Skyler tries to stop Hank and Marie from taking away the kids.',10,6),(54,'../img/BreakingBad/Saison_5/bb_5_11.jpg','Confessions','Walt makes his next move against Hank, putting Hank in a tough position. Hank confronts Jesse and attempts to turn him against Walt, and Jesse decides it\'s time to move on. Meanwhile, Todd has taken over the business.',11,6),(55,'../img/BreakingBad/Saison_5/bb_5_12.jpg','Rabid Dog','Walt discovers Jesse broke into his house and attempted to burn it down. Walt wants to protect his family so he moves them into a hotel for a few nights. Jesse makes plans to take down Walt.',12,6),(56,'../img/BreakingBad/Saison_5/bb_5_13.jpg','To hajiilee','Jesse and Hank come up with an idea to take Walt down. Walt hires Todd\'s uncle to kill Jesse.',13,6),(57,'../img/BreakingBad/Saison_5/bb_5_14.jpg','Ozymandias','Walt goes on the run. Jesse is taken hostage. Marie convinces Skyler to tell Walter, Jr. the truth.',14,6),(58,'../img/BreakingBad/Saison_5/bb_5_15.jpg','Granite State','Walt struggles as he adapts to aspects of his new identity. Jesse plans an escape against Jack and his crew.',15,6),(59,'../img/BreakingBad/Saison_5/bb_5_16.jpg','Felina','Walter White makes one last attempt to secure his family\'s future, while also visiting some old enemies, during his final return to Albuquerque.',16,6),(65,'../img/BreakingBad/Saison_4/bb_4_1.jpg','Box Cutter','Walt and Jesse are held captive for Gus, after Gale\'s death. Meanwhile, Skyler tries to find out what happened to Walt.',1,5),(66,'../img/BreakingBad/Saison_4/bb_4_2.jpg','Thirty-eight Snub','Walt attempts to form a new alliance as he plans his next move. Meanwhile Skyler pushes Walt towards a business opportunity, in hopes of protecting the family.',2,5),(67,'../img/BreakingBad/Saison_4/bb_4_3.jpg','Open House','While Walt worries about Gus\'s interference and Jesse\'s increasingly fragile state of mind, Skyler steps up the pressure to get what she wants.',3,5),(68,'../img/BreakingBad/Saison_4/bb_4_4.jpg','Bullet Points','As Skyler concocts an elaborate story to explain the Whites\' finances, a worried Walt discovers that Hank has begun a new investigation.',4,5),(69,'../img/BreakingBad/Saison_4/bb_4_5.jpg','Shotgun','Jesse rides shotgun with Mike on a perilous run of pickups, prompting Walt to worry that his partner is about to be killed.',5,5),(70,'../img/BreakingBad/Saison_4/bb_4_6.jpg','Cornered','Skyler adopts an aloof approach when she suspects that Walt isn\'t telling her the truth. Meanwhile, Jesse proves his worth to Mike and Gus.',6,5),(71,'../img/BreakingBad/Saison_4/bb_4_7.jpg','Problem Dog','Skyler looks to continue her family\'s trend of appearing poverty-stricken by forcing Walt to return the car he bought. A concerned Walt chauffeurs Hank to Los Pollos Hermanos, and the articulate yet immobile DEA agent collects prints',7,5),(72,'../img/BreakingBad/Saison_4/bb_4_8.jpg','Hermanos','When Hank produces evidence that Gus is Albuquerque\'s crystal meth kingpin, Walt worries that he and Jesse will be killed to protect their boss.',8,5),(73,'../img/BreakingBad/Saison_4/bb_4_9.jpg','Bug','While Walt tries to subvert Hank\'s probe into the Albuquerque meth scene, a deadly warning forces Gus to consider a deal with the cartel.',9,5),(74,'../img/BreakingBad/Saison_4/bb_4_10.jpg','Salud','Jesse, Gus, and Mike fly down to Mexico, and Jesse cooks the blue meth for the cartel. Walt misses his son\'s 16th birthday after his fight with Jesse.',10,5),(75,'../img/BreakingBad/Saison_4/bb_4_11.jpg','Crawl Space','Hank asks Walt to drive him to the laundry where the meth lab is hidden. Ted still won\'t pay the IRS so Skyler asks Saul for help, and Saul sends in his A-Team. Gus and Jesse return from Mexico, and Walt fears he is in trouble with Gus.',11,5),(76,'../img/BreakingBad/Saison_4/bb_4_12.jpg','End Times','The DEA is putting Hank and his family in protective custody; however, Walt refuses and awaits his fate in his house. Meanwhile, Brock has fallen terribly ill and Jesse suspects Walt may be behind it.',12,5),(77,'../img/BreakingBad/Saison_4/bb_4_13.jpg','Face Off','Jesse is brought to the FBI for questioning on his knowledge of ricin. In a last effort to kill Gus, Walt must ask for help from an old enemy.',13,5),(78,'../img/BreakingBad/Saison_5/bb_5_2.jpg','Madrigal','Walt and Jesse seek out an unlikely partner for a new business venture. The DEA follows up new leads in its investigation.',2,6),(79,'../img/Black-Mirror/SAISON_1/BM_1_1.jpg','The National Anthem','Prime Minister Michael Callow faces a shocking dilemma when Princess Susannah, a much-loved member of the Royal Family, is kidnapped.',1,8),(80,'../img/Black-Mirror/SAISON_1/BM_1_2.jpg','Fifteen Million Merits','In a world where people\'s lives consist of riding exercise bikes to gain credits, Bing tries to help a woman get on to a singing competition show.',2,8),(81,'../img/Black-Mirror/SAISON_1/BM_1_3.jpg','The Entire History of You','In the near future, everyone has access to a memory implant that records everything they do, see and hear - a sort of Sky Plus (Digital Video Recorder) for the brain. You need never forget a face again - but is that always a good thing?',3,8),(82,'../img/Black-Mirror/SAISON_2/BM_2_1.jpg','Be Right Back','After learning about a new service that lets people stay in touch with the deceased, a lonely, grieving Martha reconnects with her late lover.',1,9),(83,'../img/Black-Mirror/SAISON_2/BM_2_2.jpg','White Bear','Victoria wakes up and cannot remember anything about her life. Everyone she encounters refuses to communicate with her, and they all seem to know something she doesn\'t. But what?',2,9),(84,'../img/Black-Mirror/SAISON_2/BM_2_3.jpg','The Waldo Moment','A failed comedian who voices a popular cartoon bear named Waldo finds himself mixing in politics when TV executives want Waldo to run for office.',3,9),(85,'../img/Black-Mirror/SAISON_2/BM_2_4.jpg','White Christmas','Three interconnected tales of technology run amok during the Christmas season are told by two men at a remote outpost in a frozen wilderness.',4,9),(86,'../img/Black-Mirror/SAISON_3/BM_3_1.jpg','Nosedive','A woman desperate to boost her social media score hits the jackpot when she\'s invited to a swanky wedding, but the trip doesn\'t go as planned.',1,10),(87,'../img/Black-Mirror/SAISON_3/BM_3_2.jpg','Playtes','An American traveler short on cash signs up to test a revolutionary new gaming system, but soon can\'t tell where the hot game ends and reality begins.',2,10),(88,'../img/Black-Mirror/SAISON_3/BM_3_3.jpg','Shut Up and Dance','When withdrawn Kenny stumbles headlong into an online trap, he is quickly forced into an uneasy alliance with shifty Hector, both at the mercy of persons unknown.',3,10),(89,'../img/Black-Mirror/SAISON_3/BM_3_4.jpg','San Junipero','When Yorkie and Kelly visit San Junipero, a fun-loving beach town full of surf, sun and sex, their lives are changed.',4,10),(90,'../img/Black-Mirror/SAISON_3/BM_3_5.jpg','Man Against Fire','Future soldiers Stripe and Raiman must protect frightened villagers from an infestation of vicious feral mutants.',5,10),(91,'../img/Black-Mirror/SAISON_3/BM_3_6.jpg','Hated in the Nation','In near-future London, police detective Karin Parke, and her tech-savvy sidekick Blue, investigate a string of mysterious deaths with a sinister link to social media.',6,10),(92,'../img/Black-Mirror/SAISON_4/BM_4_1.jpg','USS Callister','Capt. Robert Daly presides over his crew with wisdom and courage. But a new recruit will soon discover nothing on this spaceship is what it seems.',1,11),(93,'../img/Black-Mirror/SAISON_4/BM_4_2.jpg','Arkangel','After nearly losing her daughter, a mother invests in a new technology that allows her to keep track of her.',2,11),(94,'../img/Black-Mirror/SAISON_4/BM_4_3.jpg','Crocodile','A woman interviews various people using a device that allows her to access their memories.',3,11),(95,'../img/Black-Mirror/SAISON_4/BM_4_4.jpg','Hang the DJ','Paired up by a dating program that puts an expiration date on all relationships, Frank and Amy soon begin to question the system\'s logic.',4,11),(96,'../img/Black-Mirror/SAISON_4/BM_4_5.jpg','Metalhead','In the post-apocalyptic landscape of the Scottish Moors, a woman attempts to survive the land full of \"dogs.\"',5,11),(97,'../img/Black-Mirror/SAISON_4/BM_4_6.jpg','Black Museum','A woman enters the Black Museum, where the proprietor tells his stories relating to the artifacts.',6,11),(98,'../img/Black-Mirror/SAISON_5/BM_5_1.jpg','Striking Vipers','Two estranged college friends reunite in later life, triggering a series of events that could alter their lives forever',1,12),(99,'../img/Black-Mirror/SAISON_5/BM_5_2.jpg','Smithereens','A cab driver with an agenda becomes the centre of attention on a day that rapidly spirals out of control.',2,12),(100,'../img/Black-Mirror/SAISON_5/BM_5_3.jpg','Rachel, Jack and Ashley Too','A lonely teenager yearns to connect with her favorite pop star - whose charmed existence isn\'t quite as rosy as it appears...',3,12),(101,'../img/FleaBag/Saison_1/fb_1_1.jpg','#1.1','Angry, pervy, outrageous and hilarious Fleabag arrives with a bang, as she spins through the city grasping at anyone and anything that might keep her head above water.',1,13),(102,'../img/FleaBag/Saison_1/fb_1_2.jpg','#1.2','Fleabag attempts to rekindle romantic fires to distract her from the mayhem of her life.',2,13),(103,'../img/FleaBag/Saison_1/fb_1_3.jpg','#1.3','Fleabag helps her inappropriate brother-in-law buy a present for Claire, who is organising her own surprise birthday party. Fleabag reconnects with a toothy friend.',3,13),(104,'../img/FleaBag/Saison_1/fb_1_4.jpg','#1.4','Fleabag and her sister visit a female-only silent retreat, courtesy of their father. Their enforced silence is interrupted by an unusual neighbouring weekend workshop',4,13),(105,'../img/FleaBag/Saison_1/fb_1_5.jpg','#1.5','On the anniversary of her mother\'s death, Fleabag and Claire return to their family home for the annual memorial lunch.',5,13),(106,'../img/FleaBag/Saison_1/fb_1_6.jpg','#1.6','Fleabag faces up to her actions and reveals what happened to her beloved friend Boo.',6,13),(107,'../img/FleaBag/Saison_2/fb_2_1.jpg','#2.1','Fleabag has to attend an uncomfortable family dinner to celebrate the engagement of Godmother and Dad. Fleabag is intrigued by Godmother\'s new Priest, but the evening ends with old tensions bubbling to the surface.',1,14),(108,'../img/FleaBag/Saison_2/fb_2_2.jpg','#2.2','Counselling extracts an uncomfortable truth from Fleabag, she finds herself somewhere unexpected. A chat with Claire reveals unwelcome news, Fleabag and Martin face off, Jake wonders where Claire is.',2,14),(109,'../img/FleaBag/Saison_2/fb_2_3.jpg','#2.3','Fleabag helps with an event at Claire\'s work which inevitably ends in disaster, but an introduction to Claire\'s colleague proves intriguing. A chance meeting with a stranger opens her eyes.',3,14),(110,'../img/FleaBag/Saison_2/fb_2_4.jpg','#2.4','After a day spent looking back on painful memories, Fleabag turns to The Priest for solace, but finds more trouble.',4,14),(111,'../img/FleaBag/Saison_2/fb_2_5.jpg','#2.5','The day after a boozy date, Fleabag helps her sister cope with a crisis, while the Priest has an announcement that shocks the family.',5,14),(112,'../img/FleaBag/Saison_2/fb_2_6.jpg','#2.6','As the wedding draws nearer, the relationship between Fleabag and the Priest becomes more intense - but how will it be resolved?',6,14);
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_list`
--

DROP TABLE IF EXISTS `my_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_list` (
  `id_show` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_show`,`id_user`),
  KEY `my_list_user0_FK` (`id_user`),
  CONSTRAINT `my_list_show_FK` FOREIGN KEY (`id_show`) REFERENCES `tvshow` (`id_show`),
  CONSTRAINT `my_list_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_list`
--

LOCK TABLES `my_list` WRITE;
/*!40000 ALTER TABLE `my_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `my_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `season` (
  `id_season` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `id_show` int(11) NOT NULL,
  PRIMARY KEY (`id_season`),
  KEY `season_show_FK` (`id_show`),
  CONSTRAINT `season_show_FK` FOREIGN KEY (`id_show`) REFERENCES `tvshow` (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (1,1,1),(2,2,1),(3,3,1),(5,4,1),(6,5,1),(8,1,2),(9,2,2),(10,3,2),(11,4,2),(12,5,2),(13,1,3),(14,2,3);
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seen`
--

DROP TABLE IF EXISTS `seen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seen` (
  `id_episode` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_episode`,`id_user`),
  KEY `seen_user0_FK` (`id_user`),
  CONSTRAINT `seen_episode_FK` FOREIGN KEY (`id_episode`) REFERENCES `episode` (`id_episode`),
  CONSTRAINT `seen_user0_FK` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seen`
--

LOCK TABLES `seen` WRITE;
/*!40000 ALTER TABLE `seen` DISABLE KEYS */;
/*!40000 ALTER TABLE `seen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tvshow`
--

DROP TABLE IF EXISTS `tvshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tvshow` (
  `id_show` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` text COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `pegi` varchar(50) COLLATE utf8_bin NOT NULL,
  `release_year` int(11) NOT NULL,
  `summary` text COLLATE utf8_bin NOT NULL,
  `casting` text COLLATE utf8_bin NOT NULL,
  `creator` varchar(255) COLLATE utf8_bin NOT NULL,
  `season` int(11) NOT NULL,
  PRIMARY KEY (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tvshow`
--

LOCK TABLES `tvshow` WRITE;
/*!40000 ALTER TABLE `tvshow` DISABLE KEYS */;
INSERT INTO `tvshow` VALUES (1,'img/BreakingBad/breaking_bad_landscape2.jpg','Breaking Bad','16+',2008,'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family s future','Bryan Cranston, Aaron Paul, Anna Gunn','Vince Gilligan',5),(2,'img/Black-Mirror/black_mirror_land.jpg','Black Mirror','16+',2011,'An anthology series exploring a twisted, high-tech world where humanity s greatest innovations and darkest instincts collide.','Daniel Lapaine, Hannah John-Karmen, Michaela Coel','Charlie Brooker',5),(3,'img/FleaBag/fleabag_land.jpg','FleaBag','18+',2016,'A comedy series adapted from the award-winning play about a young woman trying to cope with life in London whilst coming to terms with a recent tragedy.','Pheobe Walter-Bridge, Sian Clifford, Olivia Colman','Pheobe Walter-Bridge',2);
/*!40000 ALTER TABLE `tvshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-09 14:10:13