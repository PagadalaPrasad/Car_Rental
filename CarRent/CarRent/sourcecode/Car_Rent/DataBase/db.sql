/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - care_rent
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`care_rent` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `care_rent`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(222) DEFAULT NULL,
  `password` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `admin` */

insert  into `admin`(`id`,`email`,`password`) values 
(1,'admin@gmail.com','ad');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(999) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `Deposite_amount` varchar(999) DEFAULT NULL,
  `book_date` varchar(999) DEFAULT NULL,
  `pickUp_point` varchar(999) DEFAULT NULL,
  `dropping_point` varchar(999) DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  `today_date` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `book` */

insert  into `book`(`id`,`email`,`phone`,`car_id`,`Deposite_amount`,`book_date`,`pickUp_point`,`dropping_point`,`address`,`today_date`,`status`) values 
(1,'p@gmail.com','9550784756',1,'2500.0','2023-06-24T11:32','kp','kphb','hyd','2023-06-23T11:52:31.088392300','new'),
(5,'p@gmail.com','9886745785',7,'5000.0','2023-06-24T11:32','nlr','ong','ap','2023-06-24T12:28:03.933262800','Onboarded');

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cartype` varchar(999) DEFAULT NULL,
  `brand` varchar(999) DEFAULT NULL,
  `model` varchar(999) DEFAULT NULL,
  `fuel` varchar(999) DEFAULT NULL,
  `type` varchar(999) DEFAULT NULL,
  `version` varchar(999) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `mincost` double DEFAULT NULL,
  `maxcost` double DEFAULT NULL,
  `excost` double DEFAULT NULL,
  `depositcost` double DEFAULT NULL,
  `feactures` varchar(999) DEFAULT NULL,
  `image` longblob,
  `TypeCar` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `car` */

insert  into `car`(`id`,`cartype`,`brand`,`model`,`fuel`,`type`,`version`,`capacity`,`mincost`,`maxcost`,`excost`,`depositcost`,`feactures`,`image`,`TypeCar`) values 
(1,'Kia','verna','2023','Petrol','Ac','pojo',3,2000,80,2000,2500,'kkk','avatar.png','Car'),
(5,'audi','a123','2022','Petrol','Ac','mahi',5,2000,100,1500,5000,'all okay','avatar.png','Jeep'),
(7,'mahidhra','vk123','2023','Diesel','Ac','deer',4,70,50,333,5000,'445646','avatar.png','Toofan'),
(8,'sukuki','su123','2022','Diesel','Ac','mojo',3,1000,100,2000,5000,'all okay','avatar.png','Car');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `city` varchar(999) DEFAULT NULL,
  `drivingLicense` blob,
  `profile` blob,
  `identity` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`email`,`password`,`phone`,`address`,`pincode`,`city`,`drivingLicense`,`profile`,`identity`) values 
(2,'Pavan','p@gmail.com','p123','9553242973','Giet collegeStain hostel Diwancheruvu','235653','RAJAHMUNDR','','','aadhar');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(999) DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `payment_date` varchar(999) DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `extra_days` int DEFAULT NULL,
  `extra_kms` decimal(10,0) DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `actual_kms` double DEFAULT NULL,
  `deposite_amount` double DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `more_kms` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `payment` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
