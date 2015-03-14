/*
SQLyog Ultimate v8.55 
MySQL - 5.1.51-community : Database - dershane
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dershane` /*!40100 DEFAULT CHARACTER SET latin5 */;

USE `dershane`;

/*Table structure for table `ayarlar` */

DROP TABLE IF EXISTS `ayarlar`;

CREATE TABLE `ayarlar` (
  `gizli` enum('Evet','HayÄ±r') NOT NULL DEFAULT 'Evet',
  `versiyon` varchar(7) NOT NULL,
  `makbuz_sira_no` bigint(10) DEFAULT NULL,
  `yedek_tarih` date DEFAULT NULL,
  `gateway` varchar(100) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `sifre` varchar(25) DEFAULT NULL,
  `kanal` varchar(25) DEFAULT NULL,
  `originator` varchar(11) DEFAULT NULL,
  `smtp` varchar(25) DEFAULT NULL,
  `smtp_kullanici` varchar(25) DEFAULT NULL,
  `smtp_sifre` varchar(25) DEFAULT NULL,
  `dershane_adi_kisa` varchar(25) DEFAULT NULL,
  `dershane_adi_resmi` varchar(50) DEFAULT NULL,
  `dershane_adresi` varchar(100) DEFAULT NULL,
  `dershane_il` varchar(15) DEFAULT NULL,
  `dershane_tel` varchar(15) DEFAULT NULL,
  `dershane_faks` varchar(15) DEFAULT NULL,
  `dershane_web` varchar(50) DEFAULT NULL,
  `dershane_mail` varchar(50) DEFAULT NULL,
  `dershane_logo` blob,
  `dershane_mudur` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `ayarlar` */

insert  into `ayarlar`(`gizli`,`versiyon`,`makbuz_sira_no`,`yedek_tarih`,`gateway`,`username`,`sifre`,`kanal`,`originator`,`smtp`,`smtp_kullanici`,`smtp_sifre`,`dershane_adi_kisa`,`dershane_adi_resmi`,`dershane_adresi`,`dershane_il`,`dershane_tel`,`dershane_faks`,`dershane_web`,`dershane_mail`,`dershane_logo`,`dershane_mudur`) values ('HayÄ±r','1.2.5.9',18770,'2009-10-25','http://www.biotekno.biz:8080/SMS-Web/xmlsms','','','','COZUM DERSH','mail.mkysoft.com','xxx@mkysoft.com','45454','Ã–RNEK DERSHANESÄ°','Ã–RNEK DERSHANESÄ°','Cade Cad. Ä°ÅŸhanÄ± Ä°ÅŸ Merkezi Kat:1-5','Ä°LÄ°NÄ°Z','01231232345-34','01231234567',NULL,'dershane mail','BM6\0\0\0\0\0\06\0\0\0(\0\0\0€\0\0\0`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïææææææïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïæææïïï÷÷÷æææïïïïïïïïïïïïïïïïïïÿÿÿæææ÷÷÷ïïïïïïæææïïïæææïïïïïïïïïïïïïïïïïï÷÷÷ïïïïïïæææïïïïïïæææïïïÿÿÿææææææïïïïïïæææ÷÷÷ïïï÷÷÷ïïïïïïæææïïïæææïïïïïïïïïïïïæææïïïææææææÿÿÿŞŞŞïïï÷÷÷ïïïïïïïïïïïïïïïïïïæææïïïïïïïïïïïïïïïïïïæææïïïïïïæææïïï÷÷÷÷÷÷æææ÷÷÷ïïïïïïæææïïïïïïææææææïïïïïï÷÷÷ææææææïïïŞŞŞïïïïïïïïïïïï÷÷÷æææïïïæææïïïæææïïïïïïæææïïïïïïïïïïïïïïïæææ÷÷÷æææ÷÷÷ïïïæææ÷÷÷æææ÷÷÷æææ÷÷÷ïïïïïïïïïÿÿÿÿÿÿ÷÷÷æææµµµccc))):::½½½÷÷÷÷÷÷ŞŞŞæææïïïïïï÷÷÷ŞŞŞÎÎÎ½½½­­­­­­­­­ÅÅÅïïï÷÷÷æææ­­­ZZZZZZkkkkkkµµµæææ÷÷÷ŞŞŞœœœkkkZZZRRRZZZZZZZZZæææŒŒŒZZZÎÎÎïïïÿÿÿæææRRRccc­­­cccBBBJJJsss­­­ÿÿÿŞŞŞZZZ„„„ïïïæææïïïÅÅÅZZZ¥¥¥ÅÅÅRRRœœœæææïïï÷÷÷æææ{{{ccc½½½ŒŒŒZZZŞŞŞ÷÷÷æææïïïŒŒŒsssïïïœœœZZZcccJJJZZZZZZcccæææ¥¥¥kkkBBBcccZZZRRR{{{ÖÖÖsssZZZRRRZZZZZZRRR”””ææækkkkkkïïïïïïïïï¥¥¥RRRœœœœœœkkkæææ÷÷÷÷÷÷æææ÷÷÷æææïïïïïïÿÿÿïïïæææïïïŞŞŞŒŒŒJJJBBBÖÖÖææææææ÷÷÷ÿÿÿïïïŒŒŒ!!!!!!!!!!!!)))BBB„„„æææ÷÷÷ïïï¥¥¥BBBZZZZZZBBB111„„„ŞŞŞ÷÷÷ŒŒŒ:::ZZZkkkcccccckkkæææ{{{BBBµµµæææŞŞŞkkkJJJµµµ¥¥¥JJJ{{{sss:::BBB½½½ÖÖÖBBBsssïïïïïïïïï½½½:::ŒŒŒÅÅÅ:::kkkŞŞŞïïïæææÖÖÖJJJJJJŞŞŞkkkJJJæææ÷÷÷æææÖÖÖBBBkkkæææ”””BBBZZZkkkcccZZZkkkæææsss:::RRRkkkZZZccc{{{ŞŞŞJJJ:::kkkZZZccckkk¥¥¥ŞŞŞ111RRR÷÷÷æææÎÎÎJJJJJJŞŞŞ”””:::ïïïïïïæææïïï÷÷÷æææïïïïïïÿÿÿïïïïïï÷÷÷æææ„„„!!!­­­ŞŞŞ÷÷÷ïïïæææÖÖÖkkkZZZBBB)))ZZZ„„„¥¥¥ÅÅÅ÷÷÷ïïïïïïŞŞŞŒŒŒBBBµµµïïïŞŞŞsss:::ŒŒŒæææŒŒŒJJJÅÅÅææææææïïï÷÷÷ïïïsssBBB½½½÷÷÷½½½111sssæææïïïÎÎÎæææïïïÅÅÅJJJŒŒŒÅÅÅJJJ{{{æææ÷÷÷æææÎÎÎJJJ„„„æææ{{{111kkkcccZZZccc:::”””ïïïRRRZZZŞŞŞŞŞŞŞŞŞZZZBBBsssæææœœœ:::­­­ïïïïïïïïïæææ÷÷÷ŒŒŒ:::ÎÎÎæææ÷÷÷ÿÿÿïïïŞŞŞJJJRRRïïïæææïïïææææææÖÖÖJJJcccÖÖÖïïïsss111½½½ïïï„„„RRR÷÷÷ææææææ÷÷÷ïïïïïïïïïïïïÿÿÿïïïæææïïïïïï½½½ccc{{{µµµŞŞŞïïïïïïïïïŞŞŞ{{{ZZZkkkcccÖÖÖïïïïïïææææææïïï÷÷÷÷÷÷¥¥¥BBBµµµïïïæææÎÎÎJJJcccïïïŒŒŒ:::µµµæææïïïïïïïïïïïïsssBBBÎÎÎÖÖÖJJJRRRÖÖÖæææ÷÷÷ïïïææææææ”””111œœœÎÎÎ:::{{{ïïïæææïïïÎÎÎ111{{{ïïï½½½BBBJJJ{{{{{{:::JJJÖÖÖïïïcccRRRŞŞŞæææ{{{BBB111{{{ŞŞŞ”””BBBÅÅÅŞŞŞïïïïïïïïïïïïsssBBBÎÎÎæææ÷÷÷ŞŞŞïïïŞŞŞRRRZZZæææïïïææææææ÷÷÷ÖÖÖBBBsssŞŞŞ­­­:::{{{ææææææ”””JJJïïïæææ÷÷÷ïïïæææïïïïïïïïïÿÿÿïïïïïïïïï÷÷÷ÎÎÎ{{{ccc¥¥¥ïïï÷÷÷ïïï÷÷÷æææŒŒŒRRRsssŒŒŒïïïïïïïïï÷÷÷ÿÿÿææææææïïïœœœ:::­­­ïïïïïïæææcccJJJŞŞŞœœœBBBœœœÖÖÖÎÎÎŞŞŞææææææsssRRRssskkkBBBŒŒŒïïïæææ÷÷÷æææÖÖÖ”””BBBZZZÅÅÅÖÖÖBBBkkkÅÅÅÅÅÅÅÅÅ¥¥¥JJJ„„„æææŞŞŞRRRRRRïïïÖÖÖBBBkkkæææææækkkJJJïïïœœœBBBcccRRRkkkæææ”””BBBœœœÎÎÎÖÖÖÅÅÅææææææŒŒŒBBBµµµïïïïïïæææ÷÷÷æææRRRZZZ½½½ŞŞŞÎÎÎïïïïïïÎÎÎBBBBBB„„„BBBRRRÎÎÎïïïïïïŒŒŒBBBæææïïï÷÷÷ææææææ÷÷÷æææïïïÿÿÿïïïïïïïïïïïïÖÖÖŒŒŒkkkµµµïïïææææææ÷÷÷ïïï­­­ZZZccc¥¥¥ïïï÷÷÷÷÷÷ïïïæææ÷÷÷ïïïïïï¥¥¥BBBµµµïïïïïïïïïsss111ÖÖÖœœœ111BBB::::::„„„ïïïïïï{{{BBB:::RRR:::ccc¥¥¥æææ÷÷÷”””RRR111sssµµµæææÖÖÖBBB:::BBB:::BBBBBBBBB{{{æææ÷÷÷ŒŒŒJJJÎÎÎ­­­BBBµµµïïïïïïkkkRRRµµµJJJRRR½½½BBB{{{ŞŞŞœœœ:::111JJJJJJsssïïïïïï„„„JJJÅÅÅïïïŞŞŞïïïïïïŞŞŞRRR:::RRR::::::ÎÎÎæææÖÖÖJJJBBBBBBRRR:::kkkÖÖÖŞŞŞŒŒŒJJJïïïïïïïïïïïïïïïïïïæææïïïÿÿÿïïï÷÷÷ïïïïïïŞŞŞ”””RRRµµµææææææÿÿÿïïïïïïÅÅÅccccccÎÎÎææææææïïï÷÷÷÷÷÷ææææææïïïœœœ:::µµµæææïïïŞŞŞkkkBBBæææŒŒŒBBBŒŒŒ¥¥¥­­­µµµïïïïïïsss:::ÅÅÅŞŞŞÅÅÅJJJRRRæææµµµ:::JJJµµµæææ÷÷÷ïïïÎÎÎ:::ccc­­­¥¥¥¥¥¥ŒŒŒBBB{{{ïïïæææÖÖÖ:::„„„kkkJJJæææïïïïïïZZZJJJJJJBBBÎÎÎïïï:::cccïïïŒŒŒBBBŒŒŒ¥¥¥¥¥¥½½½æææ÷÷÷{{{:::ÅÅÅïïï÷÷÷æææææææææJJJJJJ¥¥¥­­­œœœŞŞŞæææÖÖÖ:::ZZZŞŞŞŞŞŞŒŒŒ:::œœœïïïŒŒŒJJJïïïïïïïïï÷÷÷ïïïŞŞŞ÷÷÷ïïïÿÿÿæææïïïïïïïïïæææ”””kkk­­­ŞŞŞïïïæææïïïïïïÎÎÎcccZZZŞŞŞïïïæææ÷÷÷ïïïïïïïïïïïïæææ”””BBBµµµïïïæææÖÖÖBBBZZZŞŞŞŒŒŒBBBÅÅÅïïï÷÷÷æææïïïæææsssBBBÅÅÅæææææækkkBBBŞŞŞ{{{BBB½½½ïïï÷÷÷æææ÷÷÷½½½BBBsss÷÷÷ïïïïïïÎÎÎ:::„„„æææïïïïïïcccBBB:::”””ïïï÷÷÷æææcccBBB111½½½æææŞŞŞJJJZZZæææ”””BBB½½½ïïïïïïïïïïïïæææ{{{:::ÅÅÅïïïïïïïïïææææææJJJZZZæææïïïïïïæææŞŞŞÖÖÖ:::ZZZæææïïïÅÅÅBBBkkkæææŒŒŒBBBïïïïïï÷÷÷÷÷÷ïïïæææïïïïïïÿÿÿ÷÷÷ïïïïïïææææææœœœccc”””ŞŞŞïïïïïïïïïæææÖÖÖcccZZZŞŞŞïïïæææïïïïïïïïïïïïïïïæææœœœJJJ¥¥¥ÅÅÅ½½½JJJJJJ¥¥¥æææ”””BBB”””ÖÖÖÅÅÅÎÎÎÅÅÅïïï{{{111µµµÖÖÖ­­­JJJJJJÖÖÖ”””:::œœœŞŞŞÎÎÎ­­­ïïïÎÎÎ:::{{{ÿÿÿïïïæææÖÖÖ:::{{{÷÷÷ŞŞŞæææ½½½BBBJJJÎÎÎïïïæææ÷÷÷RRRBBB”””æææïïïæææBBBkkkæææœœœJJJœœœÎÎÎÎÎÎÎÎÎÅÅÅæææ{{{JJJÅÅÅïïïïïïïïïïïïæææJJJRRR½½½ÅÅÅÎÎÎÎÎÎŞŞŞŞŞŞ:::ZZZÅÅÅÎÎÎŒŒŒ:::„„„æææ„„„RRRŞŞŞïïïÿÿÿææææææ÷÷÷ïïïïïïÿÿÿ÷÷÷ïïïïïïïïïïïïµµµkkk„„„ŞŞŞæææŞŞŞïïïæææÖÖÖZZZZZZŞŞŞææææææïïïïïïïïïïïï÷÷÷æææ”””)))BBBBBB:::RRR”””ïïïïïïŒŒŒBBB:::BBBBBBJJJ:::ÖÖÖŒŒŒJJJJJJBBBBBBRRR”””ïïïÖÖÖZZZJJJBBB:::RRRæææÖÖÖBBBkkkæææïïï÷÷÷ÅÅÅ:::{{{÷÷÷ïïïïïïæææJJJcccïïï÷÷÷æææ÷÷÷ccccccæææïïïïïïæææ:::kkkŞŞŞ”””:::BBBBBB:::BBBRRRÎÎÎ„„„BBBµµµïïï÷÷÷÷÷÷÷÷÷ŞŞŞJJJ:::JJJBBB:::BBB”””ÅÅÅRRR:::BBBBBB111ZZZÅÅÅ÷÷÷½½½„„„ïïïïïï÷÷÷æææïïï÷÷÷æææïïïÿÿÿïïïæææïïïïïïïïïÅÅÅssskkkÖÖÖ÷÷÷ïïïïïï÷÷÷½½½ZZZcccŞŞŞïïïïïïïïïïïïïïïŞŞŞïïï÷÷÷ÎÎÎ”””œœœ”””­­­ÎÎÎæææ÷÷÷÷÷÷µµµµµµ­­­œœœ­­­­­­­­­÷÷÷µµµœœœ„„„””””””ÅÅÅ÷÷÷÷÷÷ÿÿÿÅÅÅ¥¥¥{{{”””­­­ïïïŞŞŞ¥¥¥µµµæææ÷÷÷÷÷÷ŞŞŞ¥¥¥½½½ææææææ÷÷÷ïïï­­­½½½ïïï÷÷÷ïïïïïïµµµÖÖÖïïïïïï÷÷÷ïïï¥¥¥µµµ÷÷÷ÎÎÎ­­­œœœœœœœœœ”””œœœïïï½½½œœœŞŞŞ÷÷÷÷÷÷÷÷÷ïïï÷÷÷­­­””””””œœœ¥¥¥œœœÎÎÎæææœœœ”””„„„”””­­­ŞŞŞ÷÷÷ÖÖÖ{{{BBBæææ÷÷÷÷÷÷ïïïææææææïïïïïïÿÿÿïïï÷÷÷÷÷÷æææïïïÅÅÅ„„„ZZZ­­­ïïïïïïïïï÷÷÷œœœRRRcccŞŞŞïïïïïïïïïïïïïïïïïïïïïïïïïïïæææïïïŞŞŞïïï÷÷÷÷÷÷æææ÷÷÷æææÎÎÎÖÖÖÎÎÎÖÖÖÎÎÎŞŞŞïïïïïïæææïïïæææïïïïïïïïïŞŞŞææææææææææææïïï÷÷÷ïïïæææïïïïïïïïïææææææ÷÷÷ïïïïïïïïïæææïïïïïïïïï÷÷÷ŞŞŞïïïïïïææææææÿÿÿïïïÿÿÿïïïŞŞŞ÷÷÷÷÷÷æææïïï÷÷÷ïïï÷÷÷÷÷÷æææïïï÷÷÷ŞŞŞïïï÷÷÷÷÷÷ææææææŞŞŞÿÿÿïïï÷÷÷÷÷÷ïïïïïïæææïïï÷÷÷ïïïïïïïïïïïïŞŞŞ÷÷÷÷÷÷ïïï­­­kkkæææïïïïïï÷÷÷ïïïæææ÷÷÷ïïïÿÿÿïïï÷÷÷ïïïæææ÷÷÷ÖÖÖ„„„sss¥¥¥ÅÅÅÅÅÅÖÖÖÖÖÖZZZRRRkkkŞŞŞïïïïïïïïïïïïæææïïïææææææïïï÷÷÷÷÷÷ïïï÷÷÷æææ÷÷÷ææææææïïïkkkBBB:::111BBBkkkïïïÿÿÿæææïïïïïïïïïææææææïïïææææææïïïïïïŞŞŞ÷÷÷ïïï÷÷÷ïïïŞŞŞïïïææææææ÷÷÷ææææææ÷÷÷÷÷÷æææ÷÷÷ïïïæææŞŞŞŞŞŞæææïïïææææææŞŞŞææææææ÷÷÷÷÷÷ÿÿÿïïï÷÷÷ïïïæææŞŞŞŞŞŞŞŞŞ÷÷÷ÖÖÖæææïïïææææææŞŞŞæææŞŞŞæææïïïæææïïïæææïïï÷÷÷ïïïæææïïïïïï÷÷÷÷÷÷ïïïæææŞŞŞæææÖÖÖïïï÷÷÷ææææææ÷÷÷÷÷÷÷÷÷æææïïïÿÿÿïïïïïïæææïïï÷÷÷½½½{{{{{{kkk)))JJJcccBBBccc{{{ææææææïïïïïïïïïææææææïïïïïï÷÷÷ïïïæææïïï÷÷÷ïïïïïïïïïæææïïï”””BBB111RRR:::BBBŞŞŞÎÎÎŞŞŞÖÖÖææææææïïï÷÷÷æææææææææŞŞŞÎÎÎæææÖÖÖŞŞŞææææææïïïÿÿÿ÷÷÷æææ÷÷÷ïïïïïïïïïïïïïïïææææææÖÖÖÖÖÖÅÅÅÎÎÎæææŞŞŞŞŞŞæææÖÖÖæææ÷÷÷æææ÷÷÷ïïïÖÖÖïïïµµµŒŒŒsss{{{”””­­­ŞŞŞææææææïïïµµµ¥¥¥¥¥¥­­­µµµæææ÷÷÷ïïïïïï÷÷÷æææïïï÷÷÷÷÷÷÷÷÷ïïïŞŞŞµµµ¥¥¥­­­µµµ½½½ïïï÷÷÷÷÷÷÷÷÷æææ÷÷÷ïïïïïïÿÿÿïïïïïïïïïïïïŞŞŞsssccc{{{{{{BBBJJJkkkŒŒŒæææïïïïïïïïïïïïïïïïïïïïïïïïïïï÷÷÷ïïïïïïæææ÷÷÷ææææææïïïÅÅÅÖÖÖkkkJJJ111JJJ¥¥¥{{{:::JJJ{{{œœœÎÎÎŞŞŞïïïæææïïïµµµ„„„cccRRRRRRsss”””ÎÎÎæææŞŞŞïïï÷÷÷ŞŞŞïïï÷÷÷æææ÷÷÷ŞŞŞsssRRRJJJJJJRRRJJJJJJRRRJJJJJJRRRRRRkkkæææ÷÷÷ÖÖÖÎÎÎccc111!!!)))!!!:::RRRÅÅÅŞŞŞŞŞŞkkk111111)))BBBÅÅÅææææææ÷÷÷ææææææ÷÷÷ïïïïïïïïïæææœœœBBB111!!!111sssæææ÷÷÷æææ÷÷÷ïïïïïï÷÷÷ïïïÿÿÿïïïŞŞŞïïïïïïÎÎÎsssccc{{{kkkcccZZZsssŒŒŒ÷÷÷÷÷÷ŞŞŞïïï÷÷÷ïïïæææ÷÷÷æææïïï÷÷÷ïïïææææææŞŞŞïïï½½½sss111BBB­­­¥¥¥­­­µµµ{{{111!!!!!!ZZZÅÅÅŞŞŞ½½½kkk111!!!!!!)))!!!111ccc­­­ŞŞŞæææ÷÷÷ææææææ÷÷÷ŞŞŞææækkk111!!!!!!!!!!!!!!!!!!!!!!!!:::ÎÎÎæææÎÎÎRRR)))!!!!!!!!!)))!!!)))JJJ½½½ŞŞŞ„„„)))))))))œœœŞŞŞïïïæææïïïïïïïïïïïïïïïïïïŞŞŞsss)))!!!)))ŒŒŒŞŞŞ÷÷÷ïïïïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïÖÖÖÎÎÎ­­­kkksssssskkk)))ZZZkkkkkkÎÎÎ÷÷÷ïïïïïïïïïïïïïïïæææ÷÷÷ïïïæææ÷÷÷ŞŞŞïïïïïïŒŒŒ!!!:::ccccccZZZ)))!!!{{{ŞŞŞ¥¥¥BBB111)))!!!:::111111!!!!!!!!!111sssÅÅÅŞŞŞŞŞŞæææÿÿÿæææïïï„„„!!!111ÎÎÎæææ{{{!!!)))))))))!!!)))kkkÖÖÖœœœ)))!!!!!!!!!„„„ŞŞŞææææææïïïïïïïïïïïïïïïæææÖÖÖZZZ!!!!!!¥¥¥æææ÷÷÷æææïïï÷÷÷ïïïïïïïïïÿÿÿ÷÷÷ïïïæææÖÖÖÎÎÎ¥¥¥sss{{{cccZZZ:::)))ZZZcccZZZ½½½ïïï÷÷÷ïïïæææïïïïïïæææ÷÷÷ïïïïïïææææææµµµRRR\0\0\0)))111BBBBBB111)))!!!JJJÖÖÖ­­­)))!!!)))BBBœœœÖÖÖŞŞŞŞŞŞÖÖÖ{{{111)))JJJ­­­ŞŞŞæææÖÖÖÿÿÿÖÖÖÅÅÅ!!!!!!))):::ÎÎÎŞŞŞ:::BBBJJJ111)))½½½ÅÅÅ)))!!!!!!ZZZÖÖÖŞŞŞæææïïïïïïïïïïïïïïïæææÅÅÅ:::)))ÅÅÅïïïïïïæææïïï÷÷÷æææïïïïïïÿÿÿïïïïïïæææÖÖÖ½½½””””””{{{RRRZZZccc:::JJJRRRRRRkkkÖÖÖ÷÷÷ïïïïïïïïïïïïæææ÷÷÷æææïïï÷÷÷ŞŞŞ½½½RRR!!!)))\0\0\0!!!!!!ZZZ{{{ŒŒŒŒŒŒ{{{kkkZZZZZZœœœÖÖÖRRR!!!:::µµµïïïæææïïïïïïÖÖÖŞŞŞ½½½JJJ)))111111”””ÖÖÖïïïŞŞŞæææÖÖÖBBB!!!JJJ{{{„„„{{{{{{ŒŒŒ”””ŞŞŞÎÎÎ:::µµµÅÅÅ{{{!!!œœœÎÎÎ111:::ÎÎÎŞŞŞïïïïïïïïïïïïïïïïïïæææ­­­)))!!!BBBŞŞŞïïïææææææïïïïïïïïïïïïïïïÿÿÿïïïïïïÖÖÖ½½½µµµÎÎÎ½½½cccZZZssskkkZZZsssBBBRRR{{{æææïïïæææïïïïïïïïïïïïïïïæææ÷÷÷ŞŞŞŞŞŞRRR!!!!!!)))kkk½½½ææææææïïïæææŞŞŞÖÖÖŞŞŞÎÎÎïïïŒŒŒ!!!kkkæææïïï÷÷÷÷÷÷ŞŞŞïïïïïïæææÎÎÎkkk)))111)))¥¥¥ïïïïïïæææŞŞŞsss!!!cccŞŞŞæææææææææææææææïïïµµµsssÖÖÖæææÅÅÅ))){{{ÅÅÅJJJ)))µµµæææïïï÷÷÷÷÷÷ïïïïïïïïïæææŒŒŒ)))!!!cccŞŞŞïïïïïïïïïïïïïïïæææïïïïïïÿÿÿïïïïïïÖÖÖÅÅÅµµµÎÎÎ”””JJJZZZssskkkccckkk:::ZZZ{{{ŞŞŞïïïïïï÷÷÷ïïï÷÷÷ïïïæææïïïæææŞŞŞ„„„!!!!!!JJJÅÅÅŞŞŞ÷÷÷æææïïïææææææææææææ÷÷÷ïïïæææRRR\0\0\0!!!µµµÖÖÖïïïŞŞŞïïï÷÷÷æææïïï÷÷÷ÖÖÖæææZZZ111111111µµµïïïïïïŞŞŞµµµ)))!!!:::ŞŞŞïïïïïïææææææÿÿÿïïïµµµ!!!)))ŒŒŒÎÎÎÖÖÖÎÎÎ111)))cccÅÅÅsss!!!!!!”””æææïïï÷÷÷÷÷÷ïïïïïïïïïææækkk)))!!!„„„ŞŞŞïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿ÷÷÷ïïïŞŞŞŞŞŞ¥¥¥œœœkkkJJJZZZcccsssccc111)))RRR{{{æææïïïïïïïïïæææïïïïïïæææïïïÖÖÖµµµ111!!!!!!kkkŞŞŞŞŞŞ÷÷÷æææïïïæææïïïïïïïïïïïïïïï÷÷÷ÎÎÎ111!!!JJJŞŞŞïïïïïïïïïææææææ÷÷÷÷÷÷ïïïïïïÎÎÎÎÎÎ111:::RRRŞŞŞïïïŞŞŞÖÖÖJJJ)))!!!½½½÷÷÷ïïïïïïïïï÷÷÷ïïïµµµ!!!111œœœ÷÷÷÷÷÷ŞŞŞ))))))cccÅÅÅ”””!!!!!!kkkŞŞŞïïï÷÷÷ïïïïïïïïïïïïÖÖÖJJJ!!!)))­­­æææïïï÷÷÷÷÷÷ïïïïïïïïïïïïïïïÿÿÿæææïïïïïïÖÖÖ”””ŒŒŒZZZ:::cccsss{{{kkk!!!JJJŒŒŒ÷÷÷ïïïæææïïïïïïïïïïïïæææïïïŞŞŞkkk111\0\0\0!!!!!!cccŞŞŞæææïïï÷÷÷ïïïïïïïïïæææïïïïïïïïïæææ÷÷÷½½½)))!!!JJJææææææ÷÷÷æææïïïïïïïïï÷÷÷÷÷÷ïïïæææÖÖÖµµµ)))!!!:::ŒŒŒæææïïïææækkk\0\0\0”””÷÷÷ïïïïïï÷÷÷ææææææµµµ!!!:::ŒŒŒïïïïïïŞŞŞBBB!!!cccÖÖÖ­­­)))RRRŞŞŞæææ÷÷÷ïïïïïïïïïŞŞŞÅÅÅ:::!!!:::ÎÎÎæææïïï÷÷÷÷÷÷ïïïïïïïïïæææïïïÿÿÿïïïæææïïïæææ­­­„„„RRRBBBZZZsss„„„kkk\0\0\0:::ŒŒŒïïïïïï÷÷÷ŞŞŞïïïïïïïïïïïïæææ½½½::::::ÅÅÅæææŞŞŞ÷÷÷ïïïïïïïïïïïïïïïïïïïïïïïï÷÷÷æææ½½½!!!JJJÖÖÖæææïïïïïïïïïïïïïïï÷÷÷÷÷÷ïïïæææææææææccc))))))BBBŞŞŞææææææ¥¥¥!!!!!!cccæææïïïïïïïïïïïïæææµµµ)))”””æææïïïŞŞŞ111!!!kkkÖÖÖÅÅÅ:::!!!111ÅÅÅ÷÷÷ŞŞŞæææ÷÷÷ŞŞŞæææœœœ)))!!!ZZZŞŞŞæææïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïæææ÷÷÷æææ­­­ŒŒŒBBB:::kkkssssssRRR\0\0\0\0\0\0œœœŞŞŞïïïïïï÷÷÷æææïïïïïïïïïŞŞŞ”””)))sssŞŞŞææææææïïïæææïïïïïïïïïïïïïïïïïïïïï÷÷÷æææÅÅÅ))):::ÅÅÅÖÖÖ÷÷÷ïïïïïïïïïÿÿÿïïïïïïïïïïïïïïïæææµµµ111)))”””æææïïï½½½111!!!!!!BBBÎÎÎïïïæææïïï÷÷÷ŞŞŞ­­­!!!ŒŒŒææææææÖÖÖ111kkkŞŞŞÎÎÎRRR!!!111µµµÎÎÎŞŞŞ”””­­­ïïïÖÖÖ{{{!!!sssæææïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïïïï÷÷÷æææ­­­ŒŒŒ{{{JJJsss{{{sssJJJ\0\0\0ÎÎÎ÷÷÷ÅÅÅæææ÷÷÷ïïïæææïïïïïïŞŞŞkkk!!!!!!µµµïïïïïïæææïïïæææïïïïïïïïïïïïïïïæææïïïïïïæææÎÎÎ111)))œœœŞŞŞæææŞŞŞ÷÷÷æææÿÿÿïïïïïïïïïïïïïïïæææŞŞŞccc!!!JJJŞŞŞïïïÖÖÖJJJ!!!)))­­­ææææææïïï÷÷÷ŞŞŞ­­­!!!ŒŒŒææææææÖÖÖ111kkkŞŞŞÖÖÖsss)))”””ÎÎÎ½½½JJJcccŞŞŞÎÎÎZZZ!!!!!!”””æææïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïæææµµµ{{{½½½kkkkkk{{{sss:::)))ŞŞŞŞŞŞ„„„¥¥¥ŞŞŞÿÿÿæææïïïæææŞŞŞJJJ!!!111ÖÖÖïïïæææïïï÷÷÷ïïïïïïæææïïïïïïïïïææææææïïïæææÖÖÖ:::!!!!!!ZZZæææÎÎÎ­­­ïïïæææïïïïïïïïïïïïïïïæææ÷÷÷ÖÖÖ¥¥¥!!!!!!)))­­­ææææææsss!!!{{{æææïïïïïï÷÷÷ŞŞŞ­­­!!!ŒŒŒææææææÖÖÖ111kkkŞŞŞÖÖÖœœœkkkÎÎÎsss))):::¥¥¥ÎÎÎBBB)))½½½ŞŞŞïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïïïï½½½{{{µµµ„„„kkk{{{{{{BBB!!!ŒŒŒÎÎÎ„„„sssŒŒŒŞŞŞ÷÷÷ïïïïïïŞŞŞŞŞŞBBB!!!BBBŞŞŞïïïæææïïïïïïæææïïïïïïïïïïïïïïïææææææææææææŞŞŞZZZ!!!!!!)))ÎÎÎÎÎÎkkkÖÖÖïïïæææïïï÷÷÷ïïïïïï÷÷÷÷÷÷ÖÖÖÖÖÖ:::sssŞŞŞïïïœœœ!!!RRRŞŞŞïïïïïï÷÷÷æææ­­­!!!)))ŒŒŒææææææÖÖÖ111kkkŞŞŞŞŞŞµµµ!!!!!!BBB”””)))!!!!!!ZZZœœœ))):::ÖÖÖæææïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïïïïïïïï÷÷÷ŞŞŞ”””„„„„„„sss{{{sssJJJ!!!!!!”””kkkJJJŒŒŒÎÎÎæææïïïïïï÷÷÷æææŞŞŞ:::!!!JJJŞŞŞïïïææææææææææææïïïïïïïïïïïïïïïæææææææææïïïŞŞŞ”””!!!!!!„„„ÖÖÖ:::¥¥¥ïïïïïïïïïïïïæææ÷÷÷÷÷÷æææ÷÷÷ŞŞŞRRRRRRŞŞŞïïïÅÅÅ:::111½½½ïïïïïïïïïæææµµµ!!!)))ŒŒŒææææææÖÖÖ111kkkŞŞŞŞŞŞÎÎÎ:::))):::!!!JJJJJJŞŞŞæææïïïïïïïïïïïïïïïïïïïïïïïïïïïÿÿÿïïï÷÷÷ïïïïïïïïï½½½kkkZZZRRRkkkkkkRRR:::BBB111kkk­­­÷÷÷æææïïïïïïïïïæææŞŞŞBBB!!!:::ÎÎÎïïïïïïææææææïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïæææÅÅÅ:::!!!BBBµµµBBBcccÎÎÎæææïïïæææïïï÷÷÷÷÷÷ïïï÷÷÷ÖÖÖkkkBBBæææ÷÷÷ŞŞŞkkk!!!”””æææïïïïïïïïïµµµ!!!ŒŒŒææææææÖÖÖ111kkkŞŞŞæææŞŞŞRRR!!!sssŞŞŞïïïïïïïïïïïïæææïïïïïïïïïïïïïïïÿÿÿïïï÷÷÷ïïïæææ÷÷÷ÖÖÖŒŒŒBBB111kkkŒŒŒ{{{!!!{{{:::„„„ÎÎÎææææææïïïæææïïïïïïïïïŞŞŞJJJ)))!!!½½½æææïïïæææïïï÷÷÷ææææææïïïïïïïïïïïïïïïïïïïïïïïïÖÖÖkkk!!!!!!{{{kkk111¥¥¥ŞŞŞææææææ÷÷÷ïïïïïïÿÿÿæææŞŞŞsss111æææïïïïïïŒŒŒ)))sssÖÖÖæææïïïïïï­­­!!!ŒŒŒææææææÖÖÖ:::kkkŞŞŞæææææækkk)))\0\0\0!!!)))”””ææææææïïïïïïïïïæææïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïïïïïïïïïï¥¥¥cccJJJRRR­­­ŒŒŒccckkkJJJÖÖÖŞŞŞ÷÷÷æææïïïïïïïïïïïïæææÖÖÖ{{{!!!„„„ŞŞŞïïïæææïïïïïï÷÷÷ïïïïïï÷÷÷ïïïïïïïïïæææïïïïïïæææ¥¥¥)))!!!!!!{{{))):::µµµæææææææææïïïïïï÷÷÷ïïïŞŞŞkkkBBBæææ÷÷÷ïïïÅÅÅ)))!!!BBBÎÎÎŞŞŞïïïæææµµµ!!!!!!ŒŒŒŞŞŞæææÖÖÖ:::sssŞŞŞææææææœœœ)))!!!\0\0\0)))½½½ŞŞŞïïï÷÷÷ïïïæææïïïïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïïïïïïïïïïÖÖÖsssRRRŒŒŒ„„„:::!!!{{{ÎÎÎ÷÷÷ïïïææææææ÷÷÷ïïïïïïïïïïïïÖÖÖ­­­111!!!RRRÅÅÅïïïÖÖÖïïïïïïŞŞŞïïï÷÷÷ïïïïïï÷÷÷÷÷÷ïïïïïïæææïïïÎÎÎRRR)))JJJ:::111RRR½½½ïïïïïïŞŞŞ÷÷÷ææææææŞŞŞ:::JJJïïï÷÷÷÷÷÷ÎÎÎBBB!!!111¥¥¥æææïïïæææµµµ!!!!!!ŒŒŒŞŞŞæææÖÖÖ:::kkkŞŞŞæææïïïµµµ111\0\0\0:::ÖÖÖïïï÷÷÷ïïïïïïïïïææææææïïïïïïïïïïïïÿÿÿ÷÷÷ïïïïïïïïïïïïïïïïïïæææœœœJJJ111!!!sssÅÅÅÎÎÎæææŞŞŞæææææææææïïïïïï÷÷÷ŞŞŞÅÅÅRRR!!!{{{ŞŞŞŞŞŞæææ÷÷÷ïïïïïïïïïæææïïï÷÷÷ïïïïïïïïïïïïïïïŞŞŞ¥¥¥)))!!!JJJ)))!!!RRRµµµÖÖÖæææïïïæææ÷÷÷µµµ)))cccæææïïï÷÷÷ŞŞŞ{{{!!!!!!sssæææææææææµµµ!!!!!!„„„ŞŞŞæææÖÖÖ:::!!!kkkŞŞŞïïïïïïÎÎÎJJJ!!!RRR!!!!!!cccŞŞŞïïïæææïïïïïïïïïææææææïïïïïïïïïïïïÿÿÿ÷÷÷ïïïïïïïïïïïïæææÎÎÎŞŞŞsssccckkk{{{ZZZkkkkkk„„„ÎÎÎïïï÷÷÷ïïïïïï÷÷÷÷÷÷ïïïïïïÖÖÖŒŒŒ111))))))„„„ÖÖÖææææææŞŞŞïïï÷÷÷ïïï÷÷÷÷÷÷æææææææææïïïæææææææææZZZ!!!!!!:::))):::”””½½½ÎÎÎŞŞŞ½½½RRR)))!!!”””æææïïïïïïŞŞŞ¥¥¥JJJŞŞŞŞŞŞïïï­­­!!!!!!„„„ŞŞŞæææÖÖÖ:::!!!cccŞŞŞïïï÷÷÷æææccc:::µµµsss!!!!!!„„„ŞŞŞæææïïïæææïïïïïïæææïïïïïïïïïïïïïïïÿÿÿïïïïïïïïïïïïïïïæææŞŞŞssscccsss”””cccsssJJJccccccŒŒŒÖÖÖææææææïïïæææ÷÷÷æææ÷÷÷ïïïÎÎÎZZZ)))!!!)))sssÅÅÅæææïïïïïïïïïæææïïïæææïïï÷÷÷ïïïæææïïïïïïæææ½½½:::!!!111!!!)))RRRccc„„„:::)))!!!!!!111½½½ïïïïïïæææŞŞŞÎÎÎBBB!!!)))ÅÅÅŞŞŞïïï­­­!!!!!!„„„ŞŞŞæææÖÖÖ:::!!!cccŞŞŞïïïïïïïïï{{{!!!!!!{{{ŞŞŞÅÅÅ:::!!!!!!¥¥¥æææ÷÷÷÷÷÷ïïïïïïææææææ÷÷÷ïïïïïïïïïïïïÿÿÿïïïïïïïïïïïïæææÖÖÖ”””kkkcccsssZZZsss”””œœœœœœ„„„„„„ÖÖÖïïïïïï÷÷÷÷÷÷ïïïïïïïïïïïïæææ­­­:::)))cccœœœŞŞŞŞŞŞŞŞŞæææïïïæææææææææÖÖÖïïï÷÷÷ïïïæææïïïŒŒŒ!!!)))!!!)))!!!kkkŞŞŞŞŞŞŞŞŞŞŞŞŞŞŞÖÖÖZZZ!!!!!!œœœŞŞŞïïï­­­!!!!!!„„„ŞŞŞæææÖÖÖ:::!!!!!!cccŞŞŞïïïïïïïïïœœœ!!!:::ÎÎÎŞŞŞæææŒŒŒ!!!!!!111½½½ïïïïïïæææïïï÷÷÷ïïïæææïïïïïïïïï÷÷÷ïïïÿÿÿïïïæææïïïïïïæææÎÎÎ„„„ŒŒŒœœœ”””””””””œœœµµµsss{{{­­­ÎÎÎæææŞŞŞæææ÷÷÷÷÷÷÷÷÷ïïïŞŞŞææææææ”””111)))\0\0\0!!!!!!ZZZ{{{­­­µµµÅÅÅµµµ¥¥¥ŒŒŒ„„„ŞŞŞïïïæææïïïæææÖÖÖZZZ!!!!!!)))!!!!!!BBB½½½ÖÖÖÅÅÅÅÅÅÅÅÅ½½½µµµkkk!!!sssŞŞŞïïï­­­!!!!!!„„„ææææææÖÖÖ:::!!!!!!cccÖÖÖïïïïïïïïï½½½!!!!!!{{{ïïïæææïïïÎÎÎBBB!!!BBBŞŞŞÖÖÖÎÎÎ½½½ÎÎÎïïïïïïæææïïïïïïïïï÷÷÷ïïïÿÿÿïïïæææïïïïïïŞŞŞÅÅÅ¥¥¥­­­­­­”””BBBcccsss¥¥¥:::kkkÖÖÖÎÎÎæææïïïæææïïï÷÷÷æææ÷÷÷ïïï÷÷÷ÖÖÖæææ”””!!!!!!))))))111)))111111:::)))111­­­ŞŞŞ÷÷÷÷÷÷ææææææÖÖÖ))))))\0\0\0!!!JJJ111)))BBB­­­ŞŞŞŒŒŒ::::::))))))111)))RRRÖÖÖæææ¥¥¥!!!!!!ŒŒŒŞŞŞæææÖÖÖ:::!!!!!!kkkÖÖÖ÷÷÷ïïïæææÖÖÖ111:::ÎÎÎŞŞŞ÷÷÷ïïïŞŞŞŒŒŒ))))))ZZZïïï½½½­­­µµµ­­­æææ÷÷÷æææïïï÷÷÷ïïïïïïïïïÿÿÿïïïæææïïïïïïŞŞŞÖÖÖ½½½¥¥¥¥¥¥µµµBBB¥¥¥¥¥¥ŒŒŒ{{{­­­¥¥¥ÎÎÎïïïæææÖÖÖ÷÷÷ïïïïïïïïïïïïïïïïïïæææŞŞŞ­­­RRR!!!)))!!!)))JJJŞŞŞ÷÷÷æææïïï÷÷÷æææµµµBBB))))))sss”””sss{{{”””ŞŞŞæææŞŞŞ„„„)))!!!111­­­ÖÖÖµµµ!!!ŒŒŒ÷÷÷æææÎÎÎJJJ!!!!!!{{{ÖÖÖïïï÷÷÷ïïïæææZZZ)))”””æææææææææÿÿÿæææÎÎÎccc:::œœœæææµµµµµµ{{{ÅÅÅ÷÷÷÷÷÷ïïïïïïïïïæææïïïïïïÿÿÿæææïïïïïïŞŞŞŞŞŞïïïÎÎÎµµµŒŒŒ­­­½½½½½½{{{ŒŒŒµµµ{{{„„„æææÖÖÖŞŞŞÿÿÿæææïïïïïïïïïïïïïïïïïïïïïæææŞŞŞÎÎÎ”””JJJ!!!)))))):::­­­æææïïï÷÷÷ïïïïïïæææ­­­111111)))111kkk¥¥¥æææŞŞŞæææïïïïïï”””)))111ŒŒŒæææµµµ!!!))){{{ŞŞŞïïïæææ:::)))!!!)))ccc÷÷÷ŞŞŞ÷÷÷ïïïŞŞŞ{{{JJJÎÎÎææææææïïï÷÷÷ÿÿÿïïïµµµJJJ½½½ÿÿÿ½½½­­­­­­½½½æææïïïæææïïïïïïæææÿÿÿÿÿÿÿÿÿ÷÷÷ïïïæææïïïïïïŞŞŞŞŞŞÖÖÖÅÅÅ”””{{{ccc„„„½½½­­­½½½ÖÖÖæææ÷÷÷ŞŞŞæææïïïïïïïïïïïïïïïïïïïïïïïïïïïæææŞŞŞÖÖÖÅÅÅ”””ccc111!!!)))!!!!!!!!!))):::RRRkkk½½½ïïïïïïïïï÷÷÷ïïï÷÷÷ŞŞŞµµµZZZ)))!!!!!!)))111)))JJJŒŒŒŞŞŞïïï÷÷÷ïïïŞŞŞŒŒŒ111)))!!!!!!!!!!!!!!!!!!!!!!!!:::kkkÖÖÖ¥¥¥111!!!111œœœŞŞŞïïïŞŞŞ:::111:::sssæææ÷÷÷÷÷÷÷÷÷÷÷÷œœœµµµæææïïïïïï÷÷÷ÅÅÅ½½½æææŞŞŞ¥¥¥æææ÷÷÷ïïïµµµ­­­ÎÎÎïïïïïïæææïïïïïïæææÿÿÿÿÿÿÿÿÿ÷÷÷÷÷÷ææææææïïïæææŞŞŞ{{{{{{”””œœœ„„„”””sss:::))):::::::::ÖÖÖÿÿÿïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïïæææŞŞŞŞŞŞŞŞŞÎÎÎµµµ”””ŒŒŒŒŒŒ”””œœœµµµÎÎÎææææææÿÿÿïïïïïï÷÷÷ïïïïïïŞŞŞæææ½½½µµµœœœsssŒŒŒœœœÎÎÎÖÖÖÎÎÎææææææææææææïïïÅÅÅœœœ”””ŒŒŒŒŒŒŒŒŒ”””””””””ŒŒŒ”””¥¥¥­­­÷÷÷ÖÖÖ¥¥¥”””¥¥¥ŒŒŒÅÅÅæææŞŞŞæææœœœ”””œœœœœœ½½½ïïïïïïæææïïï÷÷÷æææ÷÷÷ïïïïïïïïïÖÖÖ„„„”””{{{ïïïïïïÿÿÿææææææïïïïïïæææ÷÷÷÷÷÷ææææææïïïÿÿÿÿÿÿÿÿÿÿÿÿïïïïïïïïïÿÿÿ÷÷÷ÖÖÖRRR)))BBB::::::!!!œœœ÷÷÷÷÷÷æææïïïïïïïïïïïïïïïïïïïïïïïïŞŞŞ÷÷÷ÿÿÿïïïæææïïïæææÎÎÎŞŞŞÖÖÖŞŞŞŞŞŞææææææææææææŞŞŞïïïïïïïïï÷÷÷ïïïæææïïïÖÖÖÖÖÖkkkcccœœœŞŞŞÖÖÖœœœZZZ{{{ÎÎÎ÷÷÷÷÷÷ïïï÷÷÷ŞŞŞæææŞŞŞŞŞŞÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïï÷÷÷ïïïŞŞŞÎÎÎ„„„sss„„„ŞŞŞÖÖÖÅÅÅkkkRRR¥¥¥ŞŞŞ÷÷÷ÖÖÖsssŒŒŒŒŒŒÎÎÎ„„„„„„ŞŞŞŒŒŒÖÖÖæææ{{{ŒŒŒkkkµµµµµµŒŒŒ„„„ÅÅÅ”””ÅÅÅïïï÷÷÷ïïïææææææïïïÿÿÿÿÿÿÿÿÿÿÿÿ÷÷÷æææïïïïïï¥¥¥JJJ!!!kkkÿÿÿŞŞŞïïï÷÷÷ïïïïïïïïïïïïïïïïïïïïïïïïïïïææææææïïï÷÷÷æææïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïæææŒŒŒ)))!!!JJJÅÅÅµµµBBB)))111”””ŞŞŞïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿæææ½½½BBB)))BBBŒŒŒÖÖÖccc!!!)))RRRŞŞŞŞŞŞ„„„”””ÎÎÎkkkkkk”””µµµÎÎÎkkkŞŞŞŞŞŞRRRkkkÅÅÅ””””””ŞŞŞ{{{ŒŒŒsssÅÅÅïïïïïïïïïïïïïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïï÷÷÷÷÷÷µµµccc111:::)))JJJŞŞŞ÷÷÷÷÷÷æææïïïïïïïïïïïïïïïïïïïïïïïïïïï÷÷÷ïïïïïïïïïïïïïïïïïïæææÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿææææææccc111111:::ÅÅÅµµµBBB:::))){{{ÖÖÖïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿæææµµµ:::BBB„„„ŞŞŞRRR!!!))):::ïïïïïï„„„µµµÎÎÎkkkkkk{{{”””kkkcccÅÅÅÅÅÅsss½½½kkk””””””{{{ŒŒŒæææZZZÎÎÎ÷÷÷ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïæææ÷÷÷ïïïŞŞŞŞŞŞ½½½ŞŞŞÅÅÅ­­­ŒŒŒ{{{cccRRR::::::ŞŞŞïïïïïïæææïïïïïïïïïïïïïïïïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïŞŞŞµµµJJJBBBsssŞŞŞÖÖÖsss111RRR½½½ææææææÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïÖÖÖkkkBBBZZZ½½½ÖÖÖ­­­BBB111”””ïïï÷÷÷ÎÎÎkkkssssss½½½{{{{{{µµµŒŒŒ{{{”””{{{ssskkk{{{¥¥¥{{{„„„½½½cccÖÖÖïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïïïïŞŞŞÖÖÖÎÎÎŞŞŞæææææææææÎÎÎÎÎÎæææïïïïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïæææÖÖÖÖÖÖÖÖÖŞŞŞæææŞŞŞÖÖÖÎÎÎŞŞŞïïïæææ÷÷÷æææÅÅÅkkkŞŞŞææææææææææææææææææææææææŞŞŞ­­­­­­ïïïŞŞŞïïïœœœÎÎÎïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïïïïæææŞŞŞŞŞŞïïïïïïïïïæææŞŞŞæææïïïïïïïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïæææïïïææææææïïïïïïïïïæææŞŞŞŞŞŞæææŞŞŞ÷÷÷æææŞŞŞ¥¥¥ïïïæææïïïïïïïïïïïïææææææææææææÅÅÅÎÎÎïïïæææïïï½½½ŞŞŞïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿïïïïïïïïïŞŞŞïïïïïïïïïïïïïïïïïïïïïæææïïïÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿæææÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ','Ali Veli MÃ¼dÃ¼r');

/*Table structure for table `ders_programlari` */

DROP TABLE IF EXISTS `ders_programlari`;

CREATE TABLE `ders_programlari` (
  `donem` varchar(9) NOT NULL,
  `sinif` varchar(10) NOT NULL DEFAULT '',
  `gun` enum('GiriÅŸ','Ã‡Ä±kÄ±ÅŸ','Pazartesi','SalÄ±','Ã‡arÅŸamba','PerÅŸembe','Cuma','Cumartesi','Pazar') NOT NULL DEFAULT 'Pazartesi',
  `ders_1` varchar(7) DEFAULT NULL,
  `ders_2` varchar(7) DEFAULT NULL,
  `ders_3` varchar(7) DEFAULT NULL,
  `ders_4` varchar(7) DEFAULT NULL,
  `ders_5` varchar(7) DEFAULT NULL,
  `ders_6` varchar(7) DEFAULT NULL,
  `ders_7` varchar(7) DEFAULT NULL,
  `ders_8` varchar(7) DEFAULT NULL,
  `ders_9` varchar(7) DEFAULT NULL,
  `ders_10` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`donem`,`sinif`,`gun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `ders_programlari` */

/*Table structure for table `devamsizliklar` */

DROP TABLE IF EXISTS `devamsizliklar`;

CREATE TABLE `devamsizliklar` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `donemi` varchar(9) DEFAULT NULL,
  `ogr_no` int(4) DEFAULT NULL,
  `ders_1` varchar(7) DEFAULT NULL,
  `ders_2` varchar(7) DEFAULT NULL,
  `ders_3` varchar(7) DEFAULT NULL,
  `ders_4` varchar(7) DEFAULT NULL,
  `ders_5` varchar(7) DEFAULT NULL,
  `ders_6` varchar(7) DEFAULT NULL,
  `ders_7` varchar(7) DEFAULT NULL,
  `ders_8` varchar(7) DEFAULT NULL,
  `ders_9` varchar(7) DEFAULT NULL,
  `ders_10` varchar(7) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  `kullanici` varchar(80) DEFAULT NULL,
  `bildirim_tarihi` datetime DEFAULT NULL,
  `kiminle_gorusuldu` varchar(20) DEFAULT NULL,
  `aciklama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_donemi_ogrno` (`donemi`,`ogr_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `devamsizliklar` */

/*Table structure for table `evrak_durumu` */

DROP TABLE IF EXISTS `evrak_durumu`;

CREATE TABLE `evrak_durumu` (
  `evrak_adi` varchar(50) NOT NULL DEFAULT '',
  `evrak_durum` int(1) unsigned zerofill DEFAULT '0',
  `donemi` varchar(9) NOT NULL DEFAULT '',
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`donemi`,`ogr_no`,`evrak_adi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `evrak_durumu` */

/*Table structure for table `geciken_borc_bildirimi` */

DROP TABLE IF EXISTS `geciken_borc_bildirimi`;

CREATE TABLE `geciken_borc_bildirimi` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `donemi` varchar(9) DEFAULT NULL,
  `ogr_no` int(4) DEFAULT NULL,
  `kontrol_tarihi` date NOT NULL DEFAULT '0000-00-00',
  `geciken_borc_miktari` double(15,2) NOT NULL DEFAULT '0.00',
  `bildirim_tarihi` datetime DEFAULT NULL,
  `kiminle_gorusuldu` varchar(20) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `kullanici` varchar(80) DEFAULT NULL,
  `aktif` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_donemi_ogrno` (`donemi`,`ogr_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `geciken_borc_bildirimi` */

/*Table structure for table `gerekli_evraklar` */

DROP TABLE IF EXISTS `gerekli_evraklar`;

CREATE TABLE `gerekli_evraklar` (
  `evrak_adi` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`evrak_adi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `gerekli_evraklar` */

insert  into `gerekli_evraklar`(`evrak_adi`) values ('Kan Grubu'),('Kitap'),('NÃ¼fus CÃ¼zdanÄ± Sureti'),('Ã–ÄŸrenim Belgesi'),('Resim'),('SavcÄ±lÄ±k Belgesi');

/*Table structure for table `gizli` */

DROP TABLE IF EXISTS `gizli`;

CREATE TABLE `gizli` (
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `donemi` varchar(9) NOT NULL DEFAULT '',
  PRIMARY KEY (`ogr_no`,`donemi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `gizli` */

/*Table structure for table `gorunum` */

DROP TABLE IF EXISTS `gorunum`;

CREATE TABLE `gorunum` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aciklama` varchar(255) DEFAULT NULL,
  `gorunum` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `gorunum` */

/*Table structure for table `gruplar` */

DROP TABLE IF EXISTS `gruplar`;

CREATE TABLE `gruplar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `seviye` int(1) NOT NULL DEFAULT '0',
  `adi` char(12) NOT NULL DEFAULT '',
  `ustgrup` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin5;

/*Data for the table `gruplar` */

insert  into `gruplar`(`id`,`seviye`,`adi`,`ustgrup`) values (1,1,'Ã–SS',0),(2,1,'OKS',0),(3,1,'Ä°Ã–5',0),(4,1,'Ä°Ã–6',0),(5,1,'Ä°Ã–7',0),(6,1,'LÄ°SE1',0),(7,1,'LÄ°SE2',0),(8,2,'HS',1),(9,2,'HÄ°',1),(10,3,'EA',9),(11,3,'SAY',9),(12,3,'SÃ–Z',9),(13,3,'EA',8),(14,3,'SAY',8),(15,3,'SÃ–Z',8),(16,2,'HS',7),(17,3,'SAY',16),(18,3,'EA',16),(22,3,'MES',9),(23,3,'MES',8),(24,1,'LÄ°SE3',0),(25,2,'HS',24),(26,3,'EA',25),(27,3,'SAY',25),(28,3,'SÃ–Z',25),(32,3,'MES',25),(33,1,'KPSS',0),(34,2,'HÄ°',33),(35,2,'HS',33),(61,3,'HÄ° ÅUB',34),(62,3,'HS ÅUB',35),(46,2,'HÄ° ÅUB',33),(53,3,'HÄ° KPSS 1',34),(54,3,'HÄ° KPSS 2',34),(55,3,'HÄ° KPSS 3',34),(58,3,'HS KPSS 1',35),(59,3,'HS KPSS 2',35),(60,3,'HÄ° ÅUB',46),(67,1,'KPS EÄT.BÄ°L',0),(66,3,'HS EÄT BÄ°L.',35),(68,2,'HÄ°',67),(69,2,'HS',67),(70,1,'A Ã–SS',0),(71,2,'HÄ°',70),(73,3,'EA - SÃ–Z',71),(74,3,'SAY',71);

/*Table structure for table `iletisim` */

DROP TABLE IF EXISTS `iletisim`;

CREATE TABLE `iletisim` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msgid` varchar(25) DEFAULT NULL,
  `tur` enum('SMS','Faks','Eposta') NOT NULL,
  `konum` varchar(50) NOT NULL,
  `mesaj` varchar(1000) NOT NULL,
  `olusturulma` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `durumu` enum('Ä°letildi','Beklemede','UlaÅŸÄ±lamadÄ±','GÃ¶nderilmedi','HatalÄ± AlÄ±cÄ±') DEFAULT 'GÃ¶nderilmedi',
  `gonderilme` timestamp NULL DEFAULT NULL,
  `kullanici` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `iletisim` */

/*Table structure for table `kayitbedeli` */

DROP TABLE IF EXISTS `kayitbedeli`;

CREATE TABLE `kayitbedeli` (
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `donemi` varchar(9) NOT NULL DEFAULT '',
  `kayit_bedeli` double(15,2) DEFAULT '0.00',
  PRIMARY KEY (`ogr_no`,`donemi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `kayitbedeli` */

/*Table structure for table `log_paraakisi` */

DROP TABLE IF EXISTS `log_paraakisi`;

CREATE TABLE `log_paraakisi` (
  `eski_ilgili_no` int(4) DEFAULT NULL,
  `yeni_ilgili_no` int(4) DEFAULT NULL,
  `islem_no` int(255) NOT NULL,
  `eski_tarih` date DEFAULT NULL,
  `yeni_tarih` date DEFAULT NULL,
  `eski_alinan` double(15,2) DEFAULT '0.00',
  `yeni_alinan` double(15,2) DEFAULT '0.00',
  `eski_verilen` double(15,2) DEFAULT '0.00',
  `yeni_verilen` double(15,2) DEFAULT '0.00',
  `eski_aciklama` varchar(255) DEFAULT NULL,
  `yeni_aciklama` varchar(255) DEFAULT NULL,
  `eski_ilgilihesap` varchar(20) DEFAULT NULL,
  `yeni_ilgilihesap` varchar(20) DEFAULT NULL,
  `eski_islem_tarihi` timestamp NULL DEFAULT NULL,
  `yeni_islem_tarihi` timestamp NULL DEFAULT NULL,
  `eski_donemi` varchar(9) DEFAULT NULL,
  `yeni_donemi` varchar(9) DEFAULT NULL,
  `eski_adi_soyadi` varchar(30) DEFAULT NULL,
  `yeni_adi_soyadi` varchar(30) DEFAULT NULL,
  `kullanici` varchar(80) DEFAULT NULL,
  `islem_tarihi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `islem` enum('Silme','GÃ¼ncelleme') DEFAULT NULL,
  KEY `islem_tarihi` (`islem_tarihi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `log_paraakisi` */

/*Table structure for table `log_taksitler` */

DROP TABLE IF EXISTS `log_taksitler`;

CREATE TABLE `log_taksitler` (
  `eski_ogr_no` int(4) NOT NULL DEFAULT '0',
  `yeni_ogr_no` int(4) NOT NULL DEFAULT '0',
  `eski_vadesi` date NOT NULL DEFAULT '0000-00-00',
  `yeni_vadesi` date NOT NULL DEFAULT '0000-00-00',
  `eski_miktari` double(15,2) DEFAULT '0.00',
  `yeni_miktari` double(15,2) DEFAULT '0.00',
  `eski_donemi` varchar(9) NOT NULL DEFAULT '2000-2000',
  `yeni_donemi` varchar(9) NOT NULL DEFAULT '2000-2000',
  `kullanici` varchar(80) DEFAULT NULL,
  `islem_tarihi` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `islem` enum('Silme','GÃ¼ncelleme') DEFAULT NULL,
  KEY `islem_tarihi` (`islem_tarihi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `log_taksitler` */

/*Table structure for table `maas` */

DROP TABLE IF EXISTS `maas`;

CREATE TABLE `maas` (
  `personel_kodu` int(10) NOT NULL DEFAULT '0',
  `tarih` date NOT NULL DEFAULT '0000-00-00',
  `miktar` double(15,2) DEFAULT NULL,
  PRIMARY KEY (`personel_kodu`,`tarih`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `maas` */

/*Table structure for table `mesajlar` */

DROP TABLE IF EXISTS `mesajlar`;

CREATE TABLE `mesajlar` (
  `aciklama` varchar(25) NOT NULL,
  `mesaj` varchar(1000) NOT NULL,
  PRIMARY KEY (`aciklama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `mesajlar` */

insert  into `mesajlar`(`aciklama`,`mesaj`) values ('Ã–SS Deneme SÄ±navÄ±','Ogrencimiz {adi},{sinav_tarihi} tarihili sinavdan:SA1 {puan_1},SO1 {puan_2},EA1 {puan_3},SA2 {puan_4},SO2 {puan_5},EA2 {puan_6} puan alarak {derece_1}. {derece_2}. {derece_3}. {derece_4}. {derece_5}. {derece_6}. olmustur.\r\n\r\n'),('OKS Deneme SÄ±navÄ±','Velisi oldugunuz {adi},{sinav_tarihi} tarihili sinavdan:Fen Agirlikli {puan_1} ve Toplam {puan_2} puan alarak {derece_1}. ve {derece_2}. olmustur.'),('DevamsÄ±zlÄ±k Bildirimi','Sayin {veli_adi} {veli_soyadi},velisi oldugunuz {adi} {soyadi},{tarih}\'de {dersler} derslerine girmemistir.\r\n\r\n\r\n'),('Geciken BorÃ§ Bildirimi','Sayin {veli_adi} {veli_soyadi}, {kontrol_tarihi} tarihi itibariyle geciken borcunuz {geciken_borc_miktari} YTL\'dir. '),('2008 DERS BAÅLANGICI','HS LÄ°SE3. SINIFLARIN DERSLERÄ° 13.09.2008 CUMARTESÄ° GÃœNÃœ SAAT 08:15 TE BAÅLAYACAKTIR.\r\n\r\n'),('kpss ders baÅŸlangÄ±Ã§','KPSS Hafta sonu gruplarÄ±nda derslere 1 KasÄ±m 2008 cumartesi  gÃ¼nÃ¼ saat 15:30\'da baÅŸlanacaktÄ±r.\r\n\r\n');

/*Table structure for table `ogrenciler` */

DROP TABLE IF EXISTS `ogrenciler`;

CREATE TABLE `ogrenciler` (
  `donemi` varchar(9) NOT NULL,
  `grup1` varchar(12) NOT NULL,
  `grup2` varchar(12) DEFAULT NULL,
  `grup3` varchar(12) DEFAULT NULL,
  `sinifi` varchar(10) DEFAULT NULL,
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `adi` varchar(15) DEFAULT NULL,
  `soyadi` varchar(15) DEFAULT NULL,
  `cinsiyeti` enum('Erkek','KÄ±z') DEFAULT 'Erkek',
  `resmi` mediumblob,
  `tc_kimlik_no` varchar(11) DEFAULT '0',
  `kayit_tarihi` date NOT NULL DEFAULT '2003-01-01',
  `kayit_eden` varchar(40) DEFAULT NULL,
  `okulu` varchar(25) DEFAULT NULL,
  `egitim_suresi` varchar(15) DEFAULT 'Tam GÃ¼n',
  `durumu` varchar(15) DEFAULT NULL,
  `baba_adi` varchar(15) DEFAULT NULL,
  `ana_adi` varchar(15) DEFAULT NULL,
  `dogum_yeri` varchar(15) DEFAULT NULL,
  `dogum_tarihi` date DEFAULT '0000-00-00',
  `ili` varchar(15) DEFAULT NULL,
  `ilcesi` varchar(15) DEFAULT NULL,
  `mahallesi_koyu` varchar(15) DEFAULT NULL,
  `cilt_no` varchar(6) DEFAULT NULL,
  `aile_sira_no` varchar(5) DEFAULT NULL,
  `sira_no` varchar(5) DEFAULT NULL,
  `verildigi_yer` varchar(15) DEFAULT NULL,
  `verilis_nedeni` varchar(10) DEFAULT NULL,
  `kayit_no` varchar(6) DEFAULT NULL,
  `verilis_tarihi` date DEFAULT '0000-00-00',
  `veli_kodu` int(5) DEFAULT '0',
  `yakinligi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ogr_no`,`donemi`),
  KEY `idx_ogrenciler_adi_soyadi` (`adi`,`soyadi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `ogrenciler` */

/*Table structure for table `paraakisi` */

DROP TABLE IF EXISTS `paraakisi`;

CREATE TABLE `paraakisi` (
  `ilgili_no` int(4) DEFAULT NULL,
  `islem_no` int(255) NOT NULL AUTO_INCREMENT,
  `tarih` date DEFAULT NULL,
  `alinan` double(15,2) DEFAULT '0.00',
  `verilen` double(15,2) DEFAULT '0.00',
  `aciklama` varchar(255) DEFAULT NULL,
  `ilgilihesap` varchar(20) DEFAULT NULL,
  `islem_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `donemi` varchar(9) DEFAULT NULL,
  `adi_soyadi` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`islem_no`),
  KEY `idx_donemi_ilgilino` (`donemi`,`ilgili_no`),
  KEY `idx_tarih` (`tarih`),
  KEY `idx_aciklama` (`aciklama`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `paraakisi` */

/*Table structure for table `personel` */

DROP TABLE IF EXISTS `personel`;

CREATE TABLE `personel` (
  `personel_kodu` int(10) NOT NULL DEFAULT '0',
  `tc_kimlik_no` varchar(11) NOT NULL DEFAULT '',
  `resim` blob,
  `sicil_no` varchar(20) DEFAULT NULL,
  `vergi_no` varchar(10) DEFAULT NULL,
  `elektrik` varchar(20) DEFAULT NULL,
  `su` varchar(20) DEFAULT NULL,
  `ise_giris_tarihi` date DEFAULT NULL,
  `sigorta_no` varchar(20) DEFAULT NULL,
  `nema_no` varchar(20) DEFAULT NULL,
  `ders_1` varchar(7) DEFAULT NULL,
  `ders_2` varchar(7) DEFAULT NULL,
  `ders_3` varchar(7) DEFAULT NULL,
  `user` varchar(16) DEFAULT NULL,
  `yetki` int(4) DEFAULT NULL,
  `seviye` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`personel_kodu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `personel` */

/*Table structure for table `rehberlik_notlari` */

DROP TABLE IF EXISTS `rehberlik_notlari`;

CREATE TABLE `rehberlik_notlari` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `donemi` varchar(9) NOT NULL DEFAULT '',
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `tarih` date DEFAULT NULL,
  `notu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_donemi_ogrno` (`donemi`,`ogr_no`),
  KEY `idx_tarih` (`tarih`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `rehberlik_notlari` */

/*Table structure for table `sinavformulleri` */

DROP TABLE IF EXISTS `sinavformulleri`;

CREATE TABLE `sinavformulleri` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formul_6` varchar(255) DEFAULT '0',
  `formul_5` varchar(255) DEFAULT '0',
  `formul_4` varchar(255) DEFAULT '0',
  `formul_3` varchar(255) DEFAULT '0',
  `formul_2` varchar(255) DEFAULT '0',
  `formul_1` varchar(255) DEFAULT '0',
  `yanlis_dogru_orani` int(1) DEFAULT '4',
  `aciklama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin5;

/*Data for the table `sinavformulleri` */

insert  into `sinavformulleri`(`id`,`formul_6`,`formul_5`,`formul_4`,`formul_3`,`formul_2`,`formul_1`,`yanlis_dogru_orani`,`aciklama`) values (3,'0','0','0','0','OKS iÃ§in TUR SOS1 MAT1 FEN1 ING kullaniniz.','TUR SOS1 MAT1 FEN1 EDSOS SOS2 MAT2 FEN2',4,'Parametreler'),(1,'121,032+(TUR*1,189)+(SOS1*0,651)+(MAT1*1,436)+(FEN1*0,349)+(EDSOS*1,079)+(MAT2*1,295)','121,284+(TUR*1,636)+(SOS1*0,897)+(MAT1*0,678)+(FEN1*0,452)+(EDSOS*1,340)+(SOS2*1,020)','121,436+(TUR*0,575)+(SOS1*0,267)+(MAT1*1,540)+(FEN1*1,124)+(MAT2*1,462)+(FEN2*1,005)','119,999+(TUR*2,536)+(SOS1*0,898)+(MAT1*2,095)+(FEN1*0,471)','120,000+(TUR*2,995)+(SOS1*1,955)+(MAT1*0,651)+(FEN1*0,479)','120,000+(TUR*1,032)+(SOS1*0,650)+(MAT1*2,528)+(FEN1*1,789)',4,'Ã–SS'),(2,'0','0','0','0','177,6973+(TUR*4,4239)+(MAT1*5,8814)+(FEN1*4,2076)+(SOS1*3,5896)+(ING*1,4918)','177,6973+(TUR*4,4239)+(MAT1*5,8814)+(FEN1*4,2076)+(SOS1*3,5896)+(ING*1,4918)',3,'Ä°.Ã–56'),(4,'0','0','0','0','185,9252+(TUR*3,9062)+(MAT1*5,0734)+(FEN1*3,8276)+(SOS1*3,0434)+(ING*1,1364)','185,9252+(TUR*3,9062)+(MAT1*5,0734)+(FEN1*3,8276)+(SOS1*3,0434)+(ING*1,1364)',3,'Ä°.Ã–7'),(5,'0','0','0','0','159,8279+(TUR*3,8178)+(MAT1*4,9586)+(FEN1*3,7410)+(SOS1*2,9745)+(ING*1,1107)','159,8279+(TUR*3,8178)+(MAT1*4,9586)+(FEN1*3,7410)+(SOS1*2,9745)+(ING*1,1107)',3,'Ä°.Ã–8');

/*Table structure for table `sinavkonu` */

DROP TABLE IF EXISTS `sinavkonu`;

CREATE TABLE `sinavkonu` (
  `sinav_no` int(11) NOT NULL,
  `kitapcik_a` int(3) DEFAULT NULL,
  `soru_no_a` int(3) NOT NULL,
  `ders` varchar(20) NOT NULL,
  `konu_no` int(11) DEFAULT NULL,
  `kitapcik_b` int(3) DEFAULT '0',
  `soru_no_b` int(3) DEFAULT '0',
  PRIMARY KEY (`sinav_no`,`soru_no_a`,`ders`),
  KEY `sinav_no` (`sinav_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `sinavkonu` */

/*Table structure for table `sinavkonutanim` */

DROP TABLE IF EXISTS `sinavkonutanim`;

CREATE TABLE `sinavkonutanim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `turu` varchar(4) DEFAULT NULL,
  `ders` varchar(20) DEFAULT NULL,
  `konu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=latin5;

/*Data for the table `sinavkonutanim` */

insert  into `sinavkonutanim`(`id`,`turu`,`ders`,`konu`) values (1,'Ã–SS','Cebir','Tek, Ã§ift ve asal SayÄ±lar'),(2,'Ã–SS','Cebir','ÃœslÃ¼ - KÃ¶klÃ¼ Ä°fadeler'),(3,'Ã–SS','Cebir','Oran ve OrantÄ±'),(4,'Ã–SS','Cebir','Ã‡arpanlara AyÄ±rma'),(5,'Ã–SS','Cebir','1. derece Denklem '),(6,'Ã–SS','Cebir','KÃ¼meler'),(7,'Ã–SS','Cebir','BaÄŸÄ±ntÄ± - Fonksiyon'),(8,'Ã–SS','Cebir','Ä°ÅŸlem - Mod. Aritmetik'),(9,'Ã–SS','Cebir','Polinomlar'),(10,'Ã–SS','Cebir','Basiit EÅŸitsizlik'),(11,'Ã–SS','Cebir','Per. Kom. Binom - OlasÄ±lÄ±k'),(12,'Ã–SS','Fizik','VektÃ¶r, Kuvvet'),(13,'Ã–SS','Fizik','Moment Denge'),(14,'Ã–SS','Fizik','KÃ¼tle Merkezi'),(15,'Ã–SS','Fizik','DoÄŸrusal Hareket'),(16,'Ã–SS','Fizik','Basit Makineler'),(17,'Ã–SS','Fizik','Ä°ÅŸ GÃ¼Ã§ Enerji'),(18,'Ã–SS','Fizik','KÃ¼tle ve Ã–zkÃ¼tle'),(19,'Ã–SS','Fizik','KatÄ±, SÄ±vÄ± ve GazlarÄ±n BasÄ±ncÄ±'),(20,'Ã–SS','Fizik','SÄ±vÄ±larÄ±n KaldÄ±rma Â Kuvveti'),(21,'Ã–SS','Fizik','SÄ±caklÄ±k GenleÅŸme Ve Gazlar'),(22,'Ã–SS','Fizik','IsÄ± ve Hal DeÄŸiÅŸtirme'),(23,'Ã–SS','Fizik','Elektrostatik'),(24,'Ã–SS','Fizik','Elektrik AkÄ±mÄ±'),(25,'Ã–SS','Fizik','AkÄ±mÄ±n Etkileri ve LambalarÄ±n ParlaklÄ±ÄŸÄ±'),(26,'Ã–SS','Fizik','Magnetizma (MÄ±knatÄ±s)'),(27,'Ã–SS','Fizik','IÅŸÄ±ÄŸÄ±n DoÄŸrusal Yolla YayÄ±lmasÄ±'),(28,'Ã–SS','Fizik','DÃ¼zlem ve KÃ¼resel Aynalar'),(29,'Ã–SS','Fizik','IÅŸÄ±ÄŸÄ±n KÄ±rÄ±lmasÄ±'),(30,'Ã–SS','Fizik','Mercekler'),(31,'Ã–SS','Fizik','Ortaokul Fen Bilgisi KonularÄ±'),(32,'Ã–SS','Geometri','DoÄŸruda AÃ§Ä±lar'),(33,'Ã–SS','Geometri','EÅŸkenar ÃœÃ§gen'),(34,'Ã–SS','Geometri','Benzerlik'),(35,'Ã–SS','Geometri','Ã‡okgenler ve DÃ¶rtgenler'),(36,'Ã–SS','Geometri','Ã‡ember ve Daire'),(37,'Ã–SS','Geometri','Uzay Geo. KatÄ± Cis. Alan ve Hacimler'),(38,'Ã–SS','Geometri','DoÄŸrunun AnalitikÂ Ä°ncelenmesi'),(39,'Ã–SS','Kimya','Atom Bilgisi'),(40,'Ã–SS','Kimya','Periyodik Cetvel'),(41,'Ã–SS','Kimya','Radyoaktiflik'),(42,'Ã–SS','Kimya','Mol KavramÄ±'),(43,'Ã–SS','Kimya','Gazlar'),(44,'Ã–SS','Kimya','Madde Bilgisi'),(45,'Ã–SS','Kimya','Ã‡Ã¶zeltiler'),(46,'Ã–SS','Kimya','Kim. Tepkimeler Hesaplamalar'),(47,'Ã–SS','Kimya','Asit ve Bazlar'),(48,'Ã–SS','Kimya','IsÄ±'),(49,'Ã–SS','Biyoloji','Ä°norganik ve Organik BileÅŸikler'),(50,'Ã–SS','Biyoloji','HÃ¼cre'),(51,'Ã–SS','Biyoloji','YÃ¶netici MolekÃ¼ller'),(52,'Ã–SS','Biyoloji','VirÃ¼s-Bakteri-Koloniler'),(53,'Ã–SS','Biyoloji','Ekoloji'),(54,'Ã–SS','Biyoloji','Fotosentez-Kemosentez'),(55,'Ã–SS','Biyoloji','Solunum'),(56,'Ã–SS','Biyoloji','HÃ¼cre BÃ¶lÃ¼nmeleri'),(57,'Ã–SS','Biyoloji','Ãœreme-GeliÅŸme'),(58,'Ã–SS','Biyoloji','KalÄ±tÄ±m'),(59,'Ã–SS','Biyoloji','sinir sistemi'),(60,'Ã–SS','Biyoloji','CanlÄ±larÄ±n sÄ±nÄ±flandÄ±rÄ±lmasÄ±'),(61,'Ã–SS','Biyoloji','Biyolojinin alanÄ± ve Ã¶zellikleri'),(298,'Ã–SS','TÃ¼rkÃ§e','AnlatÄ±m BiÃ§imleri'),(63,'Ã–SS','TÃ¼rkÃ§e','CÃ¼mle Yorumu'),(64,'Ã–SS','TÃ¼rkÃ§e','Paragraf Yorumu'),(65,'Ã–SS','TÃ¼rkÃ§e','Ad Soylu SÃ¶zcÃ¼k'),(66,'Ã–SS','TÃ¼rkÃ§e','Eylemler'),(67,'Ã–SS','TÃ¼rkÃ§e','YapÄ± Bilgisi'),(68,'Ã–SS','TÃ¼rkÃ§e','Ã–ÄŸeler'),(69,'Ã–SS','TÃ¼rkÃ§e','Eylem Ã‡atÄ±sÄ±'),(70,'Ã–SS','TÃ¼rkÃ§e','CÃ¼mle Ã‡eÅŸitleri'),(71,'Ã–SS','TÃ¼rkÃ§e','AnlatÄ±m BozukluÄŸu'),(72,'Ã–SS','TÃ¼rkÃ§e','YazÄ±mÂ KurallarÄ±'),(73,'Ã–SS','TÃ¼rkÃ§e','Noktalama'),(74,'Ã–SS','Tarih','Tarih Bilimi ve Tarihe YardÄ±mcÄ± Bilimler'),(75,'Ã–SS','Tarih','Ä°lkÃ§aÄŸ'),(76,'Ã–SS','Tarih','OrtaÃ§aÄŸ'),(77,'Ã–SS','Tarih','YeniÃ§aÄŸ'),(78,'Ã–SS','Tarih','YakÄ±nÃ§aÄŸ'),(79,'Ã–SS','Tarih','Ä°slam Tarihi'),(80,'Ã–SS','Tarih','Ä°slamiyet Ã–ncesi TÃ¼rk Tarihi'),(81,'Ã–SS','Tarih','Ä°lk TÃ¼rk-Ä°slamÂ Devleti ve AnadoluÂ SelÃ§uklularÄ±'),(82,'Ã–SS','Tarih','OsmanlÄ± YÃ¼kselme DÃ¶nemi'),(83,'Ã–SS','Tarih','OsmanlÄ± KÃ¼ltÃ¼r ve UygarlÄ±ÄŸÄ±'),(84,'Ã–SS','Tarih','OsmanlÄ± DuraklamaÂ DÃ¶nemi'),(85,'Ã–SS','Tarih','OsmanlÄ± Gerileme DÃ¶nemi'),(86,'Ã–SS','Tarih','OsmanlÄ± Tanzimat DÃ¶nemi'),(87,'Ã–SS','Tarih','OsmanlÄ± MeÅŸrutiyet DÃ¶nemi'),(88,'Ã–SS','Tarih','KurtuluÅŸ SavaÅŸÄ±\'naÂ HazÄ±rlÄ±k DÃ¶nemi'),(89,'Ã–SS','Tarih','KurtuluÅŸ SavaÅŸÄ± DÃ¶nemi'),(90,'Ã–SS','Tarih','Mudanya-Lozan Ant.'),(91,'Ã–SS','Tarih','Cumhuriyet DÃ¶nemi Yenilikler-Ä°Ã§ Siyaset'),(92,'Ã–SS','Tarih','Cumhuriyet DÃ¶nemiÂ DÄ±ÅŸ Ä°liÅŸkiler'),(93,'Ã–SS','Tarih','AtatÃ¼rk Ä°lkeleri'),(94,'Ã–SS','Tarih','II. DÃ¼nya SavaÅŸÄ±'),(95,'Ã–SS','Tarih','Milli GÃ¼venlik'),(96,'Ã–SS','CoÄŸrafya','Matematik Konum ve etkileri'),(97,'Ã–SS','CoÄŸrafya','YerkÃ¼re\'nin Hareketleri'),(98,'Ã–SS','CoÄŸrafya','HaritalarÄ±n Genel Ã–zellileri'),(99,'Ã–SS','CoÄŸrafya','Ä°klim Bilgisi'),(100,'Ã–SS','CoÄŸrafya','Ä°Ã§ Kuvvetler veÂ DÄ±ÅŸ Kuvvetler'),(101,'Ã–SS','CoÄŸrafya','NÃ¼fus ve YerleÅŸme'),(102,'Ã–SS','CoÄŸrafya','TÃ¼rkiye veÂ Eko. CoÄŸ.'),(103,'Ã–SS','CoÄŸrafya','Ãœlkeler CoÄŸrafyasÄ±'),(104,'Ã–SS','Felsefe','Felsefenin Ã–zellikleri'),(105,'Ã–SS','Felsefe','Felsefenin AlanÄ±'),(106,'Ã–SS','Felsefe','Bilim-Felsefe Ä°liÅŸkisiÂ '),(107,'Ã–SS','Felsefe','Bilim FelsefesiÂ (Bilimsel tutum, yÃ¶ntem)'),(108,'Ã–SS','Felsefe','Bilgi FelsefesiÂ (Bilimsel bilginin Ã¶zellikleri)'),(109,'Ã–SS','Felsefe','DeÄŸerler Felsefesi (Ahlak Felsefesi)'),(110,'Ã–SS','Felsefe','DeÄŸerler Felsefesi ( Estetik-Sanat Felsefesi)'),(111,'Ã–SS','Felsefe','DeÄŸerler Felsefesi (Siyaset Felsefesi)'),(112,'OKS','TÃ¼rkÃ§e','SÃ¶zcÃ¼kte ve SÃ¶z GruplarÄ±nda Anlam'),(113,'OKS','TÃ¼rkÃ§e','CÃ¼mlede Anlam'),(114,'OKS','TÃ¼rkÃ§e','Paragraf'),(115,'OKS','TÃ¼rkÃ§e','AnlatÄ±m BiÃ§imleri ve DÃ¼ÅŸÃ¼nceyi GeliÅŸtirme YollarÄ±'),(116,'OKS','TÃ¼rkÃ§e','YazÄ±lÄ±m ve Noktalama'),(117,'OKS','TÃ¼rkÃ§e','AnlatÄ±m BozukluklarÄ±'),(118,'OKS','TÃ¼rkÃ§e','SÃ¶zcÃ¼kte YapÄ±'),(119,'OKS','TÃ¼rkÃ§e','SÃ¶zcÃ¼k TÃ¼rleri'),(120,'OKS','TÃ¼rkÃ§e','CÃ¼mlenin Ã–ÄŸeleri- CÃ¼mlede TÃ¼r ve YapÄ± Bilgisi'),(121,'OKS','Matematik  ','KÃ¼meler'),(122,'OKS','Matematik  ','DoÄŸal SayÄ±lar - Tam SayÄ±lar'),(123,'OKS','Matematik  ','BÃ¶lÃ¼nebilme - EKOK - EBOBÂ '),(124,'OKS','Matematik  ','DenklemlerÂ '),(125,'OKS','Matematik  ','Problemler'),(126,'OKS','Matematik  ','Oran - OrantÄ±'),(127,'OKS','Matematik  ','Ã–lÃ§Ã¼ler'),(128,'OKS','Matematik  ','OlasÄ±lÄ±k'),(129,'OKS','Matematik  ','Analitik Geometri'),(130,'OKS','Matematik  ','Genel Yetenek (Geometir)'),(131,'OKS','Matematik  ','ÃœÃ§genler'),(132,'OKS','Matematik  ','Ã‡okgenler'),(133,'OKS','Matematik  ','Ã‡ember - Daire'),(134,'OKS','Matematik  ','Cisimlerin Alan ve Hacimleri'),(135,'OKS','Matematik  ','ModÃ¼ler Aritmetik - Ä°ÅŸlem'),(136,'OKS','Matematik  ','ÃœstlÃ¼ SayÄ±lar'),(137,'OKS','Matematik  ','Rasyonel SayÄ±lar'),(138,'OKS','Matematik  ','Ä°statistik'),(139,'OKS','Matematik  ','Mutlak DeÄŸer'),(140,'OKS','Matematik  ','SayÄ±sal Yetenek'),(141,'OKS','Matematik  ','KarekÃ¶k (Reel SayÄ±lar)'),(142,'OKS','Matematik  ','Ã–zdeÅŸlikler - Ã‡arpanlara AyÄ±rma'),(143,'OKS','Fen Bilgisi','DÃ¼nyamÄ±z ve GÃ¶kyÃ¼zÃ¼'),(144,'OKS','Fen Bilgisi','DoÄŸrusal Hareket'),(145,'OKS','Fen Bilgisi','SÄ±vÄ±larÄ±n KaldÄ±rma Kuvveti'),(146,'OKS','Fen Bilgisi','BasÄ±nÃ§'),(147,'OKS','Fen Bilgisi','Madde ve Ã–zellikler'),(148,'OKS','Fen Bilgisi','Ä°ÅŸ-GÃ¼Ã§ ve Enerji ve Basit Makineler'),(149,'OKS','Fen Bilgisi','Optik'),(150,'OKS','Fen Bilgisi','Madde ve YapÄ±sÄ±'),(151,'OKS','Fen Bilgisi','IsÄ± ve SÄ±caklÄ±k'),(152,'OKS','Edebiyat','CanlÄ±larÄ±n Ã‡eÅŸitliliÄŸi'),(153,'OKS','Fen Bilgisi','CanlÄ±lar ve Hayat'),(154,'OKS','Fen Bilgisi','VÃ¼cudumuzu TanÄ±yalÄ±m'),(155,'OKS','Fen Bilgisi','HÃ¼crelerde Ã‡oÄŸalma ve KalÄ±tÄ±m'),(156,'OKS','Fen Bilgisi','Elektrik'),(157,'OKS','Sosyal Bilgiler','Ä°slamiyetten Ã–nce TÃ¼rk Tarihi'),(158,'OKS','Sosyal Bilgiler','Anadolu SelÃ§uklu Tarihi'),(159,'OKS','Sosyal Bilgiler','OsmanlÄ± Devleti YÃ¼kselme Devri'),(160,'OKS','Sosyal Bilgiler','OsmanlÄ± Devleti Islahat Hareketleri'),(161,'OKS','Sosyal Bilgiler','OsmanlÄ± KÃ¼ltÃ¼r Medeniyeti'),(162,'OKS','Sosyal Bilgiler','Ä°nkÄ±lap TarihiÂ '),(163,'OKS','Sosyal Bilgiler','TÃ¼rkiye\' de TarÄ±m ve HayvancÄ±lÄ±k'),(164,'OKS','Sosyal Bilgiler','TÃ¼rkiye\' nin Yer Åekilleri'),(165,'OKS','Sosyal Bilgiler','TÃ¼rkiye\' nin Ekonomik CoÄŸrafyasÄ±'),(166,'OKS','Sosyal Bilgiler','TÃ¼rkiye\' nin Bitki Ã–rtÃ¼sÃ¼ ve YaÄŸÄ±ÅŸ'),(167,'OKS','Sosyal Bilgiler','Ä°klim'),(168,'OKS','Sosyal Bilgiler','Harita Bilgisi'),(169,'OKS','Sosyal Bilgiler','Toplumu DÃ¼zenleyen Kurallar'),(170,'OKS','Sosyal Bilgiler','Demokrasi ve Ä°nsan HaklarÄ±'),(171,'OKS','Sosyal Bilgiler','Anayasa'),(172,'OKS','Sosyal Bilgiler','Din KÃ¼ltÃ¼rÃ¼ ve Ahlak Bilgisi'),(173,'OKS','Sosyal Bilgiler','Tarihe GiriÅŸ'),(174,'OKS','Sosyal Bilgiler','Toplum ve Aile'),(175,'OKS','Sosyal Bilgiler','OsmanlÄ± Devleti\' nin Gerileme DÃ¶nemi'),(176,'OKS','Sosyal Bilgiler','NÃ¼fus ve YerleÅŸme'),(177,'OKS','Sosyal Bilgiler','DÃ¼nya\' nÄ±n Hareketleri'),(178,'OKS','Sosyal Bilgiler','Ä°lk Ã‡aÄŸ Tarihi'),(179,'OKS','Sosyal Bilgiler','TÃ¼rkiye\' de Turizm'),(180,'OKS','Sosyal Bilgiler','OsmanlÄ± Devletinin KuruluÅŸ Devri'),(181,'OKS','Sosyal Bilgiler','Genel CoÄŸrafya'),(182,'Ã–SS','Kimya','Entalpi'),(183,'Ã–SS','Kimya','Tepkime hÄ±zÄ±'),(184,'Ã–SS','Kimya','Denge sabiti'),(185,'Ã–SS','Kimya','Ã‡Ã¶zÃ¼nÃ¼rlÃ¼k dengesi'),(186,'Ã–SS','Kimya','Elektro Kimya (piller)'),(187,'Ã–SS','Kimya','Elektroliz'),(188,'Ã–SS','Kimya','Kimyasal BaÄŸlar'),(189,'Ã–SS','Kimya','Hidrokarbonlar'),(190,'Ã–SS','Kimya','Fonksiyonel Gruplar'),(191,'Ã–SS','Kimya','Aromatik BileÅŸikler'),(192,'Ã–SS','CoÄŸrafya','DÃ¼nyanÄ±n ÅŸekli ve sonuÃ§larÄ±'),(193,'Ã–SS','CoÄŸrafya','Parelel-Meridyen'),(194,'Ã–SS','CoÄŸrafya','Enlem-Boylam'),(195,'Ã–SS','CoÄŸrafya','Ã–zel Konum ve Etkileri'),(196,'Ã–SS','CoÄŸrafya','Ã–lÃ§ek Ã§eÅŸitleri ve BÃ¼yÃ¼k Ã¶lÃ§ek-KÃ¼Ã§Ã¼k Ã–lÃ§ek'),(197,'Ã–SS','CoÄŸrafya','Harita Ã‡eÅŸitleri'),(198,'Ã–SS','CoÄŸrafya','Haritalarda Hesaplamalar (uzunluk-alan-eÄŸim)'),(199,'Ã–SS','CoÄŸrafya','Renklendirme ve Ä°zohips yÃ¶ntemi'),(200,'Ã–SS','Sosyoloji','Sosyolojinin alanÄ± ve Ã–zellikleri'),(201,'Ã–SS','Sosyoloji','Sosyolojinin araÅŸtÄ±rma teknikleri'),(202,'Ã–SS','Sosyoloji','Sosyal yapÄ±'),(203,'Ã–SS','Sosyoloji','Sosyal Kontrol'),(204,'Ã–SS','Sosyoloji','Aile'),(205,'Ã–SS','Sosyoloji','Ekonomi'),(206,'Ã–SS','Sosyoloji','KÃ¼ltÃ¼r'),(207,'Ã–SS','Sosyoloji','Toplumsal deÄŸiÅŸme'),(208,'Ã–SS','Sosyoloji','ToplumlarÄ±n Evrimi'),(209,'Ã–SS','Sosyoloji','Din'),(210,'Ã–SS','Sosyoloji','Devlet'),(211,'Ã–SS','Psikoloji','Psikolijinin AlanÄ± ve Ã–zellikleri'),(212,'Ã–SS','Psikoloji','Psikolojinin AraÅŸtÄ±rma Teknikleri'),(213,'Ã–SS','Psikoloji','Psikolojinin DallarÄ± ve Ekoller'),(214,'Ã–SS','Psikoloji','Organizma ve Ã§evre iliÅŸkileri'),(215,'Ã–SS','Psikoloji','GÃ¼dÃ¼lenme'),(216,'Ã–SS','Psikoloji','Ã–ÄŸrenme'),(217,'Ã–SS','Psikoloji','DÃ¼ÅŸÃ¼nme'),(218,'Ã–SS','Psikoloji','Bellek'),(219,'Ã–SS','Psikoloji','Ruh saÄŸlÄ±ÄŸÄ±'),(220,'Ã–SS','Psikoloji','Sosyal Etki'),(221,'Ã–SS','Geometri','ÃœÃ§gende AÃ§Ä±lar'),(222,'Ã–SS','Geometri','AÃ§Ä±ortay-Kenarortay'),(223,'Ã–SS','Geometri','ÃœÃ§gende Alan'),(224,'Ã–SS','Geometri','Lineer Cebir (matris-determinant)'),(225,'Ã–SS','Cebir','Ã‡Ã¶zÃ¼mleme ve taban aritmetiÄŸi'),(226,'Ã–SS','Cebir','BÃ¶lme ve BÃ¶lÃ¼nebilme'),(227,'Ã–SS','Cebir','OBEP-OKEK'),(228,'Ã–SS','Cebir','Rasyonel SayÄ±lar'),(229,'Ã–SS','Cebir','problemler'),(230,'Ã–SS','Cebir','Mutlak deÄŸer'),(231,'Ã–SS','Cebir','2.ve 3. dereceden denlemler ve eÅŸitsizlikler'),(232,'Ã–SS','Cebir','Parabol'),(233,'Ã–SS','Cebir','Logaritma'),(234,'Ã–SS','Cebir','Toplam - Ã§arpÄ±m sembolleri'),(235,'Ã–SS','Cebir','Diziler ve Seriler'),(236,'Ã–SS','Cebir','Ã–zel TanÄ±mlÄ± fonksiyonlar'),(237,'Ã–SS','Cebir','Limit ve sÃ¼reklilik'),(238,'Ã–SS','Cebir','TÃ¼rev'),(239,'Ã–SS','Cebir','Ä°ntegral'),(240,'Ã–SS','Cebir','Matris ve Determinant'),(241,'Ã–SS','Cebir','Tirigonometri'),(242,'Ã–SS','Cebir','KarmaÅŸÄ±k SayÄ±lar'),(243,'Ã–SS','Biyoloji','CanlÄ±larÄ±n temel bileÅŸenleri'),(244,'Ã–SS','Biyoloji','Dokular'),(245,'Ã–SS','Biyoloji','Endokrin sistemi'),(246,'Ã–SS','Biyoloji','Ä°skelet - Kas sistemi'),(247,'Ã–SS','Biyoloji','Sindirim Sistemi'),(248,'Ã–SS','Biyoloji','TaÅŸÄ±ma sistemi'),(249,'Ã–SS','Biyoloji','Solunum sistemi'),(250,'Ã–SS','Biyoloji','BoÅŸaltÄ±m sistemi'),(251,'Ã–SS','Biyoloji','Protrein sentezi'),(252,'Ã–SS','Biyoloji','Evrim'),(253,'Ã–SS','Fizik','AÄŸÄ±rlÄ±k Merkezi'),(254,'Ã–SS','Fizik','Optik'),(255,'Ã–SS','Fizik','BasÄ±nÃ§'),(256,'Ã–SS','Fizik','Harehet'),(257,'Ã–SS','Fizik','Dinamik'),(258,'Ã–SS','Fizik','Ä°tme-momentum'),(259,'Ã–SS','Fizik','Magnetik ve elek.mag. indÃ¼ksiyon'),(260,'Ã–SS','Fizik','Alternatif akÄ±mlar'),(261,'Ã–SS','Fizik','Dalgalar'),(262,'Ã–SS','Fizik','Foto-Elektrik olay'),(263,'Ã–SS','Fizik','Atom teorileri ve elktromagnetik dalgalar'),(264,'Ã–SS','Edebiyat','Edebi Bilgiler'),(265,'Ã–SS','Edebiyat','Edebi sanatlar'),(266,'Ã–SS','Edebiyat','Edebi akÄ±mlar'),(267,'Ã–SS','Edebiyat','Ä°slam Ã–ncesi tÃ¼rk edebiyatÄ±'),(268,'Ã–SS','Edebiyat','Halk EdebiyatÄ±'),(269,'Ã–SS','Edebiyat','Divan edebiyatÄ±'),(270,'Ã–SS','Edebiyat','Tanzimat EdebiyatÄ±'),(271,'Ã–SS','Edebiyat','Servet-i FÃ¼nÃ¼n edebiyatÄ±'),(272,'Ã–SS','Edebiyat','Fecr-i Ati edebiyatÄ±'),(273,'Ã–SS','Edebiyat','Milli Edebiyat'),(274,'Ã–SS','Edebiyat','Cumhuriyet EdebiyatÄ±'),(275,'Ã–SS','Edebiyat','DÃ¼nya edebiyatÄ±'),(276,'Ã–SS','MantÄ±k','mantÄ±k'),(277,'Ã–SS','Ãœlkeler CoÄŸrafyasÄ±','Ãœlkeler'),(278,'Ã–SS','TÃ¼rkiye CoÄŸrafyasÄ±','TÃ¼rkiye'),(279,'Ã–SS','Tarih','Ä°lk TÃ¼rk beylikleri'),(280,'Ã–SS','Tarih','OrtaÃ§aÄŸda Avrupa'),(281,'Ã–SS','Tarih','Reform-RÃ¶nesans'),(282,'Ã–SS','Tarih','FransÄ±z ihtilali'),(283,'Ã–SS','Tarih','OsmanlÄ± devleti KuruluÅŸ devri'),(284,'Ã–SS','CoÄŸrafya','Ay ve Ã–zellikleri'),(285,'Ã–SS','CoÄŸrafya','DÃ¼nyanÄ±n Kendi Ã§ev.DÃ¶nmesi'),(286,'Ã–SS','CoÄŸrafya','DÃ¼nyanÄ±n GÃ¼neÅŸ Ã§ev.DÃ¶nmesi'),(287,'Ã–SS','CoÄŸrafya','Eksen EÄŸikliÄŸi'),(288,'Ã–SS','Felsefe','Felsefenin Ortaya Ã§Ä±kÄ±ÅŸÄ±'),(289,'Ã–SS','Felsefe','VarlÄ±k felsefesi'),(290,'Ã–SS','Tarih','Tarih Ã–ncesi devirler'),(291,'Ã–SS','CoÄŸrafya','Yerel saat-Ortak saat'),(292,'Ã–SS','Felsefe','Bilgi TÃ¼rleri'),(293,'Ã–SS','Geometri','Dik ÃœÃ§gen'),(294,'Ã–SS','Geometri','Ä°kizkenar ÃœÃ§gen'),(295,'Ã–SS','Geometri','ÃœÃ§gende aÃ§Ä± kenar BaÄŸÄ±ntÄ±larÄ±'),(296,'Ã–SS','TÃ¼rkÃ§e','SÃ¶zcÃ¼kte Anlam'),(297,'Ã–SS','TÃ¼rkÃ§e','CÃ¼mlede Anlam'),(299,'Ã–SS','Edebiyat','Åiir Bilgisi'),(300,'Ã–SS','Cebir','DoÄŸal SayÄ±lar'),(301,'Ã–SS','Cebir','Taban AritmetiÄŸi'),(302,'OKS','TÃ¼rkÃ§e','Fiil'),(303,'OKS','TÃ¼rkÃ§e','Ses Bilgisi'),(304,'OKS','TÃ¼rkÃ§e','Ad (isimler)'),(305,'OKS','TÃ¼rkÃ§e','SÄ±fat'),(306,'OKS','TÃ¼rkÃ§e','Zarf'),(307,'OKS','Matematik','KÃ¼meler'),(308,'OKS','Matematik','DoÄŸal SayÄ±lar'),(309,'OKS','Matematik','Tam SayÄ±lar'),(310,'OKS','Matematik','Rasyonel SayÄ±lar'),(311,'OKS','Matematik','OndalÄ±k sayÄ±lar'),(312,'OKS','Matematik','BÃ¶lÃ¼nebilme'),(313,'OKS','Matematik','ÃœslÃ¼ SayÄ±lar'),(314,'OKS','Matematik','KÃ¶klÃ¼ SayÄ±lar'),(315,'OKS','Matematik','Ã‡arpanlara AyÄ±rma (Binom)'),(316,'OKS','MantÄ±k','Denklemler'),(317,'OKS','Matematik','Oran-OrantÄ±'),(318,'OKS','Matematik','Problemler'),(319,'OKS','Matematik','EÅŸitsizlikler'),(320,'OKS','Matematik','PermÃ¼tasyon-OlasÄ±lÄ±k'),(321,'OKS','Matematik','ModÃ¼ler Aritmetik'),(322,'OKS','Matematik','Ã–lÃ§Ã¼ler'),(323,'OKS','MantÄ±k','SayÄ± ve Åekil YeteneÄŸi'),(324,'OKS','Geometri','DoÄŸruda AÃ§Ä±'),(325,'OKS','Geometri','ÃœÃ§gende AÃ§Ä±'),(326,'OKS','Geometri','Dik ÃœÃ§gen'),(327,'OKS','Matematik','Ã–zel ÃœÃ§genler'),(328,'OKS','Matematik','ÃœÃ§gendee aÃ§Ä±-kenar baÄŸÄ±ntÄ±larÄ±'),(329,'OKS','Geometri','ÃœÃ§gende Benzerlik'),(330,'OKS','Geometri','DikdÃ¶rtgen-kare-yamuk'),(331,'OKS','Geometri','Ã‡okgenler'),(332,'OKS','Geometri','Ã‡ember-daire'),(333,'OKS','Geometri','KatÄ± cisimler'),(334,'OKS','Geometri','DoÄŸrunun Analitik Ä°ncelenmesi'),(335,'OKS','Matematik','Denklemler'),(336,'OKS','Matematik','ÃœÃ§gende aÃ§Ä±'),(337,'OKS','Matematik','DoÄŸruda AÃ§Ä±'),(338,'OKS','Matematik','Kare'),(339,'OKS','Matematik','Parelelkenar'),(340,'OKS','Matematik','EÅŸkenar ÃœÃ§gen'),(341,'OKS','Matematik','Grafik-Yorum'),(342,'OKS','Matematik','Åekil YeteneÄŸi'),(343,'OKS','Fen Bilgisi','Ekoloji'),(344,'OKS','Fen Bilgisi','Atomun YapÄ±sÄ±'),(345,'OKS','Fen Bilgisi','Basit Makineler'),(346,'OKS','Fen Bilgisi','Kuvvet'),(347,'OKS','Fen Bilgisi','Optik'),(348,'OKS','Fen Bilgisi','Hareket'),(349,'OKS','Fen Bilgisi','Elektirik'),(350,'OKS','Fen Bilgisi','BasÄ±nÃ§'),(351,'OKS','Fen Bilgisi','Ses'),(352,'OKS','Fen Bilgisi','Elektrostatik'),(353,'OKS','Fen Bilgisi','KaldÄ±rma Kuvveti'),(354,'OKS','Fen Bilgisi','Peryodik tablo'),(355,'OKS','Fen Bilgisi','Aynalar'),(356,'OKS','Fen Bilgisi','Enerji'),(357,'OKS','Fen Bilgisi','SÄ±nÄ±flandÄ±rma'),(358,'OKS','Sosyal Bilgiler','TÃ¼rkiyenin BÃ¶lgeleri'),(359,'OKS','Sosyal Bilgiler','Matematiksel Konum'),(360,'OKS','Sosyal Bilgiler','Ã–zel Konum'),(361,'OKS','Sosyal Bilgiler','yeniÃ§aÄŸda avrupa'),(362,'OKS','Sosyal Bilgiler','ortaÃ§aÄŸda avrupa'),(363,'OKS','Sosyal Bilgiler','TÃ¼rkiye\'de Ä°klim'),(364,'KPSS','EÄŸitim Bilimleri','dsfdsfsd'),(365,'KPSS','Genel KÃ¼ltÃ¼r','sdfdsf'),(366,'KPSS','Genel Yetenek','sdfsdf');

/*Table structure for table `sinavsonuc` */

DROP TABLE IF EXISTS `sinavsonuc`;

CREATE TABLE `sinavsonuc` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `sinav_no` int(11) NOT NULL DEFAULT '0',
  `sinifi` varchar(10) DEFAULT NULL,
  `donemi` varchar(9) NOT NULL DEFAULT '',
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `adi` varchar(15) NOT NULL DEFAULT '',
  `soyadi` varchar(15) NOT NULL DEFAULT '',
  `turkce_dogru` int(3) DEFAULT '0',
  `turkce_yanlis` int(3) DEFAULT '0',
  `turkce_net` float(5,2) DEFAULT '0.00',
  `tarih1_dogru` smallint(3) DEFAULT '0',
  `tarih1_yanlis` smallint(3) DEFAULT '0',
  `tarih1_net` float(5,2) DEFAULT '0.00',
  `cografya_dogru` smallint(3) DEFAULT '0',
  `cografya_yanlis` smallint(3) DEFAULT '0',
  `cografya_net` float(5,2) DEFAULT '0.00',
  `felsefe_dogru` smallint(3) DEFAULT '0',
  `felsefe_yanlis` smallint(3) DEFAULT '0',
  `felsefe_net` float(5,2) DEFAULT '0.00',
  `sosyal1_dogru` int(3) DEFAULT '0',
  `sosyal1_yanlis` int(3) DEFAULT '0',
  `sosyal1_net` float(5,2) DEFAULT '0.00',
  `cebir1_dogru` smallint(3) DEFAULT '0',
  `cebir1_yanlis` smallint(3) DEFAULT '0',
  `cebir1_net` float(5,2) DEFAULT '0.00',
  `geometri1_dogru` smallint(3) DEFAULT '0',
  `geometri1_yanlis` smallint(3) DEFAULT '0',
  `geometri1_net` float(5,2) DEFAULT '0.00',
  `matematik1_dogru` int(3) DEFAULT '0',
  `matematik1_yanlis` int(3) DEFAULT '0',
  `matematik1_net` float(5,2) DEFAULT '0.00',
  `fizik1_dogru` smallint(3) DEFAULT '0',
  `fizik1_yanlis` smallint(3) DEFAULT '0',
  `fizik1_net` float(5,2) DEFAULT '0.00',
  `kimya1_dogru` smallint(3) DEFAULT '0',
  `kimya1_yanlis` smallint(3) DEFAULT '0',
  `kimya1_net` float(5,2) DEFAULT '0.00',
  `biyoloji1_dogru` smallint(3) DEFAULT '0',
  `biyoloji1_yanlis` smallint(3) DEFAULT '0',
  `biyoloji1_net` float(5,2) DEFAULT '0.00',
  `fen1_dogru` int(3) DEFAULT '0',
  `fen1_yanlis` int(3) DEFAULT '0',
  `fen1_net` float(5,2) DEFAULT '0.00',
  `edebiyat_dogru` int(3) DEFAULT '0',
  `edebiyat_yanlis` int(3) DEFAULT '0',
  `edebiyat_net` float(5,2) DEFAULT '0.00',
  `turkiyecografyasi_dogru` int(3) DEFAULT '0',
  `turkiyecografyasi_yanlis` int(3) DEFAULT '0',
  `turkiyecografyasi_net` float(5,2) DEFAULT '0.00',
  `psikoloji_dogru` int(3) DEFAULT '0',
  `psikoloji_yanlis` int(3) DEFAULT '0',
  `psikoloji_net` float(5,2) DEFAULT '0.00',
  `edebiyatsosyal_dogru` int(3) DEFAULT '0',
  `edebiyatsosyal_yanlis` int(3) DEFAULT '0',
  `edebiyatsosyal_net` float(5,2) DEFAULT '0.00',
  `tarih2_dogru` int(3) DEFAULT '0',
  `tarih2_yanlis` int(3) DEFAULT '0',
  `tarih2_net` float(5,2) DEFAULT '0.00',
  `ulkelercografyasi_dogru` int(3) DEFAULT '0',
  `ulkelercografyasi_yanlis` int(3) DEFAULT '0',
  `ulkelercografyasi_net` float(5,2) DEFAULT '0.00',
  `sosyoloji_dogru` int(3) DEFAULT '0',
  `sosyoloji_yanlis` int(3) DEFAULT '0',
  `sosyoloji_net` float(5,2) DEFAULT '0.00',
  `mantik_dogru` int(3) DEFAULT '0',
  `mantik_yanlis` int(3) DEFAULT '0',
  `mantik_net` float(5,2) DEFAULT '0.00',
  `sosyal2_dogru` int(3) DEFAULT '0',
  `sosyal2_yanlis` int(3) DEFAULT '0',
  `sosyal2_net` float(5,2) DEFAULT '0.00',
  `cebir2_dogru` int(3) DEFAULT '0',
  `cebir2_yanlis` int(3) DEFAULT '0',
  `cebir2_net` float(5,2) DEFAULT '0.00',
  `geometri2_dogru` int(3) DEFAULT '0',
  `geometri2_yanlis` int(3) DEFAULT '0',
  `geometri2_net` float(5,2) DEFAULT '0.00',
  `matematik2_dogru` int(3) DEFAULT '0',
  `matematik2_yanlis` int(3) DEFAULT '0',
  `matematik2_net` float(5,2) DEFAULT '0.00',
  `fizik2_dogru` int(3) DEFAULT '0',
  `fizik2_yanlis` int(3) DEFAULT '0',
  `fizik2_net` float(5,2) DEFAULT '0.00',
  `kimya2_dogru` int(3) DEFAULT '0',
  `kimya2_yanlis` int(3) DEFAULT '0',
  `kimya2_net` float(5,2) DEFAULT '0.00',
  `biyoloji2_dogru` int(3) DEFAULT '0',
  `biyoloji2_yanlis` int(3) DEFAULT '0',
  `biyoloji2_net` float(5,2) DEFAULT '0.00',
  `fen2_dogru` int(3) DEFAULT '0',
  `fen2_yanlis` int(3) DEFAULT '0',
  `fen2_net` float(5,2) DEFAULT '0.00',
  `ingilizce_dogru` int(3) DEFAULT '0',
  `ingilizce_yanlis` int(3) DEFAULT '0',
  `ingilizce_net` float(5,2) DEFAULT '0.00',
  `toplam_dogru` int(3) DEFAULT '0',
  `toplam_yanlis` int(3) DEFAULT '0',
  `toplam_net` float(5,2) DEFAULT '0.00',
  `puan_1` float(7,3) DEFAULT NULL,
  `derece_1` int(4) DEFAULT NULL,
  `derece_local_1` int(4) DEFAULT NULL,
  `puan_2` float(7,3) DEFAULT NULL,
  `derece_2` int(4) DEFAULT NULL,
  `derece_local_2` int(4) DEFAULT NULL,
  `puan_3` float(7,3) DEFAULT NULL,
  `derece_3` int(4) DEFAULT NULL,
  `derece_local_3` int(4) DEFAULT NULL,
  `puan_4` float(7,3) DEFAULT NULL,
  `derece_4` int(4) DEFAULT NULL,
  `derece_local_4` int(4) DEFAULT NULL,
  `puan_5` float(7,3) DEFAULT NULL,
  `derece_5` int(4) DEFAULT NULL,
  `derece_local_5` int(4) DEFAULT NULL,
  `puan_6` float(7,3) DEFAULT NULL,
  `derece_6` int(4) DEFAULT NULL,
  `derece_local_6` int(4) DEFAULT NULL,
  `cevapturkce` varchar(255) DEFAULT NULL,
  `cevapsos1` varchar(255) DEFAULT NULL,
  `cevapmat1` varchar(255) DEFAULT NULL,
  `cevapfen1` varchar(255) DEFAULT NULL,
  `cevapedsos` varchar(255) DEFAULT NULL,
  `cevapsos2` varchar(255) DEFAULT NULL,
  `cevapmat2` varchar(255) DEFAULT NULL,
  `cevapfen2` varchar(255) DEFAULT NULL,
  `cevaping` varchar(255) DEFAULT NULL,
  `kitapcik` char(1) DEFAULT NULL,
  `bildirim` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`sinav_no`,`donemi`,`ogr_no`,`adi`,`soyadi`),
  KEY `sinav_no` (`sinav_no`),
  KEY `donemi_ogrno` (`donemi`,`ogr_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `sinavsonuc` */

/*Table structure for table `sinavtanim` */

DROP TABLE IF EXISTS `sinavtanim`;

CREATE TABLE `sinavtanim` (
  `sinav_no` int(11) NOT NULL AUTO_INCREMENT,
  `turu` char(4) DEFAULT 'Ã–SS',
  `sinav_tarihi` date DEFAULT '0000-00-00',
  `sinav_adi` varchar(25) DEFAULT NULL,
  `turkce_soru_sayisi` smallint(3) DEFAULT '0',
  `tarih1_soru_sayisi` smallint(3) DEFAULT '0',
  `cografya_soru_sayisi` smallint(3) DEFAULT '0',
  `felsefe_soru_sayisi` smallint(3) DEFAULT '0',
  `sosyal1_soru_sayisi` smallint(3) DEFAULT '0',
  `cebir1_soru_sayisi` smallint(3) DEFAULT '0',
  `geometri1_soru_sayisi` smallint(3) DEFAULT '0',
  `matematik1_soru_sayisi` smallint(3) DEFAULT '0',
  `matematik2_soru_sayisi` smallint(3) DEFAULT '0',
  `fizik1_soru_sayisi` smallint(3) DEFAULT '0',
  `kimya1_soru_sayisi` smallint(3) DEFAULT '0',
  `biyoloji1_soru_sayisi` smallint(3) DEFAULT '0',
  `fen1_soru_sayisi` smallint(3) DEFAULT '0',
  `edebiyat_soru_sayisi` smallint(3) DEFAULT '0',
  `turkiyecografyasi_soru_sayisi` smallint(3) DEFAULT '0',
  `psikoloji_soru_sayisi` smallint(3) DEFAULT '0',
  `edebiyatsosyal_soru_sayisi` smallint(3) DEFAULT '0',
  `tarih2_soru_sayisi` smallint(3) DEFAULT '0',
  `ulkelercografyasi_soru_sayisi` smallint(3) DEFAULT '0',
  `sosyoloji_soru_sayisi` smallint(3) DEFAULT '0',
  `mantik_soru_sayisi` smallint(3) DEFAULT '0',
  `sosyal2_soru_sayisi` smallint(3) DEFAULT '0',
  `cebir2_soru_sayisi` smallint(3) DEFAULT '0',
  `geometri2_soru_sayisi` smallint(3) DEFAULT '0',
  `fizik2_soru_sayisi` smallint(3) DEFAULT '0',
  `kimya2_soru_sayisi` smallint(3) DEFAULT '0',
  `biyoloji2_soru_sayisi` smallint(3) DEFAULT '0',
  `fen2_soru_sayisi` smallint(3) DEFAULT '0',
  `ingilizce_soru_sayisi` smallint(3) DEFAULT '0',
  `Aturkce` varchar(255) DEFAULT NULL,
  `Asos1` varchar(255) DEFAULT NULL,
  `Amat1` varchar(255) DEFAULT NULL,
  `Afen1` varchar(255) DEFAULT NULL,
  `Aedsos` varchar(255) DEFAULT NULL,
  `Asos2` varchar(255) DEFAULT NULL,
  `Amat2` varchar(255) DEFAULT NULL,
  `Afen2` varchar(255) DEFAULT NULL,
  `Aing` varchar(255) DEFAULT NULL,
  `Bturkce` varchar(255) DEFAULT NULL,
  `Bsos1` varchar(255) DEFAULT NULL,
  `Bmat1` varchar(255) DEFAULT NULL,
  `Bfen1` varchar(255) DEFAULT NULL,
  `Bedsos` varchar(255) DEFAULT NULL,
  `Bsos2` varchar(255) DEFAULT NULL,
  `Bmat2` varchar(255) DEFAULT NULL,
  `Bfen2` varchar(255) DEFAULT NULL,
  `Bing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sinav_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `sinavtanim` */

/*Table structure for table `siniflar` */

DROP TABLE IF EXISTS `siniflar`;

CREATE TABLE `siniflar` (
  `donem` varchar(9) NOT NULL,
  `sinif` varchar(10) NOT NULL DEFAULT '',
  `derslik` varchar(10) DEFAULT NULL,
  `danisman` varchar(25) DEFAULT NULL,
  `grup1` varchar(12) DEFAULT NULL,
  `grup2` varchar(12) DEFAULT NULL,
  `grup3` varchar(12) DEFAULT NULL,
  `ders_baslangic` date DEFAULT NULL,
  PRIMARY KEY (`donem`,`sinif`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `siniflar` */

/*Table structure for table `sorgular` */

DROP TABLE IF EXISTS `sorgular`;

CREATE TABLE `sorgular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aciklama` varchar(255) DEFAULT NULL,
  `komut` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin5;

/*Data for the table `sorgular` */

insert  into `sorgular`(`id`,`aciklama`,`komut`) values (3,'TÃ¼m Ã¶ÄŸrenciler ve velileri','select * from ogrenciler left join veliler using (veli_kodu)'),(4,'SÄ±nÄ±f ve ay bazÄ±nda kayÄ±t listesi','select donemi,ogr_no,sinifi,adi,soyadi,kayit_tarihi,month(kayit_tarihi) as Ay FROM ogrenciler'),(12,'KayÄ±t Bedelleri toplamÄ±','select *  from kayitbedeli inner join ogrenciler on kayitbedeli.donemi=ogrenciler.donemi and kayitbedeli.ogr_no=ogrenciler.ogr_no'),(7,'SÄ±nÄ±flardaki Ã¶ÄŸrenci sayÄ±lÄ±rÄ±','SELECT count(sinifi),sinifi from ogrenciler group by sinifi'),(11,'Taksit Listesi','select * from taksitler'),(14,'Grup tolplu liste','SELECT * from ogrenciler where sinifi like \'HS EA3\r\n%\''),(15,'Taksit toplamÄ± ve kayÄ±t bedeli farklÄ± olanlar','SELECT taksitler.donemi,taksitler.ogr_no,sum(taksitler.miktari)-kayit_bedeli AS fark from taksitler left join kayitbedeli on taksitler.ogr_no=kayitbedeli.ogr_no and taksitler.donemi=kayitbedeli.donemi GROUP BY taksitler.donemi,taksitler.ogr_no HAVING fark <> 0 ORDER BY donemi,ogr_no'),(16,'Ã–DEME YAPMAYANLAR',' SELECT ogrenciler.donemi,ogr_no,adi,soyadi,sinifi FROM ogrenciler left join paraakisi on ogrenciler.donemi=paraakisi.donemi AND ogrenciler.ogr_no=paraakisi.ilgili_no WHERE alinan is null ORDER BY donemi,ogr_no\r\n'),(18,'eksik evraklar','SELECT o.donemi,o.ogr_no,o.adi,o.soyadi,o.sinifi,e.evrak_adi,if(e.evrak_durum = 1,\'Evet\',\'HayÄ±r\') AS Verdimi FROM ogrenciler o join gerekli_evraklar g join evrak_durumu e on o.donemi=e.donemi AND o.ogr_no=e.ogr_no AND g.evrak_adi = e.evrak_adi ORDER BY donemi,ogr_no,e.evrak_adi\r\n'),(21,'dfsdf','select tarih,sum(alinan),sum(verilen) from paraakisi group by tarih'),(22,'kayÄ±t','select count(ogr_no),kayit_tarihi from ogrenciler group by kayit_tarihi'),(24,'SÄ±nÄ±fÄ± ile Grubu uyumsuz olan Ã¶ÄŸrenciler','select donemi,ogr_no,sinifi,grup1,grup2,grup3 from ogrenciler where grup1 not in (select grup1 from siniflar where sinif<>sinifi) or grup2 not in (select grup2 from siniflar where sinif=sinifi) or grup3 not in (select grup3 from siniflar where sinif=sinifi) order by ogr_no'),(25,'sms liste','select * from ogrenciler join veliler using(veli_kodu) where donemi=\'2006-2007\' and grup1 in (\'Ä°Ã–6\',\'Ä°Ã–5\')'),(26,'TÃ¼m Ã–ÄŸrenciler, sÄ±nÄ±fÄ±,grubu,adi,soyadi,veli adi-soyadi ve telefonlari','select donemi,ogr_no,adi,soyadi,grup1,grup2,grup3,sinifi,veli_adi,veli_soyadi,gsm,sms_bildirim from ogrenciler left join veliler using(veli_kodu)'),(28,'tÃ¼m veliler','select * from veliler'),(29,'Ders baÅŸlangÄ±Ã§ mesajÄ± iÃ§in liste','select donemi,ogr_no,adi,soyadi,o.grup1,o.grup2,o.grup3,sinifi,veli_adi,veli_soyadi,gsm,sms_bildirim,(select concat(mid(ders_baslangic,9,2),\'.\',mid(ders_baslangic,6,2),\'.\',mid(ders_baslangic,1,4)) from siniflar s where o.donemi=s.donem and o.sinifi=s.sinif) as tarih,(select CASE WEEKDAY((select ders_baslangic from siniflar s where o.donemi=s.donem and o.sinifi=s.sinif)) WHEN 0 THEN \'Pazartesi\' WHEN 1 THEN \'SalÄ±\' WHEN 2 THEN \'Ã‡arÅŸamba\' WHEN 3 THEN \'PerÅŸembe\' WHEN 4 THEN \'Cuma\' WHEN 5 THEN \'Cumartesi\' WHEN 6 THEN \'Pazar\' ELSE \'\' END) as gun,(select ders_1 from ders_programlari d where d.donem=o.donemi and o.sinifi=d.sinif and gun=\'GiriÅŸ\') as saat from ogrenciler o left join veliler v using(veli_kodu)');

/*Table structure for table `sutun_basliklari` */

DROP TABLE IF EXISTS `sutun_basliklari`;

CREATE TABLE `sutun_basliklari` (
  `sutun_adi` varchar(25) NOT NULL DEFAULT '',
  `baslik` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sutun_adi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `sutun_basliklari` */

insert  into `sutun_basliklari`(`sutun_adi`,`baslik`) values ('gizli','Gizli'),('mudur','MÃ¼dÃ¼r'),('versiyon','Versiyon'),('sinif','SÄ±nÄ±f'),('gun','GÃ¼n'),('ders_1','1. Ders'),('ders_2','2. Ders'),('ders_3','3. Ders'),('ders_4','4. Ders'),('ders_5','5. Ders'),('ders_6','6. Ders'),('ders_7','7. Ders'),('ders_8','8. Ders'),('ders_9','9. Ders'),('ders_10','10. Ders'),('id','Id'),('donemi','DÃ¶nemi'),('ogr_no','Ã–.No'),('tarih','Tarih'),('kullanici','KullanÄ±cÄ±'),('bildirim_tarihi','Bildirim Tarihi'),('kiminle_gorusuldu','Kiminle GÃ¶rÃ¼ÅŸÃ¼ldÃ¼'),('aciklama','AÃ§Ä±klama'),('evrak_adi','Evrak AdÄ±'),('evrak_durum','Evrak Durumu'),('kontrol_tarihi','Kontrol Tarihi'),('geciken_borc_miktari','GeÃ§iken BorÃ§'),('aktif','Akrif'),('gorunum','GÃ¶rÃ¼nÃ¼m'),('seviye','Seviye'),('adi','AdÄ±'),('ustgrup','Ãœst Grubu'),('msgid','Mesaj ID'),('tur','TÃ¼r'),('konum','Konum'),('mesaj','Mesaj'),('olusturulma','OluÅŸturulma'),('durumu','Durumu'),('gonderilme','GÃ¶nderilme'),('kayit_bedeli','KayÄ±t Bedeli'),('personel_kodu','Personel Kodu'),('miktar','Miktar'),('soyadi','SoyadÄ±'),('cinsiyeti','Cinsiyeti'),('resmi','Resim'),('tc_kimlik_no','TC Kimlik No'),('kayit_tarihi','KayÄ±t Tarihi'),('okulu','Okulu'),('sinifi','SÄ±nÄ±f'),('baba_adi','Baba AdÄ±'),('ana_adi','Ana AdÄ±'),('dogum_yeri','DoÄŸum Yeri'),('dogum_tarihi','DoÄŸum Tarihi'),('ili','Ä°li'),('ilcesi','Ä°lÃ§esi'),('mahallesi_koyu','Mahallesi - KÃ¶yÃ¼'),('cilt_no','Cilt No'),('aile_sira_no','Aile SÄ±ra No'),('sira_no','SÄ±ra No'),('verildigi_yer','VerildiÄŸi Yer'),('verilis_nedeni','VeriliÅŸ Nedeni'),('kayit_no','KayÄ±t No'),('verilis_tarihi','VeriliÅŸ Tarihi'),('veli_kodu','Veli Kodu'),('yakinligi','YakÄ±nlÄ±ÄŸÄ±'),('grup1','Grup 1'),('grup2','Grup 2'),('grup3','Grup 3'),('ilgili_no','Ä°lgili No'),('islem_no','Ä°ÅŸlem No'),('alinan','AlÄ±nan'),('verilen','Verilen'),('ilgilihesap','Ä°lgili Hesap'),('islem_tarihi','Ä°ÅŸlem Tarihi'),('adi_soyadi','AdÄ± SoyadÄ±'),('resim','Resim'),('sicil_no','Sicil No'),('vergi_no','Vergi No'),('elektrik','Elektrik No'),('su','Su No'),('ise_giris_tarihi','Ä°ÅŸe BaÅŸlama'),('sigorta_no','Sigorta No'),('nema_no','Nema No'),('user','KullanÄ±cÄ± AdÄ±'),('yetki','Yetki'),('notu','Notu'),('formul_6','EA-2 FormÃ¼lÃ¼'),('formul_5','SÃ¶zel-2 FormÃ¼lÃ¼'),('formul_4','SayÄ±sal-2 FormÃ¼lÃ¼'),('formul_3','Matematik FormÃ¼l'),('formul_2','Toplam Puan FormÃ¼lÃ¼ / SÃ¶zel-1 FormÃ¼lÃ¼'),('formul_1','Fen AÄŸÄ±rlÄ±klÄ± Puan FormÃ¼lÃ¼ / SayÄ±sal-1 FormÃ¼lÃ¼'),('yanlis_dogru_orani','YanlÄ±ÅŸ DoÄŸru OranÄ±'),('sinav_no','SÄ±nav No'),('turkce_dogru','T.D'),('turkce_yanlis','T.Y'),('turkce_net','T.N'),('tarih1_dogru','tarih1_dogru'),('tarih1_yanlis','tarih1_yanlis'),('tarih1_net','tarih1_net'),('cografya_dogru','cografya_dogru'),('cografya_yanlis','cografya_yanlis'),('cografya_net','cografya_net'),('felsefe_dogru','felsefe_dogru'),('felsefe_yanlis','felsefe_yanlis'),('felsefe_net','felsefe_net'),('sosyal1_dogru','sosyal1_dogru'),('sosyal1_yanlis','sosyal1_yanlis'),('sosyal1_net','sosyal1_net'),('cebir1_dogru','cebir1_dogru'),('cebir1_yanlis','cebir1_yanlis'),('cebir1_net','cebir1_net'),('geometri1_dogru','geometri1_dogru'),('geometri1_yanlis','geometri1_yanlis'),('geometri1_net','geometri1_net'),('matematik1_dogru','matematik1_dogru'),('matematik1_yanlis','matematik1_yanlis'),('matematik1_net','matematik1_net'),('fizik1_dogru','fizik1_dogru'),('fizik1_yanlis','fizik1_yanlis'),('fizik1_net','fizik1_net'),('kimya1_dogru','kimya1_dogru'),('kimya1_yanlis','kimya1_yanlis'),('kimya1_net','kimya1_net'),('biyoloji1_dogru','biyoloji1_dogru'),('biyoloji1_yanlis','biyoloji1_yanlis'),('biyoloji1_net','biyoloji1_net'),('fen1_dogru','fen1_dogru'),('fen1_yanlis','fen1_yanlis'),('fen1_net','fen1_net'),('edebiyat_dogru','edebiyat_dogru'),('edebiyat_yanlis','edebiyat_yanlis'),('edebiyat_net','edebiyat_net'),('turkiyecografyasi_dogru','turkiyecografyasi_dogru'),('turkiyecografyasi_yanlis','turkiyecografyasi_yanlis'),('turkiyecografyasi_net','turkiyecografyasi_net'),('psikoloji_dogru','psikoloji_dogru'),('psikoloji_yanlis','psikoloji_yanlis'),('psikoloji_net','psikoloji_net'),('edebiyatsosyal_dogru','edebiyatsosyal_dogru'),('edebiyatsosyal_yanlis','edebiyatsosyal_yanlis'),('edebiyatsosyal_net','edebiyatsosyal_net'),('tarih2_dogru','tarih2_dogru'),('tarih2_yanlis','tarih2_yanlis'),('tarih2_net','tarih2_net'),('ulkelercografyasi_dogru','ulkelercografyasi_dogru'),('ulkelercografyasi_yanlis','ulkelercografyasi_yanlis'),('ulkelercografyasi_net','ulkelercografyasi_net'),('sosyoloji_dogru','sosyoloji_dogru'),('sosyoloji_yanlis','sosyoloji_yanlis'),('sosyoloji_net','sosyoloji_net'),('mantik_dogru','mantik_dogru'),('mantik_yanlis','mantik_yanlis'),('mantik_net','mantik_net'),('sosyal2_dogru','sosyal2_dogru'),('sosyal2_yanlis','sosyal2_yanlis'),('sosyal2_net','sosyal2_net'),('cebir2_dogru','cebir2_dogru'),('cebir2_yanlis','cebir2_yanlis'),('cebir2_net','cebir2_net'),('geometri2_dogru','geometri2_dogru'),('geometri2_yanlis','geometri2_yanlis'),('geometri2_net','geometri2_net'),('matematik2_dogru','matematik2_dogru'),('matematik2_yanlis','matematik2_yanlis'),('matematik2_net','matematik2_net'),('fizik2_dogru','fizik2_dogru'),('fizik2_yanlis','fizik2_yanlis'),('fizik2_net','fizik2_net'),('kimya2_dogru','kimya2_dogru'),('kimya2_yanlis','kimya2_yanlis'),('kimya2_net','kimya2_net'),('biyoloji2_dogru','biyoloji2_dogru'),('biyoloji2_yanlis','biyoloji2_yanlis'),('biyoloji2_net','biyoloji2_net'),('fen2_dogru','fen2_dogru'),('fen2_yanlis','fen2_yanlis'),('fen2_net','fen2_net'),('toplam_dogru','Tp.D'),('toplam_yanlis','Tp.Y'),('toplam_net','Tp.N'),('puan_1','T.P / Sa.P'),('derece_1','T.De / Sa.D'),('derece_local_1','T.L.D'),('puan_2','S.P / SÃ¶.P'),('derece_2','S.De / SÃ¶.D'),('derece_local_2','S.L.D'),('puan_3','M.P / EA.P'),('derece_3','M.De / EA.D'),('derece_local_3','M.L.D'),('puan_4','F.P'),('derece_4','F.De'),('derece_local_4','F.L.D'),('puan_5','Tp.P'),('derece_5','Tp.De'),('derece_local_5','T.De'),('puan_6','puan_6'),('derece_6','derece_6'),('derece_local_6','derece_local_6'),('cevapturkce','cevapturkce'),('cevapsos1','cevapsos1'),('cevapmat1','cevapmat1'),('cevapfen1','cevapfen1'),('cevapedsos','cevapedsos'),('cevapsos2','cevapsos2'),('cevapmat2','cevapmat2'),('cevapfen2','cevapfen2'),('kitapcik','kitapcik'),('bildirim','bildirim'),('turu','SÄ±nav TÃ¼rÃ¼'),('sinav_tarihi','SÄ±nav Tarihi'),('sinav_adi','SÄ±nav AdÄ±'),('turkce_soru_sayisi','T.S.S'),('tarih1_soru_sayisi','tarih1_soru_sayisi'),('cografya_soru_sayisi','cografya_soru_sayisi'),('felsefe_soru_sayisi','felsefe_soru_sayisi'),('sosyal1_soru_sayisi','sosyal1_soru_sayisi'),('cebir1_soru_sayisi','cebir1_soru_sayisi'),('geometri1_soru_sayisi','geometri1_soru_sayisi'),('matematik1_soru_sayisi','matematik1_soru_sayisi'),('matematik2_soru_sayisi','matematik2_soru_sayisi'),('fizik1_soru_sayisi','fizik1_soru_sayisi'),('kimya1_soru_sayisi','kimya1_soru_sayisi'),('biyoloji1_soru_sayisi','biyoloji1_soru_sayisi'),('fen1_soru_sayisi','fen1_soru_sayisi'),('edebiyat_soru_sayisi','edebiyat_soru_sayisi'),('turkiyecografyasi_soru_sa','turkiyecografyasi_soru_sa'),('psikoloji_soru_sayisi','psikoloji_soru_sayisi'),('edebiyatsosyal_soru_sayis','edebiyatsosyal_soru_sayis'),('tarih2_soru_sayisi','tarih2_soru_sayisi'),('ulkelercografyasi_soru_sa','ulkelercografyasi_soru_sa'),('sosyoloji_soru_sayisi','sosyoloji_soru_sayisi'),('mantik_soru_sayisi','mantik_soru_sayisi'),('sosyal2_soru_sayisi','sosyal2_soru_sayisi'),('cebir2_soru_sayisi','cebir2_soru_sayisi'),('geometri2_soru_sayisi','geometri2_soru_sayisi'),('fizik2_soru_sayisi','fizik2_soru_sayisi'),('kimya2_soru_sayisi','kimya2_soru_sayisi'),('biyoloji2_soru_sayisi','biyoloji2_soru_sayisi'),('fen2_soru_sayisi','fen2_soru_sayisi'),('Aturkce','Aturkce'),('Asos1','Asos1'),('Amat1','Amat1'),('Afen1','Afen1'),('Aedsos','Aedsos'),('Asos2','Asos2'),('Amat2','Amat2'),('Afen2','Afen2'),('Bturkce','Bturkce'),('Bsos1','Bsos1'),('Bmat1','Bmat1'),('Bfen1','Bfen1'),('Bedsos','Bedsos'),('Bsos2','Bsos2'),('Bmat2','Bmat2'),('Bfen2','Bfen2'),('A','KitapÃ§Ä±k A'),('B','KitapÃ§Ä±k B'),('derslik','Derslik'),('danisman','DanÄ±ÅŸman'),('komut','Komut'),('sutun_adi','SÃ¼tun AdÄ±'),('baslik','BaÅŸlÄ±k'),('vadesi','Vadesi'),('miktari','MiktarÄ±'),('veli_adi','Veli AdÄ±'),('veli_soyadi','Veli SoyadÄ±'),('adresi','Adresi'),('adres_ili','Adres Ä°li'),('adres_ilcesi','Adres Ä°lÃ§esi'),('posta_kodu','Posta Kodu'),('ev_telefonu','Ev Telefonu'),('gsm','GSM'),('sms_bildirim','SMS Bildirimi'),('is_telefonu','Ä°ÅŸ Telefonu'),('fax','Fax'),('fax_bildirim','Faks Bildirimi'),('email','E-mail'),('email_bildirim','Eposta Bildirimi'),('meslegi','MesleÄŸi'),('calistigi_yer','Ã‡alÄ±ÅŸtÄ±ÄŸÄ± Yer'),('vgrup1','V.Grup 1'),('vgrup2','V.Grup 2'),('vgrup3','V.Grup 3');

/*Table structure for table `taksitler` */

DROP TABLE IF EXISTS `taksitler`;

CREATE TABLE `taksitler` (
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `vadesi` date NOT NULL DEFAULT '0000-00-00',
  `miktari` double(15,2) DEFAULT '0.00',
  `donemi` varchar(9) NOT NULL DEFAULT '2000-2000',
  PRIMARY KEY (`ogr_no`,`vadesi`,`donemi`),
  KEY `idx_donemi_ogrno` (`donemi`,`ogr_no`),
  KEY `idx_vadesi` (`vadesi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `taksitler` */

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `donemi` varchar(9) DEFAULT NULL,
  `ogr_no` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `temp` */

/*Table structure for table `veliler` */

DROP TABLE IF EXISTS `veliler`;

CREATE TABLE `veliler` (
  `veli_kodu` int(5) NOT NULL AUTO_INCREMENT,
  `veli_adi` char(25) NOT NULL DEFAULT '',
  `veli_soyadi` char(15) NOT NULL DEFAULT '',
  `adresi` char(99) DEFAULT NULL,
  `adres_ili` char(15) NOT NULL DEFAULT '',
  `adres_ilcesi` char(15) NOT NULL DEFAULT '',
  `posta_kodu` char(5) DEFAULT NULL,
  `ev_telefonu` char(15) DEFAULT NULL,
  `gsm` char(15) DEFAULT NULL,
  `sms_bildirim` enum('Evet','HayÄ±r') NOT NULL DEFAULT 'HayÄ±r',
  `is_telefonu` char(15) DEFAULT NULL,
  `fax` char(15) DEFAULT NULL,
  `fax_bildirim` enum('Evet','HayÄ±r') NOT NULL DEFAULT 'HayÄ±r',
  `email` char(255) DEFAULT NULL,
  `email_bildirim` enum('Evet','HayÄ±r') NOT NULL DEFAULT 'HayÄ±r',
  `meslegi` char(20) DEFAULT NULL,
  `calistigi_yer` char(25) DEFAULT NULL,
  `vgrup1` varchar(15) DEFAULT NULL,
  `vgrup2` varchar(15) DEFAULT NULL,
  `vgrup3` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`veli_kodu`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `veliler` */

/*Table structure for table `ygeciken_borc_bildirimi` */

DROP TABLE IF EXISTS `ygeciken_borc_bildirimi`;

CREATE TABLE `ygeciken_borc_bildirimi` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `donemi` varchar(9) DEFAULT NULL,
  `ogr_no` int(4) DEFAULT NULL,
  `kontrol_tarihi` date NOT NULL DEFAULT '0000-00-00',
  `geciken_borc_miktari` double(15,2) NOT NULL DEFAULT '0.00',
  `bildirim_tarihi` datetime DEFAULT NULL,
  `kiminle_gorusuldu` varchar(20) DEFAULT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `kullanici` varchar(80) DEFAULT NULL,
  `aktif` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_donemi_ogrno` (`donemi`,`ogr_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `ygeciken_borc_bildirimi` */

/*Table structure for table `ykayitbedeli` */

DROP TABLE IF EXISTS `ykayitbedeli`;

CREATE TABLE `ykayitbedeli` (
  `ogr_no` int(4) NOT NULL DEFAULT '0',
  `donemi` varchar(9) NOT NULL DEFAULT '',
  `kayit_bedeli` double(15,2) DEFAULT '0.00',
  PRIMARY KEY (`ogr_no`,`donemi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin5;

/*Data for the table `ykayitbedeli` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
