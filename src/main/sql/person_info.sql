/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.7.17-log : Database - person_info
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`person_info` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `person_info`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`id`,`bookName`,`price`,`num`) values (4,'Java从入门到精通222',19800,50),(5,'Spring从入门到放弃',19.9,15),(6,'MySQL从删库到跑路',20,9),(10,'Mybatis-愤怒的小鸟',50,10),(11,'SpringMVC详解',9.9,30),(13,'Spring和Mybatis整合好简单',9.9,40),(14,'ssm整合好简单',9.9,40);

/*Table structure for table `computers` */

DROP TABLE IF EXISTS `computers`;

CREATE TABLE `computers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `brand` varchar(40) DEFAULT NULL COMMENT '名牌',
  `price` float DEFAULT NULL COMMENT '价格',
  `runMem` float DEFAULT NULL COMMENT '内存',
  `cpu` varchar(50) DEFAULT NULL COMMENT 'cpu类型',
  `xianKa` float DEFAULT NULL COMMENT '显卡',
  `status` varchar(2) DEFAULT '1' COMMENT '1 显示  0隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `computers` */

insert  into `computers`(`id`,`brand`,`price`,`runMem`,`cpu`,`xianKa`,`status`) values (1,'联想222',8000,4,'奔腾',4,'1'),(2,'联想',10000,8,'i3',2,'0'),(3,'神舟',6999,2,'i7',2,'1');

/*Table structure for table `husband` */

DROP TABLE IF EXISTS `husband`;

CREATE TABLE `husband` (
  `husid` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `husbandname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`husid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `husband` */

insert  into `husband`(`husid`,`age`,`gender`,`husbandname`) values (1,18,'男','小明'),(2,20,'男','王二麻子');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderId` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `remark` varchar(20) DEFAULT NULL COMMENT '订单描述',
  `orderNo` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `cost` float DEFAULT NULL COMMENT '订单价格',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id(购买者)',
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orderId`,`remark`,`orderNo`,`cost`,`createTime`,`userId`) values (1,'Java从入门到放弃','80220',19800,'2019-03-07 09:39:25',1),(2,'MySQL从删库到跑路','80221',99.9,'2019-03-07 09:39:47',1),(3,'大娃娃','80222',100,'2019-03-07 11:22:38',3),(4,'小娃娃','80223',20,'2019-03-07 11:24:09',3);

/*Table structure for table `persons` */

DROP TABLE IF EXISTS `persons`;

CREATE TABLE `persons` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uName` varchar(40) DEFAULT NULL COMMENT '姓名',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `gender` varchar(2) DEFAULT NULL COMMENT '1男  0女',
  `zhiYe` varchar(2) DEFAULT NULL COMMENT '1程序猿  2攻城狮',
  `address` varchar(200) DEFAULT NULL COMMENT '住所',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

/*Data for the table `persons` */

insert  into `persons`(`id`,`uName`,`birthday`,`gender`,`zhiYe`,`address`,`phone`) values (3,'张三','2017-02-02 00:00:00','1','1','武汉','15912345677'),(4,'李四','2017-02-02 00:00:00','1','1','武汉','15912345666'),(5,'王二麻子','2019-03-03 16:33:20','0','2','长沙','15912345655'),(8,'小翠儿','2019-03-05 08:59:19','0','2','长春','15912345622'),(9,'凤姐','2019-03-05 09:34:13','0','1','长沙','15912345333'),(11,'如花','2019-03-25 11:43:05','0',NULL,NULL,NULL),(12,'私约','2019-03-25 11:47:30','0',NULL,NULL,NULL),(13,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(14,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(15,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(16,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(17,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(18,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(19,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(20,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(21,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(22,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(23,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(24,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(25,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(26,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(27,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(28,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(29,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(30,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(31,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(32,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(33,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(34,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(35,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(36,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(37,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(38,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(39,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(40,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(41,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(42,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(43,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(44,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(45,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(46,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(47,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(48,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(49,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(50,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(51,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(52,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(53,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(54,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(55,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(56,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(57,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(58,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(59,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(60,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(61,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(62,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(63,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(64,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(65,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(66,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(67,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(68,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(69,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(70,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(71,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(72,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(73,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(74,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(75,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(76,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(77,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(78,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(79,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(80,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(81,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(82,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(83,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(84,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(85,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(86,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(87,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(88,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(89,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(90,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(91,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(92,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(93,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(94,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(95,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(96,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(97,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(98,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(99,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(100,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(101,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(102,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(103,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(104,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(105,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(106,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(107,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(108,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(109,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(110,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(111,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL),(112,'私约','2019-03-25 11:50:41','0',NULL,NULL,NULL);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `students` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uName` varchar(40) DEFAULT NULL COMMENT '用户名',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`uName`,`phone`,`address`) values (1,'王二麻子','159123456','武汉'),(3,'张三','139123456','长春');

/*Table structure for table `wife` */

DROP TABLE IF EXISTS `wife`;

CREATE TABLE `wife` (
  `wifeid` bigint(20) NOT NULL AUTO_INCREMENT,
  `nianlin` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `wifename` varchar(255) DEFAULT NULL,
  `hid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`wifeid`),
  KEY `FK37AF114DB298FF` (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `wife` */

insert  into `wife`(`wifeid`,`nianlin`,`sex`,`wifename`,`hid`) values (1,20,'女','如花',1),(2,23,'女','小翠儿',2);

/* Procedure structure for procedure `pro_insert` */

/*!50003 DROP PROCEDURE IF EXISTS  `pro_insert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_insert`(in n varchar(40),in m varchar(2),in i int)
begin
	declare j int default 1;
	while j<=i do
		INSERT INTO persons SET uName=n,birthday=NOW(),gender=m;
		set j=j+1;
	end while;
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
