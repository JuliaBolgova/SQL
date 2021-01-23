drop database if exists booking;
create database booking;
use booking;
show databases;
show tables;

#
# TABLE STRUCTURE FOR: age_limits
#

#
# TABLE STRUCTURE FOR: titles
#

DROP TABLE IF EXISTS `titles`;

CREATE TABLE `titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Name',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Users titles';

INSERT INTO `titles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Mr', '2021-01-22 21:07:11', '2021-01-22 21:07:11');
INSERT INTO `titles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Ms', '2021-01-22 21:07:11', '2021-01-22 21:07:11');
INSERT INTO `titles` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Mrs', '2021-01-22 21:07:11', '2021-01-22 21:07:11');


DROP TABLE IF EXISTS `age_limits`;

CREATE TABLE `age_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Age permission';

INSERT INTO `age_limits` (`id`, `value`) VALUES (1, 'all ages');
INSERT INTO `age_limits` (`id`, `value`) VALUES (2, 'only over 18 years old');

#
# TABLE STRUCTURE FOR: genders
#

DROP TABLE IF EXISTS `genders`;

CREATE TABLE `genders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Name',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Users genders';

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Male', '2021-01-22 21:07:11', '2021-01-22 21:07:11');
INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Female', '2021-01-22 21:07:11', '2021-01-22 21:07:11');
INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Not specified', '2021-01-22 21:07:11', '2021-01-22 21:07:11');

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '1995-09-03 13:35:21', '2019-11-15 01:11:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '2003-12-23 03:07:49', '2018-02-25 11:32:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'picture', '1982-12-01 18:02:29', '1988-02-26 22:52:21');


#
# TABLE STRUCTURE FOR: animals
#

DROP TABLE IF EXISTS `animals`;

CREATE TABLE `animals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Animals permission';

INSERT INTO `animals` (`id`, `value`) VALUES (1, 'allowed');
INSERT INTO `animals` (`id`, `value`) VALUES (2, 'prohibited');

#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (288, 'praesentium', 4886, '9', 1, '2015-06-22 21:39:01', '1985-08-21 08:55:58');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (289, 'aut', 239, '9', 2, '2019-06-14 23:38:31', '2013-09-25 11:30:38');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (290, 'adipisci', 7553, '4', 3, '1976-12-02 13:31:41', '1988-06-14 14:39:34');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (291, 'soluta', 1584, '3', 1, '2013-05-04 15:23:03', '2011-02-13 20:26:34');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (292, 'quae', 5728, '1', 2, '2020-12-23 13:17:20', '1996-08-29 20:25:56');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (293, 'incidunt', 1495, '2', 3, '2001-12-11 21:42:06', '1972-11-16 05:46:42');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (294, 'et', 8353, '1', 1, '2016-05-11 08:00:28', '2000-06-06 06:42:06');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (295, 'ut', 2271, '7', 2, '1989-10-03 02:29:28', '1978-08-16 03:34:17');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (296, 'ipsa', 8813, '8', 3, '2002-09-08 18:11:36', '1982-11-06 09:32:17');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (297, 'non', 6617, '8', 1, '2016-06-25 17:21:02', '2017-12-15 02:05:35');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (298, 'minima', 1148, '1', 2, '1976-10-24 09:26:43', '1995-02-06 02:54:24');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (299, 'qui', 7568, '9', 3, '2016-04-05 08:36:40', '2003-04-26 22:21:37');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (300, 'officia', 6910, '3', 1, '2012-12-25 19:51:59', '1983-06-10 05:16:16');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (301, 'reprehenderit', 3586, '6', 3, '1974-05-06 04:39:06', '2010-09-28 15:28:06');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (302, 'sint', 6681, '6', 1, '2000-10-06 01:00:24', '2012-07-18 04:55:56');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (303, 'et', 994, '9', 2, '1984-03-21 06:31:17', '2003-03-15 13:33:38');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (304, 'numquam', 6689, '2', 3, '1971-05-06 18:57:31', '2002-11-13 17:03:22');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (305, 'magni', 7948, '8', 1, '2006-06-07 02:48:58', '1992-04-17 15:37:10');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (306, 'saepe', 6036, '1', 2, '1982-09-27 19:29:57', '1985-07-29 14:25:51');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (307, 'dolore', 3912, '6', 3, '1982-08-23 23:57:51', '2016-08-13 03:22:52');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (308, 'tenetur', 6152, '1', 1, '2014-01-01 11:14:23', '1980-02-22 21:59:04');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (309, 'nesciunt', 6651, '9', 2, '1988-07-25 09:25:11', '2016-07-08 20:45:30');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (310, 'totam', 5482, '6', 3, '2004-07-13 13:13:08', '2008-06-16 02:09:07');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (311, 'tempore', 4447, '2', 1, '1974-06-16 12:28:59', '1993-01-31 18:05:15');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (312, 'molestiae', 8185, '2', 2, '1991-09-08 00:01:22', '2017-05-20 04:09:02');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (313, 'omnis', 9023, '9', 3, '2019-09-12 01:16:56', '1985-12-07 22:56:40');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (314, 'recusandae', 656, '8', 2, '2016-07-23 00:17:09', '1992-07-03 16:55:53');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (315, 'voluptas', 4891, '9', 3, '2014-09-19 05:18:46', '2015-01-12 14:36:25');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (316, 'dolores', 6031, '5', 1, '1974-05-11 02:24:54', '2018-01-08 16:11:12');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (317, 'ullam', 9605, '8', 2, '2014-08-25 17:16:04', '1978-10-07 12:07:08');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (318, 'iusto', 6841, '8', 1, '2000-10-26 08:34:57', '1976-10-06 02:44:07');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (319, 'recusandae', 8869, '8', 2, '2012-07-25 16:41:44', '1979-08-11 10:14:41');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (320, 'amet', 757, '7', 3, '1987-10-21 17:01:15', '1989-08-31 21:18:12');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (321, 'iste', 3799, '7', 1, '1989-04-23 05:28:52', '2013-07-26 01:09:02');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (322, 'delectus', 5308, '4', 2, '1973-12-17 01:44:48', '1986-03-29 12:39:41');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (323, 'quod', 7796, '5', 3, '1974-11-05 15:47:03', '1988-09-05 22:32:11');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (324, 'ea', 7281, '5', 1, '1981-01-31 05:14:24', '2019-12-04 13:23:52');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (325, 'tempore', 4737, '3', 2, '2016-04-13 14:18:10', '1985-02-27 17:00:34');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (326, 'laudantium', 6512, '8', 3, '2012-12-04 20:42:03', '1990-09-27 09:51:06');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (327, 'minus', 7163, '6', 1, '1985-09-03 05:58:44', '1980-09-23 12:52:35');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (328, 'incidunt', 1122, '3', 2, '1987-07-06 18:06:50', '1993-06-10 01:19:20');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (329, 'non', 7060, '6', 3, '1983-08-05 07:14:29', '2019-12-12 00:46:58');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (330, 'natus', 5030, '4', 1, '1983-08-24 10:14:48', '1981-08-08 02:06:47');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (331, 'non', 6034, '8', 2, '1988-04-25 08:38:26', '2014-05-30 11:28:12');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (332, 'consequatur', 3325, '2', 3, '1976-09-27 07:31:29', '2015-11-15 09:44:50');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (333, 'officia', 8145, '4', 1, '1997-10-01 19:16:35', '1988-06-04 13:56:06');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (334, 'ut', 8632, '2', 2, '1997-02-12 19:02:00', '1976-05-20 18:24:03');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (335, 'deleniti', 3914, '3', 3, '1977-02-17 14:28:26', '2011-06-25 20:42:22');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (336, 'quia', 932, '7', 1, '2000-01-29 14:01:16', '1978-07-17 23:36:08');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (337, 'mollitia', 1998, '9', 2, '1973-11-15 08:12:58', '2020-02-15 11:18:43');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (338, 'vero', 9160, '7', 3, '1992-08-11 15:54:13', '1997-03-11 12:14:13');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (339, 'nam', 1605, '3', 1, '1981-11-05 12:06:10', '2006-09-21 11:51:44');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (340, 'consequatur', 3001, '8', 2, '1974-01-14 09:27:24', '1986-07-27 17:05:14');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (341, 'delectus', 1006, '6', 3, '1970-02-27 08:12:17', '1998-02-28 08:54:25');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (342, 'explicabo', 5519, '5', 1, '1991-03-26 19:19:57', '2003-01-01 06:22:04');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (343, 'sapiente', 8362, '9', 2, '1976-01-16 19:30:52', '1974-11-17 04:12:51');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (344, 'eos', 6530, '3', 3, '2014-08-31 09:25:02', '2016-03-10 08:23:12');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (345, 'nihil', 9171, '6', 1, '1982-11-23 13:18:46', '1974-08-05 02:24:29');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (346, 'qui', 4191, '1', 2, '1992-02-29 03:57:13', '1979-12-01 21:26:10');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (347, 'ea', 1897, '1', 3, '2001-10-08 12:35:26', '2015-03-18 16:21:11');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (348, 'ut', 6822, '9', 1, '2006-11-15 09:07:24', '2014-02-05 17:38:19');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (349, 'et', 5240, '9', 3, '1997-04-06 00:30:29', '2018-03-07 03:32:04');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (350, 'cum', 6080, '7', 1, '1992-04-07 07:31:09', '1985-03-05 07:39:01');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (351, 'vel', 6504, '3', 2, '1974-03-10 21:08:06', '1979-03-30 06:30:13');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (352, 'sit', 4454, '5', 1, '2010-08-07 23:51:54', '2000-05-15 12:22:40');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (353, 'quia', 1264, '6', 2, '2009-02-06 11:53:46', '2018-05-19 19:22:30');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (354, 'iste', 8160, '2', 3, '1977-10-14 18:03:42', '1993-07-04 21:15:56');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (355, 'aut', 6628, '8', 1, '1994-07-31 00:24:27', '2010-07-26 08:28:10');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (356, 'odit', 2522, '4', 3, '2003-10-02 18:23:01', '1971-06-29 17:32:15');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (357, 'asperiores', 6393, '2', 1, '1988-05-01 15:02:09', '1997-05-15 17:57:40');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (358, 'qui', 6704, '4', 3, '2018-01-27 01:13:42', '1970-08-31 06:31:50');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (359, 'illum', 7581, '7', 1, '2012-01-31 06:55:21', '2004-10-06 13:37:50');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (360, 'qui', 589, '6', 2, '1998-07-16 22:09:19', '1983-04-20 05:10:52');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (361, 'blanditiis', 554, '9', 1, '1992-08-10 15:38:34', '2014-09-23 10:02:09');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (362, 'sed', 2840, '7', 3, '1978-08-12 10:53:12', '2005-09-30 18:18:47');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (363, 'sunt', 1203, '5', 1, '1981-03-16 13:17:29', '1990-08-27 07:12:05');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (364, 'ipsum', 1186, '6', 2, '2015-01-07 05:43:39', '1977-12-01 11:20:16');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (365, 'voluptas', 9738, '2', 3, '1986-01-24 01:18:53', '2018-03-06 19:18:44');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (366, 'voluptas', 7829, '8', 1, '1989-10-12 23:34:23', '1984-08-29 20:05:16');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (367, 'autem', 6054, '4', 1, '1995-08-22 01:20:27', '2008-12-06 13:32:11');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (368, 'minima', 7462, '3', 2, '1970-05-28 22:22:26', '1988-08-05 02:35:44');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (369, 'est', 488, '9', 3, '1974-12-06 12:01:38', '1979-10-04 01:29:48');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (370, 'incidunt', 5435, '6', 2, '2015-08-21 19:10:39', '1992-12-17 15:17:47');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (371, 'aut', 4105, '9', 3, '2001-04-29 04:24:43', '2001-07-24 08:16:00');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (372, 'reprehenderit', 802, '8', 1, '2019-08-03 08:58:50', '2018-11-20 18:10:13');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (373, 'earum', 6321, '2', 2, '2018-07-11 10:00:28', '2011-06-01 05:11:42');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (374, 'aliquid', 5213, '3', 3, '1985-08-08 05:00:04', '2002-02-20 18:21:15');
INSERT INTO `media` (`id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (375, 'voluptatem', 1321, '9', 1, '2014-09-04 18:24:07', '1998-10-21 05:51:47');

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display name',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` int(10) unsigned NOT NULL,
  `address` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Users';

INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (51, 1, 'Roxane', 'Altenwerth', 'laudantium', 'mccullough.destin@example.org', '1-030-350-1227x2095', '1986-06-26', '4', 'd82bd5b26aa9913d0558149924231ec0', 1, '036 Macejkovic Court Suite 795\nHaleystad, SC 06607', '2020-05-08 06:30:31', '2013-12-04 00:30:29');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (52, 2, 'Margarita', 'Daniel', 'facere', 'maria.ankunding@example.net', '423-312-3128x809', '1982-10-27', '8', '7b937e4a4c0b87ff747eeeea804f251f', 2, '06242 Filiberto Parkway Suite 471\nHershelbury, IN 34792-6461', '2004-09-23 14:18:15', '1976-12-11 14:39:34');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (53, 3, 'Marietta', 'Jerde', 'nostrum', 'morissette.austyn@example.org', '+22(1)6814330386', '1972-02-03', '3', 'a0be27f0437702afe31e2e7cb8a71bad', 3, '73768 Yost Station\nLake Keaton, MS 51023', '2017-10-30 20:18:48', '1981-11-10 20:11:36');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (54, 1, 'Erwin', 'Wuckert', 'rem', 'tkuvalis@example.net', '(437)820-8197', '2007-11-08', '6', '1504a12d76623180b1338690df737c9c', 1, '91872 Claudia Squares Apt. 778\nKingmouth, PA 08160-5491', '2008-12-28 07:10:38', '2017-02-20 22:04:46');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (55, 2, 'Brooklyn', 'Flatley', 'ab', 'bkris@example.com', '(072)883-6301x740', '2018-01-01', '8', '3411702622dded781938155256f95ff3', 2, '682 Ocie Loaf Suite 230\nKutchbury, UT 60064-7944', '1998-01-17 08:12:12', '2009-01-10 08:40:02');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (56, 3, 'Hillard', 'Lowe', 'voluptatem', 'barton.euna@example.com', '+88(2)4860564771', '1980-10-11', '6', '64c3d4531cb531c1368a9e752fd7342c', 3, '70438 Alayna Common\nLake River, AR 65660', '2000-01-05 13:18:46', '2002-03-01 21:34:18');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (57, 1, 'Lucy', 'Casper', 'recusandae', 'qyost@example.net', '058.123.7423', '2009-12-17', '4', '397d97f4b973b568b995dbd677780596', 1, '072 Goyette Ranch Apt. 934\nLake Simonetown, MN 66933-9287', '2009-11-01 02:46:21', '2000-07-13 11:29:38');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (58, 2, 'Porter', 'Lakin', 'fuga', 'kcummings@example.net', '06134474521', '1970-06-06', '1', '9cb9c726f8bff19e5ce72f0740be6076', 2, '00011 Harvey Prairie Suite 581\nSunnystad, MO 40339-1720', '1973-05-31 22:18:19', '1990-09-17 08:45:25');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (59, 3, 'Dominique', 'Baumbach', 'quos', 'devante26@example.net', '1-728-409-0836x3738', '1998-10-14', '9', 'fb69f9e6fa63533e68b216cdd12fc335', 3, '78630 Bailey Unions\nLake Brain, FL 76252', '1977-10-22 05:30:05', '2008-04-22 02:31:21');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (60, 1, 'Kaylin', 'Altenwerth', 'fugit', 'dickens.deondre@example.net', '(928)209-8910', '2017-11-11', '', '6b52459dc75427da5446f7d8ceb284a8', 1, '854 Kris Garden Suite 899\nHermannland, RI 65300', '1985-09-21 18:40:29', '2011-06-01 17:01:48');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (61, 2, 'Neil', 'Hand', 'reprehenderit', 'margarette58@example.net', '03208906209', '2010-04-17', '6', '4173221cc0a6f9a93bfa8aadcdbb4b0c', 2, '914 Damian Glens Apt. 302\nPort Jaylenmouth, ME 74713', '1971-06-09 01:38:18', '2008-11-14 15:39:25');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (62, 3, 'Fernando', 'West', 'illo', 'hhansen@example.com', '(695)399-4605x513', '2013-05-31', '3', '455f593dc941cecc238d378825387810', 3, '8349 DuBuque Inlet\nLaurianneton, ND 71816', '1980-06-03 20:38:58', '2006-06-19 19:33:44');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (63, 1, 'Kaley', 'Jenkins', 'autem', 'gretchen.maggio@example.org', '+54(1)7923810063', '2004-11-28', '8', '0f044055ae2c303ec0d4aa7d6fd3b9f9', 1, '92324 O\'Hara Forges Apt. 144\nWizaport, KS 56988', '2013-01-23 13:09:43', '1996-07-16 14:07:32');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (64, 2, 'Jena', 'Koelpin', 'debitis', 'tmurphy@example.net', '342-979-3705', '1975-03-20', '2', '126a824c14e603573777afb81b56fc86', 2, '313 Mitchell Forges Apt. 155\nSouth Darronton, DE 61133', '1998-07-06 12:45:49', '1990-01-07 06:19:22');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (65, 3, 'Milford', 'Reichel', 'quasi', 'nshanahan@example.org', '+55(5)1050447363', '1973-01-05', '7', '98746d3175f96cf294366bdaf0c44195', 3, '16199 Clementine Forks Suite 909\nBahringerview, DE 29639', '1996-11-28 23:46:57', '2003-07-25 20:23:24');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (66, 1, 'Marcus', 'Herzog', 'aut', 'leffler.rahsaan@example.net', '+23(8)2019927688', '1972-12-04', '2', 'a786c4f9c314c2178b6f0a804c699d27', 1, '68455 Noel Hill\nNorth Reba, IL 44080-3814', '1984-07-30 01:50:05', '2015-01-24 23:31:41');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (67, 2, 'Luna', 'Jaskolski', 'suscipit', 'vkris@example.net', '+74(5)7664759446', '1991-06-28', '9', 'b0bc55470526183436f7aeba197164f9', 2, '13472 Schumm Shoal\nNorth Cassandra, WV 35325-2432', '2014-05-02 15:27:25', '1975-02-06 08:33:33');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (68, 3, 'Nicklaus', 'Howell', 'nostrum', 'bmaggio@example.net', '00650540953', '1972-07-20', '8', 'a2c0c8902674a71ecfa8b5785b2f03b7', 3, '704 Bradtke Squares\nKevinside, TN 06504-8090', '1995-11-06 10:36:11', '2015-08-22 05:25:33');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (69, 1, 'Marcia', 'Hamill', 'laborum', 'idicki@example.com', '(497)170-4482x1761', '2010-01-28', '6', 'b091b7fb4f896daf4b7b326d1c762f63', 1, '423 Marjolaine Trail\nNorth Clair, MN 61709', '1975-07-30 18:20:24', '1983-02-19 10:14:43');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (70, 2, 'Mabel', 'Blanda', 'nobis', 'bella96@example.net', '1-901-004-5306', '1995-12-05', '2', '4b7c04050864079c3be560e1cd09297c', 2, '207 Kelsie Freeway\nWest Annabell, PA 33376', '1991-05-28 11:32:46', '2000-01-21 23:31:28');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (71, 3, 'Louvenia', 'Schuppe', 'non', 'esteban21@example.com', '831-339-5063', '2018-09-15', '2', '5947491f8267bbfdeadf48cee1ef7bbc', 3, '8407 Keon Fort\nEast Noemi, CA 83988', '1980-01-03 05:15:29', '1984-04-05 14:29:47');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (72, 1, 'Lisette', 'Hammes', 'cupiditate', 'icie.nienow@example.org', '+39(1)4704031352', '1998-03-25', '6', 'd28fe925b28e563b15d7c70a7543f4dc', 1, '296 Zulauf Flat Apt. 758\nArlenemouth, AR 63291', '1987-11-06 21:50:42', '1983-05-21 20:12:37');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (73, 2, 'Shane', 'Murray', 'esse', 'beahan.alexie@example.net', '055.459.9654', '2000-04-19', '2', '437cb9d7f9a2c8b6ee96160b2aac6b02', 2, '0075 Nedra Ville Apt. 549\nO\'Connellberg, KY 04353', '1999-11-03 16:15:32', '1973-11-13 21:21:54');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (74, 3, 'Kathryne', 'Marquardt', 'ducimus', 'schiller.ofelia@example.org', '(655)612-1958', '1987-09-26', '3', '68997a37dc59727f30fc176443185fa3', 3, '6508 Morar Locks\nNorth Eleanorastad, TX 77730', '1974-04-01 17:08:38', '1979-03-04 00:52:29');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (75, 1, 'Tre', 'Schmeler', 'officiis', 'watson48@example.com', '(153)893-7306', '2017-04-17', '1', '105b3523e56b87e131a1b0f3391912c0', 1, '072 Brown Lake Suite 154\nPedrostad, IA 41223', '2010-08-26 12:11:30', '2001-05-26 14:16:41');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (76, 2, 'Kyle', 'Hilpert', 'ad', 'lockman.bill@example.net', '+91(7)5481688132', '2008-06-21', '9', '7b4761f843e0b5304a6f7a76c251e131', 2, '09954 Davis Manor Apt. 029\nAndersonchester, SC 73879', '1975-05-10 01:21:47', '1970-12-18 22:09:16');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (77, 3, 'Justyn', 'Medhurst', 'hic', 'fconsidine@example.com', '852-612-6274x2942', '2011-08-16', '6', 'd347893c8b061c174e92647bfce38ab6', 3, '0714 Austyn Crossroad Suite 053\nVolkmanchester, AK 70269', '2005-01-21 04:51:31', '1984-10-12 14:46:35');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (78, 1, 'Ronaldo', 'Tillman', 'enim', 'jamie96@example.net', '+35(8)1237556257', '2011-12-10', '1', 'f0dd500c30c3a4d370d18c4a47fa6621', 1, '19240 Jordane Rue Suite 083\nQuintonside, KY 94191-1637', '1970-12-17 09:37:09', '1978-11-05 12:07:50');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (79, 2, 'Eldridge', 'Price', 'velit', 'moore.hannah@example.net', '069-533-1730x235', '1978-11-07', '7', '906c62471de0c5b214786295eca4af0e', 2, '65698 Morissette Port\nLake Gregorio, RI 17661-7023', '2010-06-03 09:40:22', '2007-10-24 13:43:28');
INSERT INTO `users` (`id`, `title_id`, `first_name`, `last_name`, `display_name`, `email`, `phone`, `birthday`, `nationality`, `password_user`, `gender_id`, `address`, `created_at`, `updated_at`) VALUES (80, 3, 'Rigoberto', 'Douglas', 'ut', 'gaetano75@example.com', '096.976.7204x14199', '1996-05-29', '3', 'afa061cdfc3a89b4795074bda055cc0b', 3, '2220 Kris Harbor Apt. 802\nJacobsport, NJ 39676', '1981-04-18 14:17:32', '2011-01-09 16:51:49');



#
# TABLE STRUCTURE FOR: hotels
#

DROP TABLE IF EXISTS `hotels`;

CREATE TABLE `hotels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hotel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_of_construction` datetime DEFAULT NULL,
  `prepayment` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `type_card` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All Hotels';

INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (101, 'Stracke-Gleason', '4770 Herzog Street', 'South Aarontown', 'Hong Kong', '2003-02-01 05:34:55', '+', 8532, 'Visa', '26291', '288');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (102, 'Douglas-Roberts', '311 Porter Dale Suite 808', 'Gerhardmouth', 'Antigua and Barbuda', '2014-11-15 18:27:26', '-', 22032, 'Visa', '9', '289');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (103, 'Ferry-Abshire', '116 Kub Avenue', 'Port Cadenhaven', 'Finland', '2008-10-27 09:23:09', '+', 20066, 'MasterCard', '9', '290');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (104, 'Murphy-Hamill', '371 Antwan Coves', 'West Rodrick', 'Saint Vincent and the Grenadines', '1985-04-05 22:16:22', '-', 22709, 'American Express', '32811', '291');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (105, 'Shanahan, Hammes and Jenkins', '82424 Anais Path Suite 369', 'Kohlerland', 'Brunei Darussalam', '2010-05-08 19:09:39', '+', 24873, 'Visa', '452', '292');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (106, 'Hayes-Parker', '222 Walter Tunnel Suite 283', 'Port Justonmouth', 'Svalbard & Jan Mayen Islands', '1985-03-01 17:40:23', '-', 3007, 'Visa', '11221', '293');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (107, 'Collins, Dickens and O\'Connell', '670 Rempel Lodge Suite 701', 'Lake Vernie', 'Bangladesh', '2011-04-03 18:15:01', '+', 6953, 'MasterCard', '9', '294');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (108, 'Kling, Reynolds and Parisian', '972 Rosalyn Falls Apt. 427', 'Cathytown', 'Burundi', '2005-10-21 11:59:27', '+', 3129, 'MasterCard', '58474', '295');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (109, 'Schaefer-Jones', '59820 Darron Valley Suite 343', 'Port Evelineshire', 'Mali', '1980-09-06 11:26:30', '-', 9903, 'MasterCard', '42273', '296');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (110, 'Cormier-Bashirian', '937 Barrows Turnpike', 'Serenitychester', 'Greenland', '1975-04-22 07:53:42', '+', 2786, 'MasterCard', '65636', '297');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (111, 'Leuschke Group', '647 Alize Flat Apt. 182', 'Ryanport', 'United Arab Emirates', '1995-09-19 14:57:13', '+', 23162, 'Visa', '21597', '298');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (112, 'Schamberger-Robel', '126 Jacobs Lodge', 'Port Terrencefurt', 'Christmas Island', '1992-07-27 00:35:39', '-', 23333, 'MasterCard', '308', '299');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (113, 'Torp PLC', '0909 Jaron Springs', 'New Lempi', 'Trinidad and Tobago', '1977-12-28 19:12:20', '+', 24463, 'MasterCard', '29477', '300');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (114, 'Cassin, O\'Hara and Cummerata', '2821 Quitzon Port', 'Moorefurt', 'Finland', '1972-07-09 21:55:40', '+', 8055, 'MasterCard', '16984', '301');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (115, 'Orn-Pacocha', '13483 Howell Island Apt. 719', 'East Elaina', 'Turks and Caicos Islands', '1987-06-25 11:20:55', '+', 33689, 'MasterCard', '20065', '302');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (116, 'Renner, Erdman and Lemke', '1832 Gracie Springs', 'North Amirafort', 'Uruguay', '1971-02-18 08:00:48', '+', 6841, 'Visa', '43891', '303');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (117, 'Lubowitz Inc', '53646 Friesen Cliff Suite 360', 'New Evalynshire', 'Panama', '2017-09-24 22:03:45', '-', 9202, 'Visa', '39095', '304');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (118, 'Hermann, O\'Conner and Bode', '9880 Sipes Glens Apt. 107', 'New Nichole', 'Mongolia', '2012-03-08 08:49:47', '+', 8402, 'Visa', '9', '305');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (119, 'Leannon, Dach and Murray', '1699 Thompson Spurs', 'South Reese', 'Dominica', '1983-09-14 18:10:35', '+', 32297, 'MasterCard', '27', '306');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (120, 'Kutch, Nader and Lemke', '367 Natalia Locks Suite 686', 'Faeland', 'Saint Barthelemy', '1994-09-13 06:46:04', '-', 34254, 'MasterCard', '27496', '307');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (121, 'Bins-Hirthe', '6033 Mireya Crest', 'North Laishastad', 'Puerto Rico', '2009-04-03 19:55:46', '-', 31193, 'Visa', '41161', '308');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (122, 'Gerhold Group', '0684 Carleton Expressway Suite 022', 'Binsfurt', 'South Africa', '2002-05-06 02:47:38', '-', 34931, 'MasterCard', '7', '309');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (123, 'Predovic-Barton', '8333 Alexandra Well Suite 563', 'New Heaven', 'Turkmenistan', '1979-01-12 06:07:56', '-', 22351, 'MasterCard', '40', '310');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (124, 'Price Group', '532 Rosemary Manors', 'Abbottview', 'Guernsey', '1973-09-30 08:32:36', '-', 15545, 'Visa', '70795', '311');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (125, 'Tremblay, Leuschke and Connelly', '60562 Runte Corner', 'Boehmmouth', 'Zambia', '2000-09-24 21:43:26', '+', 21764, 'Visa', '2', '312');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (126, 'Dare, Spinka and Klein', '3562 Boyer Point', 'Adamschester', 'Qatar', '2013-11-02 23:53:42', '-', 24294, 'Visa', '6333', '313');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (127, 'Kilback Ltd', '102 Lemke Meadows', 'Marinafurt', 'Mozambique', '2006-05-04 00:51:50', '-', 4875, 'MasterCard', '909', '314');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (128, 'McDermott, Wuckert and Hickle', '2635 Doyle Vista Suite 413', 'Roobton', 'Estonia', '1978-06-26 13:56:06', '-', 20706, 'MasterCard', '1988', '315');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (129, 'Kulas-Stiedemann', '804 Carter Creek Apt. 318', 'Lake Marcelinobury', 'Slovakia (Slovak Republic)', '1992-12-29 07:08:57', '+', 35615, 'MasterCard', '19', '316');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (130, 'Klocko-Bailey', '2421 Conrad Villages Apt. 278', 'Port Grover', 'Moldova', '2012-03-27 22:26:30', '+', 4083, 'Visa', '18662', '317');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (131, 'Heaney LLC', '6975 Larue Center', 'North Shany', 'Kazakhstan', '2014-01-13 14:01:39', '-', 14762, 'MasterCard', '43', '318');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (132, 'Little, Bode and West', '5333 Runolfsson Mill', 'North Dave', 'Lebanon', '1977-03-12 14:04:09', '-', 37114, 'Visa', '7', '319');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (133, 'Bradtke-Reichert', '854 Cordell Summit Apt. 617', 'New Burley', 'Isle of Man', '1987-05-13 08:22:28', '-', 37184, 'Visa', '9', '320');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (134, 'Beatty-Wintheiser', '440 Hane Harbor Apt. 683', 'Sydnitown', 'Algeria', '2005-09-02 16:01:40', '+', 12332, 'Visa', '713', '321');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (135, 'Pouros, Morar and Lynch', '472 Trace Roads', 'South Myrnaside', 'Mayotte', '1986-03-20 05:45:11', '+', 6555, 'MasterCard', '857', '322');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (136, 'Zieme, Watsica and Feeney', '886 Hackett Oval Suite 865', 'North Laylatown', 'United States Minor Outlying Islands', '1995-10-29 18:44:23', '-', 32326, 'MasterCard', '9', '323');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (137, 'Eichmann-Gerlach', '682 Lonzo Corner Suite 918', 'South Dexter', 'Korea', '1993-01-26 20:37:23', '+', 19271, 'Visa', '40', '324');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (138, 'Stark LLC', '03784 Murazik Vista', 'South Odie', 'Singapore', '2018-02-10 00:37:55', '-', 9225, 'Visa', '29203', '325');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (139, 'Marquardt Ltd', '32020 Dortha Mill Apt. 641', 'Ociemouth', 'Lesotho', '1987-03-15 03:50:03', '-', 11500, 'MasterCard', '10', '326');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (140, 'Schoen LLC', '61289 Dariana Islands', 'Huelborough', 'Gibraltar', '2019-03-04 07:01:12', '+', 20163, 'MasterCard', '88', '327');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (141, 'Kuhlman, Williamson and Nicolas', '16882 Madalyn Islands', 'Sporerport', 'Myanmar', '2011-05-12 21:07:18', '-', 35149, 'Visa', '83893', '328');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (142, 'Nienow, Jacobi and Ferry', '0838 Harmon Avenue Apt. 989', 'West Alvenatown', 'Croatia', '1996-04-10 10:34:49', '+', 18010, 'Visa', '39725', '329');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (143, 'Toy, Schumm and Jast', '976 Laura Loaf Suite 889', 'Christiansentown', 'Guadeloupe', '1989-01-05 03:18:28', '+', 33445, 'Visa', '65636', '330');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (144, 'Runolfsdottir, Schultz and Wunsch', '179 Renner Street Suite 340', 'McKenzieland', 'British Indian Ocean Territory (Chagos Archipelago)', '2010-01-31 16:27:02', '-', 36452, 'Visa', '247', '331');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (145, 'O\'Kon LLC', '63051 Therese Center Suite 757', 'North Antonio', 'Mauritius', '1986-01-05 03:08:42', '-', 29110, 'Visa', '41890', '332');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (146, 'Sauer and Sons', '50090 Foster Summit', 'East Maryse', 'Singapore', '2012-03-27 22:29:28', '-', 20343, 'American Express', '23', '333');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (147, 'Robel-Oberbrunner', '991 Wuckert Hills Suite 422', 'Jaylanton', 'Burundi', '2014-01-06 03:51:16', '-', 1092, 'Visa', '62172', '334');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (148, 'Padberg-Fritsch', '9460 Jasmin Extensions Apt. 262', 'East Buford', 'Croatia', '1998-05-19 14:40:42', '-', 16358, 'MasterCard', '2', '335');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (149, 'Gorczany-Muller', '6950 Vincenzo Radial Suite 077', 'Dayanachester', 'Myanmar', '2009-08-24 10:13:46', '-', 21996, 'MasterCard', '56757', '336');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (150, 'Gerhold Ltd', '40946 Kovacek Track Apt. 879', 'East Sigmundmouth', 'Peru', '1974-10-10 03:29:31', '-', 144, 'Visa', '42257', '337');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (151, 'Runte, Funk and Langworth', '4415 Murray Prairie', 'Lefflerport', 'Botswana', '1988-11-07 21:54:50', '-', 7293, 'Visa', '79401', '338');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (152, 'Dickens-Haley', '7049 Hiram Roads', 'South Leanne', 'Guinea-Bissau', '1984-01-08 13:27:33', '-', 34766, 'MasterCard', '34902', '339');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (153, 'Reilly, Turner and Kuvalis', '13208 Opal Pines Suite 141', 'Sarahmouth', 'Madagascar', '1992-12-17 05:50:20', '+', 11639, 'Visa', '8', '340');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (154, 'Donnelly Inc', '90923 Joyce Throughway', 'Abbeystad', 'Georgia', '1977-03-18 12:36:11', '-', 20084, 'Visa', '8', '341');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (155, 'Luettgen-Rath', '93084 Aubree Canyon', 'Leonardochester', 'Colombia', '2001-06-01 19:42:52', '+', 28814, 'Visa', '27556', '342');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (156, 'Mayer, Will and Moen', '3727 Watsica Brooks Apt. 040', 'Steuberhaven', 'Rwanda', '1979-11-19 15:09:43', '-', 8764, 'American Express', '64766', '343');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (157, 'Brakus, Maggio and Block', '01184 Bednar Lane Suite 877', 'Hahnborough', 'Afghanistan', '1987-11-15 15:18:28', '-', 7381, 'American Express', '62', '344');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (158, 'Beatty, Christiansen and Rempel', '376 Steve Vista Apt. 694', 'West Maybell', 'Cote d\'Ivoire', '1988-11-29 11:53:01', '+', 23992, 'MasterCard', '8', '345');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (159, 'Altenwerth, Little and Dicki', '495 Candida Parkway', 'Lake Americoside', 'Thailand', '1976-03-19 09:30:33', '-', 2293, 'MasterCard', '21', '346');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (160, 'Gislason, Gorczany and Nicolas', '4131 Delphine Drive Suite 043', 'Lake Hobart', 'Netherlands Antilles', '1998-04-12 06:05:38', '-', 12546, 'MasterCard', '2', '347');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (161, 'Hills-O\'Conner', '2328 Kertzmann River', 'East Darrell', 'Algeria', '1999-08-17 21:14:12', '-', 14822, 'American Express', '10791', '348');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (162, 'Towne-Gulgowski', '7086 Josefa Lodge', 'Emmyhaven', 'Bhutan', '2017-02-08 06:47:53', '-', 15192, 'Visa', '8', '349');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (163, 'Zieme, Konopelski and Considine', '648 Rene Passage Apt. 223', 'Jenkinstown', 'Libyan Arab Jamahiriya', '2000-05-16 12:43:19', '-', 15204, 'Visa', '4649', '350');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (164, 'Collier-Kertzmann', '2845 Friesen Mall Apt. 437', 'Mercedesborough', 'Macedonia', '1976-08-12 18:53:32', '-', 22208, 'MasterCard', '84677', '351');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (165, 'Stanton, Okuneva and Kulas', '113 Jimmy Falls', 'North Dinaland', 'Italy', '1998-02-18 18:36:21', '-', 38166, 'American Express', '588', '352');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (166, 'Reichert-Thiel', '48937 Emmie Underpass', 'Lehnerfurt', 'Cook Islands', '1979-05-27 08:47:21', '-', 14535, 'Visa', '4', '353');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (167, 'Connelly-Schamberger', '08535 Justen Isle Apt. 291', 'Port Terryville', 'Cook Islands', '1996-03-27 06:55:56', '+', 28462, 'MasterCard', '62', '354');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (168, 'Bins-Parisian', '664 Tillman Drives', 'New Reyesbury', 'Tuvalu', '2003-11-05 22:52:49', '-', 24718, 'American Express', '78631', '355');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (169, 'Okuneva, Upton and Wolff', '18576 Koelpin Pike', 'Geovanniberg', 'Brunei Darussalam', '1978-08-17 11:37:14', '+', 37625, 'MasterCard', '7', '356');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (170, 'Schmeler Group', '5193 Stoltenberg Terrace Apt. 206', 'East Kaylachester', 'Venezuela', '2000-06-23 03:58:09', '+', 10876, 'MasterCard', '35530', '357');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (171, 'Gleichner Ltd', '8259 Rozella Mall Suite 262', 'Lake Vidalborough', 'Tonga', '1997-07-11 10:39:44', '+', 147, 'Visa', '38694', '358');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (172, 'Mann Ltd', '5676 Rutherford Port', 'Turnertown', 'Bouvet Island (Bouvetoya)', '1996-06-12 17:06:51', '-', 27222, 'MasterCard', '37', '359');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (173, 'Gottlieb-Tillman', '609 Frederique Plaza Apt. 757', 'Sigmundfurt', 'Isle of Man', '2005-05-15 10:05:34', '+', 38051, 'Discover Card', '55576', '360');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (174, 'Schowalter-Anderson', '910 Cummings Underpass', 'Wittinghaven', 'Mayotte', '1988-09-23 20:08:44', '-', 6736, 'MasterCard', '11', '361');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (175, 'Herman-Osinski', '3453 Chauncey Rapid', 'Eldridgeview', 'Mozambique', '1979-12-22 00:41:04', '+', 8064, 'MasterCard', '74', '362');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (176, 'Wyman-Reichert', '44196 Chandler Summit Apt. 586', 'West Diana', 'French Guiana', '1975-10-20 20:29:55', '-', 27166, 'Visa', '8', '363');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (177, 'Barrows Group', '3521 Elyssa Streets', 'North Hendersonberg', 'Venezuela', '1995-03-23 14:33:29', '+', 2942, 'American Express', '11385', '364');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (178, 'Beer LLC', '6142 Ena Junction Suite 018', 'New Rusty', 'Turkmenistan', '1995-06-13 22:22:20', '-', 24605, 'MasterCard', '5775', '365');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (179, 'Rath-Legros', '99376 Cummerata Trace Suite 473', 'Erinhaven', 'Cyprus', '1975-12-03 15:28:59', '+', 9673, 'MasterCard', '1645', '366');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (180, 'Pacocha LLC', '48185 Kiehn Forks Suite 845', 'Wendellton', 'Jamaica', '1995-07-30 00:03:15', '-', 26670, 'Visa', '9', '367');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (181, 'Homenick, Macejkovic and Cormier', '788 Muller Keys Suite 386', 'Hintzborough', 'Jordan', '1994-02-27 00:55:08', '-', 7534, 'Visa', '3', '368');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (182, 'Nikolaus LLC', '981 Devan Avenue', 'Coralieton', 'Kiribati', '1985-09-27 17:11:57', '+', 7693, 'Discover Card', '2856', '369');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (183, 'Sipes, Walter and Leffler', '387 Stephania Bypass Apt. 313', 'New Arielland', 'Netherlands Antilles', '1991-06-24 18:50:08', '+', 5729, 'Visa', '22', '370');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (184, 'Wintheiser LLC', '80900 Chase Mountains', 'North Emil', 'Oman', '1975-06-25 03:23:52', '-', 12748, 'MasterCard', '41627', '371');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (185, 'Littel LLC', '795 Jackeline Union', 'Farrellfurt', 'Guam', '2018-07-26 07:47:19', '+', 6968, 'MasterCard', '9', '372');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (186, 'Pouros, Konopelski and Heathcote', '459 Ricky Forest', 'South Novellamouth', 'Syrian Arab Republic', '2012-05-28 23:28:28', '+', 33347, 'MasterCard', '88', '373');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (187, 'Flatley-Moen', '32025 Richmond Underpass Apt. 510', 'East Nickolasborough', 'Holy See (Vatican City State)', '2001-02-08 16:58:09', '-', 15154, 'MasterCard', '25736', '374');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (188, 'Becker-Tillman', '7779 Toni Park', 'Salmahaven', 'Tanzania', '1975-05-23 14:10:11', '-', 4480, 'MasterCard', '27211', '375');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (189, 'Quigley, Trantow and Hackett', '286 Dare Glens Apt. 792', 'Emardfurt', 'Italy', '1980-08-15 19:54:21', '+', 27828, 'American Express', '27575', '288');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (190, 'Kris-Balistreri', '48920 Alize Plains Suite 983', 'Pollichfurt', 'Gabon', '2010-06-27 18:39:22', '-', 11513, 'MasterCard', '5', '289');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (191, 'Adams, Stokes and Gleason', '89313 Anissa Curve Apt. 796', 'Port Delilah', 'Guyana', '1986-08-13 05:01:31', '-', 8134, 'Visa', '422', '290');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (192, 'Robel LLC', '6150 Mike Rue Apt. 292', 'Port Ashley', 'Grenada', '2004-03-16 21:29:35', '+', 35332, 'MasterCard', '31956', '291');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (193, 'O\'Hara-Wolff', '06357 Viola Mission Suite 050', 'Wuckertville', 'Cook Islands', '2012-02-10 10:40:55', '+', 18130, 'Discover Card', '29', '292');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (194, 'Rice and Sons', '73322 Richmond Drive', 'New Margie', 'Netherlands Antilles', '2014-08-23 11:31:38', '-', 32166, 'Discover Card', '62084', '293');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (195, 'Russel, Block and Watsica', '9534 Hessel Point', 'North Coyton', 'United States of America', '2010-12-18 20:30:44', '-', 945, 'American Express', '4', '294');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (196, 'Robel Inc', '18785 Grimes Burgs', 'Bartellstad', 'Romania', '2008-10-17 04:46:12', '-', 15787, 'MasterCard', '66', '295');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (197, 'Lakin LLC', '6269 Macejkovic Throughway Suite 983', 'Port Louisatown', 'Albania', '2003-02-13 23:31:05', '-', 19310, 'MasterCard', '888', '296');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (198, 'Ullrich-Stoltenberg', '6165 Erica Unions Apt. 504', 'West Laceyhaven', 'Belgium', '2011-07-22 22:19:28', '-', 10193, 'Visa', '3', '297');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (199, 'Schinner Inc', '178 Sheila Point', 'Mertieberg', 'Palestinian Territory', '1976-09-19 05:17:59', '-', 16538, 'MasterCard', '9', '298');
INSERT INTO `hotels` (`id`, `hotel`, `street`, `city`, `country`, `year_of_construction`, `prepayment`, `price`, `type_card`, `rating`, `media_id`) VALUES (200, 'Farrell Ltd', '72846 Rhianna Mews Apt. 982', 'Lehnermouth', 'Tuvalu', '1984-12-31 17:27:00', '-', 17749, 'Visa', '31', '299');

#
# TABLE STRUCTURE FOR: hotels_included
#

DROP TABLE IF EXISTS `hotels_included`;

CREATE TABLE `hotels_included` (
  `hotel_id` int(10) unsigned NOT NULL,
  `wifi` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `animal_id` int(10) unsigned NOT NULL,
  `age_limit_id` int(10) unsigned NOT NULL,
  `safe` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patio` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conditioner` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parking_lot` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kid_bedroom` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_room` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cafe` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nature` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beach` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_transport` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airport_near` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All Hotels';

INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (101, '+', '1', '1', '+', '-', '+', '+', '+', '-', '-', '+', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (102, '-', '2', '2', '+', '+', '-', '-', '+', '-', '+', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (103, '-', '1', '1', '-', '-', '-', '-', '-', '+', '-', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (104, '-', '2', '2', '-', '+', '+', '+', '+', '-', '+', '-', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (105, '-', '1', '1', '+', '+', '-', '+', '+', '-', '-', '-', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (106, '-', '2', '2', '+', '-', '-', '+', '-', '-', '+', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (107, '-', '1', '1', '+', '+', '-', '+', '+', '-', '+', '-', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (108, '+', '2', '2', '+', '-', '-', '+', '+', '-', '+', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (109, '+', '1', '1', '+', '-', '+', '+', '-', '+', '+', '+', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (110, '-', '2', '2', '+', '+', '+', '+', '-', '+', '-', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (111, '-', '1', '1', '-', '+', '-', '-', '-', '+', '+', '+', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (112, '+', '2', '2', '-', '+', '-', '+', '-', '-', '-', '+', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (113, '+', '1', '1', '-', '-', '+', '-', '+', '+', '+', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (114, '+', '2', '2', '+', '-', '+', '+', '-', '+', '-', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (115, '-', '1', '1', '+', '-', '+', '+', '-', '-', '-', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (116, '+', '2', '2', '-', '-', '+', '-', '-', '+', '+', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (117, '+', '1', '1', '+', '+', '+', '+', '-', '+', '+', '-', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (118, '+', '2', '2', '+', '-', '-', '-', '-', '-', '-', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (119, '-', '1', '1', '-', '-', '-', '-', '-', '-', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (120, '+', '2', '2', '-', '-', '+', '-', '+', '+', '+', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (121, '-', '1', '1', '+', '+', '+', '+', '+', '+', '-', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (122, '-', '2', '2', '-', '+', '-', '-', '+', '-', '-', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (123, '-', '1', '1', '-', '+', '-', '+', '-', '+', '+', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (124, '+', '2', '2', '-', '-', '+', '+', '-', '-', '-', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (125, '+', '1', '1', '+', '+', '-', '-', '-', '+', '+', '-', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (126, '-', '2', '2', '-', '-', '-', '+', '-', '-', '-', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (127, '+', '1', '1', '-', '+', '-', '+', '-', '-', '+', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (128, '+', '2', '2', '-', '+', '-', '-', '+', '-', '-', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (129, '-', '1', '1', '+', '+', '+', '+', '+', '+', '+', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (130, '-', '2', '2', '-', '-', '-', '+', '+', '+', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (131, '+', '1', '1', '+', '-', '+', '-', '+', '+', '+', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (132, '-', '2', '2', '-', '+', '+', '+', '-', '-', '-', '-', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (133, '+', '1', '1', '+', '+', '-', '+', '-', '+', '+', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (134, '-', '2', '2', '+', '+', '+', '-', '+', '-', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (135, '-', '1', '1', '-', '-', '+', '+', '-', '-', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (136, '-', '2', '2', '-', '-', '-', '+', '+', '+', '-', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (137, '-', '1', '1', '+', '-', '+', '-', '+', '-', '+', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (138, '-', '2', '2', '+', '+', '+', '-', '+', '-', '+', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (139, '+', '1', '1', '+', '+', '+', '+', '-', '+', '+', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (140, '-', '2', '2', '-', '-', '-', '+', '+', '-', '+', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (141, '-', '1', '1', '-', '+', '+', '+', '+', '+', '-', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (142, '-', '2', '2', '-', '+', '+', '+', '+', '-', '+', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (143, '+', '1', '1', '+', '-', '+', '-', '+', '-', '+', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (144, '-', '2', '2', '+', '+', '+', '+', '+', '+', '+', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (145, '+', '1', '1', '+', '+', '+', '-', '+', '+', '-', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (146, '+', '2', '2', '-', '+', '+', '+', '-', '+', '-', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (147, '+', '1', '1', '+', '-', '+', '+', '+', '+', '-', '-', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (148, '+', '2', '2', '+', '-', '+', '+', '-', '-', '-', '-', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (149, '+', '1', '1', '+', '+', '+', '-', '-', '-', '+', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (150, '-', '2', '2', '+', '-', '+', '-', '+', '-', '-', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (151, '+', '1', '1', '+', '+', '-', '+', '+', '+', '-', '-', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (152, '-', '2', '2', '-', '-', '+', '+', '+', '-', '+', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (153, '-', '1', '1', '+', '-', '+', '+', '-', '+', '-', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (154, '+', '2', '2', '+', '-', '-', '-', '-', '+', '-', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (155, '-', '1', '1', '+', '+', '-', '+', '+', '+', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (156, '+', '2', '2', '+', '-', '-', '+', '-', '-', '-', '-', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (157, '+', '1', '1', '-', '+', '-', '+', '-', '+', '+', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (158, '+', '2', '2', '+', '-', '+', '-', '+', '+', '+', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (159, '-', '1', '1', '+', '-', '-', '+', '-', '+', '-', '+', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (160, '-', '2', '2', '+', '-', '+', '+', '-', '+', '+', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (161, '-', '1', '1', '-', '+', '-', '+', '+', '+', '-', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (162, '+', '2', '2', '-', '+', '+', '+', '-', '+', '+', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (163, '-', '1', '1', '+', '-', '+', '+', '+', '-', '-', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (164, '-', '2', '2', '-', '+', '+', '-', '+', '+', '+', '+', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (165, '+', '1', '1', '-', '+', '-', '+', '+', '-', '+', '+', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (166, '-', '2', '2', '-', '+', '-', '-', '-', '-', '-', '+', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (167, '-', '1', '1', '+', '+', '-', '+', '+', '-', '+', '-', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (168, '-', '2', '2', '-', '-', '-', '-', '+', '+', '-', '-', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (169, '-', '1', '1', '-', '+', '-', '+', '+', '+', '+', '-', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (170, '+', '2', '2', '-', '+', '-', '-', '+', '-', '-', '-', '+', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (171, '+', '1', '1', '+', '+', '-', '+', '+', '+', '-', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (172, '+', '2', '2', '-', '-', '+', '+', '+', '+', '+', '+', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (173, '-', '1', '1', '+', '+', '-', '-', '-', '-', '-', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (174, '-', '2', '2', '-', '+', '-', '-', '+', '-', '-', '-', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (175, '-', '1', '1', '+', '+', '-', '+', '-', '-', '-', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (176, '-', '2', '2', '-', '-', '+', '+', '-', '-', '-', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (177, '-', '1', '1', '-', '-', '-', '+', '+', '+', '+', '-', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (178, '+', '2', '2', '+', '+', '+', '+', '-', '-', '+', '-', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (179, '-', '1', '1', '-', '+', '+', '-', '-', '+', '+', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (180, '-', '2', '2', '-', '+', '-', '+', '-', '+', '+', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (181, '-', '1', '1', '-', '+', '+', '+', '+', '+', '+', '+', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (182, '+', '2', '2', '+', '-', '-', '-', '+', '+', '+', '+', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (183, '-', '1', '1', '+', '-', '+', '-', '+', '-', '+', '+', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (184, '+', '2', '2', '-', '+', '+', '+', '-', '+', '+', '-', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (185, '+', '1', '1', '+', '-', '+', '-', '+', '+', '-', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (186, '+', '2', '2', '+', '+', '-', '-', '+', '-', '-', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (187, '-', '1', '1', '-', '+', '+', '+', '+', '+', '+', '-', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (188, '-', '2', '2', '+', '+', '-', '-', '+', '+', '+', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (189, '-', '1', '1', '+', '-', '-', '-', '+', '-', '-', '-', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (190, '-', '2', '2', '-', '-', '+', '-', '-', '+', '+', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (191, '+', '1', '1', '+', '-', '+', '+', '-', '+', '+', '-', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (192, '+', '2', '2', '-', '+', '+', '-', '+', '-', '-', '+', '+', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (193, '+', '1', '1', '-', '-', '+', '-', '-', '+', '-', '+', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (194, '+', '2', '2', '-', '+', '+', '-', '-', '+', '+', '-', '+', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (195, '+', '1', '1', '-', '-', '+', '+', '-', '+', '+', '-', '-', '+', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (196, '+', '2', '2', '-', '-', '-', '+', '-', '+', '-', '+', '-', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (197, '-', '1', '1', '+', '+', '-', '-', '-', '-', '+', '+', '-', ' -', '+');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (198, '+', '2', '2', '+', '-', '-', '+', '+', '-', '-', '-', '-', '+', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (199, '+', '1', '1', '+', '+', '-', '-', '-', '-', '-', '-', '+', ' -', '-');
INSERT INTO `hotels_included` (`hotel_id`, `wifi`, `animal_id`, `age_limit_id`, `safe`, `patio`, `conditioner`, `parking_lot`, `kid_bedroom`, `family_room`, `cafe`, `nature`, `beach`, `public_transport`, `airport_near`) VALUES (200, '+', '2', '2', '+', '+', '+', '-', '+', '-', '+', '-', '+', ' -', '+');


#
# TABLE STRUCTURE FOR: bookings
#

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `id` int(10) unsigned NOT null AUTO_INCREMENT,
  `user_id` int(100) unsigned NOT NULL,
  `hotel_id` int(100) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `arrival_day` datetime DEFAULT NULL,
  `check_out_day` datetime DEFAULT NULL,
  `count_days` int(10) unsigned DEFAULT NULL,
  `business_trip` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_adult` int(10) unsigned NOT NULL,
  `count_child` int(10) unsigned NOT NULL,
  `animal` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bookings';

INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 101, '1998-09-27 23:57:29', '2010-01-03 09:03:55', '1994-02-12 19:21:38', 975403257, '+', 6, 1, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 121, '1987-11-11 13:52:42', '2011-03-27 03:36:39', '1998-01-19 04:54:50', 4, '+', 9, 5, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 131, '2016-03-12 19:34:06', '2019-04-06 03:13:21', '1997-12-11 11:15:01', 261778, '-', 1, 6, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 151, '1999-02-12 17:49:10', '1971-04-12 21:43:20', '1995-01-12 01:40:18', 8773, '+', 6, 3, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 161, '1986-06-12 22:55:43', '1971-07-28 08:08:46', '1981-10-29 04:35:38', 1, '-', 5, 1, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 181, '1990-12-14 02:45:44', '1978-08-07 02:39:52', '2004-04-21 18:01:54', 0, '-', 5, 3, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (51, 191, '1992-12-10 03:40:30', '1985-04-21 02:59:37', '2000-03-13 17:14:46', 167053782, '+', 2, 3, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 102, '2002-07-20 11:34:47', '2009-04-03 10:17:41', '2019-08-29 10:46:58', 27, '+', 4, 6, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 122, '1998-02-22 04:00:25', '2001-03-17 12:18:30', '1971-09-17 00:49:19', 5, '+', 6, 2, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 132, '2005-12-01 11:49:31', '1977-09-06 02:52:49', '1983-02-07 01:21:19', 245215697, '+', 9, 6, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 152, '2006-08-27 09:05:20', '1994-01-14 18:12:38', '1980-12-13 07:22:58', 2, '-', 2, 6, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 162, '2002-10-10 11:04:59', '2002-02-26 00:37:24', '2012-02-29 01:14:49', 796987097, '-', 8, 8, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 182, '1976-06-18 15:56:38', '2000-08-22 08:41:11', '2016-06-06 12:45:41', 88344, '+', 6, 8, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (52, 192, '2011-08-14 07:07:46', '1991-03-01 17:28:05', '1975-10-29 17:29:17', 94, '-', 5, 5, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 103, '2000-07-02 03:04:33', '1974-02-17 03:58:50', '2002-08-29 05:04:17', 482561821, '-', 8, 1, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 123, '2007-05-22 18:49:45', '1981-07-18 08:45:58', '2017-11-14 09:07:14', 5, '-', 5, 2, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 133, '1981-10-30 12:59:34', '1981-10-05 14:47:16', '1977-08-22 11:11:13', 4, '+', 3, 5, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 153, '1993-01-20 08:51:33', '2018-10-19 23:25:47', '2019-02-01 06:02:40', 850, '+', 8, 1, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 163, '2008-09-29 02:23:02', '2007-09-06 13:28:00', '1977-07-06 03:42:53', 62250, '+', 9, 2, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 183, '2001-09-27 22:09:58', '1987-11-24 23:49:15', '1992-05-25 05:36:56', 7439, '+', 7, 6, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (53, 193, '2018-10-09 14:34:36', '2019-03-17 07:26:08', '2019-07-13 12:24:58', 910541601, '+', 2, 8, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 104, '1995-11-24 01:18:21', '1995-02-22 14:38:21', '1995-04-05 07:42:14', 40, '-', 6, 2, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 124, '2001-04-25 09:40:34', '2004-12-26 16:30:38', '1981-11-17 01:31:02', 0, '+', 6, 9, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 134, '2012-06-25 21:37:35', '1986-08-05 09:53:43', '1983-12-30 01:27:49', 40, '-', 8, 7, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 154, '1998-01-24 03:33:42', '2009-12-20 14:37:50', '1994-02-04 16:47:04', 0, '+', 5, 8, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 164, '2016-12-29 17:12:26', '2018-11-13 12:34:39', '2007-03-30 19:47:20', 93130, '+', 6, 1, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 184, '2017-09-30 00:59:15', '1992-04-06 19:59:24', '2011-04-02 21:25:20', 0, '+', 4, 2, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (54, 194, '1974-09-08 21:35:39', '2007-03-30 13:52:40', '2005-01-19 22:09:12', 9, '+', 6, 4, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 105, '1977-06-05 07:12:44', '1975-06-04 01:13:38', '2015-11-27 02:22:34', 2, '-', 7, 4, '-', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 125, '1976-08-31 12:49:58', '2004-08-22 15:49:56', '2019-12-11 18:31:23', 939787390, '+', 7, 5, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 135, '2004-06-17 14:14:26', '1994-10-25 10:34:05', '2017-11-17 22:26:26', 4, '+', 4, 8, '-', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 155, '2015-11-08 06:32:47', '2002-01-14 21:17:46', '1978-10-10 02:40:48', 51, '-', 5, 7, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 165, '1979-06-27 21:57:09', '2005-10-19 09:33:56', '1973-08-09 00:06:39', 277343840, '-', 7, 2, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 185, '2010-06-29 04:55:09', '2018-03-14 00:43:22', '1976-10-21 10:15:28', 50992326, '+', 1, 7, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (55, 195, '1991-08-28 06:03:03', '1988-05-13 12:42:09', '1990-09-02 18:27:56', 8202, '+', 8, 2, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 106, '2014-02-16 13:39:19', '1987-12-13 11:01:12', '2015-01-29 05:23:53', 44945648, '-', 9, 2, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 126, '2002-09-05 09:20:00', '1980-02-14 08:50:16', '2017-02-12 09:55:02', 4606, '+', 7, 4, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 136, '1980-11-24 21:13:33', '1975-07-15 05:36:41', '1970-02-14 22:11:08', 53, '+', 3, 3, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 156, '1987-03-30 13:39:56', '1978-10-19 01:30:25', '1972-09-12 18:49:29', 73644, '-', 2, 6, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 166, '1973-08-05 19:03:39', '1991-04-04 08:47:54', '1975-01-08 06:45:25', 27644706, '+', 6, 9, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 186, '1972-01-18 03:12:36', '2010-10-12 04:07:09', '1987-01-16 12:31:01', 611523, '-', 6, 7, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (56, 196, '1994-03-08 11:09:10', '2002-01-09 16:12:09', '2015-05-31 08:37:45', 34475, '+', 1, 9, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 107, '2007-08-11 17:01:30', '2008-06-30 11:28:14', '1990-01-14 01:01:55', 3, '-', 5, 5, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 127, '1989-09-13 15:21:54', '2011-05-22 20:00:21', '2001-11-09 08:30:35', 326994, '-', 7, 1, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 137, '1987-12-31 16:36:28', '1987-09-10 17:58:00', '1979-03-01 09:57:22', 4, '-', 7, 9, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 157, '1985-04-01 09:55:59', '1970-06-25 06:18:18', '1993-10-18 10:46:58', 15351193, '+', 5, 4, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 167, '2007-09-30 01:17:31', '1999-06-24 05:45:24', '2007-09-08 18:46:33', 93992, '-', 1, 6, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 187, '2002-05-23 15:38:38', '1971-12-27 20:41:41', '1976-06-16 18:27:54', 19360770, '-', 3, 4, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (57, 197, '1976-01-07 03:05:27', '1978-10-28 07:14:06', '2016-10-12 19:23:55', 13570, '-', 6, 9, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 108, '2003-03-20 10:35:16', '2018-06-12 18:32:39', '1991-06-26 14:56:00', 33708320, '+', 2, 7, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 128, '1975-07-31 15:37:38', '1999-10-25 23:02:09', '1990-05-29 15:46:43', 90, '+', 4, 6, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 138, '2005-04-15 12:36:50', '2020-02-08 16:19:05', '1998-04-19 16:16:30', 1, '+', 3, 5, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 158, '1997-06-03 08:20:22', '1976-05-15 20:58:20', '1977-08-19 01:43:43', 362026, '-', 9, 1, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 168, '2018-04-10 08:09:09', '1985-06-09 19:39:38', '2009-05-28 19:57:56', 19586, '+', 5, 1, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 188, '2007-09-21 21:08:06', '2014-01-15 14:16:01', '1984-11-25 00:14:22', 674839438, '+', 8, 2, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (58, 198, '2005-01-31 17:53:40', '1997-05-03 21:51:25', '2004-08-02 07:57:21', 3183924, '+', 5, 7, '-', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 109, '1984-08-23 03:54:04', '1979-05-09 17:24:44', '1981-02-10 03:11:30', 94002, '+', 1, 9, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 129, '1972-09-21 22:22:37', '1992-06-03 07:09:40', '1972-04-10 10:53:37', 395, '+', 8, 1, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 139, '1972-02-05 11:05:01', '1994-04-30 20:36:32', '2009-02-09 06:57:28', 284, '-', 6, 7, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 159, '1991-10-18 06:52:14', '1987-01-13 03:22:00', '2018-07-01 20:58:16', 411688, '+', 2, 1, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 169, '1978-08-25 20:34:56', '1992-01-23 15:39:23', '2018-10-27 22:13:39', 95281608, '+', 2, 7, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 189, '1977-11-08 21:27:51', '1987-10-26 12:35:13', '2002-12-14 14:32:48', 393803, '+', 3, 9, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (59, 199, '1985-01-29 13:42:23', '1983-12-24 10:48:17', '2005-05-06 05:40:16', 69389394, '-', 5, 6, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 110, '1972-11-15 00:51:22', '1980-02-11 06:25:15', '1980-09-25 18:13:17', 885311524, '+', 7, 8, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 130, '1975-03-15 06:04:26', '2015-06-15 03:33:13', '2016-01-12 22:40:23', 0, '+', 6, 4, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 140, '1990-04-09 01:06:15', '2020-12-03 10:13:10', '1997-12-08 22:28:22', 225, '-', 3, 7, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 160, '2016-12-13 07:20:32', '1971-06-12 08:53:54', '1985-09-03 03:52:55', 9677146, '-', 2, 7, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 170, '1972-11-30 00:24:02', '1985-11-11 23:50:57', '1980-12-13 21:37:04', 25637956, '+', 7, 9, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 190, '1983-09-20 01:15:20', '1998-03-07 06:39:06', '2008-10-30 00:39:05', 4985238, '+', 6, 7, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (60, 200, '1991-06-20 11:47:44', '1984-01-24 20:31:40', '1995-07-25 05:30:47', 95689, '-', 4, 4, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 101, '1988-10-28 07:29:30', '2010-11-21 17:12:06', '1996-08-27 04:48:48', 15, '-', 8, 6, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 111, '1972-08-28 00:15:20', '1976-11-18 23:18:21', '1973-07-07 00:59:07', 6085582, '+', 8, 7, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 131, '1994-08-25 20:16:30', '1971-03-04 06:46:54', '1978-05-03 00:31:17', 3368386, '+', 6, 8, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 141, '1987-03-29 17:41:07', '2007-08-30 03:42:15', '1973-10-13 21:29:01', 14517, '+', 7, 7, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 161, '1998-09-07 08:34:10', '2018-11-27 06:31:22', '1985-03-18 03:24:58', 598811, '+', 9, 4, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 171, '2017-11-22 18:25:59', '1970-06-14 19:49:39', '1982-08-15 18:07:52', 7, '-', 8, 5, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (61, 191, '1990-12-22 05:02:01', '2013-03-02 08:02:30', '1972-02-04 21:51:44', 521, '-', 2, 5, '-', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 102, '2019-09-07 10:04:28', '1986-11-25 19:43:39', '2011-11-01 13:28:11', 976584092, '+', 1, 6, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 112, '2001-03-11 01:14:46', '2008-05-22 00:31:30', '2019-11-25 00:34:09', 0, '-', 2, 8, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 132, '1973-09-02 19:49:16', '1978-01-01 00:51:51', '1974-06-19 22:11:19', 38085, '-', 7, 4, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 142, '1990-05-13 09:43:00', '2019-09-21 07:03:45', '1982-01-09 01:30:26', 8049060, '-', 8, 5, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 162, '2018-10-16 01:36:19', '1977-04-26 19:46:22', '2006-12-29 07:52:54', 79221, '-', 4, 6, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 172, '1988-12-09 20:56:08', '2007-01-21 22:59:16', '1972-02-25 02:54:24', 72, '+', 4, 1, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (62, 192, '1998-11-13 03:46:59', '2011-11-20 00:12:07', '2006-10-01 03:37:02', 0, '+', 2, 1, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 103, '1971-01-14 03:19:42', '2003-11-10 05:10:53', '2004-01-31 04:55:42', 3, '-', 3, 4, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 113, '1992-06-26 20:04:29', '2001-03-14 01:43:01', '2006-01-24 03:17:46', 918, '-', 9, 1, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 133, '1971-07-27 10:05:29', '2015-12-10 10:01:42', '2020-05-27 01:45:06', 4011320, '-', 9, 7, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 143, '1992-11-01 03:13:15', '1994-02-23 22:02:59', '2009-08-26 01:59:34', 136459344, '-', 4, 7, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 163, '2000-07-05 21:51:50', '1977-01-20 08:04:59', '2007-03-18 13:28:09', 93900, '+', 4, 7, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 173, '1991-03-12 19:45:58', '1989-12-30 15:41:57', '2009-02-22 16:51:53', 6259, '-', 7, 4, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (63, 193, '1999-02-22 03:47:54', '1993-02-23 05:04:53', '2004-07-02 18:11:25', 1065, '-', 2, 3, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 104, '1989-02-17 10:40:55', '1985-07-25 20:32:59', '1998-12-10 18:25:34', 1069, '-', 1, 7, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 114, '1976-01-07 15:57:21', '2009-02-07 01:46:17', '2016-12-07 08:14:14', 5, '-', 9, 5, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 134, '2016-08-15 22:50:43', '2006-05-04 05:31:31', '2007-07-04 04:41:20', 6004, '-', 2, 3, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 144, '1993-02-21 01:52:32', '1987-04-04 18:15:33', '2011-03-23 15:41:16', 373197700, '+', 6, 6, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 164, '1976-11-16 08:48:02', '1996-04-06 21:37:41', '2016-04-03 17:34:38', 26, '+', 7, 6, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 174, '1975-08-09 23:54:35', '1981-10-19 19:54:46', '1981-01-10 18:50:15', 6, '+', 2, 1, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (64, 194, '1983-03-09 05:19:50', '1986-06-15 13:31:39', '1995-08-04 17:39:21', 6765900, '-', 4, 3, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 105, '2000-08-14 02:06:43', '2001-05-06 02:15:28', '1978-12-13 16:45:51', 78, '+', 2, 3, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 115, '2005-09-22 13:59:31', '1974-08-03 03:12:01', '2013-02-15 07:37:55', 262, '+', 4, 3, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 135, '1999-09-11 03:52:46', '2016-10-19 19:54:36', '2008-02-13 09:35:37', 5884, '+', 9, 3, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 145, '1994-09-04 09:25:53', '1987-06-07 08:30:06', '2003-10-27 23:46:16', 734359, '+', 5, 4, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 165, '1997-04-25 00:50:13', '2006-01-12 21:03:09', '2004-07-12 15:52:31', 87459264, '+', 6, 1, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 175, '1979-07-12 04:47:23', '1986-11-22 08:16:58', '2020-08-16 22:00:24', 0, '+', 5, 9, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (65, 195, '1994-03-23 09:32:29', '1973-08-14 03:24:51', '2009-06-12 12:01:24', 21916188, '+', 8, 1, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 106, '2002-11-18 17:21:36', '2011-08-23 09:52:23', '1971-10-18 18:54:08', 186, '-', 5, 4, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 116, '1997-02-18 20:40:15', '1989-11-23 09:12:56', '2007-06-10 11:24:56', 7591289, '+', 1, 1, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 136, '1989-06-28 04:18:58', '1987-08-26 04:28:50', '1998-05-07 20:27:13', 8151076, '+', 6, 7, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 146, '2005-08-14 16:03:05', '1985-01-26 00:43:03', '1983-10-15 00:44:24', 31, '-', 6, 7, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 166, '1987-11-09 17:36:13', '1978-07-09 18:04:38', '1992-08-26 12:35:30', 17750, '+', 7, 2, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 176, '2011-12-15 06:04:44', '2020-05-05 00:23:13', '1975-09-27 01:23:03', 5382, '-', 4, 3, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (66, 196, '1980-04-17 20:54:42', '1981-05-04 21:51:44', '2018-04-22 20:00:38', 77149875, '-', 3, 5, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 107, '1987-07-10 12:39:41', '1988-03-30 18:23:44', '1995-05-20 03:34:16', 7, '-', 2, 6, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 117, '2009-08-22 23:33:51', '1986-11-15 23:25:59', '1986-12-25 00:19:47', 91231, '+', 3, 7, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 137, '1996-04-10 12:01:52', '1988-04-25 01:35:50', '1977-06-06 22:44:55', 82974529, '+', 9, 3, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 147, '1990-12-23 15:00:53', '1999-12-04 16:37:08', '2002-09-24 14:34:11', 2, '-', 9, 6, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 167, '2007-12-06 17:40:24', '2006-02-01 14:43:02', '1984-12-04 06:36:31', 760957, '-', 5, 2, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 177, '1997-05-06 18:13:10', '1992-01-01 12:24:24', '2014-10-24 19:26:52', 275882, '+', 5, 1, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (67, 197, '2002-05-11 08:44:43', '2008-08-02 11:34:52', '1993-06-29 12:44:49', 88, '-', 4, 7, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 108, '2018-09-08 12:50:35', '1988-05-20 04:52:11', '2018-10-26 14:39:52', 27, '+', 7, 3, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 118, '2018-05-07 17:35:56', '1991-08-09 06:20:47', '1984-04-16 19:04:29', 2152, '+', 7, 1, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 138, '1978-11-24 06:50:54', '1987-09-24 19:16:42', '2013-07-07 02:11:02', 486, '-', 6, 4, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 148, '2019-09-17 11:50:30', '2016-11-24 03:16:05', '2019-05-30 19:53:11', 7211, '-', 8, 2, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 168, '1987-11-19 11:52:32', '2001-05-30 16:17:19', '2013-03-02 13:18:36', 654, '+', 8, 7, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 178, '2008-06-06 02:35:48', '1985-10-03 16:04:19', '1978-01-12 19:20:46', 9, '+', 4, 3, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (68, 198, '1997-12-25 06:03:41', '1976-07-22 15:09:17', '1980-05-30 13:08:12', 1, '+', 7, 9, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 109, '1996-02-24 07:42:29', '2007-08-20 18:20:53', '2017-12-28 18:07:25', 0, '-', 5, 5, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 119, '2001-08-10 02:55:30', '2020-01-05 23:13:44', '1999-01-09 13:41:14', 0, '+', 7, 7, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 139, '1991-08-08 12:12:34', '1988-12-07 04:31:30', '1972-02-04 05:47:51', 6765939, '+', 8, 2, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 149, '2012-06-15 02:50:58', '2020-07-11 07:41:25', '1971-12-02 19:02:27', 0, '-', 5, 9, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 169, '2002-10-26 21:08:00', '2004-07-26 08:15:01', '2005-04-25 00:19:53', 2142, '-', 8, 5, '+', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 179, '2004-05-15 06:19:11', '1988-11-25 09:39:16', '1977-12-31 07:34:27', 1027759, '+', 2, 3, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (69, 199, '1997-05-21 18:00:11', '1970-10-25 20:50:34', '1980-10-28 20:16:31', 78585, '+', 7, 6, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 110, '2014-05-27 23:19:01', '2011-01-07 01:26:01', '1974-11-11 21:10:36', 674814, '+', 3, 2, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 120, '1981-12-23 03:57:41', '1984-10-27 19:36:55', '1998-12-18 13:57:00', 71, '-', 6, 5, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 140, '1988-05-18 18:06:21', '1991-08-08 15:18:06', '1981-12-21 22:39:11', 319113, '-', 2, 6, '-', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 150, '1997-03-12 04:15:42', '2000-11-02 15:17:00', '2011-04-23 12:00:41', 6488, '-', 4, 4, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 170, '1975-12-18 07:11:36', '1980-08-06 04:08:09', '2018-11-11 12:29:26', 2101822, '+', 8, 9, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 180, '2000-06-28 21:18:24', '1971-07-07 10:43:21', '1971-11-02 11:19:18', 479, '+', 4, 2, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (70, 200, '1995-12-11 23:57:49', '1992-05-13 01:14:06', '2001-03-13 01:04:24', 1230, '+', 3, 1, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 111, '2010-01-05 22:36:16', '1985-12-30 13:09:54', '1990-10-18 13:07:46', 5753015, '+', 4, 9, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 121, '2015-09-27 03:04:47', '2003-01-09 00:43:30', '1999-04-09 04:25:41', 784215214, '-', 1, 4, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 141, '2000-07-19 13:31:56', '1976-05-08 19:39:05', '2015-11-26 06:54:20', 12, '-', 9, 8, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 151, '2004-08-09 03:28:47', '2007-06-26 16:14:38', '1988-04-02 05:06:50', 902446, '-', 5, 3, '-', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 171, '1975-08-29 21:45:12', '1994-09-15 07:44:45', '1975-12-10 12:45:50', 183254878, '+', 4, 3, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (71, 181, '1977-03-28 23:38:23', '1979-04-08 02:49:32', '2001-06-10 22:05:16', 0, '-', 8, 9, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 112, '2009-11-06 10:48:27', '2000-11-25 02:30:58', '1976-10-25 01:52:43', 94045665, '-', 3, 8, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 122, '1970-12-11 15:04:08', '1992-04-10 18:58:17', '1980-06-16 04:33:57', 40, '-', 8, 1, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 142, '1986-11-17 00:06:10', '1999-08-20 13:08:13', '1992-01-17 04:32:10', 81065350, '+', 3, 5, '-', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 152, '2002-07-23 04:21:52', '2009-03-08 05:34:10', '2010-04-10 07:30:58', 69, '+', 4, 1, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 172, '1990-01-06 02:28:11', '1987-10-29 07:19:05', '2005-04-14 00:55:46', 573798461, '-', 2, 3, '-', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (72, 182, '1992-12-10 17:13:29', '1980-03-25 11:04:40', '2002-04-25 04:52:07', 664, '+', 9, 1, '-', '10');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 113, '1989-08-06 08:07:06', '2014-07-17 19:29:02', '2003-05-25 15:58:20', 92537171, '-', 3, 3, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 123, '2017-02-13 10:21:15', '2000-02-08 01:40:02', '2013-03-04 07:50:43', 27535637, '-', 8, 9, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 143, '1995-05-16 17:22:47', '1993-04-09 19:21:55', '1995-05-01 09:17:58', 972, '-', 4, 6, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 153, '1978-12-18 11:40:08', '2012-12-07 06:18:23', '2001-10-28 22:32:38', 779, '+', 2, 6, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 173, '1998-06-14 21:04:06', '2005-06-06 12:57:06', '2012-11-26 12:18:09', 903081953, '+', 7, 7, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (73, 183, '1971-12-31 11:00:13', '2002-01-01 19:39:23', '1980-08-09 18:18:54', 1409, '+', 9, 5, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 114, '2001-09-23 12:46:51', '1982-11-08 22:31:32', '2004-12-06 16:55:20', 247309139, '+', 8, 3, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 124, '2009-10-03 10:38:25', '1983-09-12 19:56:44', '2003-09-13 03:02:47', 0, '-', 4, 7, '+', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 144, '1979-12-26 15:24:53', '1983-09-02 22:10:32', '1976-07-07 12:23:18', 4, '-', 8, 9, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 154, '1996-12-29 21:53:06', '2017-11-05 08:01:13', '1987-10-28 18:26:39', 8224185, '-', 6, 6, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 174, '2002-08-26 04:34:11', '2003-04-21 17:16:45', '2015-01-26 14:02:49', 44058, '+', 3, 9, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (74, 184, '2016-04-10 01:48:03', '2020-10-17 11:34:33', '2016-07-05 07:38:15', 446274858, '+', 6, 5, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 115, '2001-03-28 09:49:46', '1993-12-17 00:26:07', '1994-03-31 01:54:41', 2165546, '+', 2, 6, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 125, '1990-12-21 02:47:22', '1979-03-17 11:42:22', '1996-02-03 03:24:21', 82277416, '+', 5, 5, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 145, '2016-01-19 18:49:05', '1972-07-31 18:28:21', '2004-12-13 20:32:17', 0, '+', 5, 7, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 155, '2007-03-03 20:07:08', '1991-03-25 15:35:22', '1987-05-02 19:20:44', 0, '+', 1, 9, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 175, '1987-09-25 15:07:15', '1985-12-12 05:34:42', '2002-08-14 09:11:19', 837, '+', 4, 1, '+', '9');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (75, 185, '2013-11-10 04:41:41', '1975-12-22 20:12:28', '2011-08-21 22:02:02', 14711117, '+', 4, 5, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 116, '2010-07-20 18:35:19', '1977-06-27 18:02:04', '2007-05-15 08:30:15', 603, '-', 1, 1, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 126, '2000-02-22 07:00:44', '2019-04-30 22:16:50', '2007-03-26 15:36:35', 980, '+', 3, 2, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 146, '1996-12-22 03:11:24', '1992-08-08 04:25:43', '2011-11-03 05:33:25', 0, '+', 9, 1, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 156, '1973-03-20 23:55:17', '2005-11-08 20:23:56', '1985-05-03 13:05:41', 841871559, '-', 4, 1, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 176, '2001-12-29 11:36:49', '2018-10-11 04:23:57', '1977-03-04 14:59:23', 5, '+', 5, 4, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (76, 186, '2016-03-08 12:33:59', '1998-07-23 18:36:42', '1979-06-25 22:31:42', 2444, '-', 8, 3, '-', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 117, '2006-04-01 06:01:57', '1975-01-29 22:40:22', '1977-12-06 09:19:45', 7095, '+', 5, 4, '+', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 127, '1976-09-30 07:41:44', '2009-01-04 02:10:04', '1982-06-19 04:05:21', 654954, '-', 6, 4, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 147, '1971-12-13 23:20:19', '1971-06-22 01:51:03', '1971-04-10 13:32:28', 0, '-', 8, 2, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 157, '2007-02-07 10:19:10', '1979-12-08 23:18:30', '1996-08-07 09:19:17', 0, '+', 2, 7, '-', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 177, '2008-04-26 00:51:22', '1989-10-23 23:33:53', '1974-01-27 06:28:13', 2, '-', 5, 2, '+', '8');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (77, 187, '2003-12-23 03:20:29', '1992-12-19 07:17:22', '2000-11-04 03:46:20', 422603904, '-', 4, 2, '-', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 118, '1996-12-04 15:05:45', '1985-03-15 01:07:28', '1991-09-19 00:32:57', 874946279, '+', 8, 8, '-', '5');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 128, '2012-12-30 05:28:54', '1980-01-03 14:27:39', '1985-12-03 09:38:39', 6558, '-', 3, 6, '-', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 148, '2007-12-27 19:38:37', '1984-07-06 23:18:44', '1990-12-19 15:16:58', 4, '-', 7, 2, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 158, '1996-04-05 05:38:18', '2006-11-27 06:03:56', '1985-05-12 11:36:54', 36823367, '-', 4, 4, '+', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 178, '1971-02-15 06:23:47', '1998-10-25 10:15:30', '1997-07-14 04:01:17', 7855223, '-', 4, 1, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (78, 188, '1991-04-17 07:21:25', '2001-06-08 06:40:33', '2006-11-03 10:18:31', 28514799, '+', 4, 8, '+', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 119, '1979-02-07 13:52:17', '1984-10-10 20:48:01', '1975-09-10 23:23:58', 328513380, '+', 2, 9, '+', '2');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 129, '1996-09-27 22:42:41', '2016-03-28 03:54:08', '2007-04-12 06:06:38', 24, '-', 1, 3, '+', '6');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 149, '2006-07-29 20:48:26', '1979-10-19 16:09:02', '1999-02-25 22:40:33', 9, '-', 1, 1, '-', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 159, '2016-01-19 11:02:48', '1996-12-31 14:52:11', '2001-02-26 13:34:45', 970, '-', 8, 6, '-', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 179, '1993-06-09 08:27:55', '1981-03-30 13:11:46', '1975-07-03 09:02:44', 0, '-', 2, 2, '+', '1');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (79, 189, '2000-11-08 08:13:10', '1992-03-06 06:30:21', '2016-09-09 07:32:47', 1, '+', 1, 5, '-', '4');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 120, '2003-03-18 22:39:57', '2017-04-07 15:26:25', '2011-04-07 13:49:45', 950, '-', 4, 1, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 130, '2004-10-02 03:03:09', '2000-09-26 10:46:56', '1982-01-22 07:26:54', 4457113, '+', 9, 7, '-', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 150, '2005-08-25 00:27:46', '1970-02-23 05:28:22', '2017-12-12 11:03:26', 196, '+', 2, 3, '+', '7');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 160, '1974-10-11 17:00:59', '2003-05-22 10:25:43', '1976-08-08 03:15:52', 0, '-', 7, 7, '-', '');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 180, '2010-01-22 22:45:30', '2000-03-13 06:12:49', '2016-05-27 23:42:09', 977079, '-', 7, 3, '-', '3');
INSERT INTO `bookings` (`user_id`, `hotel_id`, `created_at`, `arrival_day`, `check_out_day`, `count_days`, `business_trip`, `count_adult`, `count_child`, `animal`, `value`) VALUES (80, 190, '1988-11-11 16:02:07', '1993-02-10 16:55:06', '2011-02-03 16:15:22', 4298642, '-', 5, 9, '-', '9');


#
# TABLE STRUCTURE FOR: payment_details
#

DROP TABLE IF EXISTS `payment_details`;

CREATE TABLE `payment_details` (
  `user_id` int(10) unsigned NOT NULL,
  `cardholders_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` BIGINT unsigned NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `cvc` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All Hotels';

INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (51, 'sapiente', 4294967295, '0000-00-00 00:00:00', '700');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (52, 'inventore', 4294967295, '0000-00-00 00:00:00', '607');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (53, 'dolor', 4294967295, '0000-00-00 00:00:00', '982');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (54, 'saepe', 4294967295, '0000-00-00 00:00:00', '391');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (55, 'iste', 4294967295, '0000-00-00 00:00:00', '386');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (56, 'similique', 4294967295, '0000-00-00 00:00:00', '45');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (57, 'quaerat', 4294967295, '0000-00-00 00:00:00', '159');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (58, 'omnis', 4294967295, '0000-00-00 00:00:00', '764');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (59, 'soluta', 4294967295, '0000-00-00 00:00:00', '398');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (60, 'cupiditate', 4294967295, '0000-00-00 00:00:00', '181');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (61, 'ipsum', 4294967295, '0000-00-00 00:00:00', '437');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (62, 'qui', 4294967295, '0000-00-00 00:00:00', '581');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (63, 'deleniti', 4294967295, '0000-00-00 00:00:00', '835');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (64, 'officia', 4294967295, '0000-00-00 00:00:00', '419');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (65, 'qui', 4294967295, '0000-00-00 00:00:00', '973');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (66, 'cumque', 4294967295, '0000-00-00 00:00:00', '98');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (67, 'fugiat', 4294967295, '0000-00-00 00:00:00', '495');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (68, 'odio', 4294967295, '0000-00-00 00:00:00', '798');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (69, 'aperiam', 4294967295, '0000-00-00 00:00:00', '381');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (70, 'est', 4294967295, '0000-00-00 00:00:00', '424');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (71, 'qui', 4294967295, '0000-00-00 00:00:00', '441');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (72, 'qui', 4294967295, '0000-00-00 00:00:00', '988');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (73, 'voluptas', 4294967295, '0000-00-00 00:00:00', '867');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (74, 'sit', 4294967295, '0000-00-00 00:00:00', '652');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (75, 'dolores', 4294967295, '0000-00-00 00:00:00', '598');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (76, 'expedita', 4294967295, '0000-00-00 00:00:00', '978');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (77, 'cumque', 4294967295, '0000-00-00 00:00:00', '670');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (78, 'tempore', 4294967295, '0000-00-00 00:00:00', '974');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (79, 'dignissimos', 4294967295, '0000-00-00 00:00:00', '680');
INSERT INTO `payment_details` (`user_id`, `cardholders_name`, `card_number`, `expiration_date`, `cvc`) VALUES (80, 'saepe', 4294967295, '0000-00-00 00:00:00', '19');


#
# TABLE STRUCTURE FOR: reviews
#

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `hotel_id` int(10) unsigned NOT NULL,
  `rating_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Reviews about hotels';

INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (201, 51, 101, '5', 'Molestiae facilis et non nam perspiciatis neque reprehenderit est. Autem dolor tempore sed ut numquam laborum. Quidem dolorem voluptas id non veniam totam asperiores. Autem porro et aliquam dolores. Quod perferendis inventore autem et.', '2006-02-11 22:30:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (202, 52, 102, '3', 'Molestiae repudiandae earum repudiandae ullam voluptas. Soluta maiores rerum soluta quam. Voluptas eligendi ea error suscipit tempora. Qui similique voluptatum dolorem illo repudiandae qui itaque.', '1979-03-27 06:36:30');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (203, 53, 103, '8', 'Commodi sapiente dolorum harum et tempore eaque. Esse consequuntur provident praesentium repudiandae optio. Illo ipsam ipsam at hic occaecati et. Ut explicabo dolorem nihil doloremque.', '1972-04-11 02:37:27');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (204, 54, 104, '5', 'Ducimus velit et facilis aut sed perspiciatis. Nihil non debitis cum in odit facilis. Sunt et itaque veritatis impedit qui rerum. Aut veritatis quia enim aut repudiandae.', '1971-08-25 03:21:46');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (205, 55, 105, '7', 'Fuga quis vitae atque dolor cum aut aliquid eaque. Molestiae ipsam ipsa consectetur illo. Quis natus exercitationem laboriosam. Dolore in et laboriosam.', '2007-10-30 05:38:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (206, 56, 106, '1', 'Sit esse rerum tempora et et eligendi sit. Labore earum quia quam eveniet. Quia officia praesentium iure est. Perspiciatis aut distinctio voluptatem.', '1990-01-19 09:57:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (207, 57, 107, '10', 'Eos commodi saepe iste magni. Exercitationem earum illum ex aliquid. Suscipit est omnis itaque eos deserunt cum. Est ex aut doloribus quidem sed.', '2008-05-01 07:56:28');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (208, 58, 108, '7', 'Iusto non fuga nemo totam non sint. Quaerat asperiores tempore molestiae dolorem voluptatem soluta et. Magni maxime ipsam quis dolorum soluta. Corrupti praesentium iste voluptas aperiam aliquam.', '1973-05-01 09:18:23');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (209, 59, 109, '8', 'Deserunt earum rerum inventore architecto. Soluta ad tempora sapiente maiores qui sunt. Sequi molestias error suscipit sapiente. Nemo quia harum laboriosam magnam consequatur voluptatum et ratione.', '1979-07-15 15:30:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (210, 60, 110, '4', 'Possimus sunt doloribus suscipit iste. Autem assumenda aut blanditiis sed et hic. Voluptatibus et architecto asperiores neque est.', '2014-04-03 08:47:40');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (211, 61, 111, '7', 'Fugiat qui ut accusantium qui qui. Ut tenetur mollitia minima hic culpa accusamus. Sint iusto ea non pariatur cumque praesentium voluptatem. Quis aut autem veniam ut. Dolorem sit vel repellat.', '1976-03-22 04:33:29');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (212, 62, 112, '6', 'Rerum molestias sunt aliquam. Quisquam exercitationem voluptas et rerum dignissimos distinctio autem. Alias sit blanditiis consequuntur temporibus earum ea totam. Cum omnis qui numquam mollitia consequatur minima.', '2013-02-09 04:30:58');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (213, 63, 113, '10', 'Eligendi et pariatur quia. Quasi odit officia iusto maiores sapiente omnis provident. Quisquam velit rem expedita est eius iste.', '1990-04-25 06:24:41');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (214, 64, 114, '5', 'Veritatis eum omnis est distinctio sit nulla nam. Sit sapiente corrupti ut. Dignissimos et hic ex voluptates odit. Accusantium fuga consequuntur et quod.', '2002-06-27 03:20:28');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (215, 65, 115, '7', 'Illum pariatur velit qui corporis qui aut. Dolores eos dolore vel expedita sed voluptas numquam. Est vel in aspernatur qui perspiciatis. Inventore molestiae animi vitae sed pariatur.', '2019-01-15 01:55:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (216, 66, 116, '6', 'Dolores fugit voluptatum temporibus. Quo est itaque ut aut provident sit iure ipsa. Est officiis aperiam magnam qui nihil quo consequatur.', '2013-08-07 23:59:13');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (217, 67, 117, '5', 'In voluptatibus veritatis mollitia eveniet ea magnam eum aliquam. Eligendi ea repellendus eos quae. Voluptatem optio officiis et odio ipsum omnis qui.', '1974-06-05 11:41:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (218, 68, 118, '4', 'Quod est ipsa porro aut est excepturi. Id qui saepe fuga temporibus aliquid facere tempore. Qui odit aspernatur in consequatur.', '2020-02-05 07:55:37');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (219, 69, 119, '7', 'Voluptate et corporis saepe omnis quis ad ut. Suscipit id amet quasi aut non maxime illum. Modi sint eum et quo eius esse sunt.', '1998-10-07 03:06:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (220, 70, 120, '8', 'Ratione veritatis recusandae est aut et. Laboriosam et minima et voluptatem numquam consectetur id sit. Consequatur necessitatibus dignissimos dolorum id fuga velit. Optio ab laboriosam praesentium quasi rerum placeat impedit.', '2002-05-12 05:54:32');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (221, 71, 121, '3', 'Aut vel libero aliquid non. Sed quisquam laudantium corrupti aliquam odio. Fugit sunt molestiae ipsa itaque. Excepturi nulla et sunt rem animi laudantium sed.', '1993-02-08 13:46:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (222, 72, 122, '7', 'Non dolore dolorem molestiae iste. Laboriosam in magnam nihil tempore pariatur vel. Iusto commodi non molestiae. Aut vel in repellat qui tempora quae. Maiores ea perspiciatis consequatur officia sequi.', '2009-02-07 03:11:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (223, 73, 123, '7', 'Cum rerum tempora non deserunt maiores dolorem ut. Nihil et ducimus dolore ea nobis quod ipsa esse. Fugit corrupti odit quisquam ad reprehenderit exercitationem aut.', '1986-05-03 10:45:46');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (224, 74, 124, '2', 'Commodi quibusdam architecto est quasi at assumenda iusto. Et neque quia ullam distinctio modi. Illo voluptatibus beatae maiores accusamus autem. Itaque blanditiis non voluptatem possimus voluptatem et omnis.', '2011-09-19 16:34:37');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (225, 75, 125, '5', 'Commodi qui eos provident autem sit perspiciatis fugiat. Tempore error eos molestiae omnis deserunt. Vero est velit architecto ipsum.', '2006-08-08 03:59:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (226, 76, 126, '10', 'Dolorum deserunt vel sunt aspernatur magni. Rerum est consectetur possimus eos. Voluptas ducimus ipsa soluta magnam optio dolores voluptas. Saepe sit quae incidunt ut.', '1987-12-31 13:55:14');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (227, 77, 127, '10', 'Repudiandae molestiae non culpa dicta. Quidem tempore reiciendis dignissimos sit quia atque.', '1980-11-06 02:58:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (228, 78, 128, '4', 'Corporis suscipit earum rerum qui ut reiciendis et voluptas. Quisquam odit ut quia aut est. Est inventore et consequuntur repellendus fugiat. Iste sed molestiae itaque ut dolorem ut.', '2009-06-19 04:50:01');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (229, 79, 129, '1', 'Commodi laboriosam quos dolorum odio aut molestias eligendi. Ipsa dicta velit minus officiis esse eveniet delectus consequatur. Aut quibusdam ut et magni ab non.', '1993-05-21 17:58:50');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (230, 80, 130, '2', 'Veritatis vel sed maiores quo illo eum. Rerum rerum minus in ducimus et mollitia. Et qui explicabo voluptatem aut at dolorem fugit. Eos quis ipsum accusamus incidunt repellendus ut dolore.', '2019-09-02 19:09:22');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (231, 51, 131, '7', 'Consectetur molestiae et maiores quia ex. Mollitia quia iure et quis voluptate eum ad quam. Iste est ratione nostrum quasi totam. Fugiat in maiores optio deserunt voluptatum ducimus.', '2018-03-09 14:20:22');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (232, 52, 132, '5', 'Ut et veniam expedita. Inventore id enim laudantium consequatur error ut. Et at reiciendis impedit voluptas mollitia.', '1978-07-21 04:39:39');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (233, 53, 133, '4', 'Similique officia eaque eos magni ipsam. Ducimus fugiat praesentium et. Aut omnis optio mollitia quod est recusandae sed est.', '1977-03-22 13:25:36');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (234, 54, 134, '3', 'Eum debitis voluptas omnis dolores quas. Et ut qui quo ut sit. Omnis expedita accusantium quam et corporis et. Minus dolores qui dolorem voluptatem omnis sit.', '1990-09-03 23:07:03');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (235, 55, 135, '4', 'Incidunt vel aut distinctio et qui enim deleniti animi. Officiis ipsa sint quis aut. Consequatur dicta est ipsa molestiae quaerat esse saepe.', '2013-09-03 16:26:02');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (236, 56, 136, '6', 'Sit est voluptatibus harum. Esse perferendis delectus illum rerum sed quia odio fugiat. Voluptatum consequuntur fugit et occaecati et. Maiores alias eum quo accusamus architecto ut.', '1993-12-13 03:52:25');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (237, 57, 137, '9', 'Facere provident id autem dolorum. Est occaecati est consequatur omnis praesentium repellat qui. Quia et id est nisi vitae.', '1974-01-08 09:49:05');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (238, 58, 138, '9', 'Qui soluta aut enim veritatis eos et facilis. Praesentium dolorem at eaque. Ratione quos rerum et rerum natus praesentium velit.', '2008-11-23 17:02:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (239, 59, 139, '5', 'Quis nulla eum unde optio. Ea fugit ut in amet sed rerum. Deserunt consequatur ad eaque eos voluptas. Vel consequuntur animi praesentium dolore.', '1987-06-17 02:12:41');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (240, 60, 140, '8', 'Et laudantium qui nemo reprehenderit voluptate. Rerum fugiat quas aut autem. Et quis delectus omnis sint saepe totam. Quis laudantium accusantium sunt quo.', '2017-03-25 05:01:35');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (241, 61, 141, '6', 'Sit distinctio asperiores modi praesentium. Qui error id quisquam minus ex. Nihil ullam doloremque quia quo veritatis sed ut. Tenetur aut quos et eveniet sapiente placeat deleniti.', '2006-03-09 03:16:16');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (242, 62, 142, '4', 'Illum deleniti quia rerum. Consequuntur omnis eos sunt ut. Suscipit iure minima mollitia perferendis est. Alias et et ipsam pariatur cum dolore omnis.', '1985-08-27 05:13:49');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (243, 63, 143, '10', 'Vero perspiciatis at quisquam reiciendis odio qui. Qui quas voluptatem perferendis aut rerum aliquam.', '1993-12-08 19:13:50');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (244, 64, 144, '4', 'Eos dolore nisi ducimus voluptatibus. Non labore sapiente natus recusandae.', '2011-08-07 04:56:07');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (245, 65, 145, '9', 'Sit sed est illum molestias maxime delectus. Optio deserunt non magnam culpa sint officiis. Dolorem consequuntur hic explicabo ab earum cum veniam nulla. Sed tempore voluptas aut.', '1973-06-23 10:18:37');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (246, 66, 146, '1', 'Tempora nulla itaque nobis reiciendis voluptatibus iste. Vel perspiciatis et illum est rerum aperiam. Consequatur repellat libero sit quas omnis quos.', '1970-09-27 03:47:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (247, 67, 147, '5', 'Qui sed aliquid quis sit vel quibusdam dignissimos aspernatur. Ad tempore sunt molestiae. Rerum dolor eveniet quia nesciunt qui. Dolor omnis ea quo ab dolor numquam.', '1975-11-27 06:27:48');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (248, 68, 148, '3', 'Eveniet cupiditate vero tempore voluptatibus laudantium ipsam. Animi magni quis quas magnam ut laudantium ut. Voluptas ab placeat tenetur dolor quia et. Quasi voluptatem ad ut distinctio voluptatem.', '2012-01-04 21:17:58');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (249, 69, 149, '6', 'Earum voluptatum at fugiat provident natus quia vero. Perspiciatis sint perferendis nulla. Hic quia labore beatae distinctio magnam.', '1977-06-28 06:51:54');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (250, 70, 150, '3', 'Itaque in ea magnam quod qui sed. Ipsum maiores repellat quaerat. Ut aliquam qui earum deserunt voluptatum sint. Id eveniet et quod perferendis maxime quia quas.', '1980-09-05 07:33:47');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (251, 71, 151, '7', 'Sit non omnis quos dignissimos doloribus beatae voluptatum porro. Praesentium ut aperiam aperiam distinctio. Esse aspernatur ex culpa molestiae. Nobis porro sed veniam voluptas repellendus molestiae dolores.', '2000-05-09 13:39:19');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (252, 72, 152, '5', 'In eum ut ipsa accusantium officia vel voluptatem accusamus. Perspiciatis saepe est sed itaque et. Accusantium sapiente sed recusandae impedit nam.', '2013-03-18 15:04:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (253, 73, 153, '5', 'Esse dignissimos praesentium dolorem et et nesciunt eaque. Aperiam voluptatum illum nisi consequatur velit. Quo consequatur vero commodi eum placeat et aut.', '1997-10-14 13:54:52');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (254, 74, 154, '2', 'Et sapiente et neque saepe ea. Fuga impedit et ipsum nesciunt alias maiores. Velit voluptas nihil quia pariatur ut sunt.', '1994-08-07 11:50:07');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (255, 75, 155, '4', 'Omnis occaecati molestias magnam qui cumque cum. Minima aut ut consectetur rem deleniti quos veniam. Iure voluptatem ullam nesciunt autem. Quisquam similique quia quia.', '1974-04-13 21:24:53');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (256, 76, 156, '1', 'Quidem facilis nihil consequatur deleniti officiis. Maiores corporis ad quaerat cum. Ipsa sed sapiente perferendis fuga ab.', '2003-11-19 00:39:34');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (257, 77, 157, '10', 'Id veritatis quae exercitationem impedit. Aut accusantium molestiae at dolor voluptas. Voluptates et cumque asperiores nulla.', '2014-06-21 19:55:54');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (258, 78, 158, '6', 'Sequi officiis enim ut corrupti alias voluptates aut. Maiores illum et vitae autem consequatur harum. Sed illum est eveniet aut optio atque. Quisquam reprehenderit distinctio et itaque blanditiis sunt qui. Omnis quisquam aut nobis nihil in autem ea exercitationem.', '1978-03-14 02:52:59');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (259, 79, 159, '6', 'Expedita officiis accusantium qui aut. Ipsa magnam expedita autem. Reiciendis qui ex quod quas eveniet.', '1970-12-04 16:45:20');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (260, 80, 160, '1', 'Delectus nesciunt nisi sunt voluptate quia veritatis. Quidem molestiae omnis nulla quas iste. Hic vel et enim aliquam. Laborum illo maxime impedit quis.', '2006-11-13 06:43:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (261, 51, 161, '5', 'Quasi aspernatur iste minima voluptas illum assumenda. Sint velit rerum aperiam molestiae totam aut soluta. Saepe enim voluptas quisquam fuga. Suscipit aliquid voluptatem autem.', '1992-03-11 04:22:49');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (262, 52, 162, '10', 'Dolore qui laborum adipisci sint optio id. Rerum dignissimos a quis officiis. Aut maxime omnis aut et. Modi sit qui quae harum vel praesentium quidem. Eaque quo libero sed sapiente explicabo corrupti.', '2013-04-01 23:37:04');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (263, 53, 163, '5', 'Rerum eum dolorum dolores dolorem incidunt sunt enim. Earum corporis nobis et amet similique impedit. Beatae temporibus eos nihil architecto ducimus voluptatem aut. Corporis et expedita fuga voluptatem dicta.', '2005-03-20 02:54:49');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (264, 54, 164, '7', 'Assumenda voluptatem aut vero qui accusantium nostrum. Qui vitae repellendus voluptatem voluptatem vel. Distinctio laborum fuga non et eum et eos fuga.', '2003-02-01 02:39:27');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (265, 55, 165, '9', 'Libero molestias tempore nobis voluptate rerum et id. Occaecati consequatur tempora quia incidunt eligendi officiis dolore. Esse cupiditate nisi placeat dolorum temporibus a. Vel quia est vel voluptatem blanditiis nam laudantium.', '1972-10-24 14:25:32');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (266, 56, 166, '8', 'Ea eos ipsa dolore. Ab in voluptas earum modi. Nam vel placeat enim hic dicta quidem est. Molestiae aperiam eum voluptate libero.', '1997-07-06 21:25:32');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (267, 57, 167, '5', 'Accusamus sapiente odit aut aspernatur corporis. Est modi ratione suscipit. Quo saepe et tenetur quasi ut qui.', '1981-10-25 00:46:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (268, 58, 168, '6', 'Quasi veritatis et quae veniam dolor. Non saepe eius porro id eligendi. Nisi nobis dicta fugiat quisquam consequatur.', '1977-10-21 15:28:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (269, 59, 169, '6', 'Nobis porro architecto sed suscipit. Inventore consequuntur ipsum et doloremque et et facilis blanditiis. Asperiores perferendis sapiente corporis.', '1996-03-26 16:14:19');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (270, 60, 170, '2', 'Necessitatibus quis dolorem eos ipsam. Fuga autem velit dignissimos et est itaque magni. Tempora animi omnis voluptas non. Inventore ex dolore quisquam dolore nemo expedita.', '2006-07-01 16:16:13');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (271, 61, 171, '10', 'Dolore pariatur quasi sint perspiciatis dicta. Expedita at velit optio earum ipsam deserunt. Placeat ratione quas et magnam est corrupti vel. Excepturi qui magni nesciunt et magni. Quo rerum cumque explicabo perspiciatis.', '1975-03-29 15:09:03');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (272, 62, 172, '7', 'Et natus est voluptatem libero. Dolorem qui nulla excepturi deleniti distinctio. Iusto velit vel voluptatem dignissimos et.', '2010-06-24 13:33:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (273, 63, 173, '7', 'Ad eum qui est adipisci natus inventore. Atque voluptas voluptatibus voluptas soluta. Laborum consequuntur fugiat possimus.', '2012-12-17 12:08:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (274, 64, 174, '6', 'Beatae natus vel perferendis voluptatum ipsum ab. Sed recusandae accusamus vero rerum sit. Aspernatur totam hic inventore impedit provident veritatis. Debitis omnis rerum quia sed.', '1972-09-13 03:53:47');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (275, 65, 175, '10', 'Omnis natus eligendi accusantium facilis. Itaque non sapiente excepturi soluta rerum necessitatibus ipsum. Enim dolor praesentium temporibus perferendis qui facilis.', '2005-07-14 14:08:54');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (276, 66, 176, '8', 'Temporibus animi dolorum qui iure assumenda veritatis. Repudiandae quia esse odio. Ea qui quia in rem voluptatem ea. Ab sint ducimus corporis quod necessitatibus aspernatur accusamus.', '2003-10-27 20:19:26');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (277, 67, 177, '2', 'Et sunt eligendi labore accusamus nihil. Et velit qui eligendi non. Est quam nam dolores quod ipsum ipsa.', '2016-11-25 10:25:37');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (278, 68, 178, '1', 'Temporibus ratione exercitationem amet dolor sit. Aperiam quia eius mollitia doloremque sunt qui. Sint quasi et et ea ut autem.', '1974-08-03 16:36:16');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (279, 69, 179, '5', 'Error itaque qui labore omnis sed. Adipisci doloribus et pariatur repellat eveniet. Eligendi autem nulla qui iusto ut quas.', '1981-10-15 21:55:26');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (280, 70, 180, '9', 'Amet eum pariatur corporis nihil mollitia. Quae dolores quisquam provident distinctio et commodi vero repellendus. Occaecati voluptatem nostrum doloribus repellendus quia.', '2007-08-10 05:09:48');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (281, 71, 181, '8', 'Sapiente quibusdam nihil dolores quam omnis in. Odio nobis quidem ut sed quidem voluptatem. Quis expedita quia qui sed quaerat temporibus. Beatae libero tempora ut iste.', '2000-04-21 17:12:54');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (282, 72, 182, '10', 'Molestias nostrum et quibusdam consequatur animi amet vero. Sunt molestias rerum repudiandae ratione qui. Ducimus autem quas voluptates numquam ipsa. Voluptatum dolor nulla corrupti ullam voluptates maxime quam.', '2009-11-17 21:22:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (283, 73, 183, '4', 'Ut quas saepe hic repudiandae enim. Eligendi ipsam facilis et magnam error. Asperiores animi aut occaecati autem iure. Velit sequi nisi omnis sint voluptatem dolores. Voluptates expedita nostrum laborum sint dolorum sunt aut.', '1994-12-18 09:47:08');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (284, 74, 184, '9', 'Qui iste quia at veniam qui. Ullam reiciendis sed consequatur cupiditate. Neque mollitia voluptas vero repudiandae et omnis. Temporibus quia modi velit cum quod quas.', '1990-05-17 04:51:12');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (285, 75, 185, '9', 'Libero aut ipsum quia. Vel praesentium quisquam atque quia magnam ex. Quas porro id tempora eligendi est.', '2001-12-19 08:12:20');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (286, 76, 186, '7', 'Numquam deleniti omnis expedita similique repellat ipsam sunt. Cupiditate adipisci optio at accusantium consequuntur voluptatibus quibusdam. Rerum commodi repudiandae debitis qui quaerat. Nam et nostrum alias a pariatur quia suscipit hic. Ab architecto praesentium numquam.', '1997-03-05 09:49:12');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (287, 77, 187, '4', 'Quis ut eum recusandae sit aut aliquam velit. Neque dolorum quis sint quaerat eligendi. Error eligendi quo iusto aut.', '1998-07-05 11:30:39');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (288, 78, 188, '5', 'Mollitia ut ullam consequuntur quisquam ratione non eaque. Et magni quis repudiandae voluptatem repellat quaerat et. Enim quam dignissimos sunt dolores quisquam vel. A officiis non ipsam voluptatem molestiae explicabo soluta. Natus suscipit iste ipsum exercitationem nulla.', '1994-03-20 10:35:10');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (289, 79, 189, '9', 'Deleniti quia voluptates id. Occaecati quia libero ipsum quasi ut rerum maxime. Nobis dolores ea consequatur nisi vel voluptates voluptas. Omnis possimus officia sequi est nihil.', '2016-07-02 14:21:07');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (290, 80, 190, '5', 'Eum laborum quam nostrum laborum sit. At id a ipsam nulla fugiat. Quo neque minus quam vel quo. Cumque non totam fuga ex maiores vitae dolore.', '1981-05-24 12:12:22');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (291, 51, 191, '8', 'Similique aut doloremque quaerat aut. Ducimus et explicabo corporis. Sint cumque esse vel. Atque sit esse culpa aut odit enim.', '1982-04-03 01:33:47');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (292, 52, 192, '8', 'A molestiae occaecati laudantium repellat. Voluptatem neque eligendi id repellat tenetur non voluptate. Nihil veniam sit adipisci molestiae sit velit enim iusto. Adipisci vitae qui repellendus quis dignissimos.', '2012-03-05 08:37:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (293, 53, 193, '3', 'Neque qui facilis vel deleniti mollitia voluptatem. Dolorem et quibusdam cumque aperiam. Reprehenderit ab aut est assumenda aspernatur aut nulla. Magni quod et est quaerat qui veritatis.', '1996-03-21 15:13:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (294, 54, 194, '7', 'Aut quasi voluptatum quae et ad tempore. Tenetur nemo ea eligendi tempore explicabo. Amet est sint voluptates nam temporibus doloribus. Eaque nostrum iure enim et repellat.', '2012-05-10 00:37:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (295, 55, 195, '9', 'Est eaque beatae hic reiciendis cupiditate amet illo. Officia et quod necessitatibus ab. Sit est animi iure odit quidem adipisci consequatur.', '1976-06-13 21:22:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (296, 56, 196, '1', 'Harum incidunt quisquam similique consequatur. Quia sapiente enim voluptas est non quis amet minima.', '1971-05-14 20:58:27');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (297, 57, 197, '10', 'Debitis odit nam nihil illo sit. Ipsam quia cupiditate iure pariatur. Tempora eum ipsam rem nihil repellendus enim nihil.', '1978-10-23 09:04:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (298, 58, 198, '7', 'Quia qui et reiciendis necessitatibus. Voluptatem sapiente in a voluptas culpa. Ea animi dolores corporis ea similique eius.', '1994-08-03 11:47:39');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (299, 59, 199, '5', 'Rem doloribus odit amet quas architecto. Dolore ea pariatur occaecati rerum. Quis eum qui dolorem aspernatur temporibus repellendus commodi.', '2001-12-08 22:39:38');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (300, 60, 200, '10', 'Nihil hic suscipit facilis aut deserunt quasi. Pariatur autem id molestiae et itaque. Inventore nisi sint occaecati. Est soluta et veniam laudantium quia impedit voluptates.', '2002-05-14 19:01:53');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (301, 61, 101, '6', 'Inventore error beatae omnis quis accusantium inventore cumque. Atque aperiam placeat commodi numquam porro ea optio dolorem. Occaecati sint et aut occaecati adipisci enim nemo. Ut tempore necessitatibus labore adipisci ab.', '1990-11-19 10:21:41');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (302, 62, 102, '10', 'Eveniet dolores voluptatum reprehenderit accusantium et. Est aut iste quam et et. Nihil consequatur odio dolor earum repudiandae eaque ipsa. Et est sit minus repellat et a ut.', '1987-08-18 02:56:08');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (303, 63, 103, '10', 'Numquam corporis est perspiciatis facere. Laborum et voluptas dolorem quisquam adipisci. Aut ratione corrupti facere ipsum. Ullam at sit id sequi. Reprehenderit natus sunt quia quod in eius laborum.', '1988-03-24 16:16:16');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (304, 64, 104, '3', 'Amet aliquid similique voluptatum alias vitae est sit. Non neque totam qui omnis sunt ut minus.', '1978-01-14 06:58:43');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (305, 65, 105, '6', 'Suscipit similique distinctio nam totam sint nihil officiis. Explicabo distinctio totam impedit sit aliquid eveniet est. Quibusdam tempora at voluptate iure eligendi.', '2012-04-28 17:22:59');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (306, 66, 106, '10', 'Voluptates totam praesentium perferendis minima sunt et rerum. Mollitia magni soluta culpa aut sit molestiae suscipit nesciunt. Aperiam ab dolore consequatur explicabo consequuntur omnis minima. Qui repellat enim laudantium aut. Aut et dolores expedita consequatur.', '1982-12-01 05:52:27');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (307, 67, 107, '3', 'Perferendis consequuntur sit nemo velit. Eos reiciendis asperiores voluptas aliquid deserunt. Iste exercitationem ut fugiat impedit eius. Aliquam magni laboriosam quae ex ut omnis.', '1973-04-03 12:19:18');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (308, 68, 108, '8', 'Saepe quibusdam vel asperiores. Accusantium corporis amet et debitis. Iste dicta autem porro consequuntur consequatur aperiam dolorum.', '2016-12-19 09:56:43');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (309, 69, 109, '9', 'Temporibus qui accusantium corporis atque magnam ratione officia. Aut dolor assumenda quaerat cumque enim.', '1990-08-25 14:53:00');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (310, 70, 110, '7', 'Ipsam harum nobis et facere ut qui quia earum. Itaque aperiam consequuntur voluptatem cupiditate. Minima autem et voluptatem unde eveniet fugit. Dolor cumque expedita perspiciatis perspiciatis natus aut nihil fugit.', '2010-10-12 19:02:59');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (311, 71, 111, '9', 'Dolorum et autem occaecati accusantium fugiat assumenda. Aut deleniti nihil sapiente asperiores amet temporibus. Ea temporibus blanditiis rerum occaecati.', '2018-12-20 11:11:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (312, 72, 112, '7', 'Modi dignissimos velit illo ducimus. Minima veniam eveniet quia esse sit ipsam id. Et quidem repellat consequatur neque minima. Veritatis similique incidunt ipsum sint saepe quas ipsa hic.', '2019-11-07 02:33:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (313, 73, 113, '1', 'Adipisci consequatur voluptatum rerum et. Et et eos doloribus in. Quia consequuntur qui libero voluptatibus et. Et eveniet minima vel aut.', '1997-02-21 09:23:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (314, 74, 114, '6', 'Ullam est corrupti iusto eius eos. Quia magnam error dolores optio. Ut est fuga dignissimos nisi aut sunt.', '2017-03-21 20:40:43');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (315, 75, 115, '6', 'Vel occaecati voluptatem qui rerum rerum praesentium et. Optio dolores est ut recusandae. Non voluptas dignissimos sit perspiciatis nihil est sint explicabo.', '2015-12-26 16:00:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (316, 76, 116, '10', 'Sint rerum minus commodi distinctio ullam quaerat corporis iure. Consequuntur quo consequatur ea qui saepe recusandae. Nesciunt et et fuga. At fugiat cumque omnis aut quibusdam.', '2013-01-17 18:01:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (317, 77, 117, '6', 'Sit soluta quidem facere amet rerum sint cupiditate. Iusto et voluptas sed sunt sapiente fugit. Suscipit id laudantium et porro dolores. Animi fugiat et aliquam asperiores eius est et dolore.', '2015-11-06 10:48:23');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (318, 78, 118, '2', 'Non aut rem qui sunt sit veritatis fuga. Nostrum temporibus non in dignissimos ab ut nesciunt sed. Dolores omnis dicta in aspernatur voluptatem ad. Non explicabo labore hic amet. Eius quia est maiores dolore adipisci in.', '2001-06-15 10:51:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (319, 79, 119, '1', 'Provident suscipit inventore est voluptatem. Minima iste dignissimos quas rerum nesciunt provident numquam. Voluptatibus et sint est distinctio ducimus. Est debitis aspernatur sint.', '1972-04-28 08:08:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (320, 80, 120, '6', 'Est a labore est quisquam iure nobis dolorem. Ut similique delectus rerum maxime. Odit quo ut est.', '1998-07-27 10:38:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (321, 51, 121, '1', 'Ullam quia ullam ut amet rerum amet. Odio exercitationem hic et qui exercitationem velit. Eos dolores minus consequatur sint. Ad quam ducimus ut eius sunt aspernatur.', '2012-07-28 05:52:49');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (322, 52, 122, '7', 'Dolorem fuga cumque consequatur culpa quaerat inventore illum et. Facilis neque aut debitis modi officia voluptatem quos. Ducimus inventore aut dolorem quasi facilis est.', '1971-11-25 00:52:05');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (323, 53, 123, '10', 'Voluptatem sapiente quam repudiandae qui. Quia suscipit quia voluptatem.', '1989-06-02 13:27:18');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (324, 54, 124, '2', 'Est quis cum qui illum non explicabo. Et quos et debitis laboriosam. Officia harum officiis ad dolorem tempora rerum ducimus. Qui non vel sit iste impedit molestiae.', '1992-12-08 05:31:36');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (325, 55, 125, '2', 'Minima rerum rem eum ut. Ratione maiores voluptatem esse accusamus. Rem fuga omnis a accusamus.', '2020-02-06 22:47:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (326, 56, 126, '3', 'Ab et quis unde velit est incidunt. Aut omnis veniam et dignissimos aut. Culpa perferendis nesciunt qui sit quam ut. Culpa dicta sequi ut sint vero sed.', '1974-07-20 03:14:16');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (327, 57, 127, '4', 'Veritatis excepturi occaecati consequatur vel cum molestias esse aspernatur. Est occaecati sunt ipsam itaque laboriosam at voluptatum. Repellat aliquid blanditiis quia ab rerum sint ex.', '1991-02-18 04:41:06');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (328, 58, 128, '3', 'Voluptas illo sunt rerum et placeat et hic fugit. Voluptate magnam dignissimos fugit doloribus. Architecto et nemo totam autem aut fuga.', '1970-09-12 02:31:34');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (329, 59, 129, '2', 'Iste rerum rerum sapiente et adipisci laboriosam maiores. Non sed voluptas quis voluptas soluta aperiam nemo. Odio occaecati modi ipsa rerum beatae sed facilis.', '2003-11-06 12:09:29');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (330, 60, 130, '4', 'Nemo sed distinctio libero non minus cumque quam illo. Autem culpa dolores natus voluptas optio vel. Ipsa ut temporibus quasi iusto. Reiciendis a sit eos sed voluptas omnis.', '1997-09-19 17:52:55');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (331, 61, 131, '3', 'Eum neque officiis sequi cum natus. Est architecto possimus est. Provident quia quas voluptas quos neque.', '2010-04-09 03:43:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (332, 62, 132, '6', 'Saepe non et possimus illo in. Sit minima voluptate blanditiis ipsam. Vel sint et id qui eius. Voluptatibus at aut est magni non.', '2007-02-21 07:59:01');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (333, 63, 133, '9', 'Totam cupiditate nesciunt voluptatem omnis omnis vel. Ut sed et odit eius aut aliquid. Eos est quia alias. Rerum voluptatum fugiat doloribus deleniti.', '2005-07-03 17:20:52');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (334, 64, 134, '6', 'Debitis quod exercitationem corporis. Quisquam est labore quibusdam voluptates odio. Necessitatibus velit atque aperiam non in.', '1978-03-17 04:15:27');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (335, 65, 135, '7', 'Consequatur consequuntur maiores quas cupiditate. Exercitationem quibusdam hic voluptatem libero. Aut inventore omnis doloremque corporis. Et totam quia nobis minus. Ut et consectetur ut et dolore distinctio vitae corrupti.', '2004-12-15 06:31:41');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (336, 66, 136, '3', 'Quos repellat autem rerum facilis aperiam eius. Voluptas deleniti iste tempore veritatis voluptatum. Magnam expedita eius placeat et veritatis quam fugit.', '2005-04-20 19:28:24');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (337, 67, 137, '1', 'Doloremque molestiae nihil autem quos hic beatae. Quidem est quis possimus modi beatae enim magni. Repudiandae sapiente modi laboriosam aut porro et. Minima iusto quasi sit.', '1984-07-12 09:13:43');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (338, 68, 138, '9', 'Velit sed voluptas suscipit. Quia est inventore quae sed quia vel aut. Qui totam nemo vel eum ducimus.', '2003-11-24 08:09:35');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (339, 69, 139, '7', 'Similique eius natus minima eaque eveniet eius. Distinctio et ipsa hic ut dolorum ut pariatur. Qui nesciunt qui incidunt quibusdam atque et. Consequatur quis ipsum quia maiores eaque minus.', '1979-06-26 12:50:09');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (340, 70, 140, '2', 'Quo voluptate nam harum laboriosam dolorem delectus inventore. Pariatur vel adipisci aut suscipit quidem iusto. Enim voluptas qui doloribus saepe unde dolores.', '2003-12-24 07:39:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (341, 71, 141, '7', 'Molestiae praesentium qui at possimus minus. Sunt occaecati et incidunt ducimus officia aliquid voluptatum. Cupiditate deserunt ut earum cumque molestiae modi. Maiores fugit aliquam voluptatum ullam ea commodi.', '1996-08-30 12:44:11');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (342, 72, 142, '1', 'Vel dolor perspiciatis necessitatibus repudiandae voluptatem recusandae recusandae. Quo doloribus hic ut consectetur aspernatur neque. Dolor qui nihil modi assumenda. Doloremque aut temporibus illum qui culpa numquam eaque.', '1983-03-07 12:03:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (343, 73, 143, '2', 'Ex consectetur fugit totam alias et qui alias. Minima porro iure beatae odio nostrum quis ut. Tempora laboriosam maiores iure quisquam.', '1973-08-18 08:39:20');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (344, 74, 144, '9', 'Dolorem earum soluta totam voluptatem eos. Eos nostrum facere cupiditate harum consequuntur nobis aut. Occaecati nostrum cum asperiores qui occaecati dolores. Ut ducimus beatae error. Explicabo occaecati temporibus aut mollitia consequatur aut.', '1999-05-20 06:55:52');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (345, 75, 145, '7', 'Error itaque necessitatibus quia distinctio. Explicabo quia et non ipsam minima esse aut. Sapiente qui voluptatem dolore quae.', '2009-09-02 08:16:12');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (346, 76, 146, '4', 'Fugiat laudantium nesciunt quia quis in quo. Et ea dolorem aut molestiae blanditiis voluptatem in. Nisi sint ut est et deleniti aut nihil. Iusto distinctio et aut numquam praesentium et autem cumque. Provident voluptatum perferendis facilis placeat.', '1993-04-02 07:57:18');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (347, 77, 147, '3', 'Ducimus est ea provident amet aut et. Explicabo ab sit est quibusdam est commodi aut qui. Quisquam dolorem est est commodi exercitationem. Iste culpa et aliquam iure molestiae ut unde.', '1992-06-29 15:01:30');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (348, 78, 148, '4', 'Ut voluptas quia cupiditate earum laboriosam. Tempora explicabo et eaque earum quis. Qui dolores autem ut quam. Est neque veniam soluta quam ut inventore consectetur.', '1999-02-22 02:47:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (349, 79, 149, '4', 'Totam accusamus ut quis illum. Sunt et tempora sed expedita placeat suscipit. Enim alias quae voluptatem consequatur voluptate aut nostrum. Reprehenderit a earum quia error accusantium ducimus exercitationem eos.', '2016-11-24 08:10:44');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (350, 80, 150, '10', 'Consequuntur exercitationem tenetur necessitatibus aut sed et necessitatibus. Sunt voluptatum rerum ad eveniet. Corporis maiores rem eaque. Ut voluptate ullam in reiciendis aut quisquam.', '1987-09-26 23:56:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (351, 51, 151, '3', 'Dolorem voluptates quia et asperiores. Occaecati quas asperiores odit veritatis.', '1982-05-15 07:20:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (352, 52, 152, '1', 'Quis qui laudantium quia recusandae tempore illum modi. Consequatur aut amet possimus est veniam itaque. Ratione vel molestiae non eaque et aut.', '1998-07-01 19:50:20');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (353, 53, 153, '7', 'Veritatis et eveniet fugit cumque. Autem ut amet voluptas consequatur. Consectetur dolorem voluptatem consequuntur dolore modi ut. Architecto dolorum aut cupiditate delectus quibusdam accusantium reiciendis et.', '2013-10-10 22:27:46');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (354, 54, 154, '6', 'Vel ipsam sit asperiores aut ullam quae eum. Est nulla et maiores est officia consequatur. Non doloremque et et quos similique autem.', '1976-01-22 12:46:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (355, 55, 155, '10', 'Asperiores perferendis cumque et vel quasi excepturi. Dolor repellendus ut eum dolor sed quasi ut nihil. A exercitationem omnis non est ut ea. Dolores qui cum veniam repudiandae veritatis itaque.', '1976-08-30 12:22:52');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (356, 56, 156, '5', 'Itaque aspernatur vero consequuntur nihil velit. Voluptate eum tempora quibusdam. Dolorem voluptates ab qui. Ad rerum excepturi reprehenderit aut odit.', '2003-07-23 07:34:13');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (357, 57, 157, '9', 'Porro dolore deserunt exercitationem dolorum. Recusandae quia exercitationem sint sed neque eos. Dolores et dolorum voluptatum id corrupti. Quis odio temporibus aut aut id. Ut eius saepe officiis eligendi.', '1973-04-28 16:34:53');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (358, 58, 158, '7', 'Cupiditate alias beatae magni dolorem molestias explicabo. Occaecati eos sed ipsum culpa molestias. Fuga sed delectus odio aliquam facilis vero id. Debitis dolores placeat molestias quisquam sint et possimus.', '1975-07-07 16:13:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (359, 59, 159, '5', 'Mollitia totam qui voluptatem fugiat qui. Illo laborum labore labore dolores. Dolorem quasi praesentium modi occaecati.', '2013-01-28 23:42:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (360, 60, 160, '10', 'Sapiente ullam enim eveniet modi esse. Consectetur vero minus quia facere et neque.', '2008-03-10 13:53:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (361, 61, 161, '6', 'Doloremque odio ut est vel. Voluptatem natus libero est iusto. Ut corrupti et aut hic cupiditate quia.', '2012-08-02 09:07:22');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (362, 62, 162, '1', 'Non animi voluptatem molestias rerum labore aut. Quia et ipsam voluptatem aliquid magni. Ea qui tempore officiis. Sit eligendi nobis provident vel distinctio.', '1975-06-02 16:57:33');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (363, 63, 163, '9', 'Ad illum quisquam ut exercitationem nemo fugiat. Maxime nostrum eveniet dignissimos sit sunt. Aliquam numquam est ipsum voluptatem repudiandae nihil. Vitae aut sint corporis impedit minima. Natus quo delectus similique nihil.', '2010-06-11 21:23:40');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (364, 64, 164, '5', 'Architecto non aut et id. Et veniam laudantium animi fuga aut quo consequatur. Nihil exercitationem iste veritatis iste officia. Ut qui voluptatem et quasi labore quisquam recusandae aut.', '1991-08-24 00:30:12');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (365, 65, 165, '9', 'Libero similique corporis error veniam eius. Libero possimus odio ut qui libero dolor illum. Aut ducimus quisquam hic eum recusandae.', '2010-08-21 14:24:36');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (366, 66, 166, '5', 'Quam harum provident nam aut repellendus voluptas in. Magni accusamus et repellat in. Dolores libero facere non voluptatibus sed et esse. Ut laudantium cumque sequi veniam.', '1989-09-27 12:49:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (367, 67, 167, '6', 'Ut nobis voluptatibus explicabo nesciunt ducimus. Ad corporis deleniti architecto iusto tenetur dolorum. Quo culpa ullam dolorum et sequi nihil id qui. Ut doloribus velit porro vero eum. Qui aut consequatur eos.', '1984-12-21 03:50:39');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (368, 68, 168, '1', 'Deserunt sequi magnam harum voluptates magnam laudantium. Possimus voluptatem unde aut pariatur. Eum ullam exercitationem totam commodi omnis ut maxime.', '1971-11-06 11:18:17');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (369, 69, 169, '9', 'Consequatur quis molestiae quo deserunt ut impedit. Et suscipit magni quis commodi rem. Dignissimos facere est quia est quasi quo est.', '1994-06-09 16:38:59');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (370, 70, 170, '9', 'Et mollitia fugit aut quia quam occaecati omnis molestiae. Molestias est officia ut quaerat numquam in sint. Beatae error iure laborum cupiditate facere.', '2004-04-02 09:09:44');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (371, 71, 171, '6', 'Ratione rerum laborum quo explicabo aut accusantium qui non. Molestiae soluta aperiam a.', '1985-02-17 15:52:23');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (372, 72, 172, '1', 'Ad itaque fugiat occaecati nihil adipisci itaque. Modi enim ab veritatis explicabo qui repellat et corrupti. Excepturi alias ullam quia voluptatem.', '2014-10-22 00:16:26');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (373, 73, 173, '10', 'Consequuntur pariatur ratione nam aut minima laudantium excepturi. Deserunt illo impedit omnis deleniti eius reiciendis. Magni dolorem aliquam velit reiciendis.', '1988-07-14 23:37:11');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (374, 74, 174, '7', 'Cupiditate minima ea mollitia modi excepturi. Aut iusto fugiat praesentium nostrum. Impedit illum ut nobis aliquam. Quos consectetur modi iure eum cumque voluptatem veritatis consequatur.', '2018-07-20 10:09:16');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (375, 75, 175, '2', 'Sequi corrupti quia sed asperiores sint doloremque voluptate. Labore sit et voluptatum ipsum aliquam nulla enim. Est totam quisquam sed ut similique commodi. Omnis qui sequi unde eveniet sint modi eaque.', '1975-11-25 07:32:02');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (376, 76, 176, '6', 'Maiores hic impedit tempora animi ut. Autem et id eos nam voluptatum. Libero voluptatem distinctio vero repellat est aut sint dolorum.', '2007-05-28 09:44:55');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (377, 77, 177, '9', 'Sed nam nam error facere iste. Et sed ab facere corporis. Autem omnis est corrupti. Nobis sapiente quia dolores deleniti aut quis et.', '1993-12-11 13:19:48');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (378, 78, 178, '5', 'Quo non at in cum maiores exercitationem enim. Est id voluptas commodi est non sed. Porro assumenda qui repudiandae tenetur consectetur dolore quidem qui. Neque dolor alias ad et voluptatum.', '2009-08-27 06:21:53');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (379, 79, 179, '2', 'Placeat repellendus exercitationem ad in modi nihil est eum. Voluptas natus unde sapiente corporis rerum consequatur pariatur. Maiores omnis cumque eos aspernatur in ipsam.', '2012-12-18 10:42:39');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (380, 80, 180, '6', 'Incidunt repudiandae aperiam et. Est et voluptas cumque nemo.', '2006-06-30 04:16:55');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (381, 51, 181, '6', 'Ipsa ut voluptas eum nostrum facere molestiae. Ex omnis ad laborum soluta soluta delectus impedit. Vel eum labore maiores illo dolores corrupti.', '1991-03-02 19:40:15');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (382, 52, 182, '8', 'Hic sunt laboriosam adipisci rem dolore non vel. Veniam minima sed dignissimos autem dolorem quia eligendi. Sit modi est voluptas qui deserunt. Aspernatur voluptas reiciendis veniam.', '1983-08-27 16:34:50');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (383, 53, 183, '9', 'Earum perferendis beatae ducimus placeat ex explicabo aut. Nesciunt totam id sint pariatur corporis voluptatem ad at. Qui quo rerum unde labore et aut adipisci atque.', '1995-02-03 17:25:09');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (384, 54, 184, '1', 'Vel occaecati sit at. Fuga doloremque alias perspiciatis autem at nam. Consequuntur consequuntur provident pariatur distinctio enim et.', '1973-08-05 14:09:52');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (385, 55, 185, '1', 'Repudiandae mollitia quia quia et dolorem maxime sapiente et. Perferendis perferendis ad consectetur impedit voluptatem. Cumque eveniet et suscipit sed quis.', '1983-08-14 11:22:13');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (386, 56, 186, '4', 'Quasi maiores eum ducimus unde eos. Non a molestias quod tenetur consequatur eveniet nobis quam. Eum debitis in fugiat eius laudantium. Nihil nihil dolores deleniti sed quia earum ut natus.', '2016-03-02 07:18:07');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (387, 57, 187, '6', 'Praesentium possimus neque pariatur. Ipsum totam iste labore iste voluptas quasi totam. Maxime aut explicabo asperiores in provident. Harum aut consequatur sequi itaque et qui et.', '2018-02-10 02:11:42');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (388, 58, 188, '5', 'Aperiam voluptas optio sunt cumque consequatur. Natus odio perspiciatis explicabo. Qui sed praesentium exercitationem qui id qui dolor.', '1983-07-19 11:38:57');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (389, 59, 189, '2', 'Quis perferendis assumenda sint vero labore dolor maiores ullam. Molestias et adipisci iusto omnis molestiae odit veniam ut. Hic vitae qui consequatur id voluptatibus quidem.', '1976-04-29 05:59:00');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (390, 60, 190, '1', 'Earum similique temporibus consequatur autem est facilis. Aut recusandae quisquam enim voluptas et. Facilis sequi voluptatem ut architecto ipsa maiores error. Consequatur quidem id vel architecto recusandae est sunt.', '1991-09-19 07:44:41');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (391, 61, 191, '1', 'Et deserunt aliquam fugiat atque natus ut. Qui natus maiores similique quis. Et distinctio ipsa vel nihil aut voluptatem tenetur quia. Maxime magni sunt totam molestiae fugiat iste aut ab. Voluptatem quo iure et molestias.', '1977-08-29 04:10:37');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (392, 62, 192, '1', 'Mollitia dolores sit atque nulla dolorem qui iusto qui. Necessitatibus nesciunt culpa odio ad. Iste consequatur est cumque. Officiis quisquam porro omnis quod. Consequuntur est aut fuga excepturi beatae saepe voluptates autem.', '1970-04-27 20:15:19');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (393, 63, 193, '2', 'Nihil eius et ut vitae. Ea ullam cum est deserunt quia veniam molestiae. Minus autem consequatur quibusdam incidunt ea nostrum dolores.', '1992-11-12 09:02:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (394, 64, 194, '7', 'Magnam beatae enim sit. Occaecati est corrupti fugit non. Iure accusantium saepe qui aliquam illum. Consectetur omnis saepe dicta ab. Et necessitatibus corrupti beatae nobis cum.', '1974-12-30 05:01:32');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (395, 65, 195, '8', 'Esse rerum repellat quae quisquam voluptas repellat illo. Rem dicta corporis voluptatem eum dolores voluptas fuga. Fugit laboriosam nobis temporibus illo aliquid animi repellendus quia.', '1989-05-04 08:58:56');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (396, 66, 196, '4', 'Perferendis est nihil et doloremque et iste. Sed ut est ducimus ratione voluptas minus exercitationem nihil. Aut et velit at. Eos reiciendis ea qui iste vero doloribus natus.', '1999-08-21 20:30:31');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (397, 67, 197, '4', 'Molestias provident nemo repellendus qui repellat est aliquam autem. Esse magnam odio alias numquam dignissimos. Quas sit consequuntur minus nam.', '1972-01-09 23:26:45');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (398, 68, 198, '4', 'Iure et laudantium itaque. Dolores ipsum adipisci amet nam voluptatem sed.', '1992-10-24 21:47:36');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (399, 69, 199, '8', 'Voluptate ipsa quae reiciendis praesentium culpa. Labore ipsum laudantium ut enim.', '1989-07-07 02:58:20');
INSERT INTO `reviews` (`id`, `from_user_id`, `hotel_id`, `rating_id`, `body`, `created_at`) VALUES (400, 70, 200, '10', 'Aut dolorem labore quia iure dolores soluta. Corrupti harum fuga facere maiores illum minima et. Dolor deleniti et quo sunt recusandae architecto.', '1973-07-06 16:36:54');




-- Update tables

-- users
show tables;
select * from users;
select count(*) from users;
UPDATE users SET id = id - 50;
update users set birthday = birthday - interval 20 year where date(birthday) >'2005-01-01';
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;

DROP TABLE IF EXISTS `nationality_base`;
CREATE TEMPORARY TABLE nationality_base (name VARCHAR(20));
INSERT INTO nationality_base VALUES 
('Afghan'), ('Argentine'),('Australian'),('American'), 
('Belarusian'), ('Belgian'), ('Brazilian'), ('Bolivian'), ('British'), 
('Cambodian'), ('Canadian'), ('Chilean'), ('Chinese'), ('Colombian'), ('Costa Rican'), ('Cuban'), ('Cypriot'), ('Czech'), 
('Danish'), ('Dominican'), 
('Ecuadorian'), ('Egyptian'), ('Emirati'), 
('Salvadorian'), 
('English'), ('Estonian'), ('Ethiopian'), 
('Finnish'), ('French'), 
('German'), ('Ghanaian'), ('Greek'), ('Guatemalan'), 
('Haitian'), ('Honduran'), ('Hungarian'), 
('Icelandic'), ('Indian'), 
('Indonesian'), ('Iranian'), ('Iraqi'), ('Irish'), ('Israeli'), ('Italian'), 
('Japanese'), ('Jordanian'), 
('Kazakhstani'), ('Kenyan'), 
('Laotian'), ('Latvian'), ('Lebanese'), ('Lithuanian'), 
('Malaysian'), ('Mexican'), ('Montenegrin'), ('Moroccan'), 
('Dutch'), 
('New Zealander'), ('Nicaraguan'), ('North Korean'), ('Norwegian'), 
('Panamanian'), ('Paraguayan'), ('Peruvian'), 
('Filipino'), 
('Polish'), ('Portuguese'), ('Puerto Rican'), 
('Romanian'), ('Russian'), 
('Saudi'), ('Scot / Scottish'), ('South African'), ('South Korean'), ('Spanish'), ('Swedish'), ('Swiss'), 
('Taiwanese'), ('Tajik'), ('Thai'),('Tunisian'), ('Turkish'), 
('Ukrainian'), ('Uruguayan'), 
('Venezuelan'), ('Vietnamese'), 
('Welsh');

UPDATE users SET nationality = (SELECT name FROM nationality_base ORDER BY RAND() LIMIT 1);

DROP TABLE IF EXISTS `extensions`;
CREATE TEMPORARY TABLE extensions (name VARCHAR(10));
INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png');

 -- hotels
select * from hotels;
update hotels set id = id -100;
select count(*) from hotels;
update hotels set rating = 0;
update hotels set media_id = media_id -287;

 -- media
select * from media;
select count(*) from media;
update media set id = id -287;
    
UPDATE media SET filename = CONCAT(
  'http://dropbox.net/booking/',
  filename,
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

select * from media_types;
UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);
UPDATE media SET updated_at = NOW() WHERE updated_at < created_at;


-- bookings
select * from bookings;
select count(*) from bookings ; 
select count(*) from users; 
select count(*) from hotels; 
UPDATE bookings SET user_id = FLOOR(1 + RAND() * 30);
UPDATE bookings SET hotel_id = FLOOR(1 + RAND() * 100);

update bookings set created_at = arrival_day - interval (1 + RAND() * 12) month;
update bookings set check_out_day = arrival_day + interval (1 + RAND() * 30) day;
UPDATE bookings SET count_days=DATEDIFF(check_out_day,arrival_day);
UPDATE bookings SET count_adult = FLOOR(1 + RAND() * 3);
UPDATE bookings SET count_child = FLOOR(1 + RAND() * 2);
UPDATE bookings SET value = FLOOR(1 + RAND() * 10);


-- reviews

select * from bookings;
select * from reviews;
select * from hotels;
update reviews set id = id -200;
UPDATE reviews SET from_user_id = FLOOR(1 + RAND() * 30);
UPDATE reviews SET hotel_id = from_user_id;


-- здесь нужно соединить отзывы с бронью
update hotels_included set hotel_id = hotel_id -100;

-- здесь нужно соединить отзывы с бронью
update payment_details set user_id = user_id -50;


-- Link

ALTER TABLE reviews 
  ADD CONSTRAINT reviews_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES bookings(id)
    on delete cascade;
   

ALTER TABLE reviews 
  ADD CONSTRAINT reviews_hotel_id_fk 
    FOREIGN KEY (hotel_id) REFERENCES bookings(id)
    on delete cascade;


ALTER TABLE hotels 
  ADD CONSTRAINT hotels_media_id_fk 
    FOREIGN KEY (media_id) REFERENCES media(id)
    on delete cascade;


ALTER TABLE media 
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
    on delete cascade;

alter table users 
	drop foreign key users_title_id_fk,
	drop foreign key users_gender_id_fk; 
ALTER TABLE users 
  ADD CONSTRAINT users_title_id_fk 
    FOREIGN KEY (title_id) REFERENCES titles(id)
    on delete cascade,
  ADD CONSTRAINT users_gender_id_fk 
    FOREIGN KEY (gender_id) REFERENCES genders(id)
    on delete cascade;


ALTER TABLE hotels_included 
  ADD CONSTRAINT hotels_included_hotel_id_fk 
    FOREIGN KEY (hotel_id) REFERENCES hotels(id)
    on delete cascade,
  ADD CONSTRAINT hotels_included_animal_id_fk 
    FOREIGN KEY (animal_id) REFERENCES animals(id)
    on delete cascade,
  ADD CONSTRAINT hotels_included_age_limit_id_fk 
    FOREIGN KEY (age_limit_id) REFERENCES age_limits(id)
    on delete cascade;
   
 ALTER TABLE payment_details 
  ADD CONSTRAINT payment_details_age_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
    on delete cascade;

update payment_details set card_number =floor( rand()*(9999999999999999-1000000000000000));

   
   
  show tables;
 select count(*) from hotels;
select *from payment_details pd ;
