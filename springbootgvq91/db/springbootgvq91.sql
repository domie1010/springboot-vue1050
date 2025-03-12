-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootgvq91
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootgvq91`
--

/*!40000 DROP DATABASE IF EXISTS `springbootgvq91`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootgvq91` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootgvq91`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/1679046305667.jpeg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiuyezixun`
--

DROP TABLE IF EXISTS `discussjiuyezixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiuyezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046354375 DEFAULT CHARSET=utf8 COMMENT='就业资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiuyezixun`
--

LOCK TABLES `discussjiuyezixun` WRITE;
/*!40000 ALTER TABLE `discussjiuyezixun` DISABLE KEYS */;
INSERT INTO `discussjiuyezixun` VALUES (1679046354374,'2023-03-17 09:45:54',1679046001554,1679045962427,'upload/1679045927328.jpg','11','阿斯蒂芬111',NULL);
/*!40000 ALTER TABLE `discussjiuyezixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussqiuzhizixun`
--

DROP TABLE IF EXISTS `discussqiuzhizixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussqiuzhizixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046129394 DEFAULT CHARSET=utf8 COMMENT='求职资讯评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussqiuzhizixun`
--

LOCK TABLES `discussqiuzhizixun` WRITE;
/*!40000 ALTER TABLE `discussqiuzhizixun` DISABLE KEYS */;
INSERT INTO `discussqiuzhizixun` VALUES (1679046129393,'2023-03-17 09:42:09',1679046105376,1679045885630,'','22','阿斯蒂芬按时111','按时222222222222222222');
/*!40000 ALTER TABLE `discussqiuzhizixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuoleixing`
--

DROP TABLE IF EXISTS `gongzuoleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuoleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongzuoleixing` varchar(200) NOT NULL COMMENT '工作类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongzuoleixing` (`gongzuoleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='工作类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuoleixing`
--

LOCK TABLES `gongzuoleixing` WRITE;
/*!40000 ALTER TABLE `gongzuoleixing` DISABLE KEYS */;
INSERT INTO `gongzuoleixing` VALUES (31,'2023-03-17 09:35:10','工作类型1'),(32,'2023-03-17 09:35:10','工作类型2'),(33,'2023-03-17 09:35:10','工作类型3'),(34,'2023-03-17 09:35:10','工作类型4'),(35,'2023-03-17 09:35:10','工作类型5'),(36,'2023-03-17 09:35:10','工作类型6'),(37,'2023-03-17 09:35:10','工作类型7'),(38,'2023-03-17 09:35:10','技术工');
/*!40000 ALTER TABLE `gongzuoleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuyezhidao`
--

DROP TABLE IF EXISTS `jiuyezhidao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuyezhidao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `tupian` longtext COMMENT '图片',
  `zhengcewenjian` longtext COMMENT '政策文件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046270741 DEFAULT CHARSET=utf8 COMMENT='就业指导';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuyezhidao`
--

LOCK TABLES `jiuyezhidao` WRITE;
/*!40000 ALTER TABLE `jiuyezhidao` DISABLE KEYS */;
INSERT INTO `jiuyezhidao` VALUES (81,'2023-03-17 09:35:10','标题1','内容1','2023-03-17 17:35:10','发布人1','upload/jiuyezhidao_tupian1.jpg,upload/jiuyezhidao_tupian2.jpg,upload/jiuyezhidao_tupian3.jpg',''),(82,'2023-03-17 09:35:10','标题2','内容2','2023-03-17 17:35:10','发布人2','upload/jiuyezhidao_tupian2.jpg,upload/jiuyezhidao_tupian3.jpg,upload/jiuyezhidao_tupian4.jpg',''),(83,'2023-03-17 09:35:10','标题3','内容3','2023-03-17 17:35:10','发布人3','upload/jiuyezhidao_tupian3.jpg,upload/jiuyezhidao_tupian4.jpg,upload/jiuyezhidao_tupian5.jpg',''),(84,'2023-03-17 09:35:10','标题4','内容4','2023-03-17 17:35:10','发布人4','upload/jiuyezhidao_tupian4.jpg,upload/jiuyezhidao_tupian5.jpg,upload/jiuyezhidao_tupian6.jpg',''),(85,'2023-03-17 09:35:10','标题5','内容5','2023-03-17 17:35:10','发布人5','upload/jiuyezhidao_tupian5.jpg,upload/jiuyezhidao_tupian6.jpg,upload/jiuyezhidao_tupian7.jpg',''),(86,'2023-03-17 09:35:10','标题6','内容6','2023-03-17 17:35:10','发布人6','upload/jiuyezhidao_tupian6.jpg,upload/jiuyezhidao_tupian7.jpg,upload/jiuyezhidao_tupian8.jpg',''),(87,'2023-03-17 09:35:10','标题7','内容7','2023-03-17 17:35:10','发布人7','upload/jiuyezhidao_tupian7.jpg,upload/jiuyezhidao_tupian8.jpg,upload/jiuyezhidao_tupian9.jpg',''),(88,'2023-03-17 09:35:10','标题8','内容8','2023-03-17 17:35:10','发布人8','upload/jiuyezhidao_tupian8.jpg,upload/jiuyezhidao_tupian9.jpg,upload/jiuyezhidao_tupian10.jpg',''),(1679046270740,'2023-03-17 09:44:30','阿斯蒂芬阿斯蒂芬','<p>阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法</p>','2023-03-17 17:44:44','阿萨德','upload/1679046258961.jpeg','upload/1679046263801.doc');
/*!40000 ALTER TABLE `jiuyezhidao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiuyezixun`
--

DROP TABLE IF EXISTS `jiuyezixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiuyezixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `tupian` longtext COMMENT '图片',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `zhaopinrenshu` int(11) DEFAULT NULL COMMENT '招聘人数',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `gongzidaiyu` varchar(200) DEFAULT NULL COMMENT '工资待遇',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046001555 DEFAULT CHARSET=utf8 COMMENT='就业资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiuyezixun`
--

LOCK TABLES `jiuyezixun` WRITE;
/*!40000 ALTER TABLE `jiuyezixun` DISABLE KEYS */;
INSERT INTO `jiuyezixun` VALUES (41,'2023-03-17 09:35:10','岗位名称1','企业账号1','企业名称1','upload/jiuyezixun_tupian1.jpg,upload/jiuyezixun_tupian2.jpg,upload/jiuyezixun_tupian3.jpg','工作类型1','企业邮箱1','13823888881','联系人1',1,'职位要求1','工资待遇1','工作地点1','2023-03-17 17:35:10'),(42,'2023-03-17 09:35:10','岗位名称2','企业账号2','企业名称2','upload/jiuyezixun_tupian2.jpg,upload/jiuyezixun_tupian3.jpg,upload/jiuyezixun_tupian4.jpg','工作类型2','企业邮箱2','13823888882','联系人2',2,'职位要求2','工资待遇2','工作地点2','2023-03-17 17:35:10'),(43,'2023-03-17 09:35:10','岗位名称3','企业账号3','企业名称3','upload/jiuyezixun_tupian3.jpg,upload/jiuyezixun_tupian4.jpg,upload/jiuyezixun_tupian5.jpg','工作类型3','企业邮箱3','13823888883','联系人3',3,'职位要求3','工资待遇3','工作地点3','2023-03-17 17:35:10'),(44,'2023-03-17 09:35:10','岗位名称4','企业账号4','企业名称4','upload/jiuyezixun_tupian4.jpg,upload/jiuyezixun_tupian5.jpg,upload/jiuyezixun_tupian6.jpg','工作类型4','企业邮箱4','13823888884','联系人4',4,'职位要求4','工资待遇4','工作地点4','2023-03-17 17:35:10'),(45,'2023-03-17 09:35:10','岗位名称5','企业账号5','企业名称5','upload/jiuyezixun_tupian5.jpg,upload/jiuyezixun_tupian6.jpg,upload/jiuyezixun_tupian7.jpg','工作类型5','企业邮箱5','13823888885','联系人5',5,'职位要求5','工资待遇5','工作地点5','2023-03-17 17:37:18'),(46,'2023-03-17 09:35:10','岗位名称6','企业账号6','企业名称6','upload/jiuyezixun_tupian6.jpg,upload/jiuyezixun_tupian7.jpg,upload/jiuyezixun_tupian8.jpg','工作类型6','企业邮箱6','13823888886','联系人6',6,'职位要求6','工资待遇6','工作地点6','2023-03-17 17:35:10'),(47,'2023-03-17 09:35:10','岗位名称7','企业账号7','企业名称7','upload/jiuyezixun_tupian7.jpg,upload/jiuyezixun_tupian8.jpg,upload/jiuyezixun_tupian9.jpg','工作类型7','企业邮箱7','13823888887','联系人7',7,'职位要求7','工资待遇7','工作地点7','2023-03-17 17:35:10'),(48,'2023-03-17 09:35:10','岗位名称8','企业账号8','企业名称8','upload/jiuyezixun_tupian8.jpg,upload/jiuyezixun_tupian9.jpg,upload/jiuyezixun_tupian10.jpg','工作类型8','企业邮箱8','13823888888','联系人8',8,'职位要求8','工资待遇8','工作地点8','2023-03-17 17:35:10'),(1679046001554,'2023-03-17 09:40:01','阿斯蒂芬是','22','上海企业','upload/1679045985451.jpeg','技术工','1313@163.com','13933333333','李四',33,'<p>地方阿斯蒂芬阿斯蒂芬撒旦法撒</p><p><img src=\"http://localhost:8080/springbootgvq91/upload/1679045999787.jpeg\"></p>','20000-30000','阿斯蒂芬阿斯蒂芬','2023-03-17 17:45:50');
/*!40000 ALTER TABLE `jiuyezixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mianshiyaoqing`
--

DROP TABLE IF EXISTS `mianshiyaoqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mianshiyaoqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaoqingbiaoti` varchar(200) NOT NULL COMMENT '邀请标题',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yaoqingxiangqing` longtext NOT NULL COMMENT '邀请详情',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046162670 DEFAULT CHARSET=utf8 COMMENT='面试邀请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mianshiyaoqing`
--

LOCK TABLES `mianshiyaoqing` WRITE;
/*!40000 ALTER TABLE `mianshiyaoqing` DISABLE KEYS */;
INSERT INTO `mianshiyaoqing` VALUES (61,'2023-03-17 09:35:10','邀请标题1','企业账号1','企业名称1','13823888881','学号1','姓名1','邀请详情1','2023-03-17 17:35:10'),(62,'2023-03-17 09:35:10','邀请标题2','企业账号2','企业名称2','13823888882','学号2','姓名2','邀请详情2','2023-03-17 17:35:10'),(63,'2023-03-17 09:35:10','邀请标题3','企业账号3','企业名称3','13823888883','学号3','姓名3','邀请详情3','2023-03-17 17:35:10'),(64,'2023-03-17 09:35:10','邀请标题4','企业账号4','企业名称4','13823888884','学号4','姓名4','邀请详情4','2023-03-17 17:35:10'),(65,'2023-03-17 09:35:10','邀请标题5','企业账号5','企业名称5','13823888885','学号5','姓名5','邀请详情5','2023-03-17 17:35:10'),(66,'2023-03-17 09:35:10','邀请标题6','企业账号6','企业名称6','13823888886','学号6','姓名6','邀请详情6','2023-03-17 17:35:10'),(67,'2023-03-17 09:35:10','邀请标题7','企业账号7','企业名称7','13823888887','学号7','姓名7','邀请详情7','2023-03-17 17:35:10'),(68,'2023-03-17 09:35:10','邀请标题8','企业账号8','企业名称8','13823888888','学号8','姓名8','邀请详情8','2023-03-17 17:35:10'),(1679046123768,'2023-03-17 09:42:03','阿萨德发','22','上海企业','13933333333','11','张三','<p>阿斯蒂芬按时大事</p>','2023-03-17 17:42:38'),(1679046162669,'2023-03-17 09:42:42','222阿萨德发','22','上海企业','13933333333','11','张三','<p>阿斯蒂芬沙发大事 222222222222222222222</p>','2023-03-17 17:43:16');
/*!40000 ALTER TABLE `mianshiyaoqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='就业招聘会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2023-03-17 09:35:10','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(102,'2023-03-17 09:35:10','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(103,'2023-03-17 09:35:10','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(104,'2023-03-17 09:35:10','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(105,'2023-03-17 09:35:10','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(106,'2023-03-17 09:35:10','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(107,'2023-03-17 09:35:10','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(108,'2023-03-17 09:35:10','阿斯蒂芬阿斯蒂芬按时','阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法阿斯蒂芬撒旦法撒旦法','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuzhizixun`
--

DROP TABLE IF EXISTS `qiuzhizixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuzhizixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuzhibiaoti` varchar(200) DEFAULT NULL COMMENT '求职标题',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` longtext COMMENT '照片',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qiwangxinzi` varchar(200) DEFAULT NULL COMMENT '期望薪资',
  `gangweimingcheng` varchar(200) DEFAULT NULL COMMENT '岗位名称',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `huojiangzhengshu` varchar(200) DEFAULT NULL COMMENT '获奖证书',
  `gongzuojingyan` longtext COMMENT '工作经验',
  `gerenjianjie` longtext COMMENT '个人简介',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046105377 DEFAULT CHARSET=utf8 COMMENT='求职资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuzhizixun`
--

LOCK TABLES `qiuzhizixun` WRITE;
/*!40000 ALTER TABLE `qiuzhizixun` DISABLE KEYS */;
INSERT INTO `qiuzhizixun` VALUES (71,'2023-03-17 09:35:10','求职标题1','学号1','姓名1','性别1','upload/qiuzhizixun_zhaopian1.jpg,upload/qiuzhizixun_zhaopian2.jpg,upload/qiuzhizixun_zhaopian3.jpg','13823888881','期望薪资1','岗位名称1','工作地点1','教育背景1','获奖证书1','工作经验1','个人简介1','2023-03-17 17:35:10',1),(72,'2023-03-17 09:35:10','求职标题2','学号2','姓名2','性别2','upload/qiuzhizixun_zhaopian2.jpg,upload/qiuzhizixun_zhaopian3.jpg,upload/qiuzhizixun_zhaopian4.jpg','13823888882','期望薪资2','岗位名称2','工作地点2','教育背景2','获奖证书2','工作经验2','个人简介2','2023-03-17 17:35:10',2),(73,'2023-03-17 09:35:10','求职标题3','学号3','姓名3','性别3','upload/qiuzhizixun_zhaopian3.jpg,upload/qiuzhizixun_zhaopian4.jpg,upload/qiuzhizixun_zhaopian5.jpg','13823888883','期望薪资3','岗位名称3','工作地点3','教育背景3','获奖证书3','工作经验3','个人简介3','2023-03-17 17:37:11',4),(74,'2023-03-17 09:35:10','求职标题4','学号4','姓名4','性别4','upload/qiuzhizixun_zhaopian4.jpg,upload/qiuzhizixun_zhaopian5.jpg,upload/qiuzhizixun_zhaopian6.jpg','13823888884','期望薪资4','岗位名称4','工作地点4','教育背景4','获奖证书4','工作经验4','个人简介4','2023-03-17 17:35:10',4),(75,'2023-03-17 09:35:10','求职标题5','学号5','姓名5','性别5','upload/qiuzhizixun_zhaopian5.jpg,upload/qiuzhizixun_zhaopian6.jpg,upload/qiuzhizixun_zhaopian7.jpg','13823888885','期望薪资5','岗位名称5','工作地点5','教育背景5','获奖证书5','工作经验5','个人简介5','2023-03-17 17:35:10',5),(76,'2023-03-17 09:35:10','求职标题6','学号6','姓名6','性别6','upload/qiuzhizixun_zhaopian6.jpg,upload/qiuzhizixun_zhaopian7.jpg,upload/qiuzhizixun_zhaopian8.jpg','13823888886','期望薪资6','岗位名称6','工作地点6','教育背景6','获奖证书6','工作经验6','个人简介6','2023-03-17 17:35:10',6),(77,'2023-03-17 09:35:10','求职标题7','学号7','姓名7','性别7','upload/qiuzhizixun_zhaopian7.jpg,upload/qiuzhizixun_zhaopian8.jpg,upload/qiuzhizixun_zhaopian9.jpg','13823888887','期望薪资7','岗位名称7','工作地点7','教育背景7','获奖证书7','工作经验7','个人简介7','2023-03-17 17:35:10',7),(78,'2023-03-17 09:35:10','求职标题8','学号8','姓名8','性别8','upload/qiuzhizixun_zhaopian8.jpg,upload/qiuzhizixun_zhaopian9.jpg,upload/qiuzhizixun_zhaopian10.jpg','13823888888','期望薪资8','岗位名称8','工作地点8','教育背景8','获奖证书8','工作经验8','个人简介8','2023-03-17 17:40:39',9),(1679046105376,'2023-03-17 09:41:44','阿斯蒂芬沙发','11','张三','女','upload/1679046065539.jpg','13922222222','20000以上','阿斯蒂芬按时','阿斯蒂芬阿萨德','阿萨德发生的','阿萨德撒旦法撒的发的撒','<p>撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法</p>','<p>撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法撒旦法</p>','2023-03-17 17:45:58',3);
/*!40000 ALTER TABLE `qiuzhizixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `yingyezhizhao` longtext COMMENT '营业执照',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1679045885631 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (21,'2023-03-17 09:35:10','企业账号1','123456','企业名称1','upload/qiye_yingyezhizhao1.jpg','联系人1','13823888881','773890001@qq.com','企业地址1'),(22,'2023-03-17 09:35:10','企业账号2','123456','企业名称2','upload/qiye_yingyezhizhao2.jpg','联系人2','13823888882','773890002@qq.com','企业地址2'),(23,'2023-03-17 09:35:10','企业账号3','123456','企业名称3','upload/qiye_yingyezhizhao3.jpg','联系人3','13823888883','773890003@qq.com','企业地址3'),(24,'2023-03-17 09:35:10','企业账号4','123456','企业名称4','upload/qiye_yingyezhizhao4.jpg','联系人4','13823888884','773890004@qq.com','企业地址4'),(25,'2023-03-17 09:35:10','企业账号5','123456','企业名称5','upload/qiye_yingyezhizhao5.jpg','联系人5','13823888885','773890005@qq.com','企业地址5'),(26,'2023-03-17 09:35:10','企业账号6','123456','企业名称6','upload/qiye_yingyezhizhao6.jpg','联系人6','13823888886','773890006@qq.com','企业地址6'),(27,'2023-03-17 09:35:10','企业账号7','123456','企业名称7','upload/qiye_yingyezhizhao7.jpg','联系人7','13823888887','773890007@qq.com','企业地址7'),(28,'2023-03-17 09:35:10','企业账号8','123456','企业名称8','upload/1679046206597.jpg','联系人8','13823888888','773890008@qq.com','企业地址8'),(1679045885630,'2023-03-17 09:38:05','22','22','上海企业','upload/1679045865507.jpg','李四','13933333333','1313@163.com','上海浦东11号');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046131594 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1679046023118,'2023-03-17 09:40:22',1679045962427,1679046001554,'jiuyezixun','上海企业','upload/1679045985451.jpeg','1',NULL,NULL),(1679046131593,'2023-03-17 09:42:11',1679045885630,1679046105376,'qiuzhizixun','阿斯蒂芬沙发','upload/1679046065539.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1679045885630,'22','qiye','企业','io7t6wf5lmqyz3p4nuo9o6ngfr3s7idb','2023-03-17 09:39:26','2023-03-17 10:41:53'),(2,1679045962427,'11','xuesheng','学生','p2ou66h3hce2lx70bflwvczcroirq8ds','2023-03-17 09:40:10','2023-03-17 10:45:35'),(3,1,'admin','users','管理员','wmxwwtzgdvwebrymcb30eng4riqvmtx5','2023-03-17 09:43:10','2023-03-17 10:43:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toujianxinxi`
--

DROP TABLE IF EXISTS `toujianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toujianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbianhao` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `gongzuoleixing` varchar(200) DEFAULT NULL COMMENT '工作类型',
  `lianxidianhua` varchar(200) NOT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jianliwenjian` longtext COMMENT '简历文件',
  `toujianshijian` datetime DEFAULT NULL COMMENT '投简时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaopinbianhao` (`zhaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1679046033957 DEFAULT CHARSET=utf8 COMMENT='投简信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toujianxinxi`
--

LOCK TABLES `toujianxinxi` WRITE;
/*!40000 ALTER TABLE `toujianxinxi` DISABLE KEYS */;
INSERT INTO `toujianxinxi` VALUES (51,'2023-03-17 09:35:10','1111111111','岗位名称1','企业账号1','企业名称1','工作类型1','13823888881','企业邮箱1','学号1','姓名1','13823888881','','2023-03-17 17:35:10','是',''),(52,'2023-03-17 09:35:10','2222222222','岗位名称2','企业账号2','企业名称2','工作类型2','13823888882','企业邮箱2','学号2','姓名2','13823888882','','2023-03-17 17:35:10','是',''),(53,'2023-03-17 09:35:10','3333333333','岗位名称3','企业账号3','企业名称3','工作类型3','13823888883','企业邮箱3','学号3','姓名3','13823888883','','2023-03-17 17:35:10','是',''),(54,'2023-03-17 09:35:10','4444444444','岗位名称4','企业账号4','企业名称4','工作类型4','13823888884','企业邮箱4','学号4','姓名4','13823888884','','2023-03-17 17:35:10','是',''),(55,'2023-03-17 09:35:10','5555555555','岗位名称5','企业账号5','企业名称5','工作类型5','13823888885','企业邮箱5','学号5','姓名5','13823888885','','2023-03-17 17:35:10','是',''),(56,'2023-03-17 09:35:10','6666666666','岗位名称6','企业账号6','企业名称6','工作类型6','13823888886','企业邮箱6','学号6','姓名6','13823888886','','2023-03-17 17:35:10','是',''),(57,'2023-03-17 09:35:10','7777777777','岗位名称7','企业账号7','企业名称7','工作类型7','13823888887','企业邮箱7','学号7','姓名7','13823888887','','2023-03-17 17:35:10','是',''),(58,'2023-03-17 09:35:10','8888888888','岗位名称8','企业账号8','企业名称8','工作类型8','13823888888','企业邮箱8','学号8','姓名8','13823888888','','2023-03-17 17:35:10','是',''),(1679046033956,'2023-03-17 09:40:33','1679046065328','阿斯蒂芬是','22','上海企业','工作类型2','13933333333','1313@163.com','11','张三','13922222222','upload/1679046032198.doc','2023-03-17 17:41:05','是','阿斯蒂芬按时111');
/*!40000 ALTER TABLE `toujianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-17 09:35:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COMMENT '头像',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `zhuanyebanji` varchar(200) DEFAULT NULL COMMENT '专业班级',
  `siliujifenshu` varchar(200) DEFAULT NULL COMMENT '四六级分数',
  `jinengzhengshu` varchar(200) DEFAULT NULL COMMENT '技能证书',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1679045962428 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-03-17 09:35:10','学号1','123456','姓名1','男','13823888881','440300199101010001','upload/xuesheng_touxiang1.jpg','家庭住址1','专业班级1','四六级分数1','技能证书1'),(12,'2023-03-17 09:35:10','学号2','123456','姓名2','男','13823888882','440300199202020002','upload/xuesheng_touxiang2.jpg','家庭住址2','专业班级2','四六级分数2','技能证书2'),(13,'2023-03-17 09:35:10','学号3','123456','姓名3','男','13823888883','440300199303030003','upload/xuesheng_touxiang3.jpg','家庭住址3','专业班级3','四六级分数3','技能证书3'),(14,'2023-03-17 09:35:10','学号4','123456','姓名4','男','13823888884','440300199404040004','upload/xuesheng_touxiang4.jpg','家庭住址4','专业班级4','四六级分数4','技能证书4'),(15,'2023-03-17 09:35:10','学号5','123456','姓名5','男','13823888885','440300199505050005','upload/xuesheng_touxiang5.jpg','家庭住址5','专业班级5','四六级分数5','技能证书5'),(16,'2023-03-17 09:35:10','学号6','123456','姓名6','男','13823888886','440300199606060006','upload/xuesheng_touxiang6.jpg','家庭住址6','专业班级6','四六级分数6','技能证书6'),(17,'2023-03-17 09:35:10','学号7','123456','姓名7','男','13823888887','440300199707070007','upload/xuesheng_touxiang7.jpg','家庭住址7','专业班级7','四六级分数7','技能证书7'),(18,'2023-03-17 09:35:10','学号8','123456','姓名8','男','13823888888','440300199808080008','upload/xuesheng_touxiang8.jpg','家庭住址8','专业班级8','四六级分数8','技能证书8'),(1679045962427,'2023-03-17 09:39:22','11','11','张三','女','13922222222','412345678912345678','upload/1679045927328.jpg','上海浦东333号','通信技术101班','四级600','计算机一级');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 19:22:40
