/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - ssm6a212
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6a212` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6a212`;

/*Table structure for table `baomingxinxi` */

DROP TABLE IF EXISTS `baomingxinxi`;

CREATE TABLE `baomingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `baomingrenyuan` varchar(200) DEFAULT NULL COMMENT '报名人员',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='报名信息';

/*Data for the table `baomingxinxi` */

insert  into `baomingxinxi`(`id`,`addtime`,`zhanghao`,`qiyezhanghao`,`baomingrenyuan`,`gongsimingcheng`,`lianxiren`,`lianxidianhua`,`sfsh`,`shhf`,`userid`) values (81,'2021-05-25 17:18:51','账号1','企业账号1','报名人员1','公司名称1','联系人1','13823888881','是','',1),(82,'2021-05-25 17:18:51','账号2','企业账号2','报名人员2','公司名称2','联系人2','13823888882','是','',2),(83,'2021-05-25 17:18:51','账号3','企业账号3','报名人员3','公司名称3','联系人3','13823888883','是','',3),(84,'2021-05-25 17:18:51','账号4','企业账号4','报名人员4','公司名称4','联系人4','13823888884','是','',4),(85,'2021-05-25 17:18:51','账号5','企业账号5','报名人员5','公司名称5','联系人5','13823888885','是','',5),(86,'2021-05-25 17:18:51','账号6','企业账号6','报名人员6','公司名称6','联系人6','13823888886','是','',6);

/*Table structure for table `changdileixing` */

DROP TABLE IF EXISTS `changdileixing`;

CREATE TABLE `changdileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `changdileixing` (`changdileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='场地类型';

/*Data for the table `changdileixing` */

insert  into `changdileixing`(`id`,`addtime`,`changdileixing`) values (41,'2021-05-25 17:18:51','场地类型1'),(42,'2021-05-25 17:18:51','场地类型2'),(43,'2021-05-25 17:18:51','场地类型3'),(44,'2021-05-25 17:18:51','场地类型4'),(45,'2021-05-25 17:18:51','场地类型5'),(46,'2021-05-25 17:18:51','场地类型6');

/*Table structure for table `changdixinxi` */

DROP TABLE IF EXISTS `changdixinxi`;

CREATE TABLE `changdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `changdimingcheng` varchar(200) NOT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) NOT NULL COMMENT '场地类型',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `changdizhuangtai` varchar(200) NOT NULL COMMENT '场地状态',
  `changdiquyu` varchar(200) NOT NULL COMMENT '场地区域',
  `rongnarenshu` varchar(200) DEFAULT NULL COMMENT '容纳人数',
  `changdifeiyong` int(11) NOT NULL COMMENT '场地费用',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `changdixiangqing` longtext COMMENT '场地详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='场地信息';

/*Data for the table `changdixinxi` */

insert  into `changdixinxi`(`id`,`addtime`,`changdimingcheng`,`changdileixing`,`changditupian`,`changdizhuangtai`,`changdiquyu`,`rongnarenshu`,`changdifeiyong`,`keyueshijian`,`lianxidianhua`,`changdixiangqing`,`clicktime`,`clicknum`) values (31,'2021-05-25 17:18:51','场地名称1','场地类型1','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian1.jpg','可预约','场地区域1','容纳人数1',1,'可约时间1','13823888881','场地详情1','2021-05-25 17:18:51',1),(32,'2021-05-25 17:18:51','场地名称2','场地类型2','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian2.jpg','可预约','场地区域2','容纳人数2',2,'可约时间2','13823888882','场地详情2','2021-05-25 17:18:51',2),(33,'2021-05-25 17:18:51','场地名称3','场地类型3','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian3.jpg','可预约','场地区域3','容纳人数3',3,'可约时间3','13823888883','场地详情3','2021-05-25 17:18:51',3),(34,'2021-05-25 17:18:51','场地名称4','场地类型4','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian4.jpg','可预约','场地区域4','容纳人数4',4,'可约时间4','13823888884','场地详情4','2021-05-25 17:18:51',4),(35,'2021-05-25 17:18:51','场地名称5','场地类型5','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian5.jpg','可预约','场地区域5','容纳人数5',5,'可约时间5','13823888885','场地详情5','2021-05-25 17:18:51',5),(36,'2021-05-25 17:18:51','场地名称6','场地类型6','http://localhost:8080/ssm6a212/upload/changdixinxi_changditupian6.jpg','可预约','场地区域6','容纳人数6',6,'可约时间6','13823888886','场地详情6','2021-05-25 17:18:51',6);

/*Table structure for table `changdiyuyue` */

DROP TABLE IF EXISTS `changdiyuyue`;

CREATE TABLE `changdiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changdileixing` varchar(200) DEFAULT NULL COMMENT '场地类型',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `huiyizhuti` varchar(200) DEFAULT NULL COMMENT '会议主体',
  `canhuirenshu` int(11) DEFAULT NULL COMMENT '参会人数',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `changdifeiyong` int(11) DEFAULT NULL COMMENT '场地费用',
  `shiyongshijian` datetime DEFAULT NULL COMMENT '使用时间',
  `shiyongshizhang` float DEFAULT NULL COMMENT '使用时长',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='场地预约';

/*Data for the table `changdiyuyue` */

insert  into `changdiyuyue`(`id`,`addtime`,`qiyezhanghao`,`changdimingcheng`,`changdileixing`,`changditupian`,`huiyizhuti`,`canhuirenshu`,`lianxiren`,`lianxifangshi`,`changdifeiyong`,`shiyongshijian`,`shiyongshizhang`,`zongji`,`beizhu`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-05-25 17:18:51','企业账号1','场地名称1','场地类型1','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian1.jpg','会议主体1',1,'联系人1','13823888881',1,'2021-05-25 17:18:51',1,'总计1','备注1','是','','未支付',1),(62,'2021-05-25 17:18:51','企业账号2','场地名称2','场地类型2','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian2.jpg','会议主体2',2,'联系人2','13823888882',2,'2021-05-25 17:18:51',2,'总计2','备注2','是','','未支付',2),(63,'2021-05-25 17:18:51','企业账号3','场地名称3','场地类型3','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian3.jpg','会议主体3',3,'联系人3','13823888883',3,'2021-05-25 17:18:51',3,'总计3','备注3','是','','未支付',3),(64,'2021-05-25 17:18:51','企业账号4','场地名称4','场地类型4','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian4.jpg','会议主体4',4,'联系人4','13823888884',4,'2021-05-25 17:18:51',4,'总计4','备注4','是','','未支付',4),(65,'2021-05-25 17:18:51','企业账号5','场地名称5','场地类型5','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian5.jpg','会议主体5',5,'联系人5','13823888885',5,'2021-05-25 17:18:51',5,'总计5','备注5','是','','未支付',5),(66,'2021-05-25 17:18:51','企业账号6','场地名称6','场地类型6','http://localhost:8080/ssm6a212/upload/changdiyuyue_changditupian6.jpg','会议主体6',6,'联系人6','13823888886',6,'2021-05-25 17:18:51',6,'总计6','备注6','是','','未支付',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6a212/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm6a212/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6a212/upload/picture3.jpg');

/*Table structure for table `discusschangdixinxi` */

DROP TABLE IF EXISTS `discusschangdixinxi`;

CREATE TABLE `discusschangdixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='场地信息评论表';

/*Data for the table `discusschangdixinxi` */

insert  into `discusschangdixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-25 17:18:51',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-05-25 17:18:51',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-05-25 17:18:51',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-05-25 17:18:51',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-05-25 17:18:51',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-05-25 17:18:51',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusshuodongxinxi` */

DROP TABLE IF EXISTS `discusshuodongxinxi`;

CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';

/*Data for the table `discusshuodongxinxi` */

insert  into `discusshuodongxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-05-25 17:18:51',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-05-25 17:18:51',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-05-25 17:18:51',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-05-25 17:18:51',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-05-25 17:18:51',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-05-25 17:18:51',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

/*Table structure for table `huodongxinxi` */

DROP TABLE IF EXISTS `huodongxinxi`;

CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `huodongbiaoti` varchar(200) DEFAULT NULL COMMENT '活动标题',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `huodongneirong` longtext COMMENT '活动内容',
  `huodongkaishishijian` datetime DEFAULT NULL COMMENT '活动开始时间',
  `huodongjieshushijian` datetime DEFAULT NULL COMMENT '活动结束时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `huodongxinxi` */

insert  into `huodongxinxi`(`id`,`addtime`,`qiyezhanghao`,`huodongbiaoti`,`fabushijian`,`qiyemingcheng`,`huodongneirong`,`huodongkaishishijian`,`huodongjieshushijian`,`fengmian`,`clicktime`,`clicknum`,`userid`) values (71,'2021-05-25 17:18:51','企业账号1','活动标题1','2021-05-25','企业名称1','活动内容1','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian1.jpg','2021-05-25 17:18:51',1,1),(72,'2021-05-25 17:18:51','企业账号2','活动标题2','2021-05-25','企业名称2','活动内容2','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian2.jpg','2021-05-25 17:18:51',2,2),(73,'2021-05-25 17:18:51','企业账号3','活动标题3','2021-05-25','企业名称3','活动内容3','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian3.jpg','2021-05-25 17:18:51',3,3),(74,'2021-05-25 17:18:51','企业账号4','活动标题4','2021-05-25','企业名称4','活动内容4','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian4.jpg','2021-05-25 17:18:51',4,4),(75,'2021-05-25 17:18:51','企业账号5','活动标题5','2021-05-25','企业名称5','活动内容5','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian5.jpg','2021-05-25 17:18:51',5,5),(76,'2021-05-25 17:18:51','企业账号6','活动标题6','2021-05-25','企业名称6','活动内容6','2021-05-25 17:18:51','2021-05-25 17:18:51','http://localhost:8080/ssm6a212/upload/huodongxinxi_fengmian6.jpg','2021-05-25 17:18:51',6,6);

/*Table structure for table `qiye` */

DROP TABLE IF EXISTS `qiye`;

CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyeguimo` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qiyetupian` varchar(200) DEFAULT NULL COMMENT '企业图片',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `qiyejianjie` longtext COMMENT '企业简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='企业';

/*Data for the table `qiye` */

insert  into `qiye`(`id`,`addtime`,`qiyezhanghao`,`mima`,`qiyemingcheng`,`qiyedizhi`,`qiyeguimo`,`fuzeren`,`shouji`,`qiyetupian`,`youxiang`,`qiyejianjie`) values (21,'2021-05-25 17:18:50','企业1','e10adc3949ba59abbe56e057f20f883e','企业名称1','企业地址1','企业规模1','负责人1','13823888881','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian1.jpg','773890001@qq.com','企业简介1'),(22,'2021-05-25 17:18:50','企业2','e10adc3949ba59abbe56e057f20f883e','企业名称2','企业地址2','企业规模2','负责人2','13823888882','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian2.jpg','773890002@qq.com','企业简介2'),(23,'2021-05-25 17:18:50','企业3','e10adc3949ba59abbe56e057f20f883e','企业名称3','企业地址3','企业规模3','负责人3','13823888883','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian3.jpg','773890003@qq.com','企业简介3'),(24,'2021-05-25 17:18:50','企业4','e10adc3949ba59abbe56e057f20f883e','企业名称4','企业地址4','企业规模4','负责人4','13823888884','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian4.jpg','773890004@qq.com','企业简介4'),(25,'2021-05-25 17:18:50','企业5','e10adc3949ba59abbe56e057f20f883e','企业名称5','企业地址5','企业规模5','负责人5','13823888885','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian5.jpg','773890005@qq.com','企业简介5'),(26,'2021-05-25 17:18:50','企业6','e10adc3949ba59abbe56e057f20f883e','企业名称6','企业地址6','企业规模6','负责人6','13823888886','http://localhost:8080/ssm6a212/upload/qiye_qiyetupian6.jpg','773890006@qq.com','企业简介6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','g0whtlrfe2v2c2z7fw4eyawg8wqu3ehb','2021-09-13 11:06:19','2021-09-13 12:06:20'),(2,11,'1','yonghu','用户','3np3etnch5yk199yoxb0ia2wsflmdupl','2021-09-13 11:07:42','2021-09-13 12:07:42');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-25 17:18:51');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`) values (11,'2021-05-25 17:18:50','1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-05-25 17:18:50','用户2','e10adc3949ba59abbe56e057f20f883e','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-05-25 17:18:50','用户3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-05-25 17:18:50','用户4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-05-25 17:18:50','用户5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-05-25 17:18:50','用户6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm6a212/upload/yonghu_zhaopian6.jpg','备注6');

/*Table structure for table `yuyuecanguan` */

DROP TABLE IF EXISTS `yuyuecanguan`;

CREATE TABLE `yuyuecanguan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `changdimingcheng` varchar(200) DEFAULT NULL COMMENT '场地名称',
  `changditupian` varchar(200) DEFAULT NULL COMMENT '场地图片',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `daibiaoshenfen` varchar(200) DEFAULT NULL COMMENT '代表身份',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  `canguanmude` varchar(200) DEFAULT NULL COMMENT '参观目的',
  `canguanshijian` datetime DEFAULT NULL COMMENT '参观时间',
  `gongsixianyouyuangongshu` varchar(200) DEFAULT NULL COMMENT '公司现有员工数',
  `suoxugongweishu` varchar(200) DEFAULT NULL COMMENT '所需工位数',
  `cheliangxinxi` varchar(200) DEFAULT NULL COMMENT '车辆信息',
  `qitarenyuan` varchar(200) DEFAULT NULL COMMENT '其他人员',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='预约参观';

/*Data for the table `yuyuecanguan` */

insert  into `yuyuecanguan`(`id`,`addtime`,`qiyezhanghao`,`bianhao`,`changdimingcheng`,`changditupian`,`xingming`,`shouji`,`daibiaoshenfen`,`gongsimingcheng`,`zhiwu`,`canguanmude`,`canguanshijian`,`gongsixianyouyuangongshu`,`suoxugongweishu`,`cheliangxinxi`,`qitarenyuan`,`shoujihao`,`beizhu`,`sfsh`,`shhf`,`userid`) values (51,'2021-05-25 17:18:51','企业账号1','编号1','场地名称1','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian1.jpg','姓名1','13823888881','个人','公司名称1','职务1','参观目的1','2021-05-25 17:18:51','公司现有员工数1','所需工位数1','车辆信息1','其他人员1','13823888881','备注1','是','',1),(52,'2021-05-25 17:18:51','企业账号2','编号2','场地名称2','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian2.jpg','姓名2','13823888882','个人','公司名称2','职务2','参观目的2','2021-05-25 17:18:51','公司现有员工数2','所需工位数2','车辆信息2','其他人员2','13823888882','备注2','是','',2),(53,'2021-05-25 17:18:51','企业账号3','编号3','场地名称3','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian3.jpg','姓名3','13823888883','个人','公司名称3','职务3','参观目的3','2021-05-25 17:18:51','公司现有员工数3','所需工位数3','车辆信息3','其他人员3','13823888883','备注3','是','',3),(54,'2021-05-25 17:18:51','企业账号4','编号4','场地名称4','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian4.jpg','姓名4','13823888884','个人','公司名称4','职务4','参观目的4','2021-05-25 17:18:51','公司现有员工数4','所需工位数4','车辆信息4','其他人员4','13823888884','备注4','是','',4),(55,'2021-05-25 17:18:51','企业账号5','编号5','场地名称5','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian5.jpg','姓名5','13823888885','个人','公司名称5','职务5','参观目的5','2021-05-25 17:18:51','公司现有员工数5','所需工位数5','车辆信息5','其他人员5','13823888885','备注5','是','',5),(56,'2021-05-25 17:18:51','企业账号6','编号6','场地名称6','http://localhost:8080/ssm6a212/upload/yuyuecanguan_changditupian6.jpg','姓名6','13823888886','个人','公司名称6','职务6','参观目的6','2021-05-25 17:18:51','公司现有员工数6','所需工位数6','车辆信息6','其他人员6','13823888886','备注6','是','',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
