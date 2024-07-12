/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t186`;
CREATE DATABASE IF NOT EXISTS `t186` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t186`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/picture1.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `emailregistercode`;
CREATE TABLE IF NOT EXISTS `emailregistercode` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `email` varchar(200) NOT NULL COMMENT '邮箱',
  `role` varchar(200) NOT NULL COMMENT '角色',
  `code` varchar(200) NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3 COMMENT='邮箱验证码';

DELETE FROM `emailregistercode`;
INSERT INTO `emailregistercode` (`id`, `addtime`, `email`, `role`, `code`) VALUES
	(121, '2022-03-15 07:27:35', '邮箱1', '角色1', '验证码1'),
	(122, '2022-03-15 07:27:35', '邮箱2', '角色2', '验证码2'),
	(123, '2022-03-15 07:27:35', '邮箱3', '角色3', '验证码3'),
	(124, '2022-03-15 07:27:35', '邮箱4', '角色4', '验证码4'),
	(125, '2022-03-15 07:27:35', '邮箱5', '角色5', '验证码5'),
	(126, '2022-03-15 07:27:35', '邮箱6', '角色6', '验证码6'),
	(127, '2022-03-15 07:30:03', '767180511@qq.com', '用户', '1314');

DROP TABLE IF EXISTS `fangjianxinxi`;
CREATE TABLE IF NOT EXISTS `fangjianxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianhao` (`fangjianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329478847 DEFAULT CHARSET=utf8mb3 COMMENT='房间信息';

DELETE FROM `fangjianxinxi`;
INSERT INTO `fangjianxinxi` (`id`, `addtime`, `fangjianhao`, `fangjianmingcheng`, `fangjianleixing`, `fangjianweizhi`, `zhuhuzhanghao`, `zhuhuxingming`, `shoujihaoma`, `shenfenzhenghao`) VALUES
	(21, '2022-03-15 07:27:34', '房间号1', '房间名称1', '房间类型1', '房间位置1', '住户账号1', '住户姓名1', '手机号码1', '身份证号1'),
	(22, '2022-03-15 07:27:34', '房间号2', '房间名称2', '房间类型2', '房间位置2', '住户账号2', '住户姓名2', '手机号码2', '身份证号2'),
	(23, '2022-03-15 07:27:34', '房间号3', '房间名称3', '房间类型3', '房间位置3', '住户账号3', '住户姓名3', '手机号码3', '身份证号3'),
	(24, '2022-03-15 07:27:34', '房间号4', '房间名称4', '房间类型4', '房间位置4', '住户账号4', '住户姓名4', '手机号码4', '身份证号4'),
	(25, '2022-03-15 07:27:34', '房间号5', '房间名称5', '房间类型5', '房间位置5', '住户账号5', '住户姓名5', '手机号码5', '身份证号5'),
	(26, '2022-03-15 07:27:34', '房间号6', '房间名称6', '房间类型6', '房间位置6', '住户账号6', '住户姓名6', '手机号码6', '身份证号6'),
	(1647329478846, '2022-03-15 07:31:18', '2413房', '一房', '一房一厅', '24楼', '11', '王强', '13823899996', '441456199002031456');

DROP TABLE IF EXISTS `gaipaishenqing`;
CREATE TABLE IF NOT EXISTS `gaipaishenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  `weixiuneirong` varchar(200) DEFAULT NULL COMMENT '维修内容',
  `shifouyouxian` varchar(200) DEFAULT NULL COMMENT '是否优先',
  `yaoqiubeizhu` varchar(200) DEFAULT NULL COMMENT '要求备注',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `weixiuzhanghao` varchar(200) DEFAULT NULL COMMENT '维修账号',
  `weixiuxingming` varchar(200) DEFAULT NULL COMMENT '维修姓名',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `gaipaiyuanyin` longtext COMMENT '改派原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329716060 DEFAULT CHARSET=utf8mb3 COMMENT='改派申请';

DELETE FROM `gaipaishenqing`;
INSERT INTO `gaipaishenqing` (`id`, `addtime`, `weixiubianhao`, `wupinmingcheng`, `weixiufenlei`, `weixiuneirong`, `shifouyouxian`, `yaoqiubeizhu`, `fangjianhao`, `fangjianleixing`, `fangjianmingcheng`, `fangjianweizhi`, `zhuhuzhanghao`, `zhuhuxingming`, `shoujihaoma`, `weixiuzhanghao`, `weixiuxingming`, `shenqingshijian`, `gaipaiyuanyin`, `sfsh`, `shhf`) VALUES
	(81, '2022-03-15 07:27:34', '维修编号1', '物品名称1', '维修分类1', '维修内容1', '是', '要求备注1', '房间号1', '房间类型1', '房间名称1', '房间位置1', '住户账号1', '住户姓名1', '手机号码1', '维修账号1', '维修姓名1', '2022-03-15 15:27:34', '改派原因1', '是', ''),
	(82, '2022-03-15 07:27:34', '维修编号2', '物品名称2', '维修分类2', '维修内容2', '是', '要求备注2', '房间号2', '房间类型2', '房间名称2', '房间位置2', '住户账号2', '住户姓名2', '手机号码2', '维修账号2', '维修姓名2', '2022-03-15 15:27:34', '改派原因2', '是', ''),
	(83, '2022-03-15 07:27:34', '维修编号3', '物品名称3', '维修分类3', '维修内容3', '是', '要求备注3', '房间号3', '房间类型3', '房间名称3', '房间位置3', '住户账号3', '住户姓名3', '手机号码3', '维修账号3', '维修姓名3', '2022-03-15 15:27:34', '改派原因3', '是', ''),
	(84, '2022-03-15 07:27:35', '维修编号4', '物品名称4', '维修分类4', '维修内容4', '是', '要求备注4', '房间号4', '房间类型4', '房间名称4', '房间位置4', '住户账号4', '住户姓名4', '手机号码4', '维修账号4', '维修姓名4', '2022-03-15 15:27:35', '改派原因4', '是', ''),
	(85, '2022-03-15 07:27:35', '维修编号5', '物品名称5', '维修分类5', '维修内容5', '是', '要求备注5', '房间号5', '房间类型5', '房间名称5', '房间位置5', '住户账号5', '住户姓名5', '手机号码5', '维修账号5', '维修姓名5', '2022-03-15 15:27:35', '改派原因5', '是', ''),
	(86, '2022-03-15 07:27:35', '维修编号6', '物品名称6', '维修分类6', '维修内容6', '是', '要求备注6', '房间号6', '房间类型6', '房间名称6', '房间位置6', '住户账号6', '住户姓名6', '手机号码6', '维修账号6', '维修姓名6', '2022-03-15 15:27:35', '改派原因6', '是', ''),
	(1647329716059, '2022-03-15 07:35:15', '1647329585919', '电视', '电工', '输入维修内容', '是', '输入要求备注信息', '2413房', '一房一厅', '一房', '24楼', '11', '王强', '13823899996', '001', '张三', '2022-03-15 15:35:06', '输入改派原因', '是', '同意改派');

DROP TABLE IF EXISTS `qingjiaxinxi`;
CREATE TABLE IF NOT EXISTS `qingjiaxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiuzhanghao` varchar(200) DEFAULT NULL COMMENT '维修账号',
  `weixiuxingming` varchar(200) DEFAULT NULL COMMENT '维修姓名',
  `qingjiariqi` date DEFAULT NULL COMMENT '请假日期',
  `qingjiatianshu` varchar(200) DEFAULT NULL COMMENT '请假天数',
  `qingjiayuanyin` longtext COMMENT '请假原因',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329889165 DEFAULT CHARSET=utf8mb3 COMMENT='请假信息';

DELETE FROM `qingjiaxinxi`;
INSERT INTO `qingjiaxinxi` (`id`, `addtime`, `weixiuzhanghao`, `weixiuxingming`, `qingjiariqi`, `qingjiatianshu`, `qingjiayuanyin`, `shenqingshijian`, `sfsh`, `shhf`) VALUES
	(91, '2022-03-15 07:27:35', '维修账号1', '维修姓名1', '2022-03-15', '请假天数1', '请假原因1', '2022-03-15 15:27:35', '是', ''),
	(92, '2022-03-15 07:27:35', '维修账号2', '维修姓名2', '2022-03-15', '请假天数2', '请假原因2', '2022-03-15 15:27:35', '是', ''),
	(93, '2022-03-15 07:27:35', '维修账号3', '维修姓名3', '2022-03-15', '请假天数3', '请假原因3', '2022-03-15 15:27:35', '是', ''),
	(94, '2022-03-15 07:27:35', '维修账号4', '维修姓名4', '2022-03-15', '请假天数4', '请假原因4', '2022-03-15 15:27:35', '是', ''),
	(95, '2022-03-15 07:27:35', '维修账号5', '维修姓名5', '2022-03-15', '请假天数5', '请假原因5', '2022-03-15 15:27:35', '是', ''),
	(96, '2022-03-15 07:27:35', '维修账号6', '维修姓名6', '2022-03-15', '请假天数6', '请假原因6', '2022-03-15 15:27:35', '是', ''),
	(1647329889164, '2022-03-15 07:38:08', '001', '张三', '2022-03-17', '1 天', '输入请假原因', '2022-03-15 15:37:58', '是', '同意请假');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1647329421542, '11', 'zhuhu', '住户', '0o7bpz3lcu0e86asourr7oum7r7p3xbd', '2022-03-15 07:30:27', '2022-03-15 08:37:18'),
	(2, 1, 'abo', 'users', '管理员', 's6r403xglrq9yuddbtz14fqgirvzr46b', '2022-03-15 07:30:43', '2024-05-14 09:01:04'),
	(3, 1647329506241, '001', 'weixiurenyuan', '维修人员', 'pfbjmwxdsg7joe4yl7sk1ne5aqv8zit2', '2022-03-15 07:34:56', '2022-03-15 08:37:54'),
	(4, 31, '维修账号1', 'weixiurenyuan', '维修人员', 'das2kra9oo7tdt15subkijv813250zoy', '2022-03-15 07:36:19', '2024-05-14 09:02:27'),
	(5, 11, '住户1', 'zhuhu', '住户', 'a1w4pixhqg3lcgesza53ghpctsowxf05', '2024-05-14 08:02:14', '2024-05-14 09:02:14');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-03-15 07:27:35');

DROP TABLE IF EXISTS `weixiufenlei`;
CREATE TABLE IF NOT EXISTS `weixiufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329529848 DEFAULT CHARSET=utf8mb3 COMMENT='维修分类';

DELETE FROM `weixiufenlei`;
INSERT INTO `weixiufenlei` (`id`, `addtime`, `weixiufenlei`) VALUES
	(41, '2022-03-15 07:27:34', '维修分类1'),
	(42, '2022-03-15 07:27:34', '维修分类2'),
	(43, '2022-03-15 07:27:34', '维修分类3'),
	(44, '2022-03-15 07:27:34', '维修分类4'),
	(45, '2022-03-15 07:27:34', '维修分类5'),
	(46, '2022-03-15 07:27:34', '维修分类6'),
	(1647329529847, '2022-03-15 07:32:09', '电工');

DROP TABLE IF EXISTS `weixiufenpei`;
CREATE TABLE IF NOT EXISTS `weixiufenpei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `shangchuantupian` varchar(200) DEFAULT NULL COMMENT '上传图片',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  `weixiuneirong` varchar(200) DEFAULT NULL COMMENT '维修内容',
  `shifouyouxian` varchar(200) DEFAULT NULL COMMENT '是否优先',
  `yaoqiubeizhu` varchar(200) DEFAULT NULL COMMENT '要求备注',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `weixiuzhanghao` varchar(200) DEFAULT NULL COMMENT '维修账号',
  `weixiuxingming` varchar(200) DEFAULT NULL COMMENT '维修姓名',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  `crossuserid` bigint DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329689109 DEFAULT CHARSET=utf8mb3 COMMENT='维修分配';

DELETE FROM `weixiufenpei`;
INSERT INTO `weixiufenpei` (`id`, `addtime`, `weixiubianhao`, `wupinmingcheng`, `shangchuantupian`, `weixiufenlei`, `weixiuneirong`, `shifouyouxian`, `yaoqiubeizhu`, `fangjianhao`, `fangjianleixing`, `fangjianmingcheng`, `fangjianweizhi`, `zhuhuzhanghao`, `zhuhuxingming`, `shoujihaoma`, `weixiuzhanghao`, `weixiuxingming`, `fenpeishijian`, `crossuserid`, `crossrefid`) VALUES
	(71, '2022-03-15 07:27:34', '维修编号1', '物品名称1', 'upload/weixiufenpei_shangchuantupian1.jpg', '维修分类1', '维修内容1', '是', '要求备注1', '房间号1', '房间类型1', '房间名称1', '房间位置1', '住户账号1', '住户姓名1', '手机号码1', '维修账号1', '维修姓名1', '2022-03-15 15:27:34', 1, 1),
	(72, '2022-03-15 07:27:34', '维修编号2', '物品名称2', 'upload/weixiufenpei_shangchuantupian2.jpg', '维修分类2', '维修内容2', '是', '要求备注2', '房间号2', '房间类型2', '房间名称2', '房间位置2', '住户账号2', '住户姓名2', '手机号码2', '维修账号2', '维修姓名2', '2022-03-15 15:27:34', 2, 2),
	(73, '2022-03-15 07:27:34', '维修编号3', '物品名称3', 'upload/weixiufenpei_shangchuantupian3.jpg', '维修分类3', '维修内容3', '是', '要求备注3', '房间号3', '房间类型3', '房间名称3', '房间位置3', '住户账号3', '住户姓名3', '手机号码3', '维修账号3', '维修姓名3', '2022-03-15 15:27:34', 3, 3),
	(74, '2022-03-15 07:27:34', '维修编号4', '物品名称4', 'upload/weixiufenpei_shangchuantupian4.jpg', '维修分类4', '维修内容4', '是', '要求备注4', '房间号4', '房间类型4', '房间名称4', '房间位置4', '住户账号4', '住户姓名4', '手机号码4', '维修账号4', '维修姓名4', '2022-03-15 15:27:34', 4, 4),
	(75, '2022-03-15 07:27:34', '维修编号5', '物品名称5', 'upload/weixiufenpei_shangchuantupian5.jpg', '维修分类5', '维修内容5', '是', '要求备注5', '房间号5', '房间类型5', '房间名称5', '房间位置5', '住户账号5', '住户姓名5', '手机号码5', '维修账号5', '维修姓名5', '2022-03-15 15:27:34', 5, 5),
	(76, '2022-03-15 07:27:34', '维修编号6', '物品名称6', 'upload/weixiufenpei_shangchuantupian6.jpg', '维修分类6', '维修内容6', '是', '要求备注6', '房间号6', '房间类型6', '房间名称6', '房间位置6', '住户账号6', '住户姓名6', '手机号码6', '维修账号6', '维修姓名6', '2022-03-15 15:27:34', 6, 6),
	(1647329689108, '2022-03-15 07:34:48', '1647329585919', '电视', 'upload/1647329592447.jpg', '电工', '输入维修内容', '是', '输入要求备注信息', '2413房', '一房一厅', '一房', '24楼', '11', '王强', '13823899996', '维修账号1', '维修姓名1', '2022-03-15 15:34:44', 1, 1647329612943);

DROP TABLE IF EXISTS `weixiujilu`;
CREATE TABLE IF NOT EXISTS `weixiujilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  `weixiuneirong` varchar(200) DEFAULT NULL COMMENT '维修内容',
  `shifouyouxian` varchar(200) DEFAULT NULL COMMENT '是否优先',
  `yaoqiubeizhu` varchar(200) DEFAULT NULL COMMENT '要求备注',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `weixiuzhanghao` varchar(200) DEFAULT NULL COMMENT '维修账号',
  `weixiuxingming` varchar(200) DEFAULT NULL COMMENT '维修姓名',
  `weixiushijian` datetime DEFAULT NULL COMMENT '维修时间',
  `weixiufeiyong` int DEFAULT NULL COMMENT '维修费用',
  `weixiujieguo` longtext COMMENT '维修结果',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329828380 DEFAULT CHARSET=utf8mb3 COMMENT='维修记录';

DELETE FROM `weixiujilu`;
INSERT INTO `weixiujilu` (`id`, `addtime`, `weixiubianhao`, `wupinmingcheng`, `weixiufenlei`, `weixiuneirong`, `shifouyouxian`, `yaoqiubeizhu`, `fangjianhao`, `fangjianleixing`, `fangjianmingcheng`, `fangjianweizhi`, `zhuhuzhanghao`, `zhuhuxingming`, `shoujihaoma`, `weixiuzhanghao`, `weixiuxingming`, `weixiushijian`, `weixiufeiyong`, `weixiujieguo`, `ispay`) VALUES
	(101, '2022-03-15 07:27:35', '维修编号1', '物品名称1', '维修分类1', '维修内容1', '是', '要求备注1', '房间号1', '房间类型1', '房间名称1', '房间位置1', '住户账号1', '住户姓名1', '手机号码1', '维修账号1', '维修姓名1', '2022-03-15 15:27:35', 1, '维修结果1', '未支付'),
	(102, '2022-03-15 07:27:35', '维修编号2', '物品名称2', '维修分类2', '维修内容2', '是', '要求备注2', '房间号2', '房间类型2', '房间名称2', '房间位置2', '住户账号2', '住户姓名2', '手机号码2', '维修账号2', '维修姓名2', '2022-03-15 15:27:35', 2, '维修结果2', '未支付'),
	(103, '2022-03-15 07:27:35', '维修编号3', '物品名称3', '维修分类3', '维修内容3', '是', '要求备注3', '房间号3', '房间类型3', '房间名称3', '房间位置3', '住户账号3', '住户姓名3', '手机号码3', '维修账号3', '维修姓名3', '2022-03-15 15:27:35', 3, '维修结果3', '未支付'),
	(104, '2022-03-15 07:27:35', '维修编号4', '物品名称4', '维修分类4', '维修内容4', '是', '要求备注4', '房间号4', '房间类型4', '房间名称4', '房间位置4', '住户账号4', '住户姓名4', '手机号码4', '维修账号4', '维修姓名4', '2022-03-15 15:27:35', 4, '维修结果4', '未支付'),
	(105, '2022-03-15 07:27:35', '维修编号5', '物品名称5', '维修分类5', '维修内容5', '是', '要求备注5', '房间号5', '房间类型5', '房间名称5', '房间位置5', '住户账号5', '住户姓名5', '手机号码5', '维修账号5', '维修姓名5', '2022-03-15 15:27:35', 5, '维修结果5', '未支付'),
	(106, '2022-03-15 07:27:35', '维修编号6', '物品名称6', '维修分类6', '维修内容6', '是', '要求备注6', '房间号6', '房间类型6', '房间名称6', '房间位置6', '住户账号6', '住户姓名6', '手机号码6', '维修账号6', '维修姓名6', '2022-03-15 15:27:35', 6, '维修结果6', '未支付'),
	(1647329828379, '2022-03-15 07:37:07', '1647329585919', '电视', '电工', '输入维修内容', '是', '输入要求备注信息', '2413房', '一房一厅', '一房', '24楼', '11', '王强', '13823899996', '维修账号1', '维修姓名1', '2022-03-15 15:36:26', 50, '输入维修结果内容', '已支付');

DROP TABLE IF EXISTS `weixiupingjia`;
CREATE TABLE IF NOT EXISTS `weixiupingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiuzhanghao` varchar(200) DEFAULT NULL COMMENT '维修账号',
  `weixiuxingming` varchar(200) DEFAULT NULL COMMENT '维修姓名',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `crossuserid` bigint DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329852549 DEFAULT CHARSET=utf8mb3 COMMENT='维修评价';

DELETE FROM `weixiupingjia`;
INSERT INTO `weixiupingjia` (`id`, `addtime`, `weixiubianhao`, `wupinmingcheng`, `weixiuzhanghao`, `weixiuxingming`, `pingjianeirong`, `pingjiashijian`, `zhuhuzhanghao`, `zhuhuxingming`, `crossuserid`, `crossrefid`) VALUES
	(111, '2022-03-15 07:27:35', '维修编号1', '物品名称1', '维修账号1', '维修姓名1', '评价内容1', '2022-03-15 15:27:35', '住户账号1', '住户姓名1', 1, 1),
	(112, '2022-03-15 07:27:35', '维修编号2', '物品名称2', '维修账号2', '维修姓名2', '评价内容2', '2022-03-15 15:27:35', '住户账号2', '住户姓名2', 2, 2),
	(113, '2022-03-15 07:27:35', '维修编号3', '物品名称3', '维修账号3', '维修姓名3', '评价内容3', '2022-03-15 15:27:35', '住户账号3', '住户姓名3', 3, 3),
	(114, '2022-03-15 07:27:35', '维修编号4', '物品名称4', '维修账号4', '维修姓名4', '评价内容4', '2022-03-15 15:27:35', '住户账号4', '住户姓名4', 4, 4),
	(115, '2022-03-15 07:27:35', '维修编号5', '物品名称5', '维修账号5', '维修姓名5', '评价内容5', '2022-03-15 15:27:35', '住户账号5', '住户姓名5', 5, 5),
	(116, '2022-03-15 07:27:35', '维修编号6', '物品名称6', '维修账号6', '维修姓名6', '评价内容6', '2022-03-15 15:27:35', '住户账号6', '住户姓名6', 6, 6),
	(1647329852548, '2022-03-15 07:37:31', '1647329585919', '电视', '维修账号1', '维修姓名1', '好', '2022-03-15 15:37:28', '11', '王强', 1647329421542, 1647329828379);

DROP TABLE IF EXISTS `weixiurenyuan`;
CREATE TABLE IF NOT EXISTS `weixiurenyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiuzhanghao` varchar(200) NOT NULL COMMENT '维修账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `weixiuxingming` varchar(200) NOT NULL COMMENT '维修姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329506242 DEFAULT CHARSET=utf8mb3 COMMENT='维修人员';

DELETE FROM `weixiurenyuan`;
INSERT INTO `weixiurenyuan` (`id`, `addtime`, `weixiuzhanghao`, `mima`, `weixiuxingming`, `touxiang`, `xingbie`, `lianxidianhua`, `shenfenzhenghao`, `weixiufenlei`) VALUES
	(31, '2022-03-15 07:27:34', '维修人员1', '123456', '维修姓名1', 'upload/weixiurenyuan_touxiang1.jpg', '男', '13823888881', '440300199101010001', '维修分类1'),
	(32, '2022-03-15 07:27:34', '维修人员2', '123456', '维修姓名2', 'upload/weixiurenyuan_touxiang2.jpg', '男', '13823888882', '440300199202020002', '维修分类2'),
	(33, '2022-03-15 07:27:34', '维修人员3', '123456', '维修姓名3', 'upload/weixiurenyuan_touxiang3.jpg', '男', '13823888883', '440300199303030003', '维修分类3'),
	(34, '2022-03-15 07:27:34', '维修人员4', '123456', '维修姓名4', 'upload/weixiurenyuan_touxiang4.jpg', '男', '13823888884', '440300199404040004', '维修分类4'),
	(35, '2022-03-15 07:27:34', '维修人员5', '123456', '维修姓名5', 'upload/weixiurenyuan_touxiang5.jpg', '男', '13823888885', '440300199505050005', '维修分类5'),
	(36, '2022-03-15 07:27:34', '维修人员6', '123456', '维修姓名6', 'upload/weixiurenyuan_touxiang6.jpg', '男', '13823888886', '440300199606060006', '维修分类6'),
	(1647329506241, '2022-03-15 07:31:46', '001', '123456', '张三', 'upload/1647329493243.jpg', '男', '13823877774', '441489198002145689', '维修分类2');

DROP TABLE IF EXISTS `weixiushenqing`;
CREATE TABLE IF NOT EXISTS `weixiushenqing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weixiubianhao` varchar(200) DEFAULT NULL COMMENT '维修编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `weixiufenlei` varchar(200) DEFAULT NULL COMMENT '维修分类',
  `shangchuantupian` varchar(200) DEFAULT NULL COMMENT '上传图片',
  `weixiuneirong` longtext COMMENT '维修内容',
  `shifouyouxian` varchar(200) DEFAULT NULL COMMENT '是否优先',
  `yaoqiubeizhu` longtext COMMENT '要求备注',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianweizhi` varchar(200) DEFAULT NULL COMMENT '房间位置',
  `zhuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '住户账号',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weixiubianhao` (`weixiubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329612944 DEFAULT CHARSET=utf8mb3 COMMENT='维修申请';

DELETE FROM `weixiushenqing`;
INSERT INTO `weixiushenqing` (`id`, `addtime`, `weixiubianhao`, `wupinmingcheng`, `weixiufenlei`, `shangchuantupian`, `weixiuneirong`, `shifouyouxian`, `yaoqiubeizhu`, `fangjianhao`, `fangjianleixing`, `fangjianmingcheng`, `fangjianweizhi`, `zhuhuzhanghao`, `zhuhuxingming`, `shoujihaoma`, `sfsh`, `shhf`) VALUES
	(61, '2022-03-15 07:27:34', '1111111111', '物品名称1', '维修分类1', 'upload/weixiushenqing_shangchuantupian1.jpg', '维修内容1', '是', '要求备注1', '房间号1', '房间类型1', '房间名称1', '房间位置1', '住户账号1', '住户姓名1', '手机号码1', '是', ''),
	(62, '2022-03-15 07:27:34', '2222222222', '物品名称2', '维修分类2', 'upload/weixiushenqing_shangchuantupian2.jpg', '维修内容2', '是', '要求备注2', '房间号2', '房间类型2', '房间名称2', '房间位置2', '住户账号2', '住户姓名2', '手机号码2', '是', ''),
	(63, '2022-03-15 07:27:34', '3333333333', '物品名称3', '维修分类3', 'upload/weixiushenqing_shangchuantupian3.jpg', '维修内容3', '是', '要求备注3', '房间号3', '房间类型3', '房间名称3', '房间位置3', '住户账号3', '住户姓名3', '手机号码3', '是', ''),
	(64, '2022-03-15 07:27:34', '4444444444', '物品名称4', '维修分类4', 'upload/weixiushenqing_shangchuantupian4.jpg', '维修内容4', '是', '要求备注4', '房间号4', '房间类型4', '房间名称4', '房间位置4', '住户账号4', '住户姓名4', '手机号码4', '是', ''),
	(65, '2022-03-15 07:27:34', '5555555555', '物品名称5', '维修分类5', 'upload/weixiushenqing_shangchuantupian5.jpg', '维修内容5', '是', '要求备注5', '房间号5', '房间类型5', '房间名称5', '房间位置5', '住户账号5', '住户姓名5', '手机号码5', '是', ''),
	(66, '2022-03-15 07:27:34', '6666666666', '物品名称6', '维修分类6', 'upload/weixiushenqing_shangchuantupian6.jpg', '维修内容6', '是', '要求备注6', '房间号6', '房间类型6', '房间名称6', '房间位置6', '住户账号6', '住户姓名6', '手机号码6', '是', ''),
	(1647329612943, '2022-03-15 07:33:32', '1647329585919', '电视', '电工', 'upload/1647329592447.jpg', '输入维修内容', '是', '输入要求备注信息', '2413房', '一房一厅', '一房', '24楼', '11', '王强', '13823899996', '是', '会安排维修人员上门维修');

DROP TABLE IF EXISTS `wupinxinxi`;
CREATE TABLE IF NOT EXISTS `wupinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinbianhao` varchar(200) DEFAULT NULL COMMENT '物品编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `wupinxiangqing` longtext COMMENT '物品详情',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wupinbianhao` (`wupinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329555328 DEFAULT CHARSET=utf8mb3 COMMENT='物品信息';

DELETE FROM `wupinxinxi`;
INSERT INTO `wupinxinxi` (`id`, `addtime`, `wupinbianhao`, `wupinmingcheng`, `shuliang`, `wupinxiangqing`, `dengjishijian`, `beizhu`) VALUES
	(51, '2022-03-15 07:27:34', '1111111111', '物品名称1', 1, '物品详情1', '2022-03-15 15:27:34', '备注1'),
	(52, '2022-03-15 07:27:34', '2222222222', '物品名称2', 2, '物品详情2', '2022-03-15 15:27:34', '备注2'),
	(53, '2022-03-15 07:27:34', '3333333333', '物品名称3', 3, '物品详情3', '2022-03-15 15:27:34', '备注3'),
	(54, '2022-03-15 07:27:34', '4444444444', '物品名称4', 4, '物品详情4', '2022-03-15 15:27:34', '备注4'),
	(55, '2022-03-15 07:27:34', '5555555555', '物品名称5', 5, '物品详情5', '2022-03-15 15:27:34', '备注5'),
	(56, '2022-03-15 07:27:34', '6666666666', '物品名称6', 6, '物品详情6', '2022-03-15 15:27:34', '备注6'),
	(1647329555327, '2022-03-15 07:32:34', '1647329535592', '电视', 10, '<p>这里输入物品详情</p>', '2022-03-15 15:32:15', NULL);

DROP TABLE IF EXISTS `zhuhu`;
CREATE TABLE IF NOT EXISTS `zhuhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuhuzhanghao` varchar(200) NOT NULL COMMENT '住户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhuhuxingming` varchar(200) DEFAULT NULL COMMENT '住户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuhuzhanghao` (`zhuhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1647329421543 DEFAULT CHARSET=utf8mb3 COMMENT='住户';

DELETE FROM `zhuhu`;
INSERT INTO `zhuhu` (`id`, `addtime`, `zhuhuzhanghao`, `mima`, `zhuhuxingming`, `touxiang`, `xingbie`, `shoujihaoma`, `shenfenzhenghao`, `email`) VALUES
	(11, '2022-03-15 07:27:34', '住户1', '123456', '住户姓名1', 'upload/zhuhu_touxiang1.jpg', '男', '13823888881', '440300199101010001', '773890001@qq.com'),
	(12, '2022-03-15 07:27:34', '住户2', '123456', '住户姓名2', 'upload/zhuhu_touxiang2.jpg', '男', '13823888882', '440300199202020002', '773890002@qq.com'),
	(13, '2022-03-15 07:27:34', '住户3', '123456', '住户姓名3', 'upload/zhuhu_touxiang3.jpg', '男', '13823888883', '440300199303030003', '773890003@qq.com'),
	(14, '2022-03-15 07:27:34', '住户4', '123456', '住户姓名4', 'upload/zhuhu_touxiang4.jpg', '男', '13823888884', '440300199404040004', '773890004@qq.com'),
	(15, '2022-03-15 07:27:34', '住户5', '123456', '住户姓名5', 'upload/zhuhu_touxiang5.jpg', '男', '13823888885', '440300199505050005', '773890005@qq.com'),
	(16, '2022-03-15 07:27:34', '住户6', '123456', '住户姓名6', 'upload/zhuhu_touxiang6.jpg', '男', '13823888886', '440300199606060006', '773890006@qq.com'),
	(1647329421542, '2022-03-15 07:30:21', '11', '123456', '王强', 'upload/1647329432659.jpg', '男', '13823899996', '441456199002031456', '767180511@qq.com');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
