DROP database vk;

create database vk;

use vk;

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃСЂРѕРєРё',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ РіСЂСѓРїРїС‹',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Р“СЂСѓРїРїС‹';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'debitis', '1999-05-10 13:14:01', '1987-09-12 13:33:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'harum', '2014-03-24 20:52:07', '1986-01-08 00:30:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'vero', '2014-05-23 12:44:05', '1997-01-03 01:39:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'nihil', '1977-08-28 21:26:51', '1988-06-25 20:32:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'ipsum', '2012-07-10 18:02:46', '1992-11-28 12:59:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'reprehenderit', '2018-01-09 22:10:04', '1980-10-28 02:00:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'ut', '1979-09-18 22:37:57', '1994-08-11 12:15:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'reiciendis', '2019-10-27 18:18:17', '1977-03-21 10:35:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'sit', '2009-06-25 04:17:34', '1981-06-22 11:01:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'rem', '2008-11-22 01:57:52', '2014-04-17 21:25:31');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РіСЂСѓРїРїСѓ',
  `user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РїРѕР»СЊР·РѕРІР°С‚РµР»СЏ',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'РЎРѕСЃС‚Р°РІРЅРѕР№ РїРµСЂРІРёС‡РЅС‹Р№ РєР»СЋС‡'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РЈС‡Р°СЃС‚РЅРёРєРё РіСЂСѓРїРї, СЃРІСЏР·СЊ Р�?РµР¶РґСѓ РїРѕР»СЊР·РѕРІР°С‚РµР»СЏР�?Рё Рё РіСЂСѓРїРїР°Р�?Рё';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2000-01-18 15:54:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '1999-08-18 18:46:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2012-11-15 20:09:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '1973-02-10 14:19:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2020-02-28 00:01:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '1994-04-16 05:50:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '1983-07-07 07:17:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '2019-07-27 05:03:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '1974-02-26 18:47:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '1975-04-04 04:55:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1981-01-13 16:03:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '1979-06-12 10:27:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '1986-06-11 15:46:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2011-06-12 13:35:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2003-12-17 23:09:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '1970-07-28 16:30:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '1979-02-24 12:28:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '2019-05-26 11:59:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '1972-11-17 08:14:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '1970-03-24 20:10:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1976-06-24 16:15:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '2002-01-21 15:58:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '1970-08-19 16:33:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '1983-11-18 09:50:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '1983-03-28 01:11:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2002-01-03 15:13:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '1981-01-30 14:56:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2018-03-25 01:30:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '1991-04-23 17:08:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2008-10-05 10:06:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2018-10-13 07:05:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2007-10-28 07:57:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2001-04-15 11:41:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '1983-02-17 01:15:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '1982-06-04 23:27:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '1970-09-09 08:24:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2003-01-13 17:34:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '1988-06-07 12:20:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '1982-06-07 13:03:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '1993-03-03 16:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1970-07-09 04:45:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '2006-05-02 03:44:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '1992-10-26 01:53:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '1973-10-19 00:06:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2004-02-14 07:33:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '1977-07-19 21:21:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '1999-07-26 08:51:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2003-01-12 08:22:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2004-04-15 05:43:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2006-02-01 14:41:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1972-03-06 09:52:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '1999-04-19 13:08:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2018-04-16 11:34:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2008-06-19 22:21:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2006-06-22 06:04:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2011-07-08 21:24:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2006-09-06 11:49:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '2002-07-11 03:48:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2020-10-03 23:33:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2004-05-03 20:07:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1974-04-28 09:48:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '2020-06-23 21:46:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '1974-09-15 12:58:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '1986-02-21 01:28:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2008-07-25 02:40:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '1999-04-12 15:03:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '1977-03-26 02:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '1976-02-23 01:08:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '1988-10-02 15:17:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '1978-07-05 01:34:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2020-03-27 01:56:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '1986-09-19 12:01:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '1991-05-31 14:30:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2003-01-15 17:10:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '1984-11-10 15:30:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '1998-07-19 09:14:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '1978-03-16 18:51:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2012-01-12 07:37:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2016-06-13 22:12:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '1995-07-21 20:11:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1991-06-14 20:10:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '1987-10-15 15:07:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '1996-07-10 14:53:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '1992-01-15 15:50:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '1982-12-28 23:12:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2010-10-11 11:10:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '1989-07-11 18:06:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '1985-05-09 23:51:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '1971-01-29 00:36:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2001-01-25 16:27:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1982-02-13 22:30:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2004-01-30 04:04:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2007-11-06 02:17:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '1976-06-28 06:38:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2019-05-03 00:04:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '1985-04-16 00:57:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2019-12-17 18:17:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '1984-08-03 10:25:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '1970-10-29 03:34:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '1981-09-21 21:03:12');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РёРЅРёС†РёР°С‚РѕСЂР° РґСЂСѓР¶РµСЃРєРёС… РѕС‚РЅРѕС€РµРЅРёР№',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РїРѕР»СѓС‡Р°С‚РµР»СЏ РїСЂРёРіР»Р°С€РµРЅРёСЏ РґСЂСѓР¶РёС‚СЊ',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° СЃС‚Р°С‚СѓСЃ (С‚РµРєСѓС‰РµРµ СЃРѕСЃС‚РѕСЏРЅРёРµ) РѕС‚РЅРѕС€РµРЅРёР№',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕС‚РїСЂР°РІР»РµРЅРёСЏ РїСЂРёРіР»Р°С€РµРЅРёСЏ РґСЂСѓР¶РёС‚СЊ',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Р’СЂРµР�?СЏ РїРѕРґС‚РІРµСЂР¶РґРµРЅРёСЏ РїСЂРёРіР»Р°С€РµРЅРёСЏ',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'РЎРѕСЃС‚Р°РІРЅРѕР№ РїРµСЂРІРёС‡РЅС‹Р№ РєР»СЋС‡'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РўР°Р±Р»РёС†Р° РґСЂСѓР¶Р±С‹';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1975-08-20 15:12:26', '1975-06-22 05:15:39', '1998-06-20 18:01:59', '2002-10-01 19:20:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1981-09-22 20:12:34', '1977-05-16 17:11:09', '1981-01-03 11:44:47', '1979-10-04 22:14:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 1, '1974-05-29 17:01:04', '1974-10-17 15:33:36', '1983-11-18 04:20:47', '1990-04-01 21:06:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 2, '2012-09-30 00:34:13', '2017-08-14 09:28:35', '1986-02-12 13:23:31', '1972-05-16 05:10:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 1, '1976-04-25 04:33:33', '2001-01-05 03:36:52', '1984-06-11 23:43:40', '1976-10-23 22:31:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 2, '1974-04-25 18:31:12', '2012-01-03 21:38:28', '1973-01-01 05:34:48', '2005-04-28 10:25:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 1, '1994-03-15 00:03:40', '1974-02-19 08:04:55', '1975-06-30 00:25:02', '2015-08-06 04:43:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 2, '2006-07-25 06:32:34', '1994-01-17 14:26:51', '2011-07-31 19:38:07', '2016-07-22 16:20:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 1, '1971-09-28 16:40:42', '1971-03-20 19:56:47', '1972-01-31 08:12:50', '1987-01-20 14:33:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 2, '2019-10-07 21:56:17', '2016-06-25 17:57:58', '1992-12-06 16:45:42', '2004-08-21 13:51:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2017-05-18 22:12:58', '2019-12-20 19:03:54', '2014-05-22 18:29:33', '2005-03-12 16:46:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '1991-04-03 12:41:27', '1996-03-11 04:18:06', '2003-04-18 11:56:33', '1997-08-26 04:22:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '1986-04-13 15:24:03', '2019-08-02 07:47:53', '1998-06-14 20:36:35', '2020-07-31 05:54:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '1974-07-18 01:50:11', '1999-01-23 20:32:05', '1972-01-16 05:13:28', '1977-06-23 03:54:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 1, '2013-01-10 10:22:43', '2008-03-23 11:31:03', '1984-09-13 17:03:43', '2014-03-03 21:26:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 2, '1975-02-22 08:44:31', '2010-08-02 04:03:31', '2012-09-09 04:37:16', '1970-05-24 02:48:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 1, '1973-01-02 13:11:30', '1973-12-24 04:44:50', '2016-05-17 21:02:10', '2018-03-07 10:16:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 2, '1989-08-04 05:38:41', '2014-12-09 05:27:04', '1978-05-18 11:14:19', '2013-01-30 09:31:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '1987-08-03 02:31:45', '1989-08-17 16:45:58', '1986-03-06 04:49:44', '1991-04-29 20:17:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '1982-03-20 06:04:17', '1990-06-07 18:15:32', '1976-12-06 05:21:30', '2008-07-04 00:09:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '1983-06-18 18:24:55', '1985-02-17 03:52:29', '1993-03-16 03:02:37', '1996-07-06 20:31:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '1981-10-31 02:01:29', '1991-02-14 02:11:46', '1982-08-06 14:47:19', '1989-12-05 19:46:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 1, '2010-06-09 11:46:01', '2003-01-16 05:12:27', '1982-02-27 10:01:34', '1999-06-16 12:37:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 2, '1978-04-17 19:13:11', '1988-06-27 20:16:13', '1984-11-17 00:57:58', '1974-06-06 13:56:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '2005-03-31 17:28:11', '1991-05-30 11:07:17', '1989-11-04 15:52:59', '2006-11-15 04:57:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '2017-08-08 01:45:50', '2009-09-26 10:46:13', '2000-01-19 14:40:45', '1972-02-14 15:31:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 1, '1970-03-14 21:44:40', '2003-11-21 03:13:27', '1992-07-27 11:35:46', '2008-10-06 20:43:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 2, '2012-07-24 13:50:35', '2007-04-14 05:15:50', '1990-08-10 07:38:55', '1981-04-04 09:31:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 1, '1992-08-12 22:44:39', '2006-11-20 08:14:05', '2002-03-26 18:13:43', '1970-05-05 06:54:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 2, '1987-05-30 10:20:13', '1973-09-02 22:46:22', '2004-07-06 16:56:32', '1999-09-01 10:28:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2001-06-14 06:42:19', '2017-10-20 00:27:43', '1980-07-28 05:55:29', '1975-02-26 10:57:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '1982-11-05 22:32:15', '1971-04-11 01:15:51', '1978-02-02 11:59:35', '1997-01-12 20:52:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 1, '2019-01-12 07:26:47', '1988-11-28 12:53:15', '1987-01-24 00:35:29', '1979-12-08 23:19:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 2, '1979-11-19 07:23:36', '1999-03-26 18:33:20', '1995-10-22 19:30:01', '1987-08-21 23:25:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 1, '1985-12-22 22:08:50', '1970-03-21 01:15:06', '1994-02-13 12:35:04', '1974-02-15 05:20:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 2, '1988-04-16 13:17:49', '2008-05-26 23:43:17', '2018-07-15 10:48:55', '1970-02-15 08:42:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '1991-08-28 05:44:11', '2020-02-28 19:33:10', '2020-12-18 15:23:57', '2007-01-09 01:37:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '1998-10-21 05:05:17', '1994-07-22 15:03:19', '1985-05-05 15:29:34', '1976-04-22 01:12:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 1, '2009-08-05 14:53:59', '1974-07-20 13:00:16', '1991-08-10 10:26:43', '1979-05-14 07:57:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 2, '1986-03-29 00:13:07', '2015-05-07 09:29:38', '2009-06-02 00:10:44', '1982-12-24 17:57:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '2006-11-03 16:04:11', '1988-01-31 02:20:34', '1991-04-04 17:29:32', '1977-08-24 22:11:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '1993-06-10 20:24:34', '2013-11-24 13:45:18', '1970-04-23 05:05:56', '2012-07-01 06:20:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 1, '1982-07-15 05:59:11', '2001-01-22 16:34:57', '1971-02-24 14:10:00', '2000-01-19 03:27:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '1986-09-30 08:14:57', '2006-03-20 16:03:03', '1998-08-01 20:37:15', '1996-08-06 01:45:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 1, '1993-05-11 03:04:26', '1983-06-17 18:09:48', '1990-01-24 07:48:04', '1997-09-19 19:57:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 2, '2016-11-10 09:55:13', '2003-07-11 06:09:29', '1982-11-07 13:56:12', '1984-05-08 15:00:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 1, '1981-07-18 00:04:27', '1979-04-26 19:24:52', '2018-07-26 14:51:37', '1975-08-16 06:14:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 2, '1998-09-26 07:09:20', '2003-10-18 05:23:35', '1987-05-17 08:27:24', '2012-11-15 12:01:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '1983-05-11 22:14:35', '2016-04-28 00:18:45', '1994-01-11 22:54:53', '1972-06-23 22:47:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '2005-10-11 10:44:10', '1988-06-06 02:30:41', '2006-05-28 18:46:37', '1974-02-04 10:11:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '1994-10-19 14:35:00', '1996-03-05 23:31:12', '1993-12-04 23:42:00', '2006-04-26 21:00:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '2016-04-29 18:59:16', '1972-05-02 02:30:08', '1975-07-16 20:09:24', '2001-04-03 08:32:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 1, '1989-10-21 02:36:17', '2008-04-05 02:32:55', '2016-09-12 14:52:01', '2007-07-27 12:09:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 2, '1971-08-06 18:02:13', '1977-06-23 06:09:31', '1993-09-18 12:39:00', '1975-06-01 12:25:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '2007-12-17 04:36:04', '2011-08-28 17:11:39', '1972-10-24 11:10:50', '1975-06-30 19:33:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 2, '1971-01-10 14:29:06', '1997-04-16 05:05:48', '1994-09-06 20:02:16', '1983-04-18 14:12:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 1, '2003-06-09 22:38:39', '1981-04-25 09:51:25', '1980-02-18 19:06:06', '1996-12-16 20:39:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 2, '2014-12-13 23:33:42', '2009-01-01 10:53:03', '2000-10-19 15:43:24', '2007-12-03 00:27:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 1, '1993-04-29 16:06:06', '2019-07-01 05:17:22', '2017-04-06 16:54:42', '2004-03-30 16:35:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 2, '1989-08-09 21:02:30', '1973-09-27 10:51:18', '2016-10-22 09:16:07', '1994-02-10 06:42:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '1999-01-07 15:40:22', '1995-12-21 02:52:30', '2006-06-09 18:08:08', '2000-02-03 18:38:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '1995-09-03 19:12:14', '2018-07-15 17:34:15', '2009-01-05 23:23:41', '2000-09-24 08:53:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 1, '2016-08-20 16:30:23', '1988-06-30 18:16:44', '1993-12-03 11:41:02', '1998-03-02 13:44:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 2, '2013-09-22 12:42:45', '1990-08-28 22:13:52', '1979-11-16 22:32:08', '1977-11-08 04:03:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 1, '1971-02-15 09:29:19', '2020-04-14 09:49:57', '1984-08-27 18:44:49', '2010-01-20 05:27:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 2, '2016-11-06 18:39:11', '2020-08-02 11:07:22', '1987-08-31 19:44:01', '1978-11-18 00:26:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 1, '1997-03-12 21:57:02', '1984-10-17 02:24:37', '2008-04-16 02:39:52', '2015-11-24 20:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '2010-04-20 10:36:49', '1977-06-25 17:55:55', '2018-09-21 00:51:17', '2007-10-08 18:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 1, '1973-10-16 12:30:35', '2017-02-23 21:43:34', '1984-08-18 23:08:52', '2005-10-10 22:52:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 2, '2004-11-14 19:22:23', '1976-04-05 03:49:30', '2010-12-28 15:30:54', '2007-07-16 14:37:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '1973-07-12 01:23:13', '1974-09-30 23:13:13', '2003-07-03 03:01:49', '2008-01-06 09:16:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '1994-05-02 01:24:51', '1990-03-16 12:58:01', '2010-03-07 14:37:32', '1975-07-11 17:37:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2006-09-30 05:49:24', '2014-08-15 03:55:32', '1998-07-29 02:56:15', '1983-09-10 00:11:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '1981-03-20 06:58:26', '1995-04-13 10:32:30', '1974-05-14 09:15:48', '1985-12-22 16:55:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 1, '1970-02-07 04:28:43', '1971-12-15 17:13:15', '1994-01-10 01:37:07', '1979-04-22 21:18:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 2, '2000-10-20 00:05:06', '1991-10-03 09:03:51', '2020-04-27 20:59:58', '1989-09-01 18:46:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 1, '1988-11-12 11:57:20', '1999-01-06 19:21:24', '2013-01-25 21:46:20', '1999-03-17 21:19:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 2, '2010-02-18 21:39:33', '2019-01-11 08:53:52', '1982-09-28 16:35:50', '1974-10-14 16:58:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 1, '1993-06-08 14:26:38', '1991-02-24 02:37:07', '2000-08-05 19:17:30', '1986-05-05 16:44:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 2, '2000-04-28 16:31:36', '2009-06-16 05:45:28', '1998-02-07 09:49:54', '2006-11-23 13:48:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '1995-01-26 09:29:46', '1997-08-16 08:25:27', '2004-05-04 17:20:23', '1992-02-07 07:27:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '1996-01-27 21:33:35', '1988-11-12 07:05:40', '2009-11-22 12:00:32', '1972-08-19 07:27:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 1, '1974-03-27 22:10:56', '2007-07-04 17:57:49', '2001-07-14 14:02:44', '2018-12-28 07:27:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 2, '2009-05-20 12:31:03', '1971-05-29 13:30:48', '2006-08-20 19:41:28', '2012-08-14 12:04:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '2017-01-23 11:13:07', '1986-09-01 02:47:21', '1972-08-22 07:23:40', '2019-07-30 17:07:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 2, '1980-06-03 03:13:45', '2003-10-02 00:03:40', '2015-04-25 01:35:38', '1993-04-17 02:47:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 1, '1973-09-23 19:41:03', '1995-01-07 21:41:26', '2006-07-27 16:28:01', '1970-02-05 04:39:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 2, '1983-03-16 00:03:31', '2018-07-23 07:08:11', '2005-03-08 13:01:29', '2011-05-04 20:39:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 1, '1983-06-02 21:47:36', '1978-12-30 02:00:28', '2013-10-19 13:41:29', '1999-09-14 21:09:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 2, '2019-09-21 03:29:05', '1970-02-21 14:07:50', '2010-12-15 10:46:55', '1976-01-17 10:51:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2002-03-14 19:38:47', '1979-05-01 22:55:28', '1970-05-15 22:42:30', '1983-09-26 17:20:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '1989-03-20 14:00:07', '2016-09-29 12:11:18', '1990-11-23 19:32:49', '2003-12-06 23:49:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 1, '1986-09-05 07:45:31', '1999-04-15 12:37:06', '1990-07-23 02:39:15', '1992-07-31 06:45:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 2, '1986-02-23 22:01:17', '1993-08-01 17:45:37', '2006-12-04 21:58:24', '1976-02-18 08:04:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 1, '1983-08-28 04:57:35', '1997-12-12 03:54:17', '1985-08-21 04:43:27', '2019-09-26 11:44:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 2, '2011-05-09 17:27:51', '1975-12-08 09:47:33', '1976-12-08 19:18:33', '2004-05-20 09:52:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 1, '1971-02-22 15:10:45', '1991-06-21 16:58:59', '1974-07-27 21:57:05', '1989-02-10 10:47:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '1983-04-25 00:33:17', '2009-11-09 00:59:28', '1993-11-21 05:01:54', '2016-07-29 01:53:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 1, '1972-04-25 01:04:27', '2013-10-05 00:27:20', '2016-05-03 22:46:33', '2010-06-25 10:11:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 2, '2005-12-02 01:20:55', '1974-01-02 19:02:23', '2012-01-29 07:14:39', '2000-03-30 10:16:26');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃС‚СЂРѕРєРё',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ СЃС‚Р°С‚СѓСЃР°',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РЎС‚Р°С‚СѓСЃС‹ РґСЂСѓР¶Р±С‹';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, '-', '2004-06-06 22:53:40', '1999-04-01 18:26:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, '+', '2020-02-07 15:29:39', '2006-04-20 14:02:43');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃС‚СЂРѕРєРё',
  `user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РїРѕР»СЊР·РѕРІР°С‚РµР»СЏ, РєРѕС‚РѕСЂС‹Р№ Р·Р°РіСЂСѓР·РёР» С„Р°Р№Р»',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РџСѓС‚СЊ Рє С„Р°Р№Р»Сѓ',
  `size` int(11) NOT NULL COMMENT 'Р Р°Р·Р�?РµСЂ С„Р°Р№Р»Р°',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'РњРµС‚Р°РґР°РЅРЅС‹Рµ С„Р°Р№Р»Р°' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° С‚РёРї РєРѕРЅС‚РµРЅС‚Р°',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РњРµРґРёР°С„Р°Р№Р»С‹';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 1, 'aut', 6, '7', 1, '2018-01-05 02:46:10', '1992-04-07 16:13:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 2, 'neque', 7748585, '6', 2, '1983-05-14 07:23:39', '2019-04-04 16:28:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 4, 'et', 53, '4', 4, '2014-05-11 15:21:31', '1993-11-08 16:35:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 5, 'ut', 227735, '2', 5, '1993-09-26 09:05:44', '2007-02-08 11:37:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 6, 'ea', 222717, '9', 6, '1975-02-05 10:13:51', '1985-01-26 07:37:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 7, 'quos', 55, '7', 7, '2019-05-19 01:14:40', '1994-04-16 00:03:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 8, 'et', 653555, '6', 8, '1986-07-29 04:16:11', '1997-04-09 02:50:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 9, 'pariatur', 9158316, '4', 9, '1998-04-14 12:31:23', '2010-10-14 03:42:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 10, 'ut', 266994364, '8', 10, '2004-02-11 01:24:14', '1979-06-28 22:41:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 11, 'mollitia', 9, '7', 11, '1990-11-09 06:46:54', '2017-03-06 07:02:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 12, 'eaque', 41404005, '6', 12, '1970-01-18 00:51:26', '1996-12-26 20:23:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 13, 'reprehenderit', 2394, '2', 13, '1979-04-06 05:18:23', '1984-11-12 23:37:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 14, 'sed', 177, '9', 14, '1979-02-15 07:59:47', '1994-09-23 04:18:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 15, 'beatae', 946028, '9', 15, '2003-07-24 08:11:25', '1986-03-03 03:36:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 16, 'non', 7, '1', 16, '2007-05-22 21:14:27', '1972-12-04 05:39:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 17, 'vitae', 5763, '3', 17, '1980-06-17 01:31:19', '1973-10-21 18:48:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 18, 'cum', 0, '5', 18, '1979-01-18 17:40:02', '2009-07-02 14:42:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 20, 'et', 485019, '7', 20, '1974-12-31 03:30:48', '1983-08-07 06:01:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 21, 'cumque', 55130, '6', 21, '1970-09-12 01:53:40', '2012-01-03 00:55:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 23, 'possimus', 41948584, '4', 23, '1972-06-12 06:57:43', '1996-10-05 10:06:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 24, 'ut', 80, '7', 24, '1978-02-03 21:16:24', '1991-10-22 07:38:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 25, 'est', 455594469, '8', 25, '2006-09-12 19:13:29', '2002-04-27 01:22:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 26, 'qui', 5, '4', 26, '2020-07-08 22:16:56', '1992-12-21 19:31:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 27, 'recusandae', 73796, '4', 27, '2002-07-12 12:26:12', '1986-10-20 15:38:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 28, 'praesentium', 77178, '6', 28, '1999-01-17 00:12:46', '1980-04-21 10:32:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 29, 'soluta', 86982, '4', 29, '2005-07-22 19:29:35', '1988-01-22 06:36:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 31, 'et', 55, '9', 31, '1992-05-03 01:46:38', '1999-01-27 01:19:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 32, 'molestiae', 1370, '8', 32, '1978-01-03 15:13:13', '1999-05-25 21:35:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 34, 'totam', 1, '1', 34, '1994-03-31 15:24:51', '2017-06-22 18:21:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 35, 'voluptas', 9244, '6', 35, '2015-10-26 15:15:10', '1982-07-15 04:43:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 36, 'reprehenderit', 638, '5', 36, '2018-06-26 20:27:38', '2005-06-01 13:52:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 37, 'fugit', 324917357, '6', 37, '2012-12-25 02:08:25', '2009-03-13 02:59:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 38, 'est', 648535, '6', 38, '1972-06-21 01:16:21', '2004-03-20 09:22:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 39, 'non', 983672396, '8', 39, '1986-03-16 05:31:33', '1999-06-02 15:51:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 40, 'iusto', 89769, '1', 40, '1999-07-12 23:29:28', '1974-11-24 02:32:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 41, 'qui', 0, '7', 1, '1970-05-21 10:10:27', '1996-10-08 07:17:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 42, 'debitis', 227107433, '3', 2, '1987-12-24 12:25:25', '1986-12-26 04:46:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 43, 'quaerat', 90, '3', 3, '1999-05-22 15:30:41', '2006-09-03 03:26:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 44, 'itaque', 83, '1', 4, '1999-07-08 16:35:38', '1983-09-28 22:02:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 45, 'iste', 14691346, '2', 5, '2007-04-23 01:06:20', '2009-02-27 15:15:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 46, 'qui', 935207014, '8', 6, '2005-08-23 19:15:22', '1974-01-21 20:18:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 47, 'nemo', 793, '1', 7, '1987-01-31 04:59:22', '2012-12-07 00:28:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 48, 'natus', 267961258, '3', 8, '2005-07-06 06:17:09', '1977-07-01 03:31:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 49, 'ipsum', 0, '6', 9, '1986-08-28 06:34:45', '2003-07-09 12:46:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 50, 'incidunt', 304476331, '7', 10, '2019-04-29 06:00:10', '2017-12-13 10:17:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 51, 'optio', 0, '2', 11, '1995-04-13 09:28:02', '2010-10-10 17:45:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 52, 'et', 55, '3', 12, '2003-06-07 13:52:11', '1991-09-03 12:53:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 53, 'ea', 0, '7', 13, '1981-02-17 07:17:02', '1988-06-27 05:39:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 54, 'facilis', 35, '4', 14, '1996-02-13 22:54:20', '1971-06-18 11:22:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 55, 'laborum', 630558639, '4', 15, '1970-03-15 00:19:21', '2019-12-03 12:08:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 56, 'ipsum', 1, '4', 16, '2004-01-11 16:32:29', '1998-01-13 07:24:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 57, 'et', 1413, '3', 17, '1990-04-17 07:21:30', '1976-01-03 12:05:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (153, 58, 'eum', 79692059, '7', 18, '1982-12-30 04:44:55', '1976-12-01 00:52:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (154, 59, 'aliquid', 197, '2', 19, '1991-04-17 07:30:52', '2001-11-27 04:18:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (155, 60, 'et', 6336, '8', 20, '2001-12-04 16:10:41', '1971-11-29 16:49:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (156, 61, 'unde', 683494, '4', 21, '2008-01-26 00:56:04', '2001-02-07 11:00:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (157, 62, 'totam', 1875, '2', 22, '2015-05-06 13:17:10', '1995-03-12 20:28:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (158, 63, 'sit', 519394973, '7', 23, '2012-04-29 11:21:34', '2019-08-29 10:38:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (159, 64, 'sed', 41, '9', 24, '2019-07-04 12:17:48', '1990-03-08 15:12:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (160, 65, 'consequuntur', 42127, '8', 25, '1984-12-20 01:09:45', '1983-07-30 05:35:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (161, 66, 'quia', 0, '4', 26, '2006-11-11 04:18:00', '2017-10-12 19:37:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (162, 67, 'temporibus', 856686959, '4', 27, '1976-07-05 20:28:40', '2005-05-11 13:13:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (163, 68, 'natus', 28871611, '6', 28, '1983-04-17 20:15:53', '2012-04-26 18:06:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (164, 69, 'est', 7830446, '7', 29, '1970-08-03 09:41:31', '1987-09-03 15:12:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (165, 71, 'labore', 0, '4', 31, '2006-05-06 00:29:43', '1988-09-22 12:00:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (166, 72, 'est', 80, '1', 32, '2001-08-02 16:35:03', '2016-07-14 19:44:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (167, 73, 'minima', 5340275, '9', 33, '2015-12-12 05:28:07', '1987-03-08 13:32:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (168, 74, 'optio', 44, '4', 34, '1990-09-26 23:04:20', '1970-09-23 18:36:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (169, 76, 'eaque', 7, '4', 36, '1994-03-04 11:33:41', '2009-05-03 06:00:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (170, 77, 'iure', 8, '7', 37, '1973-03-11 20:38:35', '2007-05-03 19:44:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (171, 78, 'distinctio', 815743, '1', 38, '1985-09-23 05:06:23', '2020-08-28 17:40:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (172, 79, 'quod', 708, '1', 39, '1987-11-13 21:48:24', '1980-04-25 10:44:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (173, 80, 'voluptate', 431448610, '8', 40, '1971-02-23 13:24:17', '2003-08-04 18:27:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (174, 81, 'quibusdam', 6124929, '5', 1, '2001-05-13 10:03:17', '2015-09-12 14:48:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (175, 82, 'ratione', 610, '9', 2, '1981-02-28 02:19:35', '1991-11-02 15:03:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (176, 84, 'odio', 1089, '7', 4, '2005-09-27 16:04:02', '1997-04-22 00:12:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (177, 86, 'perferendis', 0, '4', 6, '1984-10-25 01:19:17', '1998-09-07 10:20:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (178, 88, 'quis', 743991, '1', 8, '1981-01-25 12:18:31', '1971-12-24 00:18:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (179, 89, 'autem', 7312711, '8', 9, '1993-02-26 16:33:06', '1984-01-18 08:18:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (180, 91, 'vitae', 4457913, '6', 11, '1973-12-24 21:38:01', '2002-05-04 01:40:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (181, 92, 'quidem', 3674516, '8', 12, '2003-07-31 03:28:47', '1997-03-15 14:06:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (182, 93, 'repellat', 57779, '4', 13, '1981-09-04 22:57:13', '1989-04-29 17:06:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (183, 94, 'est', 3, '1', 14, '1984-07-29 01:24:54', '2010-08-08 09:23:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (184, 95, 'unde', 805, '4', 15, '2014-12-22 13:14:35', '1972-04-21 04:43:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (185, 96, 'exercitationem', 89673, '6', 16, '2020-11-25 16:33:42', '1988-07-18 00:54:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (186, 97, 'dicta', 9270832, '1', 17, '1976-12-17 06:51:01', '1983-12-31 14:11:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (187, 98, 'ducimus', 5561, '3', 18, '2016-02-21 01:16:29', '2002-06-19 02:31:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (188, 99, 'aliquam', 6344, '4', 19, '1979-11-12 22:55:48', '1991-06-13 02:03:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (189, 100, 'enim', 6, '5', 20, '2000-08-06 07:19:28', '2004-03-14 11:51:13');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃС‚СЂРѕРєРё',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РќР°Р·РІР°РЅРёРµ С‚РёРїР°',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РўРёРїС‹ Р�?РµРґРёР°С„Р°Р№Р»РѕРІ';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'xwd', '1999-03-15 16:39:51', '2001-09-16 21:30:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'mj2', '1995-03-19 20:39:34', '1978-03-28 03:34:08');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'tex', '2003-07-22 01:25:11', '2004-12-28 22:58:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, '3dml', '2005-05-26 14:37:38', '2009-03-20 14:34:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'xbm', '2017-06-27 18:11:50', '1990-03-19 08:16:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'pkipath', '2014-01-28 17:58:52', '1978-02-18 01:55:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'viv', '2019-04-25 11:22:49', '1992-02-17 08:51:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'dsc', '1986-07-24 17:16:42', '1985-02-19 15:39:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'xlam', '2020-11-20 02:29:49', '1994-02-27 18:46:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'cst', '1989-08-27 06:03:13', '1971-12-26 20:58:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'flx', '1978-02-28 10:40:38', '1992-12-18 05:13:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'ogv', '1978-03-14 23:56:00', '1978-07-02 21:28:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'ttl', '2011-10-28 02:29:45', '1995-01-17 06:56:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'ecma', '1995-06-08 11:19:17', '1979-10-22 12:42:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'twd', '2002-04-10 00:14:39', '2005-04-10 05:57:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'vcf', '1974-05-29 10:10:09', '2017-05-15 00:56:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'ustar', '2017-08-31 00:32:26', '2003-02-22 23:16:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'wbxml', '2008-03-01 19:38:33', '2019-03-04 21:08:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'dot', '2016-04-08 19:24:33', '2015-09-26 12:31:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'txt', '2001-08-12 16:46:55', '1988-09-01 15:31:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'dotx', '1977-03-30 20:13:23', '1979-08-08 02:22:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'otc', '1994-03-22 13:27:10', '1995-01-08 20:45:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'swf', '1970-05-28 06:39:19', '1973-09-27 03:41:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'xsm', '2012-04-02 00:19:05', '1980-11-13 01:18:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'h264', '2000-08-17 17:08:50', '2003-06-01 21:36:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'movie', '1977-11-08 09:09:31', '1974-12-21 21:32:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'gnumeric', '1970-06-14 04:58:54', '1972-04-28 09:27:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'mdb', '1976-10-11 02:44:21', '1989-12-28 01:23:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'torrent', '2011-10-14 19:49:03', '1991-09-25 01:37:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'wmx', '1980-11-17 22:22:33', '2017-03-13 19:22:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'lzh', '2013-04-20 20:04:15', '1989-03-23 14:56:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'jar', '1990-11-23 02:31:01', '2020-01-14 06:53:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'icc', '1993-08-02 00:39:04', '2001-07-18 22:47:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'mlp', '2016-08-20 04:33:27', '1994-02-15 07:03:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'aac', '2018-01-06 17:23:55', '1993-09-13 05:55:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'stw', '1977-06-27 23:42:47', '2011-03-22 06:34:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'xop', '1988-10-24 13:13:33', '1985-06-02 12:26:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'odb', '1984-04-04 12:14:27', '2016-10-28 04:43:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'mime', '1986-09-26 23:57:01', '1979-08-16 11:56:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'atom', '2011-08-03 06:39:40', '1996-03-12 19:18:26');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃС‚СЂРѕРєРё',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РѕС‚РїСЂР°РІРёС‚РµР»СЏ СЃРѕРѕР±С‰РµРЅРёСЏ',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РїРѕР»СѓС‡Р°С‚РµР»СЏ СЃРѕРѕР±С‰РµРЅРёСЏ',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'РўРµРєСЃС‚ СЃРѕРѕР±С‰РµРЅРёСЏ',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'РџСЂРёР·РЅР°Рє РІР°Р¶РЅРѕСЃС‚Рё',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'РџСЂРёР·РЅР°Рє РґРѕСЃС‚Р°РІРєРё',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РЎРѕРѕР±С‰РµРЅРёСЏ';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 89, 39, 'Sed officiis ut saepe sed quia unde neque. Rem sint eos mollitia in quo aut. Dolor totam molestiae facere omnis et.', 1, 1, '2007-12-07 18:56:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 93, 59, 'Magni esse enim ut qui temporibus. Laboriosam tenetur in in non aliquid dignissimos. Ut sit qui laborum nesciunt.', 1, 0, '1997-05-08 20:17:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 40, 62, 'Consectetur consequatur quidem id voluptatem reiciendis delectus voluptas et. Id ducimus et quasi. Architecto tenetur in culpa quo. Et et sunt eum quidem est est.', 1, 0, '2006-09-17 05:16:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 48, 48, 'Alias eos illo consequatur est. Sit quia ut quod ut dolorem eum vel autem. Modi sit enim inventore ab quia quia. Numquam esse exercitationem similique similique.', 1, 1, '1978-07-17 02:35:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 12, 98, 'Sapiente sit a ex at commodi quas. Ut quia aut doloribus placeat. Maxime inventore occaecati et dolore aspernatur quod rerum.', 1, 1, '1980-05-03 05:30:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 3, 12, 'Et delectus alias labore vel. Porro nemo maxime eligendi ad qui et. Sapiente quis facere minima. Voluptas laboriosam repudiandae quasi aliquid quisquam sed.', 1, 1, '1979-10-31 08:59:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 19, 41, 'Dolor neque veritatis voluptatem numquam quod et. Iusto consequuntur laboriosam at dolorem aut. Fuga omnis corporis alias ut perspiciatis.', 1, 0, '1976-11-27 19:57:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 52, 76, 'Recusandae pariatur itaque nihil iure. Culpa rerum iure qui sequi. Et atque dicta et ad dolorum.', 0, 1, '2009-01-03 07:04:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 86, 41, 'Quos illum vitae iure dolor modi aut. Et et omnis nisi nobis numquam corporis. Consequatur architecto repudiandae amet magni ducimus ut. Facilis nihil ipsum sequi ut omnis officiis ipsum.', 1, 1, '1992-06-24 21:29:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 53, 25, 'Nihil et odit est cumque quia. Totam et qui rerum. Ut cum fugit porro accusamus eum voluptas dolor. Voluptatem nostrum voluptas doloremque optio quia.', 0, 1, '1992-04-28 04:26:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 26, 24, 'Laborum dignissimos dicta rerum ullam enim consequatur. Rerum voluptatibus iure eos commodi magni sapiente nostrum consequatur. Eaque soluta amet et id et qui voluptas.', 1, 0, '1998-07-17 06:25:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 80, 77, 'Delectus aut alias sit sit molestiae voluptas. Minus possimus dolorem quo. Voluptatibus non pariatur consequatur est modi qui. Dolorum aliquam ullam dignissimos molestias ab et voluptatem.', 0, 0, '2012-07-15 20:36:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 0, 19, 'Nisi reiciendis atque a voluptas. Quae et est accusamus. Autem nulla earum qui quo aut illo aspernatur officiis. Iusto sit pariatur tenetur temporibus velit placeat culpa.', 1, 1, '1990-04-25 09:29:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 68, 63, 'Neque eveniet explicabo sint corrupti. Ea doloremque omnis sed dolorem consectetur omnis quia nobis. Voluptate aut quam ea tempore officia ea. Et cum blanditiis voluptate voluptas quia.', 1, 0, '1972-06-27 13:52:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 86, 37, 'Accusamus dolorem dicta doloribus optio dolore tempora ducimus. Et sed nostrum consequatur. Enim voluptatem dolore perferendis repudiandae mollitia nesciunt. Autem corporis qui doloribus dignissimos. Dolor vel sint nemo sequi incidunt tempore quae aspernatur.', 1, 1, '1982-04-29 02:59:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 68, 74, 'Eum veritatis ut quisquam quia iure reiciendis. Cumque quos distinctio et quae nihil mollitia debitis. Dolores quisquam quis aut natus impedit optio et. Sunt sed incidunt est laudantium ut perferendis ipsum sapiente.', 1, 0, '2000-05-03 16:49:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 61, 58, 'Similique atque illum commodi consequatur eum aut et. Consequatur vitae voluptatem quos veniam nihil.', 1, 0, '1981-08-25 07:33:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 82, 94, 'Et tempore dolor nemo labore et. Reprehenderit quisquam vel ipsam esse sequi quasi eaque. Velit corrupti beatae est. Voluptas quidem beatae repudiandae facere.', 0, 1, '1987-03-11 01:04:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 47, 97, 'Molestiae nam aut reiciendis. Qui labore mollitia asperiores est qui. Nobis non corrupti deserunt nihil consequuntur labore.', 1, 1, '1985-12-08 03:16:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 76, 31, 'Quidem et aperiam rerum molestiae accusamus sit. Officia rerum rerum vel voluptas voluptatem. Corrupti minus qui assumenda sit porro molestias earum.', 0, 1, '1992-12-17 05:01:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 59, 54, 'Iste asperiores omnis aut omnis optio ipsum porro. Dolor veritatis ab qui. Ut ipsa voluptatem omnis esse dolorum harum et. Reprehenderit voluptatem ut quos vero laborum iste.', 1, 1, '1978-09-26 23:02:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 84, 32, 'Unde reprehenderit ut deleniti ea repellendus aut. Maiores autem dolorum beatae dolore est qui et. Laudantium nisi voluptatem quia. Enim a enim eum et nihil deserunt.', 1, 1, '1989-12-23 08:26:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 45, 41, 'Quisquam at eaque veniam. Quod officiis vel eos placeat. Voluptates deserunt velit aliquid delectus iusto.', 0, 1, '1998-05-21 15:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 85, 78, 'Ex minima et natus sint ea. Sit nihil dolorem ut numquam ut. Veniam fugit eos autem rerum voluptas eum temporibus.', 1, 0, '1992-03-15 02:27:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 1, 54, 'Numquam et eos ut alias exercitationem itaque. Odit accusantium et tenetur nobis ipsum ipsam.', 1, 0, '1992-03-20 14:41:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 65, 58, 'Temporibus autem voluptate quibusdam rerum sed aut. Porro harum qui fugiat vitae debitis ipsum est. Voluptatum culpa molestiae voluptas quos.', 0, 1, '2009-07-07 11:31:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 99, 65, 'Nisi nostrum temporibus quia. Quibusdam sed at voluptatum totam ea ea nesciunt. Autem maiores enim incidunt veritatis. Est quis temporibus ex eum.', 0, 0, '2011-06-05 14:00:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 20, 53, 'Magni sit officiis provident. Sequi deleniti quasi illo aut facere. Placeat temporibus modi sed illo distinctio est aut. Iusto repellendus repellendus sunt culpa harum omnis.', 0, 1, '1973-12-23 18:07:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 72, 66, 'Unde sed et occaecati voluptatem omnis labore sint. Nam a quia dignissimos sunt officiis. Enim libero nobis et et consectetur ea.', 1, 1, '2008-02-15 21:42:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 69, 23, 'Ipsum et soluta ut provident ipsam explicabo odit. A deserunt dolores omnis nobis veritatis eos. Vel ut nobis atque odio. Impedit cumque placeat itaque hic.', 0, 0, '2004-11-01 00:33:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 54, 97, 'Minima dicta delectus quod aut rerum. Ipsam sapiente blanditiis ratione laboriosam harum. Repellendus aut occaecati qui voluptatem earum accusantium accusamus.', 1, 0, '2004-01-03 19:02:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 8, 4, 'Eum aut nisi qui voluptatem vitae totam dolorem a. Veniam rerum eius asperiores perferendis autem consequatur neque et.', 1, 1, '1999-12-08 04:24:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 0, 68, 'Asperiores eos nihil eaque beatae ex. Assumenda ipsam eius temporibus consectetur laborum ullam est. Quaerat aliquid est architecto quas ut. Illo facere veniam est reprehenderit dolor et numquam.', 0, 1, '2019-10-30 07:38:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 29, 92, 'Occaecati fugit aut aut laudantium. Non ullam voluptatem ab. Qui rerum a reprehenderit unde voluptatem. Nam explicabo maxime accusamus culpa quos laboriosam earum.', 1, 1, '1986-04-20 08:12:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 22, 60, 'Excepturi minus odit blanditiis libero incidunt. Sit occaecati aut veniam reiciendis mollitia aliquam. Enim aspernatur rerum doloribus reiciendis dicta. Numquam velit ut ipsa commodi et repellat.', 1, 1, '1987-11-20 07:45:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 59, 66, 'Velit cupiditate quos quis placeat. Omnis odio nihil sunt magnam. Cupiditate quo voluptatem beatae quia odit accusamus velit. Sit corporis ipsam error. Eius eligendi ut sit inventore vitae voluptatem accusamus explicabo.', 0, 0, '2014-09-09 14:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 60, 55, 'Amet amet quam mollitia illum illum sunt reprehenderit. Et culpa qui asperiores necessitatibus tenetur. Aut earum voluptas perspiciatis eius sapiente error quae enim. Qui repellat nulla odit quasi doloremque. Quis in officia error voluptatibus omnis totam perspiciatis.', 1, 0, '2005-01-06 07:12:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 73, 75, 'Sed nam aut eos sint ab nulla. Voluptas dolor est et itaque. Qui delectus ea voluptas qui soluta corporis.', 1, 0, '1987-04-05 00:42:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 76, 28, 'Vel et eos sunt repellendus velit aut quidem. Molestiae qui ex sit odit modi animi.', 1, 0, '2020-05-17 05:06:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 0, 63, 'Et ipsam sint quis voluptas rerum. Unde eligendi nulla sapiente maxime. Qui soluta quo et iste. Et a optio pariatur odio tenetur.', 0, 1, '2011-05-31 17:39:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 97, 67, 'Enim quod libero neque qui voluptatem architecto aut. Dolores sapiente quia a voluptas molestiae sed. Ipsum et consectetur itaque ut provident mollitia.', 0, 0, '2005-10-17 23:41:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 4, 53, 'Atque consequatur nihil autem sit qui quas. Et doloribus quae quibusdam suscipit ut eligendi est. Blanditiis id repudiandae magni voluptatum. Minus repudiandae fugit autem aut quo minus.', 0, 0, '2008-02-19 10:28:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 77, 64, 'Totam qui quibusdam sapiente voluptatem dolor temporibus rerum. Facilis facilis omnis voluptatem inventore. Eius temporibus omnis ut est molestias aut. Sed voluptatem nam ratione alias.', 0, 1, '2005-02-17 07:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 98, 97, 'Molestiae porro reprehenderit quibusdam et consequatur. Nulla perspiciatis veniam aliquam in numquam et. Et inventore voluptatem omnis alias laborum. Vel minima ea nobis.', 1, 1, '1985-04-10 21:25:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 68, 10, 'Corporis nobis quis ex nemo. Deleniti aut est sed excepturi tempore et aut. Enim dolorem perspiciatis minima quae. In molestiae iste deleniti.', 0, 1, '2008-02-03 01:31:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 81, 0, 'Vitae rerum sint fugiat et exercitationem. Accusantium corrupti quia cumque dolores dolorem consequuntur. Enim deleniti quos ea ab. Voluptatem quae aut ad laudantium.', 1, 1, '1972-06-05 09:46:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 57, 'Optio est aut quas quos in. Adipisci officiis sint quidem iste fugiat. Est doloribus est voluptatem labore aut. Soluta rerum tempore voluptatibus alias dolores sint magnam.', 0, 1, '2007-12-28 17:53:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 60, 11, 'Eum at doloremque quae accusantium. Laboriosam animi itaque consectetur similique assumenda quis.', 1, 1, '1998-10-11 10:01:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 47, 28, 'Dolores modi ratione alias esse doloremque vero aut. Sit excepturi sint quod ducimus id reiciendis maxime in. Distinctio aperiam voluptatibus est eligendi unde ut architecto.', 1, 0, '1971-02-25 05:58:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 40, 3, 'Architecto nihil rerum provident. Ut saepe nostrum distinctio officia et ipsam sed eius. Temporibus omnis et illum rem.', 1, 1, '1972-07-14 08:12:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 73, 77, 'Nesciunt et cumque commodi id. Aspernatur ad voluptatem reiciendis quasi est. Voluptatum ut autem ut possimus eum minus ut dolorem.', 0, 0, '1983-05-24 02:51:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 63, 87, 'Ullam consequatur voluptas nihil enim iure corrupti animi. Asperiores iure laboriosam soluta quaerat.', 1, 0, '1994-06-12 09:05:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 10, 17, 'Dicta architecto vero repellat est autem aut. Magnam dolores corrupti soluta quos in placeat sunt. Ut error provident at molestiae atque. Nihil nemo aliquam molestiae cum id ipsum.', 0, 1, '1992-09-24 00:11:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 70, 70, 'Facilis et fugit reprehenderit aut nisi. Molestias sint temporibus natus non non suscipit. Consectetur aut recusandae qui soluta officiis consequatur.', 0, 1, '2019-03-27 04:30:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 63, 87, 'Blanditiis eum odio provident similique. Ea enim impedit praesentium. Tenetur quisquam mollitia nesciunt tempora voluptas. Veniam reiciendis deserunt aut magni.', 0, 1, '2002-11-24 03:21:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 79, 68, 'Iusto a qui veritatis voluptas assumenda soluta quia sit. Perferendis cumque nobis molestiae minus doloribus dolores. Quasi velit illum est qui sed quasi at.', 1, 1, '2000-01-23 23:22:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 87, 69, 'Est exercitationem ab qui sint ducimus. Similique laudantium minima itaque sunt facere ut molestiae. Tempora et corporis ratione qui.', 0, 1, '2001-01-16 14:28:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 16, 52, 'Reiciendis saepe incidunt aut deleniti dicta quae vero. Ipsa odio eos aliquam quaerat quisquam vel. Adipisci aut delectus eaque at alias veniam ipsa.', 1, 0, '1993-11-18 23:35:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 24, 96, 'Eum corrupti iusto velit fugit incidunt at culpa dolorem. Nihil illum cum ad et. Accusamus id hic facilis. Libero qui voluptatem tempora dolor dicta.', 0, 1, '2019-01-18 09:50:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 6, 71, 'Ipsam qui accusamus soluta veniam sint deleniti corporis. Facilis alias aut ullam eum libero eos enim. Exercitationem est nisi doloribus amet laudantium.', 1, 1, '1985-04-23 11:31:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 99, 51, 'Id perspiciatis velit inventore sit odio in et. Adipisci quisquam sequi eum accusamus. Corrupti ipsa et eius sit eos harum ex. Eum ut consectetur occaecati sit aliquam minus.', 0, 0, '2018-06-21 11:45:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 49, 91, 'Recusandae dolorem sit qui dolorum quia. Et consequatur saepe dolores. Asperiores aut optio consequatur.', 0, 0, '1978-03-07 08:38:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 89, 34, 'Tempora temporibus dolorum ipsam ea. Aut possimus est atque sed rerum in facere a. Amet numquam voluptas placeat eos velit perferendis natus sit. Earum at ut aut veritatis ut.', 0, 0, '2017-08-17 06:32:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 71, 57, 'Est nam asperiores commodi rem et voluptatibus. Qui ex fuga quis molestiae repellendus cupiditate doloribus. Molestiae debitis illo est inventore.', 1, 0, '2019-05-19 20:30:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 64, 36, 'Ea ducimus accusamus ab est aut quo esse. Reprehenderit quia sed quam delectus quidem consequuntur quos velit. Provident eum sapiente nesciunt eum.', 0, 1, '2007-05-10 15:31:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 82, 62, 'Quam optio temporibus eum dignissimos est consequatur. Sint doloribus quia dolores fugit est accusantium. Voluptas mollitia vitae esse rem architecto. Iure consequatur voluptatem voluptatem soluta quisquam.', 1, 1, '1994-11-23 08:13:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 15, 23, 'Unde cumque totam in harum eos quod eum sit. Eligendi ipsa molestias dolorem qui et magnam. Est quisquam error tenetur nobis.', 0, 0, '1975-10-01 01:58:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 60, 33, 'Aut ex libero eos tempora. Voluptas perferendis eligendi quae rerum repellendus ducimus. Hic praesentium quis laborum dolorem autem eveniet vero.', 1, 0, '1986-03-08 13:25:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 27, 14, 'Reiciendis deserunt quia enim. Sed necessitatibus quia sit. Aspernatur facilis aut cum consequatur. Modi ipsa quae ducimus.', 1, 1, '1970-10-01 12:42:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 63, 4, 'Eum odit fugit facere id earum autem vitae. Omnis voluptatem suscipit similique voluptas. Qui autem voluptatum cumque molestiae.', 0, 1, '1997-07-31 05:27:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 42, 88, 'Nesciunt dolores a dolore ut rerum maxime. Autem possimus eos qui. Sunt et perferendis aliquid in.', 0, 1, '1986-12-05 09:10:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 88, 89, 'Vero mollitia laboriosam autem dolores. Qui porro consequatur ipsam quis vitae. Ut in molestiae dolorem qui. Qui optio blanditiis voluptate sit.', 0, 1, '1977-05-11 22:39:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 21, 49, 'Harum labore placeat et autem. Et quidem nihil ut dolor quia dignissimos. Ut doloremque quia fugit rerum voluptas eaque tempora.', 0, 1, '2016-02-16 18:51:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 31, 6, 'Voluptatem deleniti quas dolorem sint. Tenetur at nostrum ipsum ut inventore ea.', 1, 1, '2005-08-02 04:43:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 7, 72, 'Sint enim aspernatur tempora id culpa nisi modi. Id dolorum id voluptatem autem veniam. Inventore a neque doloribus sunt. Quidem qui beatae nihil ad dolorum molestiae nemo.', 1, 1, '1996-12-19 07:40:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 67, 41, 'Autem omnis voluptatibus accusantium fuga. Fugit quod sint eum neque. Ab ex tenetur a deleniti quidem enim voluptatem animi.', 1, 0, '1974-12-15 22:19:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 66, 24, 'Necessitatibus dignissimos sed vero molestias. Ea autem tenetur perferendis sed unde culpa. Omnis quam autem deleniti aliquam modi aut. Vel necessitatibus suscipit illo omnis eius distinctio asperiores doloribus.', 0, 1, '1995-03-09 23:58:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 7, 3, 'Omnis odit dolorum non nemo in dolorum. Ex voluptatem laudantium est. Quo impedit ab consequatur autem.', 1, 0, '1987-06-12 06:36:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 71, 55, 'Velit esse odit quos et rerum magni. Odio molestiae omnis eaque rerum voluptatibus quod porro. Aliquam non optio velit eos dolorum suscipit.', 0, 1, '2015-05-19 18:09:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 19, 28, 'Quia culpa culpa necessitatibus cupiditate aliquam eligendi officia. Accusantium quia adipisci cum qui debitis in nisi.', 1, 1, '2010-04-14 23:28:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 50, 5, 'Molestiae et rem molestiae repudiandae corrupti corrupti eveniet dolorem. Cum debitis in illum sed molestiae itaque ex. A voluptas dolores dolor earum provident.', 0, 1, '1990-10-04 00:38:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 14, 6, 'Nobis soluta sed et voluptatum. Placeat ab provident ab consequuntur voluptas consequatur. Et id non dolorem labore doloribus sed. Veniam et eum quis et sed voluptas vel error.', 1, 0, '1980-03-18 02:52:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 44, 48, 'Et dolorem consequatur alias voluptatum incidunt. Sit assumenda maiores error quos et officia dignissimos. Voluptates cum dolore itaque. Dolore quam velit autem autem minus doloremque.', 0, 1, '1990-09-22 14:23:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 2, 25, 'Delectus adipisci officiis et delectus vero eos. Laboriosam vitae tenetur nesciunt magni. Ut beatae natus molestias rerum quo doloribus.', 0, 1, '1979-07-10 06:43:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 35, 6, 'Magni hic maxime ipsam sit et possimus. Quo reprehenderit eveniet porro. Ex consectetur enim quasi repudiandae.', 0, 1, '1995-09-03 23:43:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 2, 29, 'Qui non cumque atque laborum provident ipsam officiis et. Aut facere est et rem debitis possimus ad. Ut dignissimos rerum sunt omnis. Aspernatur a molestias perferendis.', 1, 1, '1982-01-27 07:18:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 10, 7, 'Labore voluptas eos unde provident. Modi unde facilis voluptatum temporibus odio. Officiis facilis eveniet provident perspiciatis. Ut fuga non inventore est.', 0, 1, '2017-01-02 05:29:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 43, 30, 'Nisi sint tempore incidunt iusto debitis voluptas repellat. Quis nisi consequuntur aut. Illo et et unde et. Numquam excepturi dolores qui debitis iure.', 1, 1, '2003-01-31 12:57:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 59, 92, 'Nobis quia omnis sed vel animi molestiae odit in. Illum voluptas in iste facere vero. Illo tempore voluptas est repellat. Dolorum ut consectetur ex ducimus aut fuga.', 0, 0, '1995-06-06 11:50:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 87, 39, 'Hic deserunt dignissimos qui. Provident quod ullam odio soluta explicabo vel. Quisquam sequi quia dolorem non debitis recusandae.', 0, 1, '1989-01-11 01:19:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 37, 74, 'Et dolor dolorem voluptatem atque in quia. Unde quia fuga non. Et quidem voluptatem est. Dicta et nihil deleniti dolores natus.', 0, 1, '1981-03-25 23:55:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 36, 96, 'Aspernatur necessitatibus dolores quia magni voluptate modi qui. Aspernatur hic velit quo est. Ut provident suscipit nisi eveniet et eos aut.', 0, 1, '2019-11-19 19:42:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 23, 41, 'Est nulla maxime non placeat suscipit sapiente. Reiciendis laudantium recusandae minus molestias aliquid ut cumque. Reiciendis temporibus doloremque eaque tempora dolorem delectus amet. Ducimus placeat sit aut.', 0, 0, '1996-03-12 23:15:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 19, 67, 'Dolor autem consequatur nesciunt cum ipsum nisi dolores. Optio nihil est consequatur accusamus eum.', 1, 1, '1996-06-15 09:15:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 82, 64, 'Ea fuga velit quidem doloremque dolorem voluptas pariatur. Reprehenderit aut et aut. Voluptatem aperiam non sapiente. Illum odit unde eligendi in in. Adipisci numquam necessitatibus quia dolorum.', 0, 0, '1988-05-02 06:24:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 63, 56, 'Et eius quo dolor ut temporibus esse. Sed nesciunt velit in rerum illum. Quo amet aut sint ab.', 0, 0, '1988-05-02 09:36:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 34, 37, 'Nemo fuga cum nihil blanditiis corrupti. Praesentium fugit tempore deserunt quod voluptates. Quasi vel quam sunt non voluptatem. Id recusandae saepe nobis quos voluptas et eum.', 1, 1, '1995-04-13 18:38:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 53, 49, 'Expedita temporibus ea sint voluptatum rerum ratione. Unde aut qui ipsa consectetur. Explicabo neque dolorem nam et. Consequatur alias odit et nostrum et molestiae facere enim.', 0, 0, '2019-03-04 23:53:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 62, 39, 'Explicabo nam error fugit quibusdam. Consequatur harum asperiores error commodi. Consequatur corrupti ut est reiciendis amet nisi.', 1, 1, '1989-10-04 03:47:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 88, 17, 'Laudantium debitis ea dolore facilis itaque amet incidunt. Fugit rerum voluptatibus facilis consequuntur est laudantium rerum. Eligendi eum maxime facilis ut molestiae pariatur sed.', 1, 1, '2008-07-27 16:11:07');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'РЎСЃС‹Р»РєР° РЅР° РїРѕР»СЊР·РѕРІР°С‚РµР»СЏ',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РџРѕР»',
  `birthday` date DEFAULT NULL COMMENT 'Р”Р°С‚Р° СЂРѕР¶РґРµРЅРёСЏ',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Р“РѕСЂРѕРґ РїСЂРѕР¶РёРІР°РЅРёСЏ',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'РЎС‚СЂР°РЅР° РїСЂРѕР¶РёРІР°РЅРёСЏ',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РџСЂРѕС„РёР»Рё';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'm', '2011-06-23', 'Leanneborough', 'Saint Barthelemy', '2008-05-26 02:38:46', '1990-10-13 11:09:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1971-03-02', 'West Vivashire', 'Lao People\'s Democratic Republic', '2016-08-03 17:47:33', '1978-11-06 07:25:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'f', '1970-05-10', 'Albatown', 'Anguilla', '2019-09-05 23:15:29', '1970-08-13 09:13:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1986-06-01', 'East Camronview', 'Gibraltar', '1999-09-08 10:48:25', '1971-03-06 12:42:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '1997-02-03', 'East Beatriceview', 'Papua New Guinea', '1989-10-17 22:26:26', '2009-10-23 15:36:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '1979-02-06', 'Christaland', 'Samoa', '1996-06-25 22:09:34', '2015-04-16 01:23:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'f', '2002-01-29', 'Layneview', 'Fiji', '1985-03-09 01:34:59', '2005-11-30 23:25:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '1991-04-16', 'Port Warren', 'South Georgia and the South Sandwich Islands', '2002-11-09 13:07:54', '1979-09-06 07:21:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '2007-01-16', 'Lake Nelsonborough', 'Japan', '1985-04-13 13:12:14', '1999-02-01 23:37:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '2007-11-20', 'South Tyra', 'Tajikistan', '1974-10-05 15:13:55', '1999-06-03 22:12:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1974-10-10', 'Rickeyfort', 'Peru', '1986-04-05 16:38:49', '1998-05-18 06:08:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1992-09-13', 'South Mylene', 'Bolivia', '1989-01-21 20:56:50', '2016-04-10 23:09:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'm', '1972-01-06', 'Lake Manleyburgh', 'Vietnam', '2003-01-19 12:51:17', '1992-11-30 14:28:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '2014-01-09', 'Ortizfurt', 'Hungary', '1999-08-04 12:22:50', '2009-02-11 18:31:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'm', '1998-07-06', 'Jaymeland', 'Anguilla', '1976-11-17 08:05:33', '2009-08-27 00:39:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'm', '1985-01-03', 'New Lia', 'Malaysia', '1977-03-23 05:11:28', '1977-05-27 07:50:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'f', '1995-08-14', 'Ebertfurt', 'United States of America', '1996-05-13 11:53:21', '2000-12-08 02:56:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1999-03-06', 'Faheystad', 'Romania', '2012-11-29 09:24:18', '1990-09-20 15:45:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'f', '2014-11-10', 'West Archibaldbury', 'Uganda', '2001-01-28 16:24:53', '2012-06-13 05:09:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '1988-07-18', 'Robertsview', 'Trinidad and Tobago', '1971-07-06 16:44:51', '2003-02-19 19:46:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1973-12-14', 'West Mable', 'Honduras', '1994-09-04 17:03:48', '2012-08-14 23:43:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'm', '2009-03-23', 'Sawaynfort', 'Rwanda', '1995-05-07 07:29:15', '1986-04-19 05:51:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '1980-06-24', 'North Kurtis', 'Tuvalu', '1992-06-03 01:43:58', '1984-02-05 14:21:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '1970-01-25', 'Edberg', 'Macedonia', '1975-01-22 11:00:45', '2001-09-18 22:32:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '1978-12-19', 'Predovicmouth', 'Togo', '1985-09-05 03:23:59', '1996-10-02 23:10:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'm', '2000-02-03', 'Lueilwitzberg', 'Myanmar', '1974-05-18 15:08:11', '1987-07-12 01:23:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '2016-10-13', 'Keelingchester', 'Haiti', '1982-04-25 10:16:38', '2002-12-09 08:34:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '2015-10-29', 'New Jerryborough', 'Faroe Islands', '1987-11-01 01:35:48', '2005-03-21 12:15:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '2007-10-30', 'West Hipolito', 'Gabon', '2020-07-18 02:12:09', '1974-10-08 10:03:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'f', '1994-04-14', 'Uptonport', 'United Kingdom', '1971-11-27 18:32:48', '1973-12-23 19:34:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'f', '2016-04-29', 'Port Moriahhaven', 'Norway', '1996-07-12 18:45:23', '1979-11-18 21:49:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '2016-09-04', 'South Bridgettebury', 'Ghana', '1997-09-28 06:57:29', '1989-12-21 17:14:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1998-11-19', 'Whiteville', 'Falkland Islands (Malvinas)', '2009-03-05 11:50:18', '2017-01-09 22:42:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '1997-02-24', 'Strosinstad', 'Slovakia (Slovak Republic)', '1998-11-14 01:06:54', '1992-05-16 00:32:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1983-02-27', 'West Alejandrin', 'Israel', '2001-02-12 01:37:16', '1982-04-09 13:58:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '1977-11-23', 'Lake Wyman', 'Saint Martin', '1998-02-06 10:36:58', '2006-10-23 17:47:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '2019-02-06', 'North Rebekafort', 'United States Virgin Islands', '1986-03-11 13:13:55', '1974-11-26 00:46:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '2009-08-22', 'South Kiel', 'Nepal', '1978-03-05 23:27:22', '1971-09-12 17:03:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1999-08-26', 'South Lee', 'Antigua and Barbuda', '1991-06-17 13:09:47', '1978-08-11 22:01:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '2001-09-23', 'Port Fred', 'Iceland', '1979-06-04 02:01:57', '1995-12-07 20:34:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '1976-08-03', 'New Javonte', 'Kazakhstan', '1984-06-07 10:59:32', '1977-11-21 01:17:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '1997-06-26', 'East Leonorafurt', 'Nepal', '2014-10-11 16:11:30', '1973-03-25 04:26:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '2018-03-10', 'Howellton', 'Cambodia', '2018-11-29 13:46:21', '2012-10-23 03:40:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2018-11-18', 'East Mervin', 'Guadeloupe', '2017-12-13 05:23:05', '2005-07-21 13:45:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'f', '1972-07-17', 'Raynorbury', 'British Virgin Islands', '1988-04-30 19:38:16', '1996-02-27 03:00:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '2019-04-08', 'New Everettshire', 'Argentina', '1984-08-16 14:49:07', '2009-09-19 23:46:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '2013-12-11', 'West Perry', 'Lesotho', '1995-09-18 19:00:39', '2018-06-16 17:39:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '1990-04-05', 'New Constanceberg', 'France', '1974-06-12 16:16:24', '1985-04-21 18:58:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1991-04-01', 'Denesikchester', 'Vietnam', '2000-06-30 06:39:42', '2018-02-05 02:43:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '1992-04-10', 'Hardyside', 'Bouvet Island (Bouvetoya)', '2015-09-24 13:55:11', '1988-07-17 09:31:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1995-04-11', 'Lednerburgh', 'Zambia', '2004-11-03 17:18:36', '1996-06-17 07:05:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'f', '1972-04-03', 'Considinehaven', 'Jordan', '1972-02-16 11:34:51', '1970-06-16 01:20:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '1993-08-23', 'West Athenahaven', 'Christmas Island', '2005-02-03 15:52:57', '1972-01-26 18:38:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1998-11-04', 'East Verlamouth', 'Paraguay', '1996-10-10 01:51:09', '2013-06-27 19:36:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2016-05-10', 'Wisozkstad', 'Ireland', '1976-10-13 12:03:11', '1989-09-02 09:18:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '1996-11-20', 'Maxchester', 'Oman', '2012-08-22 17:43:12', '1991-01-24 13:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1993-06-03', 'Lake Baylee', 'Bolivia', '1990-11-30 03:33:26', '2014-03-08 17:43:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '2012-11-12', 'McCulloughburgh', 'Korea', '1998-09-30 11:05:33', '1987-07-04 18:51:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '1983-10-06', 'Harbermouth', 'French Southern Territories', '2012-01-28 11:58:34', '2008-03-30 09:02:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'm', '1994-08-19', 'Cheyennehaven', 'Mexico', '2013-09-20 21:19:27', '1988-07-27 19:46:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1997-04-30', 'Concepciontown', 'Moldova', '2012-04-01 04:39:57', '2015-06-29 08:56:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '1997-11-16', 'Gradytown', 'Serbia', '2018-11-04 18:44:51', '1972-05-01 05:32:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '1995-05-02', 'South Antwonport', 'New Caledonia', '1992-05-10 01:03:40', '2018-07-05 12:08:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '1988-06-22', 'West Brennan', 'Jordan', '1992-06-17 14:27:42', '2003-10-12 14:24:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '2000-09-27', 'Simonisshire', 'Mauritania', '1977-04-05 15:41:42', '1972-04-07 08:58:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '1992-02-15', 'Lavernmouth', 'Jordan', '1991-06-13 06:17:30', '2012-07-02 14:14:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '2011-06-09', 'Lake Finn', 'Egypt', '2018-08-27 08:14:52', '1977-10-31 14:23:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'f', '2004-08-29', 'Clareview', 'Japan', '1994-12-11 12:54:02', '2000-10-08 07:44:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '2006-07-05', 'East Nedraborough', 'Solomon Islands', '2020-10-16 01:45:54', '1976-02-09 18:12:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1992-08-04', 'Fritschton', 'Slovakia (Slovak Republic)', '1972-12-23 00:27:01', '1990-04-15 05:24:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'f', '2018-11-26', 'Twilaburgh', 'Niger', '1991-08-02 14:11:45', '1994-08-04 07:49:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'm', '1972-03-02', 'New Chrismouth', 'Saint Vincent and the Grenadines', '2008-12-25 17:44:03', '1982-02-15 04:20:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1983-03-18', 'East Rudy', 'Mongolia', '2010-07-21 04:47:46', '1986-03-04 16:57:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '2003-08-28', 'North Mortimer', 'Yemen', '1970-12-31 01:24:13', '1998-08-22 19:24:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'm', '1997-07-25', 'Prestonview', 'Marshall Islands', '1986-05-24 18:52:57', '1979-10-27 13:09:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'f', '2008-12-04', 'Corwinfort', 'Hungary', '1985-06-08 11:42:37', '1984-10-24 20:19:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'f', '2012-09-18', 'East Aiyana', 'Palestinian Territory', '2001-03-18 01:24:43', '2019-08-11 03:36:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'f', '1983-08-16', 'West Vickie', 'Andorra', '2013-08-14 04:00:18', '2016-12-11 04:57:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '1992-09-26', 'Leopoldoville', 'Seychelles', '1993-10-25 16:15:37', '1971-05-23 12:56:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '1986-01-08', 'North Clarabelleview', 'Nigeria', '2002-12-11 05:48:29', '2004-03-27 11:07:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '1981-03-12', 'South Allieberg', 'Macedonia', '1996-04-07 00:30:14', '2011-07-18 06:36:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '2001-09-08', 'Hellenside', 'Belize', '2005-09-23 00:37:47', '2015-12-06 18:05:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1976-08-04', 'New Clemmieton', 'Mauritius', '1973-01-05 22:42:11', '1986-09-11 02:06:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '2006-08-28', 'East Elseberg', 'Kenya', '1974-05-15 20:27:03', '1977-02-21 02:05:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '2015-02-15', 'East Nikitabury', 'Bulgaria', '2001-10-29 01:38:00', '1987-08-11 01:23:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'f', '2010-03-29', 'West Martinfurt', 'Antarctica (the territory South of 60 deg S)', '1975-04-13 20:06:12', '1977-05-14 08:12:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'f', '2007-02-19', 'Satterfieldstad', 'Egypt', '1978-01-10 03:59:33', '1989-09-19 09:15:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '2020-11-30', 'Ettiehaven', 'Cocos (Keeling) Islands', '1972-04-07 10:33:25', '2006-03-15 20:23:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '1998-11-19', 'East Javonte', 'New Zealand', '1995-10-18 20:50:58', '1991-08-19 13:55:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1995-06-06', 'Deloresmouth', 'Cyprus', '1975-05-25 12:15:44', '2012-05-22 21:35:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '1997-09-24', 'Gutmannborough', 'Eritrea', '1994-07-31 13:30:20', '1985-11-15 16:25:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '1976-09-18', 'West Ociechester', 'Libyan Arab Jamahiriya', '2014-12-31 01:00:02', '1976-12-02 07:07:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '1978-10-26', 'Schusterland', 'Swaziland', '2002-02-27 18:37:18', '1998-06-23 14:30:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'f', '2016-09-13', 'Gleasonshire', 'Cambodia', '1988-02-15 03:05:49', '2015-10-18 09:13:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '1983-11-09', 'Luettgenstad', 'French Guiana', '1970-10-29 03:14:24', '1984-06-10 00:00:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1972-01-20', 'Kianaville', 'Georgia', '1970-05-08 09:49:47', '1975-11-07 15:44:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '1978-12-22', 'West Maggie', 'Uganda', '2007-06-12 10:46:55', '2006-07-03 05:44:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'm', '1988-08-11', 'Lake Robbhaven', 'Namibia', '1973-09-08 17:39:48', '2015-02-05 18:27:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '1970-06-19', 'Murrayville', 'Cape Verde', '2015-08-28 18:59:36', '1997-11-26 15:32:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'm', '1979-02-17', 'Yostside', 'Puerto Rico', '1996-05-31 18:37:14', '2015-11-05 08:11:22');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Р�РґРµРЅС‚РёС„РёРєР°С‚РѕСЂ СЃС‚СЂРѕРєРё',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Р�Р�?СЏ РїРѕР»СЊР·РѕРІР°С‚РµР»СЏ',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Р¤Р°Р�?РёР»РёСЏ РїРѕР»СЊР·РѕРІР°С‚РµР»СЏ',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РџРѕС‡С‚Р°',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'РўРµР»РµС„РѕРЅ',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Р’СЂРµР�?СЏ СЃРѕР·РґР°РЅРёСЏ СЃС‚СЂРѕРєРё',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Р’СЂРµР�?СЏ РѕР±РЅРѕРІР»РµРЅРёСЏ СЃС‚СЂРѕРєРё',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='РџРѕР»СЊР·РѕРІР°С‚РµР»Рё';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Constantin', 'Quitzon', 'xmiller@example.net', '(658)421-5606', '1999-12-23 13:53:02', '1974-07-27 07:56:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Andreanne', 'Rau', 'hassie53@example.org', '08054594849', '2008-05-28 13:01:46', '2020-09-28 17:49:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Katharina', 'Lind', 'caleb.goldner@example.com', '783-261-3996x25420', '2014-01-27 15:29:03', '1975-11-22 06:01:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Jaclyn', 'Torp', 'gleichner.genesis@example.net', '1-146-669-6731', '2014-07-06 22:20:57', '2007-04-01 04:55:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Winona', 'Corwin', 'ptoy@example.com', '510.422.7752', '1974-11-01 08:15:31', '1989-12-20 22:12:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Keyon', 'Adams', 'ihowell@example.com', '070.295.4318', '1980-10-29 23:21:29', '1999-06-07 17:23:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Delilah', 'Kerluke', 'srowe@example.org', '1-705-181-6564x997', '2001-02-24 15:32:08', '1973-02-27 21:12:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Serena', 'Barton', 'zieme.sebastian@example.org', '547-719-9918x3921', '1992-07-13 08:59:53', '1998-03-30 14:48:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Scarlett', 'Aufderhar', 'isabel83@example.com', '+61(2)9422384524', '1980-11-06 18:11:48', '1995-02-10 02:43:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Kathryn', 'Jacobi', 'giovanni94@example.com', '(168)139-2787x297', '2018-08-30 14:52:22', '1998-04-04 18:23:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Kelli', 'Farrell', 'mo\'kon@example.com', '280-531-3380', '2004-01-19 05:05:15', '2006-03-13 12:34:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Josiane', 'Funk', 'wilderman.earlene@example.com', '1-276-914-1403', '2016-11-19 23:59:17', '1982-04-17 00:24:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Johnny', 'Roberts', 'monserrat.mcdermott@example.com', '244-598-7368x22983', '2017-04-28 05:06:58', '1971-12-27 03:40:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Johnson', 'Hammes', 'kristoffer45@example.com', '245-058-9560x818', '1991-09-14 21:06:58', '2002-05-09 16:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Susanna', 'Considine', 'sfahey@example.com', '668-825-2921', '1982-09-06 21:37:18', '2018-03-06 04:53:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Izabella', 'Satterfield', 'forn@example.com', '(687)120-1631x049', '1992-10-24 09:21:33', '2017-03-13 21:34:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Verlie', 'Lueilwitz', 'lempi.tromp@example.net', '895.391.8547x9246', '1970-02-18 05:57:26', '1975-09-15 11:31:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Cloyd', 'Mann', 'wisoky.meda@example.net', '+92(9)9597663812', '1991-10-08 19:32:56', '2000-06-05 08:46:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Jessica', 'Borer', 'fannie94@example.org', '+09(8)9095069206', '1996-02-12 18:06:10', '2011-03-04 17:45:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Trycia', 'Bahringer', 'matteo74@example.org', '(141)805-8671', '2016-08-15 01:11:13', '2000-12-04 17:19:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Micheal', 'Ritchie', 'florian74@example.net', '(230)781-4696x271', '2018-01-08 17:57:38', '1981-11-23 04:34:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Maurice', 'Bogisich', 'earline.weimann@example.com', '641.533.8823', '2003-06-24 03:57:34', '2013-07-27 02:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Carley', 'Orn', 'iwolff@example.com', '1-257-057-3987x5398', '1971-10-08 10:12:03', '1982-03-18 21:22:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Alyce', 'Kunde', 'salma.durgan@example.org', '+00(8)8996015448', '1978-05-29 18:42:30', '1981-07-20 09:04:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Claudine', 'Wisozk', 'payton31@example.org', '+49(4)8494273021', '1992-06-11 05:00:07', '1975-10-28 14:53:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Armando', 'King', 'mitchell.forrest@example.net', '+66(8)2065627773', '2014-03-16 15:36:57', '2001-12-12 21:04:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jarrett', 'O\'Keefe', 'odell.mccullough@example.org', '05296350473', '1983-03-10 14:52:44', '1979-01-01 18:37:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Kaylee', 'Mayert', 'ojones@example.net', '064.689.0304', '1981-06-16 14:37:54', '2010-03-09 06:58:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Lamar', 'Kovacek', 'boehm.yessenia@example.com', '1-058-751-2696', '1974-08-19 20:25:41', '2000-02-23 04:31:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Abigale', 'Mohr', 'felton.sipes@example.com', '603-203-7690', '2007-12-28 09:33:02', '1977-05-26 23:26:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Margot', 'Lowe', 'berneice.cormier@example.com', '1-203-568-7938x4185', '2020-12-21 20:20:31', '2015-11-04 17:32:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Elva', 'West', 'twiegand@example.com', '761-163-8700x2939', '1998-07-08 05:59:52', '1996-02-03 22:06:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Katelin', 'Kassulke', 'pmetz@example.net', '789.646.4621x614', '1995-04-01 17:07:11', '2013-05-11 02:55:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Tate', 'Ernser', 'ekozey@example.com', '1-280-075-0883', '2007-11-11 22:17:43', '2004-03-03 10:44:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Kurt', 'Fisher', 'eugene.okuneva@example.org', '280.038.3971', '2003-11-07 00:15:59', '2020-11-06 15:44:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Tatum', 'Langosh', 'harris.allene@example.com', '355.679.0125x17915', '2002-02-03 14:41:39', '1995-03-13 20:56:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Karine', 'Altenwerth', 'corwin.paxton@example.net', '(896)159-6334x509', '1993-12-29 16:22:58', '1981-12-11 11:08:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Paul', 'Hermiston', 'bradtke.rosina@example.com', '1-133-200-7136', '2015-11-01 19:56:19', '1994-01-27 20:08:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Terrell', 'O\'Conner', 'weissnat.reynold@example.com', '(753)723-3344', '1972-10-21 09:08:48', '1988-03-12 21:13:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Teresa', 'Watsica', 'montana.ullrich@example.com', '(554)801-1746x287', '1998-06-11 20:42:44', '1972-09-22 12:07:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Angus', 'Lemke', 'jenkins.mauricio@example.com', '02463593867', '2002-10-04 16:55:43', '2011-04-02 22:00:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Lisette', 'Hermiston', 'moen.bethany@example.com', '915-741-4025', '1990-07-25 05:36:27', '2007-11-10 21:42:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Jamarcus', 'Graham', 'graham.matilde@example.com', '396.906.6228x9146', '2018-02-11 03:20:59', '1980-05-07 19:14:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Veronica', 'Buckridge', 'marques.trantow@example.org', '(816)464-6767', '1980-03-21 07:12:12', '1978-12-19 10:11:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Candido', 'Abernathy', 'sreichel@example.net', '(430)587-3669', '1973-06-07 20:00:54', '1996-09-28 16:46:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Alexandra', 'Rogahn', 'izulauf@example.org', '1-377-485-4467', '1996-12-19 06:48:28', '1990-06-09 06:40:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Josephine', 'Wilderman', 'matilda.bahringer@example.org', '837.565.9875', '1976-01-12 04:42:27', '2011-02-19 17:40:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Kiley', 'Corkery', 'ortiz.jordi@example.com', '(754)570-3228x597', '1971-09-22 09:04:32', '2007-06-11 21:49:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Ella', 'Hudson', 'wellington64@example.net', '1-414-184-0147', '1976-11-14 04:39:58', '1992-11-16 16:38:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Edmund', 'Shields', 'lratke@example.org', '897.439.3338x7469', '1997-08-02 11:26:06', '2018-11-28 18:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Bailey', 'Gulgowski', 'alanna.schmeler@example.com', '555.005.3143', '1987-09-20 06:18:51', '1989-08-13 05:36:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Monserrate', 'Roob', 'hagenes.lou@example.net', '397.134.8783x8620', '2013-09-15 00:43:12', '1997-08-22 20:27:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Rhiannon', 'Windler', 'heber.quitzon@example.com', '1-154-731-5401', '1995-11-01 22:59:07', '1985-05-18 11:01:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Keeley', 'Smith', 'langworth.marvin@example.com', '517.244.2959x33509', '2009-06-03 19:53:20', '2005-04-19 01:46:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Kyla', 'Graham', 'gibson.hildegard@example.net', '(888)860-2737', '1975-09-02 01:31:19', '2018-07-27 17:48:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Ari', 'Lind', 'stephon64@example.com', '715.429.5002', '2003-06-18 07:38:13', '1991-06-17 01:21:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Jayne', 'Gerhold', 'jacquelyn85@example.net', '(005)871-6230x688', '1992-05-17 14:06:50', '1973-07-11 05:47:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Beau', 'Paucek', 'grayson29@example.org', '+78(3)6547167504', '1982-05-27 15:30:21', '1980-11-11 05:18:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Shanelle', 'Schmidt', 'swill@example.net', '141.624.4623x481', '1989-07-24 03:47:54', '1981-10-05 02:20:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Alfredo', 'Nikolaus', 'kkonopelski@example.com', '+57(9)7767269488', '2001-04-16 14:32:03', '1993-10-23 14:29:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Frida', 'Botsford', 'milford60@example.org', '1-681-637-1667x665', '1975-01-20 23:31:11', '1986-06-02 07:46:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Kianna', 'Brakus', 'omarvin@example.org', '(927)289-4605x134', '1975-10-26 03:29:53', '1971-07-29 20:05:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Ransom', 'Morissette', 'elsa.torp@example.org', '109.893.5205x9857', '1983-05-08 15:32:54', '1990-10-12 16:40:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Neoma', 'Keebler', 'lmohr@example.org', '07818775781', '1989-12-24 11:50:55', '1978-12-25 12:11:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Candido', 'Hyatt', 'ceffertz@example.com', '(446)100-8362', '1995-08-26 23:48:40', '2017-07-13 07:41:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Alene', 'Zieme', 'dubuque.gunner@example.net', '464-476-3300x7299', '1983-05-30 18:08:32', '2008-02-07 14:54:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Idella', 'Schmidt', 'prussel@example.com', '579.582.4447', '2013-05-20 15:01:31', '2014-12-05 08:05:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Taylor', 'Toy', 'zluettgen@example.org', '(677)840-7627x22135', '1977-11-18 20:17:33', '1985-04-08 08:31:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Odell', 'O\'Connell', 'bogan.shyann@example.org', '1-888-758-1278', '1970-11-02 05:49:41', '1997-09-17 20:36:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Madaline', 'Vandervort', 'lhowell@example.org', '1-804-888-3658x02420', '1974-08-12 01:57:46', '1976-01-07 06:57:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Tod', 'Kutch', 'monserrat.o\'connell@example.org', '953.672.3942', '2019-07-03 11:28:58', '2001-06-24 21:18:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Joannie', 'Streich', 'ruecker.henry@example.org', '1-371-892-9758', '1975-12-23 15:54:09', '1976-01-10 07:07:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Madisyn', 'McGlynn', 'keebler.cameron@example.net', '068-443-4437x2082', '2014-08-15 03:39:10', '2018-08-01 00:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Rosamond', 'Ernser', 'josefina.kovacek@example.org', '806.770.8622x662', '1974-08-13 02:57:28', '2008-10-21 21:47:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Gregory', 'Kessler', 'murazik.jena@example.com', '1-186-173-7490x38511', '2016-11-11 20:21:47', '1980-01-05 05:09:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Frida', 'Stracke', 'walker.amelie@example.net', '228-125-1837', '2003-05-16 09:21:44', '1997-12-04 20:50:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'May', 'Bailey', 'hilpert.newton@example.net', '02171478013', '1997-12-21 21:12:28', '1974-09-13 04:13:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Kattie', 'Connelly', 'hauck.patricia@example.org', '1-356-139-9723', '1980-02-02 04:25:29', '2005-02-17 01:10:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Gabe', 'Herman', 'wreichert@example.com', '+75(2)3153157502', '1977-12-02 13:21:37', '1970-08-08 11:07:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Tatum', 'Keeling', 'rhettinger@example.com', '509.392.6576', '1973-10-23 03:57:30', '1972-03-24 18:03:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Maryse', 'Hammes', 'ucarter@example.org', '343-679-7378x6327', '1976-04-01 07:46:53', '2017-03-19 06:09:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Paolo', 'Bode', 'cartwright.gerardo@example.com', '1-197-168-5743', '1999-04-11 13:11:37', '2010-07-23 21:38:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Art', 'Goldner', 'wboyle@example.org', '(316)353-1516x69375', '2015-04-17 23:26:56', '2014-09-16 14:34:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Kiana', 'Hauck', 'mcclure.josianne@example.net', '(528)024-1998', '2003-06-02 14:17:30', '2004-01-22 08:13:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Mary', 'Kshlerin', 'o\'conner.chaz@example.org', '381-876-2158x35552', '1997-01-14 14:18:46', '1970-05-15 13:41:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Rebekah', 'Pfannerstill', 'vince.bergstrom@example.com', '(578)900-5922', '2000-10-02 01:56:45', '1984-02-05 09:29:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Rhett', 'Pfannerstill', 'brad48@example.org', '265-269-9581x31589', '2020-11-08 17:43:13', '1988-07-11 22:05:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Jarret', 'Little', 'magdalen59@example.net', '698-118-9755x62198', '2007-12-31 04:22:11', '2005-07-20 04:18:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Beulah', 'O\'Kon', 'dalton32@example.com', '(093)394-2019x8762', '1999-07-14 00:00:33', '2020-10-06 09:33:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Hershel', 'Schuppe', 'walsh.peggie@example.com', '09785125894', '2009-04-02 13:08:47', '2013-05-23 04:53:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Evelyn', 'Moen', 'vmoore@example.org', '073.471.0756x727', '1995-02-08 20:27:58', '2019-08-09 06:30:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Betty', 'Dicki', 'katrine.hoeger@example.com', '394-333-6136', '2020-12-01 20:34:25', '1979-08-18 06:30:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Oceane', 'Powlowski', 'libby51@example.net', '(794)604-0743x418', '2013-09-11 12:32:48', '1972-12-06 05:04:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Margarette', 'Medhurst', 'bulah.schulist@example.net', '775.679.2902x28136', '2000-08-23 02:40:54', '2010-10-19 22:01:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Junius', 'Eichmann', 'dallas29@example.com', '(632)466-9035x251', '1991-06-18 02:25:51', '2013-02-08 02:39:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Domenick', 'Bechtelar', 'charley.bahringer@example.com', '001-434-0417x90049', '2005-04-26 01:22:32', '2012-07-19 09:31:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Hayden', 'Gutmann', 'iwindler@example.net', '217.103.3610', '2005-10-02 22:29:53', '1979-06-29 19:17:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Edna', 'Jast', 'dora.feest@example.com', '380-977-6065x48844', '1980-01-06 02:07:00', '1977-02-27 09:57:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Akeem', 'Walter', 'gaston93@example.org', '(055)562-5070', '2020-06-15 19:41:03', '1990-02-14 09:50:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Garry', 'Lemke', 'schoen.kyler@example.com', '409-584-9112x669', '1984-10-16 14:12:48', '1973-12-29 13:27:19');

show tables;

#
# TABLE STRUCTURE FOR: communities
#
desc friendship;

alter table friendship drop column requested_at;

desc profiles;

# ���������� ���������� �������� � gender
select distinct gender from profiles; 

# ���������� ��� �������� � gender
select gender from profiles; 

alter table profiles modify column gender enum ('M','F')


-- CRUD : CREATE (INSERT), READ (SELECT), UPDATE, DELETE

# ������� ������ 10 ����� �� ������� users
select * from users limit 10;

# ����������������� ������ � ������� users;
update users set updated_at = now() where updated_at  < created_at;

# ������� ������ 10 ����� �� ������� users
select * from profiles limit 10;

# ������� ��������� ������� genders � ������ ������ � ���, �������� gender 
create temporary table genders (name char(1));
select *from genders;
insert into genders values ('M'), ('F');

# ��������� ������ ��������� ��������� �� genders
update profiles set gender = (select name from genders order by rand() limit 1);


# ������� ��������� ������� countries � ������ ������ � ���, �������� country 
create temporary table countries (name varchar(50));
select *from countries;
insert into countries values 
('Russia'),
('China'),
('the USA');

# ��������� ������ ��������� ��������� �� countries
update profiles set country = (select name from countries order by rand() limit 1);


# ����������������� ������ � ������� profiles;
update profiles set updated_at = now() where updated_at  < created_at;

# ������� ������ 10 ����� �� ������� messages
select * from messages limit 10;

select * from users;

select count(*) from users;

# ������� ��������� ����� �� 1 �� 100 � from_user_id � to_user_id
update messages set
from_user_id = floor(1 + rand() *100),
to_user_id = floor(1 + rand() *100);

# ������� ������ 10 ����� �� ������� media
select * from media;
select count(*) from media;

# �������� � ��������� � �������
# truncate media;
desc media;

# ������� ��������� ����� �� 1 �� 100 � user_id
update media set user_id = floor(1 + rand() *100);

# ���������� ��� �������� � gender
select user_id from media; 

# �������� ������� ������ URL � filename
create temporary table extensions (name varchar(10));
delete from extensions;
select *from extensions;
insert into extensions values 
('jpeg'),
('avi'),
('mpeg4'),
('png');

update media set filename = concat( 
'http://dropbox.net/vk/',
filename,
'.',
(select name from extensions order by rand() limit 1));

# �������� �������� size
update media set size = floor (10000 + rand() * 1000000)
where size < 10000;

# �������� �������� metadata
# owner:
update media set metadata = concat(
'{"owner": "',
(select concat(first_name, ' ',last_name) from users where id = user_id),
'"}');


select * from media_types;

# ������� ������� media_types
delete from media_types;
desc media_types;
select name from media_types;
select count(*) from media_types; 

# ������� �������� � media_types
insert into media_types (name) values
('image'),
('gif'),
('audio');

# ��������� � �������
truncate media_types;

#��������� media_type_id
update media set media_type_id = floor (1+ rand() * 4); 

show tables;
desc friendship;
select * from friendship;

# ����������������� ������ � ������� friendship;
update friendship set updated_at = now() where updated_at  < created_at;

# ������� ��������� ����� �� 1 �� 100 � friend_id � user_id
update friendship set
friend_id = floor(1 + rand() *100),
user_id = floor(1 + rand() *100);

select * from friendship_statuses;

truncate friendship_statuses;

insert into friendship_statuses (name) values
('Requested'), ('Confirmed');

update friendship set friendship_status_id = floor(1+ rand() *2);
select * from friendship;

select * from communities;

delete from communities where id > 20;

select * from communities_users;

update communities_users set 
community_id = floor(1+ rand() * 10);
#user_id = floor(1+ rand() * 100);
