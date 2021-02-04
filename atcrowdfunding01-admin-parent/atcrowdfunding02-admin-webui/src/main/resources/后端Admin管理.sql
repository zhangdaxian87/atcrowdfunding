/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.18 : Database - project_crowd
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_crowd` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `project_crowd`;

/*Table structure for table `inner_admin_role` */

DROP TABLE IF EXISTS `inner_admin_role`;

CREATE TABLE `inner_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `inner_admin_role` */

insert  into `inner_admin_role`(`id`,`admin_id`,`role_id`) values 
(15,3,2),
(16,3,3),
(17,4,4),
(18,4,5);

/*Table structure for table `inner_role_auth` */

DROP TABLE IF EXISTS `inner_role_auth`;

CREATE TABLE `inner_role_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `auth_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `inner_role_auth` */

insert  into `inner_role_auth`(`id`,`role_id`,`auth_id`) values 
(12,3,1),
(13,3,5),
(16,5,6),
(17,5,10);

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_acct` varchar(255) NOT NULL,
  `user_pswd` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_time` char(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`id`,`login_acct`,`user_pswd`,`user_name`,`email`,`create_time`) values 
(1,'admin','$2a$10$3YODojJmtbcOzHqB6bjZhO2CR7l9pPDfxBsnYz2voBHw5Ro.5bMAm','管理员','admin@qq.com',NULL),
(2,'zhangqiang','$2a$10$3YODojJmtbcOzHqB6bjZhO2CR7l9pPDfxBsnYz2voBHw5Ro.5bMAm','zhangqiang','zhangqiang@qq.com',NULL),
(3,'tom','$2a$10$3YODojJmtbcOzHqB6bjZhO2CR7l9pPDfxBsnYz2voBHw5Ro.5bMAm','tom','tom@qq.com',NULL),
(4,'jery','$2a$10$3YODojJmtbcOzHqB6bjZhO2CR7l9pPDfxBsnYz2voBHw5Ro.5bMAm','jery','jery@qq.com',NULL),
(5,'zhangsan','$2a$10$3YODojJmtbcOzHqB6bjZhO2CR7l9pPDfxBsnYz2voBHw5Ro.5bMAm','张三','zhangsan@qq.com',NULL),
(6,'loginAcct4','userPswd4','userName4','email4',NULL),
(7,'loginAcct5','userPswd5','userName5','email5',NULL),
(8,'loginAcct6','userPswd6','userName6','email6',NULL),
(9,'loginAcct7','userPswd7','userName7','email7',NULL),
(10,'loginAcct8','userPswd8','userName8','email8',NULL),
(11,'loginAcct9','userPswd9','userName9','email9',NULL),
(12,'loginAcct10','userPswd10','userName10','email10',NULL),
(241,'test2','$2a$10$kIvcv4Mvt9d7hJm4.j8KTObkM2.O.pRTQJJGZPcw8nnvElXCw5b8W','druid','wangwu@qq.com','2021-02-04 14:45:29');

/*Table structure for table `t_auth` */

DROP TABLE IF EXISTS `t_auth`;

CREATE TABLE `t_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_auth` */

insert  into `t_auth`(`id`,`name`,`title`,`category_id`) values 
(1,'','用户模块',NULL),
(2,'user:delete','删除',1),
(3,'user:get','查询',1),
(4,'user:add','新增',1),
(5,'user:edit','编辑',1),
(6,'','角色模块',NULL),
(7,'role:delete','删除',6),
(8,'role:get','查询',6),
(9,'role:add','新增',6),
(10,'role:edit','编辑',6);

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `icon` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`pid`,`name`,`url`,`icon`) values 
(1,NULL,'系统权限菜单',NULL,'glyphicon\r\nglyphicon-th-list'),
(2,1,' 控 制 面 板 ','main.htm','glyphicon\r\nglyphicon-dashboard'),
(3,1,'权限管理',NULL,'glyphicon glyphicon\r\nglyphicon-tasks'),
(4,3,' 用 户 维 护 ','user/index.htm','glyphicon\r\nglyphicon-user'),
(5,3,' 角 色 维 护 ','role/index.htm','glyphicon\r\nglyphicon-king'),
(6,3,' 菜 单 维 护 ','permission/index.htm','glyphicon\r\nglyphicon-lock'),
(7,1,' 业 务 审 核 ',NULL,'glyphicon\r\nglyphicon-ok'),
(8,7,'实名认证审核','auth_cert/index.htm','glyphicon\r\nglyphicon-check'),
(9,7,' 广 告 审 核 ','auth_adv/index.htm','glyphicon\r\nglyphicon-check'),
(10,7,' 项 目 审 核 ','auth_project/index.htm','glyphicon\r\nglyphicon-check'),
(11,1,' 业 务 管 理 ',NULL,'glyphicon\r\nglyphicon-th-large'),
(12,11,' 资 质 维 护 ','cert/index.htm','glyphicon\r\nglyphicon-picture'),
(13,11,' 分 类 管 理 ','certtype/index.htm','glyphicon\r\nglyphicon-equalizer'),
(14,11,' 流 程 管 理 ','process/index.htm','glyphicon\r\nglyphicon-random'),
(15,11,' 广 告 管 理 ','advert/index.htm','glyphicon\r\nglyphicon-hdd'),
(16,11,' 消 息 模 板 ','message/index.htm','glyphicon\r\nglyphicon-comment'),
(17,11,' 项 目 分 类 ','projectType/index.htm','glyphicon\r\nglyphicon-list'),
(18,11,' 项 目 标 签 ','tag/index.htm','glyphicon\r\nglyphicon-tags'),
(19,1,' 参 数 管 理 ','param/index.htm','glyphicon\r\nglyphicon-list-alt'),
(21,3,'test','','glyphicon glyphicon-hdd'),
(22,19,'信息管理','','glyphicon glyphicon-comment');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`) values 
(1,'管理员'),
(2,'经理'),
(3,'经理操作者'),
(4,'部长'),
(5,'部长操作者'),
(6,'PM-财务部'),
(7,'CF-技术一部'),
(8,'CF-技术二部'),
(9,'CF-技术三部'),
(10,'NC-财务一部'),
(11,'NC-财务二部'),
(12,'PM-销售一部'),
(13,'PM-销售二部'),
(14,'PM-销售三部'),
(15,'HR-人事部'),
(16,'HR-人事本部');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
