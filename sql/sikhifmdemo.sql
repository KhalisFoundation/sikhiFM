-- MySQL dump 10.17  Distrib 10.3.23-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sikhifm
-- ------------------------------------------------------
-- Server version	10.3.23-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Album`
--

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` VALUES (1,'noifp6',0,'Raagi, Pre-recorded & Studio Albums',NULL,NULL,NULL,NULL,NULL,'','','[]','2020-07-27 18:15:09','2020-07-27 18:15:09'),(82,'qjfkk2',0,'Aarti, Chopai Sahib and Simran','1','{\"cover\": \"no_image.jpg\"}',NULL,NULL,NULL,'',' bhai harjinder singh aarti chopai sahib and simran ','[]','2020-07-24 16:54:49','2020-07-24 16:54:49'),(83,'o6tlju',0,'Aisi Laal Tujh Binn Kaun Karai','1','{\"cover\": \"no_image.jpg\"}',NULL,NULL,NULL,'',' bhai harjinder singh aisi laal tujh binn kaun karai ','[]','2020-07-24 16:54:49','2020-07-24 16:54:49'),(85,'nsw51r',0,'Amrit Naam Parmeesar Tera','1','{\"cover\": \"no_image.jpg\"}',NULL,NULL,NULL,'',' bhai harjinder singh amrit naam parmeesar tera ','[]','2020-07-24 16:54:49','2020-07-24 16:54:49'),(89,'qbdxjv',0,'Bani Guru Guru Hai Bani','1','{\"cover\": \"no_image.jpg\"}',NULL,NULL,NULL,'',' misc bani guru guru hai bani ','[]','2020-07-24 16:54:49','2020-07-24 16:54:49'),(117,'telpu1',0,'Asa Di Vaar','1','{\"cover\": \"no_image.jpg\"}',NULL,NULL,NULL,'',' bhai nirmal singh nagpuri asa di vaar ','[]','2020-07-24 16:54:49','2020-07-24 16:54:49');
/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES (49,'Bhai','Bhai Harjinder Singh',NULL,' Sri Nagar Wale',NULL,'harjinder-srinagar.png',NULL,NULL,140,NULL,'Bhai Harjinder Singh, Sri Nagar','',0,'2020-07-24 16:35:59','2020-07-24 16:35:59'),(80,'Bhai','Bhai Nirmal Singh Nagpuri',NULL,'',NULL,'',NULL,NULL,26,NULL,'','',0,'2020-07-24 16:35:59','2020-07-24 16:35:59'),(181,NULL,'Other',NULL,'',NULL,'',NULL,NULL,NULL,NULL,'','',0,'2020-07-24 16:35:59','2020-07-24 16:35:59');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ConversionQueue`
--

LOCK TABLES `ConversionQueue` WRITE;
/*!40000 ALTER TABLE `ConversionQueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConversionQueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (2,'',NULL,'Australia',NULL,NULL),(5,'',NULL,'India',NULL,NULL),(8,'',NULL,'Ireland',NULL,NULL),(11,'',NULL,'Kuwait',NULL,NULL),(14,'',NULL,'Pakistan',NULL,NULL),(17,'',NULL,'Singapore',NULL,NULL),(20,'',NULL,'United Kingdom',NULL,NULL),(23,'',NULL,'USA',NULL,NULL),(26,'Amritsar',NULL,'India',NULL,NULL),(29,'Baramulla',NULL,'India',NULL,NULL),(32,'Barwala',NULL,'India',NULL,NULL),(35,'Bilge',NULL,'India',NULL,NULL),(38,'Birmingham',NULL,'UK',NULL,NULL),(41,'Bombay',NULL,'India',NULL,NULL),(44,'Chandigarh',NULL,'India',NULL,NULL),(47,'Coventry',NULL,'UK',NULL,NULL),(50,'Coventry/Derby',NULL,'UK',NULL,NULL),(53,'Dehradun',NULL,'India',NULL,NULL),(56,'Delhi',NULL,'India',NULL,NULL),(59,'Dhadrian',NULL,'India',NULL,NULL),(62,'Dudley',NULL,'UK',NULL,NULL),(65,'Glasgow',NULL,'Scotland',NULL,NULL),(68,'Hayes',NULL,'UK',NULL,NULL),(71,'Hazoor Sahib',NULL,'India',NULL,NULL),(74,'Hazoori Ragi',NULL,'India',NULL,NULL),(77,'Jalandhar',NULL,'India',NULL,NULL),(80,'Javadhi Kala',NULL,'India',NULL,NULL),(83,'Kanpur',NULL,'India',NULL,NULL),(86,'Kericho',NULL,'Africa',NULL,NULL),(89,'Khanne',NULL,'India',NULL,NULL),(92,'Leicester',NULL,'UK',NULL,NULL),(95,'London',NULL,'UK',NULL,NULL),(98,'Ludhiana',NULL,'India',NULL,NULL),(101,'Ludhiana, Punjab',NULL,'India',NULL,NULL),(104,'Maryland',NULL,'USA',NULL,NULL),(107,'Melbourne',NULL,'Australia',NULL,NULL),(110,'Nawanshahr',NULL,'India',NULL,NULL),(113,'Nottingham',NULL,'UK',NULL,NULL),(116,'Pak Pattan',NULL,'Pakistan',NULL,NULL),(119,'Patiala',NULL,'India',NULL,NULL),(122,'Rara Sahib',NULL,'India',NULL,NULL),(125,'Riverside',NULL,'California',NULL,NULL),(128,'San Jose',NULL,'USA',NULL,NULL),(131,'San Jose, CA',NULL,'USA',NULL,NULL),(134,'Shimla',NULL,'India',NULL,NULL),(137,'Slough',NULL,'UK',NULL,NULL),(140,'Sri Nagar',NULL,'India',NULL,NULL),(143,'Telford',NULL,'UK',NULL,NULL),(146,'Toronto',NULL,'Canada',NULL,NULL),(149,'Una Sahib',NULL,'India',NULL,NULL),(152,'Wolverhampton',NULL,'UK',NULL,NULL);
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Options`
--

LOCK TABLES `Options` WRITE;
/*!40000 ALTER TABLE `Options` DISABLE KEYS */;
INSERT INTO `Options` VALUES (2,'Prefix','Bhai',NULL),(5,'Prefix','Bibi',NULL),(8,'TrackType','2','Pre-recorded Keertan');
/*!40000 ALTER TABLE `Options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Playlist`
--

LOCK TABLES `Playlist` WRITE;
/*!40000 ALTER TABLE `Playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `Playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Track`
--

LOCK TABLES `Track` WRITE;
/*!40000 ALTER TABLE `Track` DISABLE KEYS */;
INSERT INTO `Track` VALUES (10,'audcjp',49,'2','Aarti','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aarti-Choupai-Sahib-and-Simran/Aarti.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,1,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(11,'xjvr5i',49,'2','Chopai Sahib','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aarti-Choupai-Sahib-and-Simran/Chopai Sahib.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,2,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(12,'3xbwhp',49,'2','Simran','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aarti-Choupai-Sahib-and-Simran/Simran.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,3,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(13,'5ml655',49,'2','Aisee laal thujh bin koun kurai [ang 1106]','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aisi Laal Tujh Binn Kaun Karai/Aisee_Laal_Thujh_Bin_Koun_Kurai_[ang_1106].mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,1,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(14,'b4nwiw',49,'2','Dhaev sunsai gaath n shoottai [ang 974]','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aisi Laal Tujh Binn Kaun Karai/Dhaev_Sunsai_Gaath_N_Shoottai_[ang_974].mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,2,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(15,'z72qh8',49,'2','Har har har n jupas rusunaa [ang 1106]','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aisi Laal Tujh Binn Kaun Karai/Har_Har_Har_N_Jupas_Rusunaa_[ang_1106].mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,3,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(16,'qwbuaz',49,'2','Kis jaath thae kih pudhehi amariou raam bhugath bisaekh [ang 1124]','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aisi Laal Tujh Binn Kaun Karai/Kis_Jaath_Thae_Kih_Pudhehi_Amariou_Raam_Bhugath_Bisaekh_[ang_1124].mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,4,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(17,'1961qj',49,'2','Saadh kaa nindhuk kaisae thurai [ang 875]','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Aisi Laal Tujh Binn Kaun Karai/Saadh_Kaa_Nindhuk_Kaisae_Thurai_[ang_875].mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,5,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(23,'iy63yg',49,'2','Amrit Naam Parmeesar Tera','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Amrit Naam Parmeesar Tera.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,1,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(24,'ftsi56',49,'2','Babiha Kyu Kare','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Babiha Kyu Kare.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,2,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(25,'i0kq1y',49,'2','Guru Sat Gur Ka','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Guru Sat Gur Ka.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,3,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(26,'mbnbm7',49,'2','Jag Salo Nadia','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Jag Salo Nadia.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,4,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(27,'7d7z9d',49,'2','Jap Man Sat Nam','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Jap Man Sat Nam.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,5,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(28,'3bbm5w',49,'2','Jithe Saab Thaane','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Jithe Saab Thaane.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,6,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(29,'2o6vr7',49,'2','Phini Reh Nadia','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Keertani_-_International/Bhai Harjinder Singh/Amrit Naam Parmesar Tera/Phini Reh Nadia.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,7,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(63,'q4bagf',181,'2','Aavoh sajna hoan dekha darshan tera naam','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Aavoh_Sajna_Hoan_Dekha_Darshan_Tera_Naam.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,1,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(64,'uuoxk2',181,'2','Ab Kalo Aayo Re','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Ab Kalo Aayo Re.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,2,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(65,'mvj1lw',181,'2','Amrit Naam Parmesar Tera','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Amrit Naam Parmesar Tera.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,3,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(66,'prrh7j',181,'2','Baitha Sodhi Patsaha','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Baitha Sodhi Patsaha.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,4,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(67,'2peu0i',49,'2','Bhai Harjinder Singh   Bani Guru Guru Hai Bani','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Harjinder Singh - Bani Guru Guru Hai Bani.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,5,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(68,'i0jqyl',181,'2','Bhai Jarnail Singh   Jee Re Ola Naam Ka','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Jarnail Singh - Jee Re Ola Naam Ka.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,6,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(69,'62srh4',181,'2','Bhai Jarnail Singh   Satgur Shabad Ujaro Deepa','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Jarnail Singh - Satgur Shabad Ujaro Deepa.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,7,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(70,'7mjtfo',181,'2','Bhai Manjeet Singh And Bhai Gurmeet Singh   Avar Upaav Tyaagya','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Manjeet Singh and Bhai Gurmeet Singh - Avar Upaav Tyaagya.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,8,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(71,'6sh1qk',181,'2','Bhai Manjit Singh   Mere Sahiba Kaun Jaane Gunh Tere','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Manjit Singh - Mere Sahiba Kaun Jaane Gunh Tere.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,9,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(72,'mgdihu',181,'2','Bhai Manjit Singh   Moo Laalan Syo Preet Bani','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai Manjit Singh - Moo Laalan Syo Preet Bani.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,10,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(73,'q5i56h',181,'2','Bhai dalbit singh   jag data soi bhagat vachal','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Dalbit_Singh_-_Jag_Data_Soi_Bhagat_Vachal.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,11,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(74,'tp00zu',181,'2','Bhai davinder singh   har gun kehte','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Davinder_Singh_-_Har_Gun_Kehte.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,12,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(75,'c4oyry',181,'2','Bhai gagandeep singh   chare jagey chahu jugi','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gagandeep_Singh_-_Chare_Jagey_Chahu_Jugi.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,13,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(76,'gfric7',181,'2','Bhai gurdev singh   bhale amardaas gun tere','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurdev_Singh_-_Bhale_Amardaas_Gun_Tere.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,14,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(77,'x3nzyv',181,'2','Bhai gurdev singh   dev puri meh gayeo','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurdev_Singh_-_Dev_Puri_Meh_Gayeo.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,15,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(78,'htnrux',181,'2','Bhai gurdev singh   jot roop har aap','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurdev_Singh_-_Jot_Roop_Har_Aap.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,16,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(79,'3rjdac',181,'2','Bhai gurdev singh   mangla har mangla','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurdev_Singh_-_Mangla_Har_Mangla.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,17,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(80,'u46izc',181,'2','Bhai gurkirat singh   naal khasam chale ardas','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurkirat_Singh_-_Naal_Khasam_Chale_Ardas.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,18,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(81,'v8nhgt',181,'2','Bhai gurmeet singh shaant   satgur aakhe sacha karey','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Gurmeet_Singh_Shaant_-_Satgur_Aakhe_Sacha_Karey.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,19,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(82,'p4gx8h',181,'2','Bhai harbans singh   kat jayiye re ghar','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Harbans_Singh_-_Kat_Jayiye_Re_Ghar.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,20,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(83,'mrv545',181,'2','Bhai hari singh   bole sheikh farid pyare','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Hari_Singh_-_Bole_Sheikh_Farid_Pyare.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,21,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(84,'cae7sd',49,'2','Bhai harjinder singh   madho jal ki pyaas','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Harjinder_Singh_-_Madho_Jal_Ki_Pyaas.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,22,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(85,'g8qyl5',181,'2','Bhai jagtar singh   phir pachtavega','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Jagtar_Singh_-_Phir_Pachtavega.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,23,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(86,'0jmky1',181,'2','Bhai jasbir singh   guru amardaas sach sal','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Jasbir_Singh_-_Guru_Amardaas_Sach_Sal.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,24,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(87,'cn6x4s',181,'2','Bhai jasbir singh   har ke sang base har lok','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Jasbir_Singh_-_Har_Ke_Sang_Base_Har_Lok.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,25,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(88,'molxta',181,'2','Bhai joginder singh riaar   chit chawao ardas kaho','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Joginder_Singh_Riaar_-_Chit_Chawao_Ardas_Kaho.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,26,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(89,'z2dpeu',181,'2','Bhai kamaljeet singh   jalpa padarath itde','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Kamaljeet_Singh_-_Jalpa_Padarath_Itde.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,27,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(90,'2sp7up',181,'2','Bhai kamaljeet singh   mil sangat dhan dhan','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Kamaljeet_Singh_-_Mil_Sangat_Dhan_Dhan.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,28,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(91,'ypn2fy',181,'2','Bhai kamaljeet singh   ram ki duhai','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Kamaljeet_Singh_-_Ram_Ki_Duhai.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,29,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(92,'hjbvhr',181,'2','Bhai lakhwinder singh   har jeeyo tudh','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Lakhwinder_Singh_-_Har_Jeeyo_Tudh.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,30,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(93,'chdg4b',181,'2','Bhai maninder singh   ko banjaro ram ko','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Maninder_Singh_-_Ko_Banjaro_Ram_Ko.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,31,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(94,'5tmmbq',181,'2','Bhai manpreet singh kanpur   gur gobind gobind guru hai','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Manpreet_Singh_Kanpur_-_Gur_Gobind_Gobind_Guru_Hai.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,32,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(95,'o98ebc',181,'2','Bhai niranjan singh   darshai parsiye guru ke','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Niranjan_Singh_-_Darshai_Parsiye_Guru_Ke.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,33,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(96,'qqeu0k',181,'2','Bhai niranjan singh   guru kar sach bichar','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Niranjan_Singh_-_Guru_Kar_Sach_Bichar.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,34,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(97,'s6mhlj',181,'2','Bhai niranjan singh   koi koi sajan aaye kahe','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Niranjan_Singh_-_Koi_Koi_Sajan_Aaye_Kahe.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,35,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(98,'wvpwd6',181,'2','Bhai nirmal singh khalsa   re chit chetas ki','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Nirmal_Singh_Khalsa_-_Re_Chit_Chetas_Ki.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,36,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(99,'ti58qx',181,'2','Bhai onkar singh   man aad gun aad','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Onkar_Singh_-_Man_Aad_Gun_Aad.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,37,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(100,'ggw51r',181,'2','Bhai onkar singh   vaho vaho ka bada tamasa','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Onkar_Singh_-_Vaho_Vaho_Ka_Bada_Tamasa.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,38,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(101,'o3i9s3',181,'2','Bhai ravinder singh   sabhe ghat raam bole','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Ravinder_Singh_-_Sabhe_Ghat_Raam_Bole.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,39,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(102,'5gv0f3',181,'2','Bhai sarabjeet singh   door nahi mero prabh pyara','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Sarabjeet_Singh_-_Door_Nahi_Mero_Prabh_Pyara.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,40,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(103,'7pxk1h',181,'2','Bhai sarabjit singh   sadho eh tan mithiya','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Sarabjit_Singh_-_Sadho_Eh_Tan_Mithiya.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,41,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(104,'ayyyxp',181,'2','Bhai tar balbir singh   nrip kaneya ke kaarne','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Tar_Balbir_Singh_-_Nrip_Kaneya_Ke_Kaarne.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,42,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(105,'picadz',181,'2','Bhai tar balbir singh   tay nar kiya puran sun keena','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhai_Tar_Balbir_Singh_-_Tay_Nar_Kiya_Puran_Sun_Keena.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,43,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(106,'szm5ur',181,'2','Bhalo Samo Simran Ki Baria','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Bhalo Samo Simran Ki Baria.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,44,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(107,'cf35i5',181,'2','Charan Sharan Gur Ek Penda Jaaye Chal','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Charan Sharan Gur Ek Penda Jaaye Chal.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,45,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(108,'7i1kr5',181,'2','Darshan Dekh Jeeva Gur Tera','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Darshan Dekh Jeeva Gur Tera.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,46,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(109,'fn03g0',181,'2','Dukh Rog Santaap Utrey','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Dukh Rog Santaap Utrey.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,47,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(110,'oeym8a',181,'2','Jaani Jaani Re','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Jaani Jaani Re.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,48,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(111,'pn5rfv',181,'2','Manjit singh   introduction','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Manjit_Singh_-_Introduction.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,49,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(112,'0iize1',181,'2','Sa Rasna Dhan Dhan Hai','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Sa Rasna Dhan Dhan Hai.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,50,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(113,'25lk0c',181,'2','Sant anoop singh   raheyo sant hao tal sadh','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Sant_Anoop_Singh_-_Raheyo_Sant_Hao_Tal_Sadh.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,51,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(114,'oezoih',181,'2','Sant anoop singh   tum bad datey de rahe','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Sant_Anoop_Singh_-_Tum_Bad_Datey_De_Rahe.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,52,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(115,'y8d3ci',181,'2','Satgur Sikh Kou Naam Dhan Dey','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Satgur Sikh Kou Naam Dhan Dey.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,53,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(116,'i1n5rb',181,'2','Toon Mera Rakha Sabhni Thaee','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Toon Mera Rakha Sabhni Thaee.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,54,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(117,'dxjx0a',181,'2','Tum Saach Dhiavoh Mughadh Mana','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Albums/Bani_Guru_Guru_Hai_Bani/Tum Saach Dhiavoh Mughadh Mana.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,55,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(547,'gccpie',80,'2','01 Asa Di Vaar Part1','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/01 Asa Di vaar Part1.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,1,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(548,'jix4sl',80,'2','02 Asa Di Vaar Part2','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/02 Asa Di Vaar Part2.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,2,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(549,'l655dd',80,'2','03 Asa Di Vaar Part3','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/03 Asa Di Vaar Part3.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,3,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(550,'rrfu0g',80,'2','04 Asa Di Vaar Part4','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/04 Asa Di Vaar Part4.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,4,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(551,'a1cksa',80,'2','05 Asa Di Vaar Part5','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/05 Asa Di Vaar Part5.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,5,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34'),(552,'2ic6vu',80,'2','05 Asa Di Vaar Part6','[{\"host\": \"sikhroots.com/audio/\", \"path\": \"Bani-Prayers/Asa Di Vaar - Bhai Nirmal Singh Nagpuri/05 Asa Di Vaar Part6.mp3\", \"mimetype\": \"audio/mpeg\", \"ext\": \"mp3\"}]',NULL,NULL,NULL,6,0,NULL,'00h:00m:00s',0,'2020-07-27 18:14:34','2020-07-27 18:14:34');
/*!40000 ALTER TABLE `Track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TrackAlbum`
--

LOCK TABLES `TrackAlbum` WRITE;
/*!40000 ALTER TABLE `TrackAlbum` DISABLE KEYS */;
INSERT INTO `TrackAlbum` VALUES (10,82),(11,82),(12,82),(13,83),(14,83),(15,83),(16,83),(17,83),(23,85),(24,85),(25,85),(26,85),(27,85),(28,85),(29,85),(63,89),(64,89),(65,89),(66,89),(67,89),(68,89),(69,89),(70,89),(71,89),(72,89),(73,89),(74,89),(75,89),(76,89),(77,89),(78,89),(79,89),(80,89),(81,89),(82,89),(83,89),(84,89),(85,89),(86,89),(87,89),(88,89),(89,89),(90,89),(91,89),(92,89),(93,89),(94,89),(95,89),(96,89),(97,89),(98,89),(99,89),(100,89),(101,89),(102,89),(103,89),(104,89),(105,89),(106,89),(107,89),(108,89),(109,89),(110,89),(111,89),(112,89),(113,89),(114,89),(115,89),(116,89),(117,89),(547,117),(548,117),(549,117),(550,117),(551,117),(552,117);
/*!40000 ALTER TABLE `TrackAlbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TrackDisplayRules`
--

LOCK TABLES `TrackDisplayRules` WRITE;
/*!40000 ALTER TABLE `TrackDisplayRules` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrackDisplayRules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TrackLyric`
--

LOCK TABLES `TrackLyric` WRITE;
/*!40000 ALTER TABLE `TrackLyric` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrackLyric` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-27 18:16:02
