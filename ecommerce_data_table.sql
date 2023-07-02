-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_v2
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) DEFAULT NULL,
  `quantity` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (3,'2023-07-02 13:31:11.604000',1,20,9),(5,'2023-07-02 15:13:44.352000',6,25,9),(7,'2023-07-02 15:14:38.795000',3,42,9),(9,'2023-07-02 16:43:18.587000',1,20,27);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (30,'Kwarcyt','W tej sekcji znajdziesz produkty z kwarcytu, które są dostępnych na naszym sklepie','https://cdn.galleries.smcloud.net/t/galleries/gf-Ueri-7uif-msTY_kwarcyt-1920x1080-nocrop.jpg'),(29,'Łupek','W tej sekcji znajdziesz produkty z łupku, które są dostępnych na naszym sklepie','https://kamienzdostawa.pl/images/IMG_20200907_104627.jpg'),(28,'Marmur','W tej sekcji znajdziesz produkty z marmuru, które są dostępnych na naszym sklepie','https://www.carrea.pl/files/images/p%C5%82ytki_carrara_w_%C5%82azience.jpg'),(27,'Granit','W tej sekcji znajdziesz produkty z granitu, które są dostępnych na naszym sklepie','https://mqpolska.pl/media/djcatalog2/images/item/9/rainbow-mq_f.jpg'),(26,'Kamień dekoracyjny','W tej sekcji znajdziesz modele kamieni dekoracyjnych dostępnych na naszym sklepie','https://images.obi.pl/product/PL/1500x1500/665332_3.jpg'),(25,'Mozaiki kamienne','W tej sekcji znajdziesz kamienne mozaiki dostępne na naszym sklepie','https://stoneland.com.pl/produkty/Mozaiki%20kamienne/Waterfall/image-thumb__183__top-hero/waterfall-staoelandshowroom-1024x576.jpg'),(24,'Panele kamienne','W tej sekcji znajdziesz kamienne panele dostępne na naszym sklepie','https://skalite-kamien.pl/wp-content/uploads/2018/02/Kamien-naturalny-na-sciane-w-salonie-SKALITE.jpg'),(23,'Stopnie kamienne','W tej sekcji znajdziesz kamienne stopnie dostępne na naszym sklepie','https://www.gagagranit.pl/images/demo/content/blokowe-stopnie.jpg'),(22,'Płytki kamienne','W tej sekcji znajdziesz kamienne płytki dostępne na naszym sklepie','https://sklep.worldstone.pl/pol_pl_Skalniak-plytki-granitowe-polerowane-435_4.jpg');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (20,'60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/ce5b0ffd31866e2211342abb3ec665ce/p/l/plytka-granitowa-g654-new-padang-dark-p_omieniowany-60x60x2_4_1.jpg.mst.webp','Płytki Granit G654 Dark płomieniowany ',140,22),(21,' 60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/ce5b0ffd31866e2211342abb3ec665ce/g/r/granit_g603_pl_60x60_d.jpg.mst.webp','Płytki Granit G603 Cristal płomieniowany',125,22),(22,' 30,5x61x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/803f371/plytki-granit-g603-new-bianco-cristal-szlifowany-30-5x61x1-cm.jpg','Płytki Granit G603 Cristal szlifowany',119,22),(23,' 60x30x0,9-1,2 cm','https://klink.pl/media/catalog/product/cache/ce5b0ffd31866e2211342abb3ec665ce/l/u/lupek_black_slate_ciety_naturalnie_300x600x11-13_2_2_1_1_2.jpg.mst.webp','Płytki Łupek Black Slate naturalny',135,22),(24,' 0,742 m2','https://klink.pl/media/catalog/product/cache/ce5b0ffd31866e2211342abb3ec665ce/p/l/plytki-trawertyn-classic-light-bebnowany-komplet-0-742-m2-gat2.jpg.mst.webp','Płytki Trawertyn Classic Light bębnowany komplet',119,22),(25,' 60x60x2 cm','https://klink.pl/media/catalog/product/cache/ce5b0ffd31866e2211342abb3ec665ce/g/r/granit_maple_red_poler_600_600_150_3__1_2_2.jpg.mst.webp','Płytki Granit Maple Red G562 polerowany',229,22),(26,' 60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/198840d8/plytki-granit-g603-new-bianco-cristal-plomieniowany-60x60x1-5-cm.jpg','Płytki Granit G603 New Bianco Cristal płomieniowany',149,22),(27,' 61x10x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/278249c1/cokol-granitowy-g602-polerowany-61x10x1-cm.jpg','Cokół Granitowy G602 polerowany',25,23),(28,' 61x10x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2265c9cf/cokol-granitowy-g603-new-bianco-cristal-polerowany-61x10x1-cm.jpg','Cokół Granitowy G603 New Bianco Cristal polerowany',34,23),(29,'150x33x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1358c916/stopien-granitowy-g603-new-bianco-cristal-polerowany-150x33x2-cm.jpg','Stopień granitowy G603 New Bianco Cristal polerowany',135,23),(30,'150x33x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1413e329/stopien-granitowy-g602-polerowany-150x33x2-cm.jpg','Stopień granitowy G602 polerowany ',95,23),(31,'150x33x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/445339b/stopien-granitowy-g664-krolewski-braz-polerowany-150x33x2-cm.jpg','Stopień granitowy G664 Królewski Brąz polerowany ',165,23),(32,'150x33x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1364be54/stopien-granitowy-g603-new-bianco-cristal-plomieniowany-150x33x2-cm.jpg','Stopień granitowy G603 New Bianco Cristal płomieniowany ',135,23),(33,'150x33x2 cm z antypoślizgowymi ryflami','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/178637b8/stopien-granitowy-g603-new-bianco-cristal-polerowany-150x33x2-cm-z-antyposlizgowymi-ryflami.jpg','Stopień granitowy G603 New Bianco Cristal polerowany ',169,23),(34,'150x33x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/756a900/stopien-granitowy-maple-red-g562-polerowany-150x33x2-cm.jpg','Stopień granitowy Maple Red G562 polerowany ',145,23),(35,'135x16,5x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/39524759/podstopien-trawertynowy-classic-szlifowany-135x16-5x2-cm.jpg','Podstopień trawertynowy Classic szlifowany ',115,23),(36,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/17718b69/panel-scienny-lupek-stackstone-beige-10x36x0-8-1-3-cm.jpg','Panel ścienny Łupek Stackstone Beige',175,24),(37,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/833fcc4/panel-scienny-lupek-stackstone-black-10x36x0-8-1-3-cm.jpg','Panel ścienny Łupek Stackstone Black',169,24),(38,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/19810a14/panel-scienny-marmur-white-stackstone-10x36x0-8-1-3-cm.jpg','Panel ścienny Marmur White Stackstone',139,24),(39,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/25565d40/panel-scienny-marmur-stackstone-cloudy-grey-10x36x0-8-1-3-cm.jpg','Panel ścienny Marmur Stackstone Cloudy Grey',149,24),(40,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/4350dbe/panel-scienny-kwarcyt-white-stackstone-10x36x0-8-1-3-cm.jpg','Panel ścienny Kwarcyt White Stackstone',185,24),(41,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2071b06f/panel-scienny-marmur-yellow-stackstone-10x36x0-8-1-3-cm.jpg','Panel ścienny Marmur Yellow Stackstone',175,24),(42,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/5448080/mozaika-marmurowa-queen-beige-bebnowana-30-5x30-5x1-cm.jpg','Mozaika marmurowa Queen Beige bębnowana',27,25),(43,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2253ef31/mozaika-trawertynowa-silver-ash-30-5x30-5x1-cm.jpg.mst.webp','Mozaika trawertynowa Silver Ash',24,25),(44,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/22549324/mozaika-trawertynowa-light-bebnowana-30-5x30-5x1-cm.jpg','Mozaika trawertynowa Light bębnowana',23,25),(45,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/22560553/mozaika-trawertynowa-light-bebnowana-30-5x30-5x1-cm.jpg','Mozaika trawertynowa Light bębnowana',23,25),(46,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/22551cb7/mozaika-trawertynowa-silver-ash-30-5x30-5x1-cm.jpg','Mozaika trawertynowa Silver Ash',35,25),(47,'30x30x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2876ac68/mozaika-kwarcyt-silver-grey-30x30x1-cm.jpg','Mozaika kwarcyt Silver Grey',12,25),(48,'10x30x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/7380f24/plytki-lupek-copper-naturalny-10x30x0-8-1-3-cm.jpg','Płytki Łupek Copper naturalny',129,26),(49,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/17718b69/panel-scienny-lupek-stackstone-beige-10x36x0-8-1-3-cm.jpg','Panel ścienny Łupek Stackstone Beige',69,26),(50,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2638403d/plytki-lupek-multicolor-naturalny-10x30x1-cm.jpg','Płytki Łupek Multicolor naturalny',115,26),(51,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/833fcc4/panel-scienny-lupek-stackstone-black-10x36x0-8-1-3-cm.jpg','Panel ścienny Łupek Stackstone Black',169,26),(52,'10x30x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/79755a5/plytki-lupek-indian-autumn-naturalny-10x30x1-cm.jpg','Płytki Łupek Indian Autumn naturalny',105,29),(53,'60x30x1,2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/2700cdc8/plytki-lupek-silver-grey-szlifowany-60x30x1-2-cm.jpg.mst.webp','Płytki Łupek Silver Grey szlifowany',109,29),(54,'60x30x1,2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/25707b07/plytki-lupek-silver-grey-naturalny-60x30x1-2-cm.jpg','Płytki Łupek Silver Grey naturalny',25,29),(55,'10x30x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/26606ce0/plytki-lupek-silver-shine-naturalny-10x30x0-8-1-3-cm.jpg','Płytki Łupek Silver Shine naturalny',105,29),(56,'Leather 80x40x1,4 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1576a102/plytki-kamienne-kwarcyt-black-galaxy-leather-80x40x1-4-cm.jpg','Płytki Kamienne Kwarcyt Black Galaxy',269,30),(57,'10x36x0,8-1,3 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/206663df/panel-scienny-kwarcyt-stackstone-cloud-grey-10x36x0-8-1-3-cm.jpg','Panel ścienny Kwarcyt Stackstone Cloud Grey',179,30),(58,'10x36x0,8-1,5 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/28749897/panel-scienny-kwarcyt-stackstone-silver-grey-10x36x0-8-1-5-cm.jpg.mst.webp','Panel ścienny Kwarcyt Stackstone Silver Grey',185,30),(59,'60x15x1-2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1864e20a/panel-kamienny-kwarcyt-silver-shine-60x15x1-2-cm.jpg.mst.webp','Panel kamienny kwarcyt Silver Shine',155,30),(60,'60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/7544265/plytki-granit-maple-red-g562-polerowany-60x60x1-5-cm.jpg.mst.webp','Płytki Granit Maple Red G562 polerowany',149,27),(61,'60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/3195bf7e/plytki-granit-g654-new-padang-dark-polerowany-60x60x1-5-cm.jpg.mst.webp','Płytki Granit G654 NEW Padang Dark polerowany',195,27),(62,'60x60x2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/781cc5c/plytki-granit-g664-krolewski-braz-polerowany-60x60x2-cm.jpg.mst.webp','Płytki Granit G664 Królewski Brąz polerowany',129,27),(63,'60x60x1,5 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/198840d8/plytki-granit-g603-new-bianco-cristal-plomieniowany-60x60x1-5-cm.jpg','Płytki Granit G603 New Bianco Cristal płomieniowany',149,27),(64,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/5448080/mozaika-marmurowa-queen-beige-bebnowana-30-5x30-5x1-cm.jpg','Mozaika marmurowa Queen Beige bębnowana',27,28),(65,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1268ec33/mozaika-marmurowa-royal-white-30-5x30-5x1-cm.jpg','Mozaika marmurowa Royal White',31,28),(66,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1002791/mozaika-marmurowa-queen-beige-bebnowany-30-5x30-5x1-cm.jpg','Mozaika marmurowa Queen Beige bębnowany',43,28),(67,'30,5x30,5x1 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/1269e866/mozaika-marmurowa-royal-white-30-5x30-5x1-cm.jpg','Mozaika marmurowa Royal White',39,28),(68,'60x40x1,2 cm','https://klink.pl/media/catalog/product/cache/5acdf7c653cb02b67a3be8628ae66c39/image/7847fe3/plytki-lupek-california-gold-naturalny-60x40x1-2-cm.jpg','Płytki Łupek California Gold naturalny',185,22);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2dylsfo39lgjyqml2tbe0b0ss` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (9,'fb32b650-fd27-4dc3-b8e2-9bee7f5a66f3','2020-12-27 08:23:40',9),(27,'730db0a4-cf5e-48fa-b9ae-5a6e02b0ea60','2023-07-02 16:42:13',27);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (27,'test@test.test','test','test','098F6BCD4621D373CADE4E832627B4F6',NULL),(9,'admin@gmail.com','admin','admin','21232F297A57A5A743894A0E4A801FC3','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6p7qhvy1bfkri13u29x6pu8au` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (10,9,'2023-07-02 11:31:10',20),(11,9,'2023-07-02 13:13:41',24),(12,27,'2023-07-02 14:42:57',20);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-02 19:18:59
