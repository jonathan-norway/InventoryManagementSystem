-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `item_number` int DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `unit_of_measurement` varchar(255) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `total_in_inventory` int DEFAULT NULL,
  KEY `fk_store_info_idx` (`store_id`),
  CONSTRAINT `fk_store_info` FOREIGN KEY (`store_id`) REFERENCES `store_info` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='store_id is set to a foreign key and should access the store_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (1,'Apples','EA',1.99,'produce','ST1',500),(1,'Apples','EA',2.49,'produce','ST2',750),(1,'Apples','EA',1.85,'produce','ST3',200),(2,'Bananas','LB',2,'produce','ST1',245),(2,'Bananas','LB',2.5,'produce','ST2',100),(2,'Bananas','LB',1,'produce','ST3',250),(3,'Carrots','LB',2,'produce','ST1',71),(3,'Carrots','LB',3,'produce','ST2',182),(3,'Carrots','LB',1,'produce','ST3',300),(4,'Celery','EA',2.5,'produce','ST1',91),(4,'Celery','EA',1.2,'produce','ST2',95),(4,'Celery','EA',1.4,'produce','ST3',159),(5,'Cucumber','EA',1,'produce','ST1',49),(5,'Cucumber','EA',1.6,'produce','ST2',46),(5,'Cucumber','EA',1.75,'produce','ST3',123),(6,'Lettuce','EA',2,'produce','ST1',86),(6,'Lettuce','EA',2.5,'produce','ST2',26),(6,'Lettuce','EA',2.1,'produce','ST3',12),(7,'Pears','EA',3,'produce','ST1',232),(7,'Pears','EA',3.6,'produce','ST2',263),(7,'Pears','EA',2,'produce','ST3',56),(8,'Oranges','LB',1.5,'produce','ST1',282),(8,'Oranges','LB',1.75,'produce','ST2',124),(8,'Oranges','LB',1.25,'produce','ST3',3),(9,'Potatoes','LB',4,'produce','ST1',59),(9,'Potatoes','LB',3.8,'produce','ST2',75),(9,'Potatoes','LB',3,'produce','ST3',233),(10,'Onions','LB',2,'produce','ST1',247),(10,'Onions','LB',2.3,'produce','ST2',99),(10,'Onions','LB',2.75,'produce','ST3',110),(11,'Tomatoes','EA',1,'produce','ST1',25),(11,'Tomatoes','EA',2,'produce','ST2',62),(11,'Tomatoes','EA',3.2,'produce','ST3',286),(12,'Cabbage','EA',2,'produce','ST1',208),(12,'Cabbage','EA',2.2,'produce','ST2',295),(12,'Cabbage','EA',1.5,'produce','ST3',290),(13,'Squash','LB',1.2,'produce','ST1',213),(13,'Squash','LB',2.2,'produce','ST2',15),(13,'Squash','LB',1.2,'produce','ST3',47),(14,'Capsicums','EA',3,'produce','ST1',22),(14,'Capsicums','EA',3.5,'produce','ST2',89),(14,'Capsicums','EA',3.4,'produce','ST3',164),(15,'Aubergines','EA',2,'produce','ST1',288),(15,'Aubergines','EA',2.9,'produce','ST2',106),(15,'Aubergines','EA',3,'produce','ST3',275),(16,'Plums','LB',2,'produce','ST1',126),(16,'Plums','LB',2.5,'produce','ST2',185),(16,'Plums','LB',2.75,'produce','ST3',82),(17,'Mangoes','EA',1.4,'produce','ST1',261),(17,'Mangoes','EA',2.5,'produce','ST2',94),(17,'Mangoes','EA',3.5,'produce','ST3',211),(18,'Melons','EA',4,'produce','ST1',293),(18,'Melons','EA',4.5,'produce','ST2',226),(18,'Melons','EA',3.8,'produce','ST3',51),(19,'Coriander','EA',1.4,'produce','ST1',197),(19,'Coriander','EA',1.8,'produce','ST2',121),(19,'Coriander','EA',1.6,'produce','ST3',192),(20,'Parsley','EA',1,'produce','ST1',156),(20,'Parsley','EA',1.09,'produce','ST2',175),(20,'Parsley','EA',1.6,'produce','ST3',135),(21,'Dill','EA',1.6,'produce','ST1',248),(21,'Dill','EA',1.7,'produce','ST2',230),(21,'Dill','EA',1.79,'produce','ST3',283),(22,'Cherry Tomatoes','LB',2.2,'produce','ST1',96),(22,'Cherry Tomatoes','LB',2.6,'produce','ST2',35),(22,'Cherry Tomatoes','LB',2,'produce','ST3',141),(23,'Salad Onions','EA',1,'produce','ST1',88),(23,'Salad Onions','EA',2,'produce','ST2',244),(23,'Salad Onions','EA',3,'produce','ST3',258),(24,'Bacon','LB',2,'meat','ST1',41),(24,'Bacon','LB',2.4,'meat','ST2',74),(24,'Bacon','LB',2.45,'meat','ST3',161),(25,'Ham','LB',5,'meat','ST1',203),(25,'Ham','LB',5.5,'meat','ST2',207),(25,'Ham','LB',4.5,'meat','ST3',299),(26,'Whole Chicken','LB',3,'meat','ST1',43),(26,'Whole Chicken','LB',3.4,'meat','ST2',242),(26,'Whole Chicken','LB',3.75,'meat','ST3',150),(27,'Pork Chops','LB',3.75,'meat','ST1',195),(27,'Pork Chops','LB',4,'meat','ST2',287),(27,'Pork Chops','LB',3.5,'meat','ST3',218),(28,'Steak','LB',6,'meat','ST1',18),(28,'Steak','LB',6.2,'meat','ST2',107),(28,'Steak','LB',6.4,'meat','ST3',165),(29,'Diced Beef','LB',4.1,'meat','ST1',65),(29,'Diced Beef','LB',4.6,'meat','ST2',163),(29,'Diced Beef','LB',4,'meat','ST3',9),(30,'Meatloaf','EA',6,'meat','ST1',64),(30,'Meatloaf','EA',6.3,'meat','ST2',214),(30,'Meatloaf','EA',6,'meat','ST3',114),(31,'Lamb Chops','LB',5,'meat','ST1',191),(31,'Lamb Chops','LB',3.6,'meat','ST2',19),(31,'Lamb Chops','LB',3,'meat','ST3',257),(32,'Ground Beef','LB',2.5,'meat','ST1',105),(32,'Ground Beef','LB',2.5,'meat','ST2',279),(32,'Ground Beef','LB',2.3,'meat','ST3',63),(33,'Ground Pork','LB',4.6,'meat','ST1',180),(33,'Ground Pork','LB',4.8,'meat','ST2',276),(33,'Ground Pork','LB',3.2,'meat','ST3',277),(34,'Chicken Breast','LB',2,'meat','ST1',243),(34,'Chicken Breast','LB',2.3,'meat','ST2',28),(34,'Chicken Breast','LB',2,'meat','ST3',132),(35,'Chicken Legs','LB',2,'meat','ST1',76),(35,'Chicken Legs','LB',2,'meat','ST2',117),(35,'Chicken Legs','LB',2.5,'meat','ST3',8),(36,'Chicken Thighs','LB',2.1,'meat','ST1',48),(36,'Chicken Thighs','LB',2.2,'meat','ST2',253),(36,'Chicken Thighs','LB',2.1,'meat','ST3',68),(37,'Hot Dogs','EA',3.5,'meat','ST1',224),(37,'Hot Dogs','EA',3.55,'meat','ST2',173),(37,'Hot Dogs','EA',3.3,'meat','ST3',200),(38,'Quarterpounders','LB',2.2,'meat','ST1',181),(38,'Quarterpounders','LB',2.3,'meat','ST2',297),(38,'Quarterpounders','LB',2.4,'meat','ST3',39),(39,'Meatballs','LB',2.4,'meat','ST1',112),(39,'Meatballs','LB',2.6,'meat','ST2',13),(39,'Meatballs','LB',3,'meat','ST3',153),(40,'Pork Sausages','LB',3,'meat','ST1',169),(40,'Pork Sausages','LB',3.4,'meat','ST2',344),(40,'Pork Sausages','LB',4,'meat','ST3',275),(41,'Mackerel Fish','LB',2.5,'seafood','ST1',339),(41,'Mackerel Fish','LB',1.5,'seafood','ST2',16),(41,'Mackerel Fish','LB',1.5,'seafood','ST3',445),(42,'Scampi','LB',1.2,'seafood','ST1',116),(42,'Scampi','LB',1.4,'seafood','ST2',452),(42,'Scampi','LB',2.3,'seafood','ST3',470),(43,'Salmon','LB',2.4,'seafood','ST1',289),(43,'Salmon','LB',3.9,'seafood','ST2',380),(43,'Salmon','LB',4,'seafood','ST3',183),(44,'Fresh Tuna','LB',4.5,'seafood','ST1',315),(44,'Fresh Tuna','LB',3.5,'seafood','ST2',87),(44,'Fresh Tuna','LB',4,'seafood','ST3',511),(45,'King Crab Legs','LB',2.8,'seafood','ST1',418),(45,'King Crab Legs','LB',2.75,'seafood','ST2',388),(45,'King Crab Legs','LB',2.9,'seafood','ST3',47),(46,'King Prawns','LB',3,'seafood','ST1',432),(46,'King Prawns','LB',3.2,'seafood','ST2',212),(46,'King Prawns','LB',3.15,'seafood','ST3',457),(47,'Mussels','LB',1.25,'seafood','ST1',517),(47,'Mussels','LB',1.6,'seafood','ST2',360),(47,'Mussels','LB',1,'seafood','ST3',357),(48,'Rainbow Trout','LB',3,'seafood','ST1',84),(48,'Rainbow Trout','LB',3.5,'seafood','ST2',521),(48,'Rainbow Trout','LB',3.25,'seafood','ST3',503),(49,'Cod Fish','LB',1.5,'seafood','ST1',551),(49,'Cod Fish','LB',1.9,'seafood','ST2',460),(49,'Cod Fish','LB',1.4,'seafood','ST3',523),(50,'Butter','EA',3,'dairy','ST1',210),(50,'Butter','EA',4,'dairy','ST2',151),(50,'Butter','EA',3.9,'dairy','ST3',570),(51,'Eggs','EA',3,'dairy','ST1',223),(51,'Eggs','EA',3.4,'dairy','ST2',228),(51,'Eggs','EA',3.9,'dairy','ST3',91),(52,'Milk','EA',2.5,'dairy','ST1',497),(52,'Milk','EA',1.5,'dairy','ST2',172),(52,'Milk','EA',2.5,'dairy','ST3',598),(53,'Sour Cream','EA',2.6,'dairy','ST1',395),(53,'Sour Cream','EA',2.7,'dairy','ST2',478),(53,'Sour Cream','EA',2.4,'dairy','ST3',550),(54,'Double Cream','EA',2.4,'dairy','ST1',423),(54,'Double Cream','EA',2.6,'dairy','ST2',97),(54,'Double Cream','EA',3.6,'dairy','ST3',140),(55,'Cheddar Cheese','EA',4,'dairy','ST1',500),(55,'Cheddar Cheese','EA',4.2,'dairy','ST2',230),(55,'Cheddar Cheese','EA',4,'dairy','ST3',189),(56,'Mozzarella Cheese','EA',5,'dairy','ST1',399),(56,'Mozzarella Cheese','EA',4.8,'dairy','ST2',579),(56,'Mozzarella Cheese','EA',4.6,'dairy','ST3',135),(57,'Grated Mozzarella','EA',3.4,'dairy','ST1',204),(57,'Grated Mozzarella','EA',3.2,'dairy','ST2',237),(57,'Grated Mozzarella','EA',3,'dairy','ST3',390),(58,'Grated Cheddar','EA',2.8,'dairy','ST1',300),(58,'Grated Cheddar','EA',2.4,'dairy','ST2',232),(58,'Grated Cheddar','EA',2.3,'dairy','ST3',518),(59,'Feta Cheese','EA',2.8,'dairy','ST1',200),(59,'Feta Cheese','EA',2.3,'dairy','ST2',222),(59,'Feta Cheese','EA',3,'dairy','ST3',51),(60,'Sliced Cheddar','EA',1.25,'dairy','ST1',538),(60,'Sliced Cheddar','EA',1.5,'dairy','ST2',582),(60,'Sliced Cheddar','EA',1.08,'dairy','ST3',398),(61,'Parmesan Cheese','EA',3,'dairy','ST1',92),(61,'Parmesan Cheese','EA',2.58,'dairy','ST2',194),(61,'Parmesan Cheese','EA',2.57,'dairy','ST3',504),(62,'Brie Cheese','EA',1.56,'dairy','ST1',263),(62,'Brie Cheese','EA',1.8,'dairy','ST2',329),(62,'Brie Cheese','EA',1.9,'dairy','ST3',475),(63,'Stilton Cheese','EA',2.6,'dairy','ST1',30),(63,'Stilton Cheese','EA',2.7,'dairy','ST2',464),(63,'Stilton Cheese','EA',2.6,'dairy','ST3',557),(64,'Mascarpone','EA',2.48,'dairy','ST1',274),(64,'Mascarpone','EA',3.67,'dairy','ST2',580),(64,'Mascarpone','EA',3.65,'dairy','ST3',185),(65,'Riccota','EA',4,'dairy','ST1',89),(65,'Riccota','EA',3.78,'dairy','ST2',20),(65,'Riccota','EA',3.5,'dairy','ST3',80),(66,'Panna Cotta','EA',4,'dairy','ST1',144),(66,'Panna Cotta','EA',5,'dairy','ST2',236),(66,'Panna Cotta','EA',4.5,'dairy','ST3',72),(67,'Cottage Cheese','EA',3,'dairy','ST1',336),(67,'Cottage Cheese','EA',3.4,'dairy','ST2',403),(67,'Cottage Cheese','EA',3.5,'dairy','ST3',38),(68,'Greek Style Yougurt','EA',9,'dairy','ST1',306),(68,'Greek Style Yougurt','EA',9.3,'dairy','ST2',139),(68,'Greek Style Yougurt','EA',9.31,'dairy','ST3',110),(69,'Fish Sticks','EA',12,'frozen foods','ST1',46),(69,'Fish Sticks','EA',10,'frozen foods','ST2',14),(69,'Fish Sticks','EA',10.3,'frozen foods','ST3',515),(70,'Chicken Tenders','EA',12,'frozen foods','ST1',574),(70,'Chicken Tenders','EA',12.35,'frozen foods','ST2',267),(70,'Chicken Tenders','EA',12.2,'frozen foods','ST3',562),(71,'French Fries','EA',12,'frozen foods','ST1',351),(71,'French Fries','EA',13,'frozen foods','ST2',508),(71,'French Fries','EA',14,'frozen foods','ST3',40),(72,'Pizza','EA',16,'frozen foods','ST1',352),(72,'Pizza','EA',15.4,'frozen foods','ST2',106),(72,'Pizza','EA',15.8,'frozen foods','ST3',476),(73,'Vegetables','EA',14,'frozen foods','ST1',101),(73,'Vegetables','EA',13.74,'frozen foods','ST2',85),(73,'Vegetables','EA',13.47,'frozen foods','ST3',171),(74,'Popsicles','EA',6,'frozen foods','ST1',472),(74,'Popsicles','EA',6.7,'frozen foods','ST2',164),(74,'Popsicles','EA',6.8,'frozen foods','ST3',259),(75,'Ice Cream','EA',7.8,'frozen foods','ST1',332),(75,'Ice Cream','EA',8,'frozen foods','ST2',492),(75,'Ice Cream','EA',7.4,'frozen foods','ST3',31),(76,'Steak Fries','EA',7.9,'frozen foods','ST1',8),(76,'Steak Fries','EA',8,'frozen foods','ST2',173),(76,'Steak Fries','EA',6.3,'frozen foods','ST3',52),(77,'Soup','EA',7,'canned','ST1',449),(77,'Soup','EA',7.8,'canned','ST2',482),(77,'Soup','EA',7.5,'canned','ST3',555),(78,'Spaghetti Sauce','EA',5,'canned','ST1',451),(78,'Spaghetti Sauce','EA',5.6,'canned','ST2',505),(78,'Spaghetti Sauce','EA',5.48,'canned','ST3',537),(79,'Tuna','EA',8,'canned','ST1',142),(79,'Tuna','EA',7.5,'canned','ST2',362),(79,'Tuna','EA',7,'canned','ST3',559),(80,'Sweet Corn','EA',8,'canned','ST1',463),(80,'Sweet Corn','EA',6.8,'canned','ST2',4),(80,'Sweet Corn','EA',6.7,'canned','ST3',74),(81,'Green Peas','EA',4.5,'canned','ST1',567),(81,'Green Peas','EA',5.6,'canned','ST2',39),(81,'Green Peas','EA',4.7,'canned','ST3',12),(82,'Red Kidney Beans','EA',3.6,'canned','ST1',246),(82,'Red Kidney Beans','EA',4.1,'canned','ST2',414),(82,'Red Kidney Beans','EA',3,'canned','ST3',112),(83,'Baked Beans','EA',3,'canned','ST1',365),(83,'Baked Beans','EA',3.8,'canned','ST2',241),(83,'Baked Beans','EA',3.5,'canned','ST3',467),(84,'Bread','EA',4,'bread & bakery','ST1',303),(84,'Bread','EA',4.5,'bread & bakery','ST2',13),(84,'Bread','EA',4.6,'bread & bakery','ST3',96),(85,'Bagels','EA',3.5,'bread & bakery','ST1',82),(85,'Bagels','EA',3.4,'bread & bakery','ST2',73),(85,'Bagels','EA',3.6,'bread & bakery','ST3',31),(86,'Buns','EA',2.9,'bread & bakery','ST1',113),(86,'Buns','EA',3.1,'bread & bakery','ST2',71),(86,'Buns','EA',3.7,'bread & bakery','ST3',194),(87,'Rolls','EA',3.4,'bread & bakery','ST1',199),(87,'Rolls','EA',3.6,'bread & bakery','ST2',98),(87,'Rolls','EA',3.4,'bread & bakery','ST3',181),(88,'Muffins','EA',3.5,'bread & bakery','ST1',128),(88,'Muffins','EA',3.6,'bread & bakery','ST2',101),(88,'Muffins','EA',3.4,'bread & bakery','ST3',147),(89,'Croissants','EA',3,'bread & bakery','ST1',102),(89,'Croissants','EA',2.8,'bread & bakery','ST2',30),(89,'Croissants','EA',2.9,'bread & bakery','ST3',185),(90,'French Baguettes','EA',3.2,'bread & bakery','ST1',130),(90,'French Baguettes','EA',3.3,'bread & bakery','ST2',152),(90,'French Baguettes','EA',3.1,'bread & bakery','ST3',12),(91,'Cake','EA',15,'bread & bakery','ST1',150),(91,'Cake','EA',16.8,'bread & bakery','ST2',109),(91,'Cake','EA',16.5,'bread & bakery','ST3',60),(92,'Cookies','EA',12.2,'bread & bakery','ST1',94),(92,'Cookies','EA',12.3,'bread & bakery','ST2',95),(92,'Cookies','EA',12.4,'bread & bakery','ST3',49),(93,'Tortillas','EA',7.8,'bread & bakery','ST1',90),(93,'Tortillas','EA',7.3,'bread & bakery','ST2',117),(93,'Tortillas','EA',7.4,'bread & bakery','ST3',27),(94,'Pita Bread','EA',5.5,'bread & bakery','ST1',9),(94,'Pita Bread','EA',6,'bread & bakery','ST2',105),(94,'Pita Bread','EA',6.1,'bread & bakery','ST3',126),(95,'Spaghetti','EA',7,'pasta','ST1',52),(95,'Spaghetti','EA',6.5,'pasta','ST2',16),(95,'Spaghetti','EA',4.58,'pasta','ST3',56),(96,'Penne','EA',3.3,'pasta','ST1',139),(96,'Penne','EA',3.4,'pasta','ST2',1),(96,'Penne','EA',3.6,'pasta','ST3',29),(97,'Rigatoni','EA',4,'pasta','ST1',21),(97,'Rigatoni','EA',4.2,'pasta','ST2',62),(97,'Rigatoni','EA',4.5,'pasta','ST3',54),(98,'Tagliatelle','EA',3,'pasta','ST1',61),(98,'Tagliatelle','EA',3.2,'pasta','ST2',2),(98,'Tagliatelle','EA',3.4,'pasta','ST3',77),(99,'Lasagne Sheets','EA',2.6,'pasta','ST1',47),(99,'Lasagne Sheets','EA',2.4,'pasta','ST2',193),(99,'Lasagne Sheets','EA',2.6,'pasta','ST3',138),(100,'Rice','EA',3,'pasta','ST1',41),(100,'Rice','EA',3.2,'pasta','ST2',143),(100,'Rice','EA',3.4,'pasta','ST3',200),(101,'Cereal','EA',2.9,'breakfast','ST1',162),(101,'Cereal','EA',2.87,'breakfast','ST2',116),(101,'Cereal','EA',2.56,'breakfast','ST3',144),(102,'Pancakes','EA',3.9,'breakfast','ST1',122),(102,'Pancakes','EA',4,'breakfast','ST2',170),(102,'Pancakes','EA',4.2,'breakfast','ST3',37),(103,'Pop Tarts','EA',3,'breakfast','ST1',34),(103,'Pop Tarts','EA',3,'breakfast','ST2',140),(103,'Pop Tarts','EA',3.2,'breakfast','ST3',3),(104,'Donuts','EA',2,'breakfast','ST1',46),(104,'Donuts','EA',3.2,'breakfast','ST2',153),(104,'Donuts','EA',4.2,'breakfast','ST3',124),(105,'Potato Chips','EA',5,'snacks','ST1',157),(105,'Potato Chips','EA',4.8,'snacks','ST2',120),(105,'Potato Chips','EA',5.1,'snacks','ST3',171),(106,'Tortilla Chips','EA',3.9,'snacks','ST1',93),(106,'Tortilla Chips','EA',4.5,'snacks','ST2',38),(106,'Tortilla Chips','EA',4.9,'snacks','ST3',141),(107,'Crackers','EA',3.6,'snacks','ST1',111),(107,'Crackers','EA',3.7,'snacks','ST2',129),(107,'Crackers','EA',3.68,'snacks','ST3',142),(108,'Candy','EA',2,'snacks','ST1',177),(108,'Candy','EA',3.9,'snacks','ST2',148),(108,'Candy','EA',3.5,'snacks','ST3',84),(109,'Cookies','EA',3.3,'snacks','ST1',155),(109,'Cookies','EA',3,'snacks','ST2',69),(109,'Cookies','EA',3,'snacks','ST3',134),(110,'Dip / Salsa','EA',3,'snacks','ST1',86),(110,'Dip / Salsa','EA',2.5,'snacks','ST2',35),(110,'Dip / Salsa','EA',2.3,'snacks','ST3',91),(111,'Dried Fruits','EA',3,'snacks','ST1',156),(111,'Dried Fruits','EA',3.2,'snacks','ST2',53),(111,'Dried Fruits','EA',3.6,'snacks','ST3',172),(112,'Fruit Snacks','EA',5,'snacks','ST1',57),(112,'Fruit Snacks','EA',5.6,'snacks','ST2',189),(112,'Fruit Snacks','EA',6.1,'snacks','ST3',106),(113,'Pretzels','EA',5.4,'snacks','ST1',6),(113,'Pretzels','EA',5.65,'snacks','ST2',132),(113,'Pretzels','EA',5.4,'snacks','ST3',43),(114,'Popcorn','EA',4.5,'snacks','ST1',23),(114,'Popcorn','EA',4.8,'snacks','ST2',87),(114,'Popcorn','EA',4.1,'snacks','ST3',25),(115,'Raisins','EA',1.5,'snacks','ST1',74),(115,'Raisins','EA',2.6,'snacks','ST2',48),(115,'Raisins','EA',2.75,'snacks','ST3',188),(116,'Roasted Peanuts','EA',2.4,'snacks','ST1',97),(116,'Roasted Peanuts','EA',2.9,'snacks','ST2',72),(116,'Roasted Peanuts','EA',2.5,'snacks','ST3',50),(117,'Flour','EA',15,'baking','ST1',17),(117,'Flour','EA',16.5,'baking','ST2',191),(117,'Flour','EA',14.98,'baking','ST3',160),(118,'Jelly','EA',8,'baking','ST1',161),(118,'Jelly','EA',7.8,'baking','ST2',19),(118,'Jelly','EA',7.8,'baking','ST3',83),(119,'Jam','EA',6.8,'baking','ST1',26),(119,'Jam','EA',6.37,'baking','ST2',121),(119,'Jam','EA',6.78,'baking','ST3',165),(120,'Peanut Butter','EA',7,'baking','ST1',10),(120,'Peanut Butter','EA',7.2,'baking','ST2',32),(120,'Peanut Butter','EA',7.6,'baking','ST3',164),(121,'Sugar','EA',4.5,'baking','ST1',146),(121,'Sugar','EA',5.8,'baking','ST2',154),(121,'Sugar','EA',5.9,'baking','ST3',89),(122,'Vanilla Extract','EA',6,'baking','ST1',104),(122,'Vanilla Extract','EA',6.2,'baking','ST2',173),(122,'Vanilla Extract','EA',6.4,'baking','ST3',168),(123,'Cocoa powder','EA',10,'baking','ST1',145),(123,'Cocoa powder','EA',10.23,'baking','ST2',92),(123,'Cocoa powder','EA',13,'baking','ST3',28),(124,'Baking Powder','EA',12,'baking','ST1',51),(124,'Baking Powder','EA',12.45,'baking','ST2',187),(124,'Baking Powder','EA',13,'baking','ST3',125),(125,'Baking Soda','EA',13,'baking','ST1',40),(125,'Baking Soda','EA',13.2,'baking','ST2',123),(125,'Baking Soda','EA',13.25,'baking','ST3',58),(126,'Bread Crumbs','EA',4.5,'baking','ST1',80),(126,'Bread Crumbs','EA',4.62,'baking','ST2',103),(126,'Bread Crumbs','EA',4.69,'baking','ST3',75),(127,'Brownie Mix','EA',4.7,'baking','ST1',196),(127,'Brownie Mix','EA',4.8,'baking','ST2',42),(127,'Brownie Mix','EA',4.9,'baking','ST3',13),(128,'Food Coloring','EA',4.6,'baking','ST1',198),(128,'Food Coloring','EA',4.3,'baking','ST2',14),(128,'Food Coloring','EA',4.2,'baking','ST3',197),(129,'Frosting','EA',6.2,'baking','ST1',64),(129,'Frosting','EA',6.5,'baking','ST2',70),(129,'Frosting','EA',6,'baking','ST3',63),(130,'Yeast','EA',13.58,'baking','ST1',114),(130,'Yeast','EA',14,'baking','ST2',20),(130,'Yeast','EA',15,'baking','ST3',112),(131,'Ketchup','EA',3.5,'condiments','ST1',36),(131,'Ketchup','EA',2.4,'condiments','ST2',178),(131,'Ketchup','EA',2.8,'condiments','ST3',33),(132,'BBQ Sauce','EA',9.2,'condiments','ST1',169),(132,'BBQ Sauce','EA',8.9,'condiments','ST2',190),(132,'BBQ Sauce','EA',8,'condiments','ST3',39),(133,'Chilli Sauce','EA',5,'condiments','ST1',119),(133,'Chilli Sauce','EA',5.9,'condiments','ST2',67),(133,'Chilli Sauce','EA',5.7,'condiments','ST3',176),(134,'Soy Sauce','EA',5,'condiments','ST1',182),(134,'Soy Sauce','EA',4.5,'condiments','ST2',78),(134,'Soy Sauce','EA',3,'condiments','ST3',15),(135,'Mayonnaise','EA',2.8,'condiments','ST1',179),(135,'Mayonnaise','EA',1.8,'condiments','ST2',244),(135,'Mayonnaise','EA',2.85,'condiments','ST3',264),(136,'Mustard','EA',2.8,'condiments','ST1',180),(136,'Mustard','EA',3,'condiments','ST2',226),(136,'Mustard','EA',3,'condiments','ST3',57),(137,'French Dressing','EA',3,'condiments','ST1',104),(137,'French Dressing','EA',2.9,'condiments','ST2',282),(137,'French Dressing','EA',3.4,'condiments','ST3',215),(138,'Vinegar','EA',3.4,'condiments','ST1',68),(138,'Vinegar','EA',4.2,'condiments','ST2',124),(138,'Vinegar','EA',3.25,'condiments','ST3',229),(139,'Vegetable Oil','EA',3.8,'condiments','ST1',188),(139,'Vegetable Oil','EA',4,'condiments','ST2',20),(139,'Vegetable Oil','EA',3.25,'condiments','ST3',149),(140,'Soy Sauce','EA',4,'condiments','ST1',231),(140,'Soy Sauce','EA',5,'condiments','ST2',88),(140,'Soy Sauce','EA',3.8,'condiments','ST3',139),(141,'Olive Oil','EA',3.8,'condiments','ST1',203),(141,'Olive Oil','EA',4,'condiments','ST2',213),(141,'Olive Oil','EA',3.25,'condiments','ST3',12),(142,'Cinnamon','EA',0.68,'condiments','ST1',134),(142,'Cinnamon','EA',0.45,'condiments','ST2',207),(142,'Cinnamon','EA',0.8,'condiments','ST3',268),(143,'Syrup','EA',2.4,'condiments','ST1',27),(143,'Syrup','EA',2.2,'condiments','ST2',211),(143,'Syrup','EA',2,'condiments','ST3',137),(144,'Salt','EA',1.2,'condiments','ST1',105),(144,'Salt','EA',1.6,'condiments','ST2',245),(144,'Salt','EA',1.2,'condiments','ST3',156),(145,'Pepper','EA',1,'condiments','ST1',274),(145,'Pepper','EA',1.45,'condiments','ST2',72),(145,'Pepper','EA',1.2,'condiments','ST3',199),(146,'Herbs/Spices','EA',0.68,'condiments','ST1',288),(146,'Herbs/Spices','EA',0.4,'condiments','ST2',86),(146,'Herbs/Spices','EA',0.9,'condiments','ST3',290),(147,'Coffee','EA',11.75,'beverages','ST1',23),(147,'Coffee','EA',11.95,'beverages','ST2',261),(147,'Coffee','EA',11,'beverages','ST3',126),(148,'Tea','EA',11.92,'beverages','ST1',114),(148,'Tea','EA',11.09,'beverages','ST2',71),(148,'Tea','EA',12,'beverages','ST3',112),(149,'Orange Juice','EA',9.3,'beverages','ST1',196),(149,'Orange Juice','EA',9.2,'beverages','ST2',166),(149,'Orange Juice','EA',9,'beverages','ST3',267),(150,'Apple Juice','EA',2.9,'beverages','ST1',217),(150,'Apple Juice','EA',3.5,'beverages','ST2',257),(150,'Apple Juice','EA',4.5,'beverages','ST3',250),(151,'Soda','EA',3.7,'beverages','ST1',259),(151,'Soda','EA',3.8,'beverages','ST2',78),(151,'Soda','EA',4.1,'beverages','ST3',225),(152,'Aluminum Foil','EA',6.1,'paper & plastic','ST1',251),(152,'Aluminum Foil','EA',5.8,'paper & plastic','ST2',17),(152,'Aluminum Foil','EA',6,'paper & plastic','ST3',80),(153,'Garbage Bags','EA',3.4,'paper & plastic','ST1',200),(153,'Garbage Bags','EA',2.4,'paper & plastic','ST2',10),(153,'Garbage Bags','EA',2.3,'paper & plastic','ST3',56),(154,'Napkins','EA',1.75,'paper & plastic','ST1',168),(154,'Napkins','EA',1,'paper & plastic','ST2',22),(154,'Napkins','EA',1.5,'paper & plastic','ST3',167),(155,'Wax Paper','EA',2.4,'paper & plastic','ST1',253),(155,'Wax Paper','EA',2.1,'paper & plastic','ST2',13),(155,'Wax Paper','EA',2,'paper & plastic','ST3',40),(156,'Paper Plates','EA',2.3,'paper & plastic','ST1',283),(156,'Paper Plates','EA',2.4,'paper & plastic','ST2',45),(156,'Paper Plates','EA',2,'paper & plastic','ST3',187),(157,'Paper Cups','EA',1,'paper & plastic','ST1',100),(157,'Paper Cups','EA',1.36,'paper & plastic','ST2',164),(157,'Paper Cups','EA',1.7,'paper & plastic','ST3',191),(158,'Paper Towels','EA',1.89,'paper & plastic','ST1',206),(158,'Paper Towels','EA',1.9,'paper & plastic','ST2',172),(158,'Paper Towels','EA',1.8,'paper & plastic','ST3',208),(159,'Plastic Wrap','EA',2.38,'paper & plastic','ST1',254),(159,'Plastic Wrap','EA',2.45,'paper & plastic','ST2',142),(159,'Plastic Wrap','EA',2.8,'paper & plastic','ST3',42),(160,'Sandwich Baggies','EA',2.95,'paper & plastic','ST1',39),(160,'Sandwich Baggies','EA',2.8,'paper & plastic','ST2',232),(160,'Sandwich Baggies','EA',2.4,'paper & plastic','ST3',18),(161,'Toilet Paper','EA',3.8,'paper & plastic','ST1',275),(161,'Toilet Paper','EA',3.4,'paper & plastic','ST2',110),(161,'Toilet Paper','EA',3.2,'paper & plastic','ST3',111),(162,'Coffee Filters','EA',6.5,'paper & plastic','ST1',150),(162,'Coffee Filters','EA',5.8,'paper & plastic','ST2',68),(162,'Coffee Filters','EA',6.8,'paper & plastic','ST3',124),(163,'Bleach','EA',20.8,'cleaning','ST1',229),(163,'Bleach','EA',20.2,'cleaning','ST2',188),(163,'Bleach','EA',20,'cleaning','ST3',20),(164,'Floor Cleaner','EA',13,'cleaning','ST1',149),(164,'Floor Cleaner','EA',12,'cleaning','ST2',231),(164,'Floor Cleaner','EA',8,'cleaning','ST3',88),(165,'Dish Soap','EA',6.2,'cleaning','ST1',139),(165,'Dish Soap','EA',5.6,'cleaning','ST2',203),(165,'Dish Soap','EA',5,'cleaning','ST3',213),(166,'Dishwasher Soap','EA',7.1,'cleaning','ST1',12),(166,'Dishwasher Soap','EA',6.7,'cleaning','ST2',134),(166,'Dishwasher Soap','EA',6.5,'cleaning','ST3',207),(167,'Glass Cleaner','EA',9,'cleaning','ST1',268),(167,'Glass Cleaner','EA',5,'cleaning','ST2',27),(167,'Glass Cleaner','EA',7,'cleaning','ST3',211),(168,'Fabric Softener','EA',8.6,'cleaning','ST1',137),(168,'Fabric Softener','EA',7.8,'cleaning','ST2',105),(168,'Fabric Softener','EA',7,'cleaning','ST3',245),(169,'Laundry Detergent','EA',7.8,'cleaning','ST1',156),(169,'Laundry Detergent','EA',8.7,'cleaning','ST2',274),(169,'Laundry Detergent','EA',8,'cleaning','ST3',72),(170,'Toilet Bowl Cleaner','EA',11.36,'cleaning','ST1',199),(170,'Toilet Bowl Cleaner','EA',11,'cleaning','ST2',288),(170,'Toilet Bowl Cleaner','EA',10,'cleaning','ST3',86),(171,'Sponges','EA',3.45,'cleaning','ST1',290),(171,'Sponges','EA',3.4,'cleaning','ST2',402),(171,'Sponges','EA',3.2,'cleaning','ST3',179),(172,'Vacuum Bags','EA',4.3,'cleaning','ST1',60),(172,'Vacuum Bags','EA',4.5,'cleaning','ST2',67),(172,'Vacuum Bags','EA',4,'cleaning','ST3',178),(173,'Washing Powder','EA',5.7,'cleaning','ST1',97),(173,'Washing Powder','EA',5.6,'cleaning','ST2',18),(173,'Washing Powder','EA',5.5,'cleaning','ST3',207),(174,'Batteries','EA',6,'cleaning','ST1',298),(174,'Batteries','EA',8.2,'cleaning','ST2',138),(174,'Batteries','EA',7,'cleaning','ST3',212),(175,'Light Bulbs','EA',10.45,'cleaning','ST1',308),(175,'Light Bulbs','EA',11,'cleaning','ST2',140),(175,'Light Bulbs','EA',10,'cleaning','ST3',303),(176,'Body Wash','EA',6.8,'toiletry','ST1',446),(176,'Body Wash','EA',6.4,'toiletry','ST2',59),(176,'Body Wash','EA',6.2,'toiletry','ST3',428),(177,'Conditioner','EA',6,'toiletry','ST1',80),(177,'Conditioner','EA',7,'toiletry','ST2',411),(177,'Conditioner','EA',7.6,'toiletry','ST3',183),(178,'Deodorant','EA',4.5,'toiletry','ST1',113),(178,'Deodorant','EA',4.2,'toiletry','ST2',294),(178,'Deodorant','EA',4,'toiletry','ST3',301),(179,'Lotion','EA',6.35,'toiletry','ST1',154),(179,'Lotion','EA',6.5,'toiletry','ST2',85),(179,'Lotion','EA',6,'toiletry','ST3',441),(180,'Hairspray','EA',8.1,'toiletry','ST1',99),(180,'Hairspray','EA',8.2,'toiletry','ST2',188),(180,'Hairspray','EA',8,'toiletry','ST3',240),(181,'Ibuprofen','EA',2.6,'toiletry','ST1',384),(181,'Ibuprofen','EA',2.4,'toiletry','ST2',47),(181,'Ibuprofen','EA',2.3,'toiletry','ST3',368),(182,'Lip Balm','EA',1,'toiletry','ST1',265),(182,'Lip Balm','EA',1.5,'toiletry','ST2',346),(182,'Lip Balm','EA',1.2,'toiletry','ST3',272),(183,'Shampoo','EA',2.9,'toiletry','ST1',444),(183,'Shampoo','EA',3.4,'toiletry','ST2',376),(183,'Shampoo','EA',3.3,'toiletry','ST3',445),(184,'Hand Soap','EA',2.4,'toiletry','ST1',176),(184,'Hand Soap','EA',2.6,'toiletry','ST2',11),(184,'Hand Soap','EA',2,'toiletry','ST3',106),(185,'Shaving Cream','EA',1.7,'toiletry','ST1',156),(185,'Shaving Cream','EA',1.67,'toiletry','ST2',65),(185,'Shaving Cream','EA',1.6,'toiletry','ST3',413),(186,'Razor Blades','EA',2.75,'toiletry','ST1',375),(186,'Razor Blades','EA',2.5,'toiletry','ST2',317),(186,'Razor Blades','EA',2.2,'toiletry','ST3',394),(187,'Mouthwash','EA',3,'toiletry','ST1',223),(187,'Mouthwash','EA',4,'toiletry','ST2',201),(187,'Mouthwash','EA',5,'toiletry','ST3',409),(188,'Floss','EA',3.4,'toiletry','ST1',75),(188,'Floss','EA',3.2,'toiletry','ST2',4),(188,'Floss','EA',3,'toiletry','ST3',422),(189,'Toothpaste','EA',5,'toiletry','ST1',74),(189,'Toothpaste','EA',5.8,'toiletry','ST2',87),(189,'Toothpaste','EA',5.7,'toiletry','ST3',391),(190,'Toothbrush','EA',2.7,'toiletry','ST1',381),(190,'Toothbrush','EA',2.6,'toiletry','ST2',222),(190,'Toothbrush','EA',2.1,'toiletry','ST3',70),(191,'Baby Wipes','EA',4.5,'baby','ST1',163),(191,'Baby Wipes','EA',4.2,'baby','ST2',418),(191,'Baby Wipes','EA',4,'baby','ST3',93),(192,'Diapers','EA',1.75,'baby','ST1',46),(192,'Diapers','EA',1.5,'baby','ST2',52),(192,'Diapers','EA',1.9,'baby','ST3',367),(193,'Formula Milk','EA',2.2,'baby','ST1',354),(193,'Formula Milk','EA',2.4,'baby','ST2',149),(193,'Formula Milk','EA',2,'baby','ST3',262),(194,'Rash Cream','EA',1.75,'baby','ST1',292),(194,'Rash Cream','EA',1.9,'baby','ST2',105),(194,'Rash Cream','EA',1,'baby','ST3',252),(195,'Baby Snacks','EA',2.4,'baby','ST1',134),(195,'Baby Snacks','EA',2.2,'baby','ST2',438),(195,'Baby Snacks','EA',2,'baby','ST3',345),(196,'Treats','EA',3.4,'pets','ST1',363),(196,'Treats','EA',3.4,'pets','ST2',253),(196,'Treats','EA',3.2,'pets','ST3',407),(197,'Litter','EA',4.8,'pets','ST1',320),(197,'Litter','EA',5.2,'pets','ST2',116),(197,'Litter','EA',5,'pets','ST3',120),(198,'Pet Food','EA',2.1,'pets','ST1',300),(198,'Pet Food','EA',2.3,'pets','ST2',33),(198,'Pet Food','EA',2.2,'pets','ST3',121);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17 22:28:33