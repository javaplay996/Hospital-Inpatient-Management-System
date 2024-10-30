/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6m5x3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6m5x3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6m5x3`;

/*Table structure for table `bingfang` */

DROP TABLE IF EXISTS `bingfang`;

CREATE TABLE `bingfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingfanghao` varchar(200) DEFAULT NULL COMMENT '病房号',
  `zongchuangweishu` int(11) DEFAULT NULL COMMENT '总床位数',
  `kongchuangshumu` int(11) DEFAULT NULL COMMENT '空床数目',
  `shijishiyonglv` varchar(200) DEFAULT NULL COMMENT '实际使用率',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bingfanghao` (`bingfanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='病房';

/*Data for the table `bingfang` */

insert  into `bingfang`(`id`,`addtime`,`bingfanghao`,`zongchuangweishu`,`kongchuangshumu`,`shijishiyonglv`,`beizhu`) values (41,'2021-02-20 10:02:42','病房号1',1,1,'实际使用率1','备注1'),(42,'2021-02-20 10:02:42','病房号2',2,2,'实际使用率2','备注2'),(43,'2021-02-20 10:02:42','病房号3',3,3,'实际使用率3','备注3'),(44,'2021-02-20 10:02:42','病房号4',4,4,'实际使用率4','备注4'),(45,'2021-02-20 10:02:42','病房号5',5,5,'实际使用率5','备注5'),(46,'2021-02-20 10:02:42','病房号6',6,6,'实际使用率6','备注6');

/*Table structure for table `bingli` */

DROP TABLE IF EXISTS `bingli`;

CREATE TABLE `bingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `binglineirong` longtext COMMENT '病历内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='病历';

/*Data for the table `bingli` */

insert  into `bingli`(`id`,`addtime`,`bingrenxingming`,`shoujihao`,`yihugonghao`,`yihuxingming`,`shijian`,`keshi`,`binglineirong`) values (61,'2021-02-20 10:02:42','病人姓名1','手机号1','医护工号1','医护姓名1','2021-02-20','科室1','病历内容1'),(62,'2021-02-20 10:02:42','病人姓名2','手机号2','医护工号2','医护姓名2','2021-02-20','科室2','病历内容2'),(63,'2021-02-20 10:02:42','病人姓名3','手机号3','医护工号3','医护姓名3','2021-02-20','科室3','病历内容3'),(64,'2021-02-20 10:02:42','病人姓名4','手机号4','医护工号4','医护姓名4','2021-02-20','科室4','病历内容4'),(65,'2021-02-20 10:02:42','病人姓名5','手机号5','医护工号5','医护姓名5','2021-02-20','科室5','病历内容5'),(66,'2021-02-20 10:02:42','病人姓名6','手机号6','医护工号6','医护姓名6','2021-02-20','科室6','病历内容6');

/*Table structure for table `bingren` */

DROP TABLE IF EXISTS `bingren`;

CREATE TABLE `bingren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shoujihao` varchar(200) NOT NULL COMMENT '手机号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shoujihao` (`shoujihao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='病人';

/*Data for the table `bingren` */

insert  into `bingren`(`id`,`addtime`,`shoujihao`,`mima`,`bingrenxingming`,`xingbie`,`nianling`,`zhaopian`) values (31,'2021-02-20 10:02:42','13811111111','1','病人姓名1','男',1,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian1.jpg'),(32,'2021-02-20 10:02:42','病人2','123456','病人姓名2','男',2,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian2.jpg'),(33,'2021-02-20 10:02:42','病人3','123456','病人姓名3','男',3,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian3.jpg'),(34,'2021-02-20 10:02:42','病人4','123456','病人姓名4','男',4,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian4.jpg'),(35,'2021-02-20 10:02:42','病人5','123456','病人姓名5','男',5,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian5.jpg'),(36,'2021-02-20 10:02:42','病人6','123456','病人姓名6','男',6,'http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian6.jpg');

/*Table structure for table `bingrenxinxi` */

DROP TABLE IF EXISTS `bingrenxinxi`;

CREATE TABLE `bingrenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `bingfanghao` varchar(200) DEFAULT NULL COMMENT '病房号',
  `chuanghao` varchar(200) DEFAULT NULL COMMENT '床号',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `bingshi` longtext COMMENT '病史',
  `ruyuanshijian` date DEFAULT NULL COMMENT '入院时间',
  `zhuyuanfeiyong` int(11) DEFAULT NULL COMMENT '住院费用',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1613786714214 DEFAULT CHARSET=utf8 COMMENT='病人信息';

/*Data for the table `bingrenxinxi` */

insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenxingming`,`shoujihao`,`zhaopian`,`xingbie`,`nianling`,`bingfanghao`,`chuanghao`,`yihugonghao`,`yihuxingming`,`bingshi`,`ruyuanshijian`,`zhuyuanfeiyong`,`beizhu`) values (51,'2021-02-20 10:02:42','病人姓名1','手机号1','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian1.jpg','性别1','年龄1','病房号1','床号1','医护工号1','医护姓名1','病史1','2021-02-20',1,'备注1'),(52,'2021-02-20 10:02:42','病人姓名2','手机号2','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian2.jpg','性别2','年龄2','病房号2','床号2','医护工号2','医护姓名2','病史2','2021-02-20',2,'备注2'),(53,'2021-02-20 10:02:42','病人姓名3','手机号3','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian3.jpg','性别3','年龄3','病房号3','床号3','医护工号3','医护姓名3','病史3','2021-02-20',3,'备注3'),(54,'2021-02-20 10:02:42','病人姓名4','手机号4','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian4.jpg','性别4','年龄4','病房号4','床号4','医护工号4','医护姓名4','病史4','2021-02-20',4,'备注4'),(55,'2021-02-20 10:02:42','病人姓名5','手机号5','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian5.jpg','性别5','年龄5','病房号5','床号5','医护工号5','医护姓名5','病史5','2021-02-20',5,'备注5'),(56,'2021-02-20 10:02:42','病人姓名6','手机号6','http://localhost:8080/ssm6m5x3/upload/bingrenxinxi_zhaopian6.jpg','性别6','年龄6','病房号6','床号6','医护工号6','医护姓名6','病史6','2021-02-20',6,'备注6'),(1613786714213,'2021-02-20 10:05:13','病人姓名1','13811111111','http://localhost:8080/ssm6m5x3/upload/bingren_zhaopian1.jpg','男','1','病房号3','1','1','1','11','2021-02-20',11,'11');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='医护交流';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (141,'2021-02-20 10:02:42',1,1,'提问1','回复1',1),(142,'2021-02-20 10:02:42',2,2,'提问2','回复2',2),(143,'2021-02-20 10:02:42',3,3,'提问3','回复3',3),(144,'2021-02-20 10:02:42',4,4,'提问4','回复4',4),(145,'2021-02-20 10:02:42',5,5,'提问5','回复5',5),(146,'2021-02-20 10:02:42',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6m5x3/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm6m5x3/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6m5x3/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussjiankangjiangtan` */

DROP TABLE IF EXISTS `discussjiankangjiangtan`;

CREATE TABLE `discussjiankangjiangtan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='健康讲坛评论表';

/*Data for the table `discussjiankangjiangtan` */

insert  into `discussjiankangjiangtan`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (151,'2021-02-20 10:02:42',1,1,'评论内容1','回复内容1'),(152,'2021-02-20 10:02:42',2,2,'评论内容2','回复内容2'),(153,'2021-02-20 10:02:42',3,3,'评论内容3','回复内容3'),(154,'2021-02-20 10:02:42',4,4,'评论内容4','回复内容4'),(155,'2021-02-20 10:02:42',5,5,'评论内容5','回复内容5'),(156,'2021-02-20 10:02:42',6,6,'评论内容6','回复内容6');

/*Table structure for table `jiankangjiangtan` */

DROP TABLE IF EXISTS `jiankangjiangtan`;

CREATE TABLE `jiankangjiangtan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiangtanbiaoti` varchar(200) DEFAULT NULL COMMENT '讲坛标题',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiangtanneirong` longtext COMMENT '讲坛内容',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='健康讲坛';

/*Data for the table `jiankangjiangtan` */

insert  into `jiankangjiangtan`(`id`,`addtime`,`jiangtanbiaoti`,`yihugonghao`,`yihuxingming`,`leixing`,`jiangtanneirong`,`fengmiantupian`,`fabushijian`) values (111,'2021-02-20 10:02:42','讲坛标题1','医护工号1','医护姓名1','健康知识','讲坛内容1','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian1.jpg','2021-02-20'),(112,'2021-02-20 10:02:42','讲坛标题2','医护工号2','医护姓名2','健康知识','讲坛内容2','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian2.jpg','2021-02-20'),(113,'2021-02-20 10:02:42','讲坛标题3','医护工号3','医护姓名3','健康知识','讲坛内容3','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian3.jpg','2021-02-20'),(114,'2021-02-20 10:02:42','讲坛标题4','医护工号4','医护姓名4','健康知识','讲坛内容4','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian4.jpg','2021-02-20'),(115,'2021-02-20 10:02:42','讲坛标题5','医护工号5','医护姓名5','健康知识','讲坛内容5','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian5.jpg','2021-02-20'),(116,'2021-02-20 10:02:42','讲坛标题6','医护工号6','医护姓名6','健康知识','讲坛内容6','http://localhost:8080/ssm6m5x3/upload/jiankangjiangtan_fengmiantupian6.jpg','2021-02-20');

/*Table structure for table `keshi` */

DROP TABLE IF EXISTS `keshi`;

CREATE TABLE `keshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='科室';

/*Data for the table `keshi` */

insert  into `keshi`(`id`,`addtime`,`keshi`) values (21,'2021-02-20 10:02:42','科室1'),(22,'2021-02-20 10:02:42','科室2'),(23,'2021-02-20 10:02:42','科室3'),(24,'2021-02-20 10:02:42','科室4'),(25,'2021-02-20 10:02:42','科室5'),(26,'2021-02-20 10:02:42','科室6');

/*Table structure for table `shoushuanpai` */

DROP TABLE IF EXISTS `shoushuanpai`;

CREATE TABLE `shoushuanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `shoushushijian` date DEFAULT NULL COMMENT '手术时间',
  `shoushuneirong` varchar(200) DEFAULT NULL COMMENT '手术内容',
  `shoushudidian` varchar(200) DEFAULT NULL COMMENT '手术地点',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='手术安排';

/*Data for the table `shoushuanpai` */

insert  into `shoushuanpai`(`id`,`addtime`,`bingrenxingming`,`shoujihao`,`xingbie`,`nianling`,`yihugonghao`,`yihuxingming`,`shoushushijian`,`shoushuneirong`,`shoushudidian`,`beizhu`) values (81,'2021-02-20 10:02:42','病人姓名1','手机号1','性别1','年龄1','医护工号1','医护姓名1','2021-02-20','手术内容1','手术地点1','备注1'),(82,'2021-02-20 10:02:42','病人姓名2','手机号2','性别2','年龄2','医护工号2','医护姓名2','2021-02-20','手术内容2','手术地点2','备注2'),(83,'2021-02-20 10:02:42','病人姓名3','手机号3','性别3','年龄3','医护工号3','医护姓名3','2021-02-20','手术内容3','手术地点3','备注3'),(84,'2021-02-20 10:02:42','病人姓名4','手机号4','性别4','年龄4','医护工号4','医护姓名4','2021-02-20','手术内容4','手术地点4','备注4'),(85,'2021-02-20 10:02:42','病人姓名5','手机号5','性别5','年龄5','医护工号5','医护姓名5','2021-02-20','手术内容5','手术地点5','备注5'),(86,'2021-02-20 10:02:42','病人姓名6','手机号6','性别6','年龄6','医护工号6','医护姓名6','2021-02-20','手术内容6','手术地点6','备注6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','8nx823lx4s8rx7ka0wxikuejhtni08ir','2021-02-20 10:03:52','2021-02-20 11:03:52'),(2,11,'1','yihurenyuan','管理员','6m1xrlq10xcywonjl0h1xs4pskui196q','2021-02-20 10:05:04','2021-02-20 11:05:04'),(3,31,'13811111111','bingren','病人','770zoowpjianhxxlvyyr7e76ejpp22vd','2021-02-20 10:05:54','2021-02-20 11:05:55');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-02-20 10:02:42');

/*Table structure for table `yaopinqingdan` */

DROP TABLE IF EXISTS `yaopinqingdan`;

CREATE TABLE `yaopinqingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingdanbianhao` varchar(200) DEFAULT NULL COMMENT '清单编号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yaopinqingdan` longtext COMMENT '药品清单',
  `zongjifeiyong` int(11) NOT NULL COMMENT '总计费用',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingdanbianhao` (`qingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1613786747011 DEFAULT CHARSET=utf8 COMMENT='药品清单';

/*Data for the table `yaopinqingdan` */

insert  into `yaopinqingdan`(`id`,`addtime`,`qingdanbianhao`,`bingrenxingming`,`shoujihao`,`yihugonghao`,`yihuxingming`,`yaopinqingdan`,`zongjifeiyong`,`ispay`) values (131,'2021-02-20 10:02:42','清单编号1','病人姓名1','手机号1','医护工号1','医护姓名1','药品清单1',1,'未支付'),(132,'2021-02-20 10:02:42','清单编号2','病人姓名2','手机号2','医护工号2','医护姓名2','药品清单2',2,'未支付'),(133,'2021-02-20 10:02:42','清单编号3','病人姓名3','手机号3','医护工号3','医护姓名3','药品清单3',3,'未支付'),(134,'2021-02-20 10:02:42','清单编号4','病人姓名4','手机号4','医护工号4','医护姓名4','药品清单4',4,'未支付'),(135,'2021-02-20 10:02:42','清单编号5','病人姓名5','手机号5','医护工号5','医护姓名5','药品清单5',5,'未支付'),(136,'2021-02-20 10:02:42','清单编号6','病人姓名6','手机号6','医护工号6','医护姓名6','药品清单6',6,'未支付'),(1613786747010,'2021-02-20 10:05:46','1613786746983','病人姓名1','13811111111','1','1','xxxx',200,'未支付');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `youxiaoqizhi` date DEFAULT NULL COMMENT '有效期至',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shiyongduixiang` varchar(200) DEFAULT NULL COMMENT '适用对象',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`yaopinleibie`,`tupian`,`guige`,`shengchanriqi`,`youxiaoqizhi`,`zhuyishixiang`,`shiyongduixiang`,`jiage`) values (91,'2021-02-20 10:02:42','药品编号1','药品名称1','药品类别1','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian1.jpg','规格1','2021-02-20','2021-02-20','注意事项1','适用对象1',1),(92,'2021-02-20 10:02:42','药品编号2','药品名称2','药品类别2','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian2.jpg','规格2','2021-02-20','2021-02-20','注意事项2','适用对象2',2),(93,'2021-02-20 10:02:42','药品编号3','药品名称3','药品类别3','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian3.jpg','规格3','2021-02-20','2021-02-20','注意事项3','适用对象3',3),(94,'2021-02-20 10:02:42','药品编号4','药品名称4','药品类别4','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian4.jpg','规格4','2021-02-20','2021-02-20','注意事项4','适用对象4',4),(95,'2021-02-20 10:02:42','药品编号5','药品名称5','药品类别5','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian5.jpg','规格5','2021-02-20','2021-02-20','注意事项5','适用对象5',5),(96,'2021-02-20 10:02:42','药品编号6','药品名称6','药品类别6','http://localhost:8080/ssm6m5x3/upload/yaopinxinxi_tupian6.jpg','规格6','2021-02-20','2021-02-20','注意事项6','适用对象6',6);

/*Table structure for table `yihurenyuan` */

DROP TABLE IF EXISTS `yihurenyuan`;

CREATE TABLE `yihurenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) NOT NULL COMMENT '医护工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yihuxingming` varchar(200) NOT NULL COMMENT '医护姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jianjie` longtext COMMENT '简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yihugonghao` (`yihugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='医护人员';

/*Data for the table `yihurenyuan` */

insert  into `yihurenyuan`(`id`,`addtime`,`yihugonghao`,`mima`,`yihuxingming`,`xingbie`,`zhiwei`,`zhaopian`,`keshi`,`lianxidianhua`,`jianjie`) values (11,'2021-02-20 10:02:42','1','1','1','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian1.jpg','科室1','13823888881','<p>简介1</p>'),(12,'2021-02-20 10:02:42','医护人员2','123456','医护姓名2','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian2.jpg','科室2','13823888882','简介2'),(13,'2021-02-20 10:02:42','医护人员3','123456','医护姓名3','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian3.jpg','科室3','13823888883','简介3'),(14,'2021-02-20 10:02:42','医护人员4','123456','医护姓名4','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian4.jpg','科室4','13823888884','简介4'),(15,'2021-02-20 10:02:42','医护人员5','123456','医护姓名5','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian5.jpg','科室5','13823888885','简介5'),(16,'2021-02-20 10:02:42','医护人员6','123456','医护姓名6','男','医生','http://localhost:8080/ssm6m5x3/upload/yihurenyuan_zhaopian6.jpg','科室6','13823888886','简介6');

/*Table structure for table `yiliaofeiyong` */

DROP TABLE IF EXISTS `yiliaofeiyong`;

CREATE TABLE `yiliaofeiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `bingfanghao` varchar(200) DEFAULT NULL COMMENT '病房号',
  `xiangmufeiyong` int(11) DEFAULT NULL COMMENT '项目费用',
  `jiancefeiyong` int(11) DEFAULT NULL COMMENT '检测费用',
  `yaofeifeiyong` int(11) DEFAULT NULL COMMENT '药费费用',
  `zongfeiyong` varchar(200) DEFAULT NULL COMMENT '总费用',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='医疗费用';

/*Data for the table `yiliaofeiyong` */

insert  into `yiliaofeiyong`(`id`,`addtime`,`bingrenxingming`,`shoujihao`,`bingfanghao`,`xiangmufeiyong`,`jiancefeiyong`,`yaofeifeiyong`,`zongfeiyong`,`yihugonghao`,`yihuxingming`,`beizhu`,`ispay`) values (121,'2021-02-20 10:02:42','病人姓名1','手机号1','病房号1',1,1,1,'总费用1','医护工号1','医护姓名1','备注1','未支付'),(122,'2021-02-20 10:02:42','病人姓名2','手机号2','病房号2',2,2,2,'总费用2','医护工号2','医护姓名2','备注2','未支付'),(123,'2021-02-20 10:02:42','病人姓名3','手机号3','病房号3',3,3,3,'总费用3','医护工号3','医护姓名3','备注3','未支付'),(124,'2021-02-20 10:02:42','病人姓名4','手机号4','病房号4',4,4,4,'总费用4','医护工号4','医护姓名4','备注4','未支付'),(125,'2021-02-20 10:02:42','病人姓名5','手机号5','病房号5',5,5,5,'总费用5','医护工号5','医护姓名5','备注5','未支付'),(126,'2021-02-20 10:02:42','病人姓名6','手机号6','病房号6',6,6,6,'总费用6','医护工号6','医护姓名6','备注6','未支付');

/*Table structure for table `yiqishebei` */

DROP TABLE IF EXISTS `yiqishebei`;

CREATE TABLE `yiqishebei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shebeibianhao` varchar(200) DEFAULT NULL COMMENT '设备编号',
  `shebeimingcheng` varchar(200) DEFAULT NULL COMMENT '设备名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shebeileixing` varchar(200) DEFAULT NULL COMMENT '设备类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `shebeixiangqing` longtext COMMENT '设备详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shebeibianhao` (`shebeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='仪器设备';

/*Data for the table `yiqishebei` */

insert  into `yiqishebei`(`id`,`addtime`,`shebeibianhao`,`shebeimingcheng`,`tupian`,`shebeileixing`,`yongtu`,`shengchanshang`,`keshi`,`zhuyishixiang`,`shebeixiangqing`) values (101,'2021-02-20 10:02:42','设备编号1','设备名称1','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian1.jpg','设备类型1','用途1','生产商1','科室1','注意事项1','设备详情1'),(102,'2021-02-20 10:02:42','设备编号2','设备名称2','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian2.jpg','设备类型2','用途2','生产商2','科室2','注意事项2','设备详情2'),(103,'2021-02-20 10:02:42','设备编号3','设备名称3','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian3.jpg','设备类型3','用途3','生产商3','科室3','注意事项3','设备详情3'),(104,'2021-02-20 10:02:42','设备编号4','设备名称4','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian4.jpg','设备类型4','用途4','生产商4','科室4','注意事项4','设备详情4'),(105,'2021-02-20 10:02:42','设备编号5','设备名称5','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian5.jpg','设备类型5','用途5','生产商5','科室5','注意事项5','设备详情5'),(106,'2021-02-20 10:02:42','设备编号6','设备名称6','http://localhost:8080/ssm6m5x3/upload/yiqishebei_tupian6.jpg','设备类型6','用途6','生产商6','科室6','注意事项6','设备详情6');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yizhuneirong` longtext COMMENT '医嘱内容',
  `yizhushijian` date DEFAULT NULL COMMENT '医嘱时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`addtime`,`bingrenxingming`,`shoujihao`,`xingbie`,`nianling`,`yihugonghao`,`yihuxingming`,`yizhuneirong`,`yizhushijian`) values (71,'2021-02-20 10:02:42','病人姓名1','手机号1','性别1','年龄1','医护工号1','医护姓名1','医嘱内容1','2021-02-20'),(72,'2021-02-20 10:02:42','病人姓名2','手机号2','性别2','年龄2','医护工号2','医护姓名2','医嘱内容2','2021-02-20'),(73,'2021-02-20 10:02:42','病人姓名3','手机号3','性别3','年龄3','医护工号3','医护姓名3','医嘱内容3','2021-02-20'),(74,'2021-02-20 10:02:42','病人姓名4','手机号4','性别4','年龄4','医护工号4','医护姓名4','医嘱内容4','2021-02-20'),(75,'2021-02-20 10:02:42','病人姓名5','手机号5','性别5','年龄5','医护工号5','医护姓名5','医嘱内容5','2021-02-20'),(76,'2021-02-20 10:02:42','病人姓名6','手机号6','性别6','年龄6','医护工号6','医护姓名6','医嘱内容6','2021-02-20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
