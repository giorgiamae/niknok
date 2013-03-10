/*
SQLyog Community v10.2 
MySQL - 5.5.25a : Database - niknokclowns
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`niknokclowns` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `niknokclowns`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category`) values (1,'margarita'),(2,'Vesuvio'),(3,'Funghi'),(4,'Altona'),(5,'Hawaii'),(6,'Vegetarian'),(7,'Tropicana'),(8,'Mamma Mia'),(9,'Fantastico'),(10,'Carousel'),(11,'Calzone'),(12,'Pepperoni'),(13,'Kerab Pizza'),(14,'Crocodile Pizza'),(15,'Taco Pizza'),(16,'Bravisimo'),(17,'Opera'),(18,'Romeo'),(19,'Chicken Pizza'),(20,'Black & White'),(21,'Mexicana'),(22,'Frutti De Mare'),(23,'Quattro Stagione'),(24,'Parma'),(25,'Capricciosa');

/*Table structure for table `distination` */

DROP TABLE IF EXISTS `distination`;

CREATE TABLE `distination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `dist` varchar(300) NOT NULL,
  `agreement` varchar(100) NOT NULL,
  `person` varchar(100) NOT NULL,
  `time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Data for the table `distination` */

insert  into `distination`(`id`,`code`,`dist`,`agreement`,`person`,`time`) values (45,'b5s5q4e7','nacab, talisay city','Delivery','','6:30pm'),(46,'5ppan28s','','Pick-Up','Henry Reyez','11:30am'),(47,'as2825fa','','Pick-Up','Gerdel cruz','10:00am'),(48,'unoxsf2r','','Pick-Up','Blake griffin','8:00am'),(49,'','','','',''),(50,'sqt5ytar','','Pick-Up','argie','8:00am'),(51,'2ojgnm4y','','Pick-Up','asasasasa','8:00am'),(52,'ehd36fzh','','Pick-Up','ggfdfdf','8:00am'),(53,'z7eb2hui','dsaasasas','Delivery','','8:00am'),(54,'xq38bys8','','Pick-Up','cswewrweqwewer','8:00am'),(55,'d0rk5jk7','nacab, talisay city','Delivery','','12:30pm'),(56,'3yw782fo','','Pick-Up','qsqwqw','12:45pm'),(57,'gsth3r38','','Pick-Up','wertuiklsdcv ijhbefvokjn','8:00am'),(58,'admin','','Pick-Up','Shirley','12:30pm'),(59,'oqdgjhkp','','Pick-Up','Jannelyn Lapastora','6:30pm'),(60,'3ij7xhj2','','Pick-Up','hgfhf','11:45am'),(61,'8uf2dpm8','la salle, bacolod city','Delivery','','9:45am'),(62,'jp8ik4cm','','Pick-Up','jinky','12:15pm'),(63,'r6g2u3m3','','Pick-Up','','12:15pm'),(64,'','','','',''),(65,'','','','','');

/*Table structure for table `inventory` */

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `qtyleft` int(11) NOT NULL,
  `qtysold` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `inventory` */

insert  into `inventory`(`id`,`name`,`qtyleft`,`qtysold`,`product_id`) values (1,'Tomato Sauce',48,68,'1, 2, 3,  4, 5, 6, 7, 8, 9, 10, '),(2,'Mozzarella Chesse',48,68,'1, 2, 3, 4, 5, 6, 7, 8, '),(3,'Mushrooms',48,68,'1,2,3, 5,12, 21, 24, '),(4,'Ham',48,68,'3, 6, 8, 21, 12, 24, '),(5,'Tuna',48,68,'1, 4, 10, 19, 15, '),(6,'Onion',48,68,'5, 14, 2, 6, 10, 13, 25, '),(7,'Pineapple',48,68,'2, 6, 10, 13, 14, 17, 19, '),(8,'Aubergine',48,68,'2, 3, 7, 12, 15, 18, 21, '),(9,'Sardines',48,68,'1, 4, 6, 7, 9, 10, 13, 24'),(10,'Ground Beef',48,68,'5, 6, 8, 3, 1, 9, 11, 18'),(11,'Bellpepper',48,68,'6, 7, 9, 21, 25, '),(12,'Zuchini',48,68,'5, 9, 3, 5, 7, 12, 3'),(13,'Olives',48,68,'9, 12, 15, 18, 20, 22, 24'),(14,'Chicken',48,68,'23, 25, 1, 16, 14, 18, 20'),(15,'Bacon',48,68,'6, 12, 34, 24, 23, 12, 3, 4'),(16,'Cayen Paper',48,68,'2, 3, 4, 7, 10, 20, 21, 22, 23, 25'),(17,'Balogenese Sauce',48,68,'4, 5, 7, 10, 23, 11'),(18,'Beef Tenderloin',48,68,'11, 23, 24, 25, 21, 22 '),(19,'Pork Tenderloin',48,68,'19, 18, 17, 16, 20'),(20,'Bearnaise Sauce',48,68,'5, 7, 9, 10, 11, 14, 16'),(21,'Egg',48,68,'4, 7, 9, 10, 13, 24,25'),(22,'Schrimps',48,68,'2, 3, 4, 7, 9, 10, 14 19, 20'),(23,'Curry',48,68,'11, 13, 17, 19, 21, 22, 25'),(24,'Pepperoni',48,68,'16, 17, 18, 19, 21, 23, 25 '),(25,'Tabasco',48,68,'2, 4, 5, 6, 7, 8, 9, 12, 14'),(26,'Meat Balls',48,68,'13, 15, 16, 17, 18, 20, 21, 22'),(27,'Salami',48,68,'3, 4, 6, 7, 8, 9, 10, 11, 12');

/*Table structure for table `marias_members` */

DROP TABLE IF EXISTS `marias_members`;

CREATE TABLE `marias_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `number` varchar(20) NOT NULL,
  `house1` varchar(225) NOT NULL,
  `street1` varchar(225) NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `marias_members` */

insert  into `marias_members`(`id`,`firstname`,`lastname`,`email`,`password`,`number`,`house1`,`street1`,`city`) values (27,'xawi','Lapastora','jannelyn@yahoo.com','lapastora','434567','estefania','tangub','bacolod city'),(29,'jeza','bermejo','jeza@yahoo.com','bermejo','434978','bubog','nacab','Talisay City'),(31,'angel','garcia','angel@yahoo.com','delgado','565788','home','country homes','bacolod city'),(32,'xawi','leones','xawileones@yahoo.com','123456','09876543211','ashdfj','ajsbd','calamba');

/*Table structure for table `tbl_inventory` */

DROP TABLE IF EXISTS `tbl_inventory`;

CREATE TABLE `tbl_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_id` int(30) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `qtyleft` int(30) NOT NULL,
  `qtysold` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_inventory` */

insert  into `tbl_inventory`(`id`,`prod_id`,`product_name`,`qtyleft`,`qtysold`,`status`) values (1,1,'Kiddie Set',100,100,'available'),(2,1,'Long Table',100,300,'available'),(3,1,'Round Table',100,0,'available'),(4,1,'Adult Chair',100,0,'available'),(5,1,'Kiddie Chair',100,0,'available'),(6,2,'Balloons on Stick',70,10,'available'),(7,2,'Party Hats',100,0,'available'),(8,2,'Loot Bags',100,0,'available'),(9,2,'Palayok',100,0,'available'),(10,2,'Pabitin',100,0,'available'),(11,2,'Bday Banner',100,0,'available'),(12,2,'Nametag',100,0,'available');

/*Table structure for table `tbl_message` */

DROP TABLE IF EXISTS `tbl_message`;

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_message` */

insert  into `tbl_message`(`id`,`name`,`email`,`number`,`message`) values (4,'xawi','xawileones@yahoo.com','098765413221','hi :)');

/*Table structure for table `tbl_orderdetails` */

DROP TABLE IF EXISTS `tbl_orderdetails`;

CREATE TABLE `tbl_orderdetails` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(30) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total` varchar(100) NOT NULL,
  `transactioncode` varchar(300) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_orderdetails` */

insert  into `tbl_orderdetails`(`order_id`,`customer`,`product_name`,`quantity`,`price`,`total`,`transactioncode`) values (106,'32','Baptismal Package','','6000','6000','6jobce4x'),(107,'32','Baptismal Package','','6000','6000','wjkkfj44'),(108,'32','Baptismal Package','','6000','6000','fxx8q4i7'),(110,'32','Party Hats','1','40','40','xxu0dzwv');

/*Table structure for table `tbl_orders` */

DROP TABLE IF EXISTS `tbl_orders`;

CREATE TABLE `tbl_orders` (
  `int` int(255) NOT NULL AUTO_INCREMENT,
  `cusid` int(11) NOT NULL,
  `amountpaid` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `transactiondate` varchar(30) NOT NULL,
  `transactioncode` varchar(30) NOT NULL,
  `mode` varchar(300) NOT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_orders` */

insert  into `tbl_orders`(`int`,`cusid`,`amountpaid`,`status`,`transactiondate`,`transactioncode`,`mode`) values (70,32,'6000','Reserved','10/09/2012','6jobce4x','Cash'),(71,32,'6000','Reserved','10/09/2012','wjkkfj44','Cash'),(72,32,'6000','Pending','10/09/2012','fxx8q4i7','Cash'),(73,32,'6000','Pending','10/09/2012','fxx8q4i7','Cash'),(74,32,'6000','Pending','10/09/2012','fxx8q4i7','Cash'),(75,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(76,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(77,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(78,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(79,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(80,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(81,32,'2300','Pending','10/09/2012','xxu0dzwv','Cash'),(82,32,'40','Pending','10/09/2012','xxu0dzwv','Cash'),(83,32,'40','Pending','10/09/2012','xxu0dzwv','Cash'),(84,32,'40','Pending','10/09/2012','xxu0dzwv','Cash'),(85,32,'40','Pending','10/09/2012','xxu0dzwv','Cash'),(86,32,'40','Pending','10/09/2012','xxu0dzwv','Cash');

/*Table structure for table `tbl_party` */

DROP TABLE IF EXISTS `tbl_party`;

CREATE TABLE `tbl_party` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `party_categories` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_party` */

insert  into `tbl_party`(`id`,`party_categories`) values (1,'Party Packages'),(2,'Food Cart'),(3,'Party Entertainer');

/*Table structure for table `tbl_party2` */

DROP TABLE IF EXISTS `tbl_party2`;

CREATE TABLE `tbl_party2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `party_categories` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_party2` */

insert  into `tbl_party2`(`id`,`party_categories`) values (1,'Party Set'),(2,'Party Favor');

/*Table structure for table `tbl_payments` */

DROP TABLE IF EXISTS `tbl_payments`;

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusid` int(30) NOT NULL,
  `transactioncode` varchar(300) NOT NULL,
  `total_amount` int(100) NOT NULL,
  `total_paid` int(100) NOT NULL,
  `total_balance` int(100) NOT NULL,
  `status` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_payments` */

insert  into `tbl_payments`(`id`,`cusid`,`transactioncode`,`total_amount`,`total_paid`,`total_balance`,`status`) values (50,32,'6jobce4x',6000,12000,-6000,'Reserved'),(51,32,'wjkkfj44',6000,12000,-6000,'Reserved'),(52,32,'fxx8q4i7',0,0,0,'Pending'),(53,32,'fxx8q4i7',0,0,0,'Pending'),(54,0,'',0,0,0,'Pending'),(55,0,'',0,0,0,'Pending'),(56,0,'',0,0,0,'Pending'),(57,0,'',0,0,0,'Pending'),(58,0,'',0,0,0,'Pending'),(59,0,'',0,0,0,'Pending'),(60,0,'',0,0,0,'Pending'),(61,0,'',0,0,0,'Pending'),(62,32,'fxx8q4i7',6000,0,6000,'Pending'),(63,0,'',0,0,0,'Pending'),(64,0,'',0,0,0,'Pending'),(65,32,'xxu0dzwv',2300,0,2300,'Pending'),(66,32,'xxu0dzwv',2300,0,2300,'Pending'),(67,32,'xxu0dzwv',2300,0,2300,'Pending'),(68,32,'xxu0dzwv',2300,0,2300,'Pending'),(69,32,'xxu0dzwv',2300,0,2300,'Pending'),(70,32,'xxu0dzwv',2300,0,2300,'Pending'),(71,32,'xxu0dzwv',2300,0,2300,'Pending'),(72,32,'xxu0dzwv',40,0,40,'Pending'),(73,32,'xxu0dzwv',40,0,40,'Pending'),(74,32,'xxu0dzwv',40,0,40,'Pending'),(75,32,'xxu0dzwv',40,0,40,'Pending'),(76,32,'xxu0dzwv',40,0,40,'Pending');

/*Table structure for table `tbl_products` */

DROP TABLE IF EXISTS `tbl_products`;

CREATE TABLE `tbl_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(50) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_products` */

insert  into `tbl_products`(`id`,`product_id`,`product_title`,`product_price`,`product_name`) values (1,1,'Party Package',6000,'Baptismal Package'),(2,1,'Party Package',2500,'Package A'),(3,1,'Party Package',3500,'Package B'),(4,1,'Party Package',5700,'Package C'),(5,1,'Party Package',4500,'Package D'),(126,1,'Party Package',6000,'Package E'),(127,1,'Party Package',3500,'Package 2B'),(128,2,'Food Cart',2300,'Cotton Candy'),(129,2,'Food Cart',3000,'Chocolate Fountain'),(130,2,'Food Cart',2500,'Soft Ice Cream'),(132,2,'Food Cart',2000,'Candy Buffet'),(133,3,'Party Entertainer',1000,'1 Clown hosting/magic/games'),(134,3,'Party Entertainer',1400,'2 Clowns hosting/magic/games'),(135,3,'Party Entertainer',3000,'2 Clowns w/ Facepainting(Unlimited)'),(136,3,'Party Entertainer',2000,'1 Clown w/ Facepainting(30 kids)'),(137,3,'Party Entertainer',1800,'Facepainting(Unlimited)'),(138,3,'Party Entertainer',1300,'Facepainting(30 Kids)'),(139,3,'Party Entertainer',2500,'Puppet Show w/ Talking Mask');

/*Table structure for table `tbl_products2` */

DROP TABLE IF EXISTS `tbl_products2`;

CREATE TABLE `tbl_products2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(50) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_products2` */

insert  into `tbl_products2`(`id`,`product_id`,`product_title`,`product_price`,`product_name`,`status`) values (1,1,'Party Set',45,'Kiddie Set','available'),(2,1,'Party Set',130,'Long Table','available'),(3,1,'Party Set',120,'Round Table','available'),(4,1,'Party Set',10,'Adult Chair','available'),(5,1,'Party Set',6,'Kiddie Chair','available'),(6,2,'Party Favor',16,'Balloons on Stick','available'),(7,2,'Party Favor',40,'Party Hats','available'),(8,2,'Party Favor',35,'Loot Bags','available'),(9,2,'Party Favor',25,'Palayok','available'),(10,2,'Party Favor',35,'Pabitin','available'),(11,2,'Party Favor',50,'Bday Banner','available'),(12,2,'Party Favor',25,'Nametag','available');

/*Table structure for table `tbl_reserve` */

DROP TABLE IF EXISTS `tbl_reserve`;

CREATE TABLE `tbl_reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `total_amt` int(50) NOT NULL,
  `how` varchar(50) NOT NULL,
  `party_month` varchar(50) NOT NULL,
  `party_day` varchar(50) NOT NULL,
  `party_year` varchar(50) NOT NULL,
  `party_hour` int(2) NOT NULL,
  `party_minute` int(2) NOT NULL,
  `party_time` varchar(5) NOT NULL,
  `party_theme` varchar(50) NOT NULL,
  `party_venue` varchar(100) NOT NULL,
  `occassion` varchar(100) NOT NULL,
  `celebrant_name` varchar(100) NOT NULL,
  `transactioncode` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `staus` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_reserve` */

insert  into `tbl_reserve`(`id`,`customer_id`,`total_amt`,`how`,`party_month`,`party_day`,`party_year`,`party_hour`,`party_minute`,`party_time`,`party_theme`,`party_venue`,`occassion`,`celebrant_name`,`transactioncode`,`payment`,`staus`) values (106,32,6000,'Pick-up','November','1','2012',1,0,'am','Assorted Cartoon Characters','Sementeryo','Undas','Jorja','6jobce4x','Cash',''),(107,32,6000,'Pick-up','November','1','2013',1,0,'am','Assorted Cartoon Characters','Rose Valley','Bday','apes','wjkkfj44','Cash',''),(108,32,0,'','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','fxx8q4i7','',''),(109,32,0,'','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','fxx8q4i7','',''),(110,0,0,'','','','',0,0,'','','','','','','',''),(111,0,0,'','','','',0,0,'','','','','','','',''),(112,0,0,'','','','',0,0,'','','','','','','',''),(113,0,0,'','','','',0,0,'','','','','','','',''),(114,0,0,'','','','',0,0,'','','','','','','',''),(115,0,0,'','','','',0,0,'','','','','','','',''),(116,0,0,'','','','',0,0,'','','','','','','',''),(117,0,0,'','','','',0,0,'','','','','','','',''),(118,32,6000,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','fxx8q4i7','Cash',''),(119,0,0,'','','','',0,0,'','','','','','','',''),(120,0,0,'','','','',0,0,'','','','','','','',''),(121,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(122,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(123,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(124,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Bank',''),(125,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Bank',''),(126,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Bank',''),(127,32,2300,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(128,32,40,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(129,32,40,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Bank',''),(130,32,40,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Bank',''),(131,32,40,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash',''),(132,32,40,'Pick-up','January','1','2012',1,0,'am','Assorted Cartoon Characters','','','','xxu0dzwv','Cash','');

/*Table structure for table `tbl_users` */

DROP TABLE IF EXISTS `tbl_users`;

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_users` */

insert  into `tbl_users`(`id`,`username`,`password`,`status`,`date`) values (1,'admin','admin',0,''),(2,'admin','xawi',0,'');

/*Table structure for table `tblbuffet` */

DROP TABLE IF EXISTS `tblbuffet`;

CREATE TABLE `tblbuffet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `buffet_id` int(50) NOT NULL,
  `pack_name` varchar(50) NOT NULL,
  `pack_price` int(50) NOT NULL,
  `pack_buffet` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `tblbuffet` */

insert  into `tblbuffet`(`id`,`buffet_id`,`pack_name`,`pack_price`,`pack_buffet`) values (1,1,'kiddie birthday party',35000,'kiddie_buffet1'),(2,1,'kiddie birthday party',45000,'kiddie_buffet2'),(3,1,'kiddie birthday party',55000,'kiddie_buffet3'),(4,2,'debut party',50000,'debut_buffet1'),(5,2,'debut party',60000,'debut_buffet2'),(6,2,'debut party',70000,'debut_buffet3'),(7,3,'wedding party',65000,'wedding_buffet1'),(8,3,'wedding party',75000,'wedding_buffet2'),(9,3,'wedding party',85000,'wedding_buffet1'),(10,4,'birthday party',40000,'bday_buffet1'),(11,4,'birthday party',55000,'bday_buffet2'),(12,4,'birthday party',65000,'bday_buffet3'),(13,5,'seminar/conventions',40000,'seminar_buffet1'),(14,5,'seminar/conventions',50000,'seminar_buffet2'),(15,5,'buffet3',55000,'seminar_buffet3');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
