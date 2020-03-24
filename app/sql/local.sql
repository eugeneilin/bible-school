-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://bible-school.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://bible-school.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Bible School','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Best way to advance Bible education','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','eugenepianist@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:177:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=52&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:90:\"/Users/eugene/Local Sites/bible-school/app/public/wp-content/themes/bible-school/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','bible-school','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','bible-school','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','54','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','52','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1591484837','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:4:{i:1585084038;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1585091238;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1585091406;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key',' k T9TOJxn)^&VH/!:r;,20]^[ pBJV7l[=:9Y`B i5o&UY^dAm:taOf<<o.?4NF','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','AD<W;KDtdp3P;kTMK=cF{OO6LaPc7o(2s~+cwomI.e!}0<<tNcz+4P1~/.v,pZ?x','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1585083222;s:7:\"checked\";a:1:{s:12:\"bible-school\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576017214;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (159,'current_theme','Bible School','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_twentyseventeen','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576016619;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (165,'theme_mods_bible-school','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationOne\";i:4;s:17:\"footerLocationTwo\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (168,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (169,'new_admin_email','eugenepianist@gmail.com','yes');
INSERT INTO `wp_options` VALUES (189,'recovery_mode_email_last_sent','1578087020','yes');
INSERT INTO `wp_options` VALUES (190,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (216,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (224,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (241,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"eugenepianist@gmail.com\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1577485180;}','no');
INSERT INTO `wp_options` VALUES (261,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1585083457;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (282,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (361,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (427,'_site_transient_timeout_theme_roots','1585085021','no');
INSERT INTO `wp_options` VALUES (428,'_site_transient_theme_roots','a:1:{s:12:\"bible-school\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (429,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1585083222;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.2\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1576022428:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1576022449:1');
INSERT INTO `wp_postmeta` VALUES (9,10,'_edit_lock','1576023678:1');
INSERT INTO `wp_postmeta` VALUES (10,13,'_edit_lock','1578165485:1');
INSERT INTO `wp_postmeta` VALUES (11,15,'_edit_lock','1576027182:1');
INSERT INTO `wp_postmeta` VALUES (16,20,'_edit_lock','1576029880:1');
INSERT INTO `wp_postmeta` VALUES (18,24,'_edit_lock','1576030973:1');
INSERT INTO `wp_postmeta` VALUES (19,26,'_edit_lock','1576027838:1');
INSERT INTO `wp_postmeta` VALUES (22,30,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (23,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (24,30,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (25,30,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (26,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (27,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (28,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (29,30,'_menu_item_url','http://bible-school.local/');
INSERT INTO `wp_postmeta` VALUES (30,30,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (31,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,31,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (34,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (39,31,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (40,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,32,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (43,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,32,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (49,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,33,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (52,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (57,33,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (58,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,34,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (61,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (66,34,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (67,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,35,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (70,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,35,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (76,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (77,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (78,36,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (79,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (80,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (81,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (82,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (83,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (84,36,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (85,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (86,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (87,37,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (88,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (89,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (90,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (91,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (92,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (93,37,'_menu_item_orphaned','1576031187');
INSERT INTO `wp_postmeta` VALUES (166,46,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (167,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (168,46,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (169,46,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (170,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (171,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (172,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (173,46,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (175,47,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (176,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (177,47,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (178,47,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (179,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (180,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (181,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (182,47,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (184,48,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (185,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (186,48,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (187,48,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (188,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (189,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (190,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (191,48,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (193,49,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (194,49,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (195,49,'_menu_item_object_id','49');
INSERT INTO `wp_postmeta` VALUES (196,49,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (197,49,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (198,49,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (199,49,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (200,49,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (202,50,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (203,50,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (204,50,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (205,50,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (206,50,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (207,50,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (208,50,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (209,50,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (211,51,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (212,51,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (213,51,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (214,51,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (215,51,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (216,51,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (217,51,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (218,51,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (220,52,'_edit_lock','1578585776:1');
INSERT INTO `wp_postmeta` VALUES (221,54,'_edit_lock','1576096050:1');
INSERT INTO `wp_postmeta` VALUES (222,56,'_edit_lock','1578174538:1');
INSERT INTO `wp_postmeta` VALUES (225,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,58,'_edit_lock','1578086937:1');
INSERT INTO `wp_postmeta` VALUES (227,59,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (228,59,'_edit_lock','1578091038:1');
INSERT INTO `wp_postmeta` VALUES (229,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (230,60,'_edit_lock','1578086930:1');
INSERT INTO `wp_postmeta` VALUES (236,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,67,'_edit_lock','1577488901:1');
INSERT INTO `wp_postmeta` VALUES (238,60,'event_date','20120615');
INSERT INTO `wp_postmeta` VALUES (239,60,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (240,59,'event_date','20191229');
INSERT INTO `wp_postmeta` VALUES (241,59,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (242,58,'event_date','20200902');
INSERT INTO `wp_postmeta` VALUES (243,58,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (244,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (245,69,'_edit_lock','1578174207:1');
INSERT INTO `wp_postmeta` VALUES (246,69,'event_date','20200104');
INSERT INTO `wp_postmeta` VALUES (247,69,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (248,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,70,'_edit_lock','1578344635:1');
INSERT INTO `wp_postmeta` VALUES (250,70,'event_date','20200926');
INSERT INTO `wp_postmeta` VALUES (251,70,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (252,71,'_edit_lock','1578088042:1');
INSERT INTO `wp_postmeta` VALUES (253,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (254,73,'_edit_lock','1578174212:1');
INSERT INTO `wp_postmeta` VALUES (255,73,'event_date','20151231');
INSERT INTO `wp_postmeta` VALUES (256,73,'_event_date','field_5e068c169aa6e');
INSERT INTO `wp_postmeta` VALUES (257,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (258,74,'_edit_lock','1578091478:1');
INSERT INTO `wp_postmeta` VALUES (259,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (260,75,'_edit_lock','1578091496:1');
INSERT INTO `wp_postmeta` VALUES (261,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (262,76,'_edit_lock','1578160785:1');
INSERT INTO `wp_postmeta` VALUES (263,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (264,77,'_edit_lock','1578158980:1');
INSERT INTO `wp_postmeta` VALUES (265,59,'related_program','a:1:{i:0;s:2:\"75\";}');
INSERT INTO `wp_postmeta` VALUES (266,59,'_related_program','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (267,69,'related_program','');
INSERT INTO `wp_postmeta` VALUES (268,69,'_related_program','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (269,69,'_wp_old_slug','winter-study-event');
INSERT INTO `wp_postmeta` VALUES (270,76,'_wp_old_slug','english');
INSERT INTO `wp_postmeta` VALUES (271,75,'_wp_old_slug','biology');
INSERT INTO `wp_postmeta` VALUES (272,74,'_wp_old_slug','math');
INSERT INTO `wp_postmeta` VALUES (273,69,'related_programs','a:2:{i:0;s:2:\"75\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (274,69,'_related_programs','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (275,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (276,79,'_edit_lock','1578162794:1');
INSERT INTO `wp_postmeta` VALUES (277,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (278,80,'_edit_lock','1578161995:1');
INSERT INTO `wp_postmeta` VALUES (279,80,'related_programs','a:2:{i:0;s:2:\"75\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (280,80,'_related_programs','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (289,79,'related_programs','a:2:{i:0;s:2:\"74\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (290,79,'_related_programs','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (305,87,'_wp_attached_file','2020/01/professor1.jpg');
INSERT INTO `wp_postmeta` VALUES (306,87,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2020/01/professor1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"professor1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"professor1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"professor1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"professor1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"professor1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"professor1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:22:\"professor1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (307,80,'_thumbnail_id','87');
INSERT INTO `wp_postmeta` VALUES (308,88,'_wp_attached_file','2020/01/professor2.jpg');
INSERT INTO `wp_postmeta` VALUES (309,88,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2020/01/professor2.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"professor2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"professor2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"professor2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"professor2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"professor2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"professor2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:22:\"professor2-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (310,79,'_thumbnail_id','88');
INSERT INTO `wp_postmeta` VALUES (311,79,'_wp_old_slug','dr-thinker');
INSERT INTO `wp_postmeta` VALUES (312,89,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (313,89,'_edit_lock','1578175816:1');
INSERT INTO `wp_postmeta` VALUES (314,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (315,90,'_edit_lock','1578162819:1');
INSERT INTO `wp_postmeta` VALUES (316,91,'_wp_attached_file','2020/01/professor3.jpg');
INSERT INTO `wp_postmeta` VALUES (317,91,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:22:\"2020/01/professor3.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"professor3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"professor3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"professor3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"professor3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"professor3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"professor3-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:22:\"professor3-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"12\";s:1:\"y\";s:2:\"42\";s:1:\"w\";s:18:\"369.23076923075996\";s:1:\"h\";s:3:\"240\";s:5:\"scale\";s:4:\"3.84\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:2:\"63\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:17:\"245.9076923076928\";s:1:\"h\";s:3:\"333\";s:5:\"scale\";s:4:\"3.84\";}}}');
INSERT INTO `wp_postmeta` VALUES (318,89,'_thumbnail_id','91');
INSERT INTO `wp_postmeta` VALUES (319,89,'related_programs','a:1:{i:0;s:2:\"90\";}');
INSERT INTO `wp_postmeta` VALUES (320,89,'_related_programs','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (321,89,'_wp_old_slug','dr-hallelujah');
INSERT INTO `wp_postmeta` VALUES (322,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (323,92,'_edit_lock','1578164458:1');
INSERT INTO `wp_postmeta` VALUES (324,95,'_wp_attached_file','2020/01/singsalot-banner-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (325,95,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:35:\"2020/01/singsalot-banner-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"singsalot-banner-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"singsalot-banner-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"singsalot-banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"singsalot-banner-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"singsalot-banner-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"singsalot-banner-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:28:\"singsalot-banner-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:28:\"singsalot-banner-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:29:\"singsalot-banner-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:20:\"singsalot-banner.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (326,89,'page_banner_subtitle','The leading voice on the significance of music in church services.');
INSERT INTO `wp_postmeta` VALUES (327,89,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (328,89,'page_banner_background_image','95');
INSERT INTO `wp_postmeta` VALUES (329,89,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (330,96,'_wp_attached_file','2020/01/school-building.jpg');
INSERT INTO `wp_postmeta` VALUES (331,96,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:27:\"2020/01/school-building.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"school-building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"school-building-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"school-building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"school-building-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:29:\"school-building-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:27:\"school-building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:27:\"school-building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:28:\"school-building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (332,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (333,13,'page_banner_subtitle','We are a great school, and we\'ve been around forever.');
INSERT INTO `wp_postmeta` VALUES (334,13,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (335,13,'page_banner_background_image','96');
INSERT INTO `wp_postmeta` VALUES (336,13,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (337,97,'page_banner_subtitle','We are a great school, and we\'ve been around forever.');
INSERT INTO `wp_postmeta` VALUES (338,97,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (339,97,'page_banner_background_image','96');
INSERT INTO `wp_postmeta` VALUES (340,97,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (341,98,'_wp_attached_file','2020/01/calendar-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (342,98,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1703;s:4:\"file\";s:27:\"2020/01/calendar-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"calendar-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"calendar-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"calendar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"calendar-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"calendar-1536x1022.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1022;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"calendar-2048x1363.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1363;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"calendar-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"calendar-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"calendar-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"calendar.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (343,69,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (344,69,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (345,69,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (346,69,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (347,73,'page_banner_subtitle','The greatest day of the year.');
INSERT INTO `wp_postmeta` VALUES (348,73,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (349,73,'page_banner_background_image','98');
INSERT INTO `wp_postmeta` VALUES (350,73,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (351,73,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (352,73,'_related_programs','field_5e0fc10fa1d6e');
INSERT INTO `wp_postmeta` VALUES (355,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (356,56,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (357,56,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (358,56,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (359,56,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (360,99,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (361,99,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (362,99,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (363,99,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (368,56,'_wp_old_slug','award');
INSERT INTO `wp_postmeta` VALUES (369,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (370,100,'_edit_lock','1578178035:1');
INSERT INTO `wp_postmeta` VALUES (371,100,'page_banner_subtitle','A beautiful campus in the heart of eastern Pennsylvania fields.');
INSERT INTO `wp_postmeta` VALUES (372,100,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (373,100,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (374,100,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (375,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (376,101,'_edit_lock','1578179779:1');
INSERT INTO `wp_postmeta` VALUES (377,101,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (378,101,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (379,101,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (380,101,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (381,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (382,102,'_edit_lock','1578178405:1');
INSERT INTO `wp_postmeta` VALUES (384,70,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (385,70,'_page_banner_subtitle','field_5e10e12281544');
INSERT INTO `wp_postmeta` VALUES (386,70,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (387,70,'_page_banner_background_image','field_5e10e13981545');
INSERT INTO `wp_postmeta` VALUES (388,70,'related_programs','a:2:{i:0;s:2:\"90\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (389,70,'_related_programs','field_5e0fc10fa1d6e');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-12-09 23:07:18','2019-12-09 23:07:18','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-12-09 23:07:18','2019-12-09 23:07:18','',0,'http://bible-school.local/?p=1',0,'post','',0);
INSERT INTO `wp_posts` VALUES (2,1,'2019-12-09 23:07:18','2019-12-09 23:07:18','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://bible-school.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2019-12-09 23:07:18','2019-12-09 23:07:18','',0,'http://bible-school.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2019-12-11 00:01:53','2019-12-11 00:01:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat cupiditate dolores reprehenderit hic. Velit laudantium eligendi, ex est consequuntur deleniti doloribus qui voluptates aperiam esse asperiores odio? Vero, fugit expedita.</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2019-12-11 00:02:39','2019-12-11 00:02:39','',0,'http://bible-school.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2019-12-11 00:01:53','2019-12-11 00:01:53','<!-- wp:paragraph -->\n<p>Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2019-12-11 00:01:53','2019-12-11 00:01:53','',5,'http://bible-school.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2019-12-11 00:02:39','2019-12-11 00:02:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat cupiditate dolores reprehenderit hic. Velit laudantium eligendi, ex est consequuntur deleniti doloribus qui voluptates aperiam esse asperiores odio? Vero, fugit expedita.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2019-12-11 00:02:39','2019-12-11 00:02:39','',5,'http://bible-school.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2019-12-11 00:03:01','2019-12-11 00:03:01','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat cupiditate dolores reprehenderit hic. Velit laudantium eligendi, ex est consequuntur deleniti doloribus qui voluptates aperiam esse asperiores odio? Vero, fugit expedita.</p>\n<!-- /wp:paragraph -->','Second Test','','publish','open','open','','second-test','','','2019-12-11 00:03:01','2019-12-11 00:03:01','',0,'http://bible-school.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2019-12-11 00:03:01','2019-12-11 00:03:01','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat cupiditate dolores reprehenderit hic. Velit laudantium eligendi, ex est consequuntur deleniti doloribus qui voluptates aperiam esse asperiores odio? Vero, fugit expedita.</p>\n<!-- /wp:paragraph -->','Second Test','','inherit','closed','closed','','8-revision-v1','','','2019-12-11 00:03:01','2019-12-11 00:03:01','',8,'http://bible-school.local/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2019-12-11 00:14:31','2019-12-11 00:14:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus inventore nisi distinctio nemo impedit ea, omnis reiciendis praesentium, quia ipsam ipsa voluptatum fuga provident explicabo ad! Repellat voluptatibus dignissimos error!</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2019-12-11 00:14:31','2019-12-11 00:14:31','',0,'http://bible-school.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2019-12-11 00:14:31','2019-12-11 00:14:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus inventore nisi distinctio nemo impedit ea, omnis reiciendis praesentium, quia ipsam ipsa voluptatum fuga provident explicabo ad! Repellat voluptatibus dignissimos error!</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','10-revision-v1','','','2019-12-11 00:14:31','2019-12-11 00:14:31','',10,'http://bible-school.local/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2019-12-11 00:23:38','2019-12-11 00:23:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus inventore nisi distinctio nemo impedit ea, omnis reiciendis praesentium, quia ipsam ipsa voluptatum fuga provident explicabo ad! Repellat voluptatibus dignissimos error!</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','10-autosave-v1','','','2019-12-11 00:23:38','2019-12-11 00:23:38','',10,'http://bible-school.local/10-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2019-12-11 01:01:41','2019-12-11 01:01:41','<!-- wp:paragraph -->\n<p>About Page content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-01-04 19:18:05','2020-01-04 19:18:05','',0,'http://bible-school.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2019-12-11 01:01:41','2019-12-11 01:01:41','<!-- wp:paragraph -->\n<p>About Page content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2019-12-11 01:01:41','2019-12-11 01:01:41','',13,'http://bible-school.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2019-12-11 01:02:14','2019-12-11 01:02:14','<!-- wp:paragraph -->\n<p>Privacy content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy','','','2019-12-11 01:16:18','2019-12-11 01:16:18','',0,'http://bible-school.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2019-12-11 01:02:14','2019-12-11 01:02:14','<!-- wp:paragraph -->\n<p>Privacy content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','Privacy Content','','inherit','closed','closed','','15-revision-v1','','','2019-12-11 01:02:14','2019-12-11 01:02:14','',15,'http://bible-school.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2019-12-11 01:14:07','2019-12-11 01:14:07','<!-- wp:paragraph -->\n<p>Privacy content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','15-revision-v1','','','2019-12-11 01:14:07','2019-12-11 01:14:07','',15,'http://bible-school.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2019-12-11 01:15:15','2019-12-11 01:15:15','<!-- wp:paragraph -->\n<p>Privacy content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','15-autosave-v1','','','2019-12-11 01:15:15','2019-12-11 01:15:15','',15,'http://bible-school.local/15-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2019-12-11 01:22:58','2019-12-11 01:22:58','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis a quos dignissimos expedita perspiciatis saepe eveniet facilis totam illo quam magnam tempora dolor repellendus, natus id blanditiis accusantium beatae in!</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2019-12-11 02:07:02','2019-12-11 02:07:02','',13,'http://bible-school.local/?page_id=20',1,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2019-12-11 01:22:58','2019-12-11 01:22:58','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis a quos dignissimos expedita perspiciatis saepe eveniet facilis totam illo quam magnam tempora dolor repellendus, natus id blanditiis accusantium beatae in!</p>\n<!-- /wp:paragraph -->','Our-History','','inherit','closed','closed','','20-revision-v1','','','2019-12-11 01:22:58','2019-12-11 01:22:58','',20,'http://bible-school.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2019-12-11 01:23:30','2019-12-11 01:23:30','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis a quos dignissimos expedita perspiciatis saepe eveniet facilis totam illo quam magnam tempora dolor repellendus, natus id blanditiis accusantium beatae in!</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2019-12-11 01:23:30','2019-12-11 01:23:30','',20,'http://bible-school.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2019-12-11 01:23:46','2019-12-11 01:23:46','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis a quos dignissimos expedita perspiciatis saepe eveniet facilis totam illo quam magnam tempora dolor repellendus, natus id blanditiis accusantium beatae in!</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2019-12-11 02:07:11','2019-12-11 02:07:11','',13,'http://bible-school.local/?page_id=24',2,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2019-12-11 01:23:46','2019-12-11 01:23:46','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis a quos dignissimos expedita perspiciatis saepe eveniet facilis totam illo quam magnam tempora dolor repellendus, natus id blanditiis accusantium beatae in!</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','24-revision-v1','','','2019-12-11 01:23:46','2019-12-11 01:23:46','',24,'http://bible-school.local/24-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2019-12-11 01:32:57','2019-12-11 01:32:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vero laborum error magnam deleniti quaerat consectetur libero quos. Similique architecto fugit nobis sit, repellendus tenetur veniam, quo at, vero quos amet.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2019-12-11 01:32:57','2019-12-11 01:32:57','',15,'http://bible-school.local/?page_id=26',0,'page','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2019-12-11 01:32:57','2019-12-11 01:32:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vero laborum error magnam deleniti quaerat consectetur libero quos. Similique architecto fugit nobis sit, repellendus tenetur veniam, quo at, vero quos amet.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','26-revision-v1','','','2019-12-11 01:32:57','2019-12-11 01:32:57','',26,'http://bible-school.local/26-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2019-12-11 02:26:27','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',0,'http://bible-school.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',0,'http://bible-school.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',13,'http://bible-school.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',13,'http://bible-school.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',0,'http://bible-school.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',15,'http://bible-school.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',0,'http://bible-school.local/?p=36',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2019-12-11 02:26:27','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-12-11 02:26:27','0000-00-00 00:00:00','',0,'http://bible-school.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2019-12-11 02:34:20','2019-12-11 02:34:20',' ','','','publish','closed','closed','','46','','','2019-12-11 02:34:20','2019-12-11 02:34:20','',0,'http://bible-school.local/?p=46',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2019-12-11 02:34:20','2019-12-11 02:34:20',' ','','','publish','closed','closed','','47','','','2019-12-11 02:34:20','2019-12-11 02:34:20','',0,'http://bible-school.local/?p=47',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2019-12-11 20:21:43','2019-12-11 20:21:43',' ','','','publish','closed','closed','','48','','','2019-12-11 20:21:43','2019-12-11 20:21:43','',0,'http://bible-school.local/?p=48',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2019-12-11 20:21:43','2019-12-11 20:21:43','','Google','','publish','closed','closed','','google','','','2019-12-11 20:21:43','2019-12-11 20:21:43','',0,'http://bible-school.local/?p=49',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2019-12-11 20:22:09','2019-12-11 20:22:09',' ','','','publish','closed','closed','','50','','','2019-12-11 20:22:09','2019-12-11 20:22:09','',15,'http://bible-school.local/?p=50',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2019-12-11 20:22:09','2019-12-11 20:22:09',' ','','','publish','closed','closed','','51','','','2019-12-11 20:22:09','2019-12-11 20:22:09','',0,'http://bible-school.local/?p=51',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2019-12-11 20:29:33','2019-12-11 20:29:33','','Home','','publish','closed','closed','','home','','','2019-12-11 20:29:33','2019-12-11 20:29:33','',0,'http://bible-school.local/?page_id=52',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2019-12-11 20:29:33','2019-12-11 20:29:33','','Home','','inherit','closed','closed','','52-revision-v1','','','2019-12-11 20:29:33','2019-12-11 20:29:33','',52,'http://bible-school.local/52-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2019-12-11 20:30:02','2019-12-11 20:30:02','','Blog','','publish','closed','closed','','blog','','','2019-12-11 20:30:02','2019-12-11 20:30:02','',0,'http://bible-school.local/?page_id=54',0,'page','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2019-12-11 20:30:02','2019-12-11 20:30:02','','Blog','','inherit','closed','closed','','54-revision-v1','','','2019-12-11 20:30:02','2019-12-11 20:30:02','',54,'http://bible-school.local/54-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2019-12-11 20:46:31','2019-12-11 20:46:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.</p>\n<!-- /wp:paragraph -->','We Won An Award','OUr school has won an award.','publish','open','open','','we-won-an-award','','','2020-01-04 21:48:57','2020-01-04 21:48:57','',0,'http://bible-school.local/?p=56',0,'post','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2019-12-11 20:46:31','2019-12-11 20:46:31','<!-- wp:paragraph -->\n<p>hey there!</p>\n<!-- /wp:paragraph -->','award','','inherit','closed','closed','','56-revision-v1','','','2019-12-11 20:46:31','2019-12-11 20:46:31','',56,'http://bible-school.local/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2019-12-11 23:07:34','2019-12-11 23:07:34','<div>\r\n<div>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi voluptatum id dolorum quaerat ut velit quos nostrum perferendis aperiam soluta blanditiis corporis fuga corrupti, harum iure sed neque quisquam nulla.</div>\r\n</div>','Hermeneutics Meetup','','publish','closed','closed','','hermeneutics-meetup','','','2019-12-27 23:31:55','2019-12-27 23:31:55','',0,'http://bible-school.local/?post_type=event&#038;p=58',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2019-12-11 23:08:10','2019-12-11 23:08:10','<div>\r\n<div>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi voluptatum id dolorum quaerat ut velit quos nostrum perferendis aperiam soluta blanditiis corporis fuga corrupti, harum iure sed neque quisquam nulla.</div>\r\n</div>','Expository Preachers Meetup','','publish','closed','closed','','expository-preachers-meetup','','','2020-01-03 22:38:39','2020-01-03 22:38:39','',0,'http://bible-school.local/?post_type=event&#038;p=59',0,'event','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2019-12-11 23:08:23','2019-12-11 23:08:23','<div>\r\n<div>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi voluptatum id dolorum quaerat ut velit quos nostrum perferendis aperiam soluta blanditiis corporis fuga corrupti, harum iure sed neque quisquam nulla.</div>\r\n</div>','Illustrations Meetup','Let\'s talk about how to interweave illustrations to aid with the depiction of the main idea.','publish','closed','closed','','illustrations-meetup','','','2019-12-27 23:32:26','2019-12-27 23:32:26','',0,'http://bible-school.local/?post_type=event&#038;p=60',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2019-12-13 21:39:38','2019-12-13 21:39:38','<!-- wp:paragraph -->\n<p>hey there!</p>\n<!-- /wp:paragraph -->','award','OUr school has won an award.','inherit','closed','closed','','56-revision-v1','','','2019-12-13 21:39:38','2019-12-13 21:39:38','',56,'http://bible-school.local/2019/12/13/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2019-12-27 23:03:36','2019-12-27 23:03:36','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5e068c0236808','','','2019-12-27 23:20:13','2019-12-27 23:20:13','',0,'http://bible-school.local/?post_type=acf-field-group&#038;p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2019-12-27 23:03:36','2019-12-27 23:03:36','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:5:\"m/d/Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5e068c169aa6e','','','2019-12-27 23:20:13','2019-12-27 23:20:13','',67,'http://bible-school.local/?post_type=acf-field&#038;p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-01-03 21:35:00','2020-01-03 21:35:00','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est lorem ipsum. Accumsan lacus vel facilisis volutpat est velit egestas. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. A condimentum vitae sapien pellentesque habitant. Vel elit scelerisque mauris pellentesque. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Quis viverra nibh cras pulvinar mattis nunc sed. Sagittis aliquam malesuada bibendum arcu vitae elementum. Convallis convallis tellus id interdum.\r\n\r\nUt faucibus pulvinar elementum integer. Vitae elementum curabitur vitae nunc sed velit dignissim. Blandit cursus risus at ultrices mi tempus. Vestibulum rhoncus est pellentesque elit. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Egestas sed tempus urna et pharetra. Ultrices dui sapien eget mi proin sed. Consequat ac felis donec et odio pellentesque diam volutpat commodo. Morbi tristique senectus et netus. Nunc vel risus commodo viverra maecenas accumsan lacus. Turpis egestas integer eget aliquet nibh praesent tristique magna. Eget mauris pharetra et ultrices neque ornare aenean euismod. Pulvinar elementum integer enim neque volutpat ac. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mattis aliquam faucibus purus in. Habitasse platea dictumst vestibulum rhoncus est pellentesque. Turpis tincidunt id aliquet risus.\r\n\r\nLobortis elementum nibh tellus molestie. Vitae tempus quam pellentesque nec. Senectus et netus et malesuada fames. Cursus turpis massa tincidunt dui ut ornare lectus. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Curabitur vitae nunc sed velit dignissim sodales. Euismod elementum nisi quis eleifend. Dui vivamus arcu felis bibendum ut tristique et egestas. Et ultrices neque ornare aenean. Consectetur adipiscing elit duis tristique. Odio morbi quis commodo odio. A scelerisque purus semper eget duis at tellus. Velit euismod in pellentesque massa placerat duis ultricies. Egestas congue quisque egestas diam in. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Tincidunt vitae semper quis lectus nulla at. Ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum.\r\n\r\nPorttitor rhoncus dolor purus non enim praesent elementum. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Sagittis aliquam malesuada bibendum arcu. Sapien pellentesque habitant morbi tristique senectus et netus et. Eu tincidunt tortor aliquam nulla facilisi cras. Aliquam sem et tortor consequat id porta. Quis auctor elit sed vulputate mi sit amet. Fermentum posuere urna nec tincidunt praesent semper feugiat. Id faucibus nisl tincidunt eget. Quisque egestas diam in arcu cursus euismod quis viverra nibh.\r\n\r\nTurpis egestas pretium aenean pharetra magna ac placerat vestibulum. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Varius morbi enim nunc faucibus a. Urna nunc id cursus metus aliquam. Vitae proin sagittis nisl rhoncus mattis. Dignissim sodales ut eu sem integer vitae justo eget magna. Et malesuada fames ac turpis egestas. Pellentesque pulvinar pellentesque habitant morbi. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus. Arcu ac tortor dignissim convallis aenean et. Nec feugiat in fermentum posuere urna nec tincidunt.','Winter Preacher\'s Workshop','','publish','closed','closed','','winter-preachers-workshop','','','2020-01-04 21:44:24','2020-01-04 21:44:24','',0,'http://bible-school.local/?post_type=event&#038;p=69',0,'event','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-01-03 21:35:49','2020-01-03 21:35:49','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Magna eget est lorem ipsum. Accumsan lacus vel facilisis volutpat est velit egestas. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Pellentesque adipiscing commodo elit at imperdiet dui accumsan. A condimentum vitae sapien pellentesque habitant. Vel elit scelerisque mauris pellentesque. Egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate. Quis viverra nibh cras pulvinar mattis nunc sed. Sagittis aliquam malesuada bibendum arcu vitae elementum. Convallis convallis tellus id interdum.\r\n\r\nUt faucibus pulvinar elementum integer. Vitae elementum curabitur vitae nunc sed velit dignissim. Blandit cursus risus at ultrices mi tempus. Vestibulum rhoncus est pellentesque elit. Nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Egestas sed tempus urna et pharetra. Ultrices dui sapien eget mi proin sed. Consequat ac felis donec et odio pellentesque diam volutpat commodo. Morbi tristique senectus et netus. Nunc vel risus commodo viverra maecenas accumsan lacus. Turpis egestas integer eget aliquet nibh praesent tristique magna. Eget mauris pharetra et ultrices neque ornare aenean euismod. Pulvinar elementum integer enim neque volutpat ac. Fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien. Mattis aliquam faucibus purus in. Habitasse platea dictumst vestibulum rhoncus est pellentesque. Turpis tincidunt id aliquet risus.\r\n\r\nLobortis elementum nibh tellus molestie. Vitae tempus quam pellentesque nec. Senectus et netus et malesuada fames. Cursus turpis massa tincidunt dui ut ornare lectus. Quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna. Curabitur vitae nunc sed velit dignissim sodales. Euismod elementum nisi quis eleifend. Dui vivamus arcu felis bibendum ut tristique et egestas. Et ultrices neque ornare aenean. Consectetur adipiscing elit duis tristique. Odio morbi quis commodo odio. A scelerisque purus semper eget duis at tellus. Velit euismod in pellentesque massa placerat duis ultricies. Egestas congue quisque egestas diam in. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Tincidunt vitae semper quis lectus nulla at. Ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum.\r\n\r\nPorttitor rhoncus dolor purus non enim praesent elementum. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Sagittis aliquam malesuada bibendum arcu. Sapien pellentesque habitant morbi tristique senectus et netus et. Eu tincidunt tortor aliquam nulla facilisi cras. Aliquam sem et tortor consequat id porta. Quis auctor elit sed vulputate mi sit amet. Fermentum posuere urna nec tincidunt praesent semper feugiat. Id faucibus nisl tincidunt eget. Quisque egestas diam in arcu cursus euismod quis viverra nibh.\r\n\r\nTurpis egestas pretium aenean pharetra magna ac placerat vestibulum. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Adipiscing commodo elit at imperdiet dui accumsan sit amet. Varius morbi enim nunc faucibus a. Urna nunc id cursus metus aliquam. Vitae proin sagittis nisl rhoncus mattis. Dignissim sodales ut eu sem integer vitae justo eget magna. Et malesuada fames ac turpis egestas. Pellentesque pulvinar pellentesque habitant morbi. Amet luctus venenatis lectus magna fringilla urna porttitor rhoncus. Arcu ac tortor dignissim convallis aenean et. Nec feugiat in fermentum posuere urna nec tincidunt.','Another Great Event','','publish','closed','closed','','another-great-event','','','2020-01-06 21:04:46','2020-01-06 21:04:46','',0,'http://bible-school.local/?post_type=event&#038;p=70',0,'event','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-01-03 21:37:21','2020-01-03 21:37:21','','Past Events','','publish','closed','closed','','past-events','','','2020-01-03 21:37:21','2020-01-03 21:37:21','',0,'http://bible-school.local/?page_id=71',0,'page','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-01-03 21:37:21','2020-01-03 21:37:21','','Past Events','','inherit','closed','closed','','71-revision-v1','','','2020-01-03 21:37:21','2020-01-03 21:37:21','',71,'http://bible-school.local/2020/01/03/71-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-01-03 21:48:19','2020-01-03 21:48:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.','New Year 2016','','publish','closed','closed','','new-year-2016','','','2020-01-04 21:44:15','2020-01-04 21:44:15','',0,'http://bible-school.local/?post_type=event&#038;p=73',0,'event','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-01-03 22:09:31','2020-01-03 22:09:31','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas. Leo urna molestie at elementum eu facilisis. Arcu dictum varius duis at consectetur lorem donec massa. Gravida rutrum quisque non tellus orci ac auctor. Orci eu lobortis elementum nibh tellus molestie. Egestas maecenas pharetra convallis posuere morbi leo. Accumsan lacus vel facilisis volutpat est velit egestas. Laoreet sit amet cursus sit amet dictum sit amet justo. A diam sollicitudin tempor id. Nunc congue nisi vitae suscipit tellus. Ultrices sagittis orci a scelerisque purus semper eget. Et tortor consequat id porta. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In fermentum et sollicitudin ac. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Nibh ipsum consequat nisl vel.\r\n\r\nQuam lacus suspendisse faucibus interdum posuere lorem. Eleifend donec pretium vulputate sapien nec. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut consequat semper viverra nam libero. Risus in hendrerit gravida rutrum quisque non tellus. Fermentum et sollicitudin ac orci. Augue interdum velit euismod in pellentesque massa. Sit amet justo donec enim diam vulputate. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Tincidunt vitae semper quis lectus nulla at volutpat. Malesuada pellentesque elit eget gravida cum. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Elit ut aliquam purus sit. Auctor elit sed vulputate mi.\r\n\r\nLorem mollis aliquam ut porttitor leo a diam. Arcu felis bibendum ut tristique et egestas. Ultrices in iaculis nunc sed augue lacus viverra. Elit duis tristique sollicitudin nibh sit. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Justo donec enim diam vulputate. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed. Erat velit scelerisque in dictum. Orci sagittis eu volutpat odio facilisis mauris sit amet. Eget nulla facilisi etiam dignissim. Mauris augue neque gravida in fermentum. Dui accumsan sit amet nulla. Quis imperdiet massa tincidunt nunc. Netus et malesuada fames ac turpis egestas integer eget aliquet. Senectus et netus et malesuada fames ac turpis. Malesuada proin libero nunc consequat interdum varius sit. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Egestas egestas fringilla phasellus faucibus scelerisque.\r\n\r\nAenean sed adipiscing diam donec adipiscing. Pretium fusce id velit ut tortor pretium. Faucibus nisl tincidunt eget nullam non nisi est sit. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Massa massa ultricies mi quis hendrerit dolor magna. Eu facilisis sed odio morbi quis. Volutpat blandit aliquam etiam erat velit scelerisque in. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquam id diam maecenas ultricies mi eget. Odio ut sem nulla pharetra diam sit amet. Feugiat nisl pretium fusce id. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Lectus urna duis convallis convallis. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Dis parturient montes nascetur ridiculus mus mauris vitae.\r\n\r\nEt magnis dis parturient montes nascetur ridiculus mus. Risus ultricies tristique nulla aliquet enim. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. Ut etiam sit amet nisl purus. Aliquam id diam maecenas ultricies. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Ut diam quam nulla porttitor massa id. In fermentum et sollicitudin ac orci phasellus. Aenean pharetra magna ac placerat vestibulum lectus mauris. Blandit massa enim nec dui. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. Et leo duis ut diam quam.','Logic','','publish','closed','closed','','logic','','','2020-01-03 22:45:24','2020-01-03 22:45:24','',0,'http://bible-school.local/?post_type=program&#038;p=74',0,'program','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-01-03 22:09:38','2020-01-03 22:09:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas. Leo urna molestie at elementum eu facilisis. Arcu dictum varius duis at consectetur lorem donec massa. Gravida rutrum quisque non tellus orci ac auctor. Orci eu lobortis elementum nibh tellus molestie. Egestas maecenas pharetra convallis posuere morbi leo. Accumsan lacus vel facilisis volutpat est velit egestas. Laoreet sit amet cursus sit amet dictum sit amet justo. A diam sollicitudin tempor id. Nunc congue nisi vitae suscipit tellus. Ultrices sagittis orci a scelerisque purus semper eget. Et tortor consequat id porta. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In fermentum et sollicitudin ac. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Nibh ipsum consequat nisl vel.\r\n\r\nQuam lacus suspendisse faucibus interdum posuere lorem. Eleifend donec pretium vulputate sapien nec. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut consequat semper viverra nam libero. Risus in hendrerit gravida rutrum quisque non tellus. Fermentum et sollicitudin ac orci. Augue interdum velit euismod in pellentesque massa. Sit amet justo donec enim diam vulputate. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Tincidunt vitae semper quis lectus nulla at volutpat. Malesuada pellentesque elit eget gravida cum. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Elit ut aliquam purus sit. Auctor elit sed vulputate mi.\r\n\r\nLorem mollis aliquam ut porttitor leo a diam. Arcu felis bibendum ut tristique et egestas. Ultrices in iaculis nunc sed augue lacus viverra. Elit duis tristique sollicitudin nibh sit. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Justo donec enim diam vulputate. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed. Erat velit scelerisque in dictum. Orci sagittis eu volutpat odio facilisis mauris sit amet. Eget nulla facilisi etiam dignissim. Mauris augue neque gravida in fermentum. Dui accumsan sit amet nulla. Quis imperdiet massa tincidunt nunc. Netus et malesuada fames ac turpis egestas integer eget aliquet. Senectus et netus et malesuada fames ac turpis. Malesuada proin libero nunc consequat interdum varius sit. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Egestas egestas fringilla phasellus faucibus scelerisque.\r\n\r\nAenean sed adipiscing diam donec adipiscing. Pretium fusce id velit ut tortor pretium. Faucibus nisl tincidunt eget nullam non nisi est sit. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Massa massa ultricies mi quis hendrerit dolor magna. Eu facilisis sed odio morbi quis. Volutpat blandit aliquam etiam erat velit scelerisque in. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquam id diam maecenas ultricies mi eget. Odio ut sem nulla pharetra diam sit amet. Feugiat nisl pretium fusce id. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Lectus urna duis convallis convallis. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Dis parturient montes nascetur ridiculus mus mauris vitae.\r\n\r\nEt magnis dis parturient montes nascetur ridiculus mus. Risus ultricies tristique nulla aliquet enim. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. Ut etiam sit amet nisl purus. Aliquam id diam maecenas ultricies. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Ut diam quam nulla porttitor massa id. In fermentum et sollicitudin ac orci phasellus. Aenean pharetra magna ac placerat vestibulum lectus mauris. Blandit massa enim nec dui. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. Et leo duis ut diam quam.','Preaching','','publish','closed','closed','','preaching','','','2020-01-03 22:45:10','2020-01-03 22:45:10','',0,'http://bible-school.local/?post_type=program&#038;p=75',0,'program','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-01-03 22:09:43','2020-01-03 22:09:43','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas. Leo urna molestie at elementum eu facilisis. Arcu dictum varius duis at consectetur lorem donec massa. Gravida rutrum quisque non tellus orci ac auctor. Orci eu lobortis elementum nibh tellus molestie. Egestas maecenas pharetra convallis posuere morbi leo. Accumsan lacus vel facilisis volutpat est velit egestas. Laoreet sit amet cursus sit amet dictum sit amet justo. A diam sollicitudin tempor id. Nunc congue nisi vitae suscipit tellus. Ultrices sagittis orci a scelerisque purus semper eget. Et tortor consequat id porta. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In fermentum et sollicitudin ac. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Nibh ipsum consequat nisl vel.\r\n\r\nQuam lacus suspendisse faucibus interdum posuere lorem. Eleifend donec pretium vulputate sapien nec. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut consequat semper viverra nam libero. Risus in hendrerit gravida rutrum quisque non tellus. Fermentum et sollicitudin ac orci. Augue interdum velit euismod in pellentesque massa. Sit amet justo donec enim diam vulputate. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Tincidunt vitae semper quis lectus nulla at volutpat. Malesuada pellentesque elit eget gravida cum. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Elit ut aliquam purus sit. Auctor elit sed vulputate mi.\r\n\r\nLorem mollis aliquam ut porttitor leo a diam. Arcu felis bibendum ut tristique et egestas. Ultrices in iaculis nunc sed augue lacus viverra. Elit duis tristique sollicitudin nibh sit. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Justo donec enim diam vulputate. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed. Erat velit scelerisque in dictum. Orci sagittis eu volutpat odio facilisis mauris sit amet. Eget nulla facilisi etiam dignissim. Mauris augue neque gravida in fermentum. Dui accumsan sit amet nulla. Quis imperdiet massa tincidunt nunc. Netus et malesuada fames ac turpis egestas integer eget aliquet. Senectus et netus et malesuada fames ac turpis. Malesuada proin libero nunc consequat interdum varius sit. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Egestas egestas fringilla phasellus faucibus scelerisque.\r\n\r\nAenean sed adipiscing diam donec adipiscing. Pretium fusce id velit ut tortor pretium. Faucibus nisl tincidunt eget nullam non nisi est sit. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Massa massa ultricies mi quis hendrerit dolor magna. Eu facilisis sed odio morbi quis. Volutpat blandit aliquam etiam erat velit scelerisque in. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquam id diam maecenas ultricies mi eget. Odio ut sem nulla pharetra diam sit amet. Feugiat nisl pretium fusce id. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Lectus urna duis convallis convallis. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Dis parturient montes nascetur ridiculus mus mauris vitae.\r\n\r\nEt magnis dis parturient montes nascetur ridiculus mus. Risus ultricies tristique nulla aliquet enim. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. Ut etiam sit amet nisl purus. Aliquam id diam maecenas ultricies. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Ut diam quam nulla porttitor massa id. In fermentum et sollicitudin ac orci phasellus. Aenean pharetra magna ac placerat vestibulum lectus mauris. Blandit massa enim nec dui. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. Et leo duis ut diam quam.','Bible','','publish','closed','closed','','bible','','','2020-01-03 22:42:56','2020-01-03 22:42:56','',0,'http://bible-school.local/?post_type=program&#038;p=76',0,'program','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-01-03 22:37:52','2020-01-03 22:37:52','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5e0fc1034e643','','','2020-01-04 17:31:43','2020-01-04 17:31:43','',0,'http://bible-school.local/?post_type=acf-field-group&#038;p=77',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-01-03 22:37:52','2020-01-03 22:37:52','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5e0fc10fa1d6e','','','2020-01-03 22:47:52','2020-01-03 22:47:52','',77,'http://bible-school.local/?post_type=acf-field&#038;p=78',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-01-04 17:28:19','2020-01-04 17:28:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas. Leo urna molestie at elementum eu facilisis. Arcu dictum varius duis at consectetur lorem donec massa. Gravida rutrum quisque non tellus orci ac auctor. Orci eu lobortis elementum nibh tellus molestie. Egestas maecenas pharetra convallis posuere morbi leo. Accumsan lacus vel facilisis volutpat est velit egestas. Laoreet sit amet cursus sit amet dictum sit amet justo. A diam sollicitudin tempor id. Nunc congue nisi vitae suscipit tellus. Ultrices sagittis orci a scelerisque purus semper eget. Et tortor consequat id porta. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In fermentum et sollicitudin ac. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Nibh ipsum consequat nisl vel.\r\n\r\nQuam lacus suspendisse faucibus interdum posuere lorem. Eleifend donec pretium vulputate sapien nec. Nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus. Ut consequat semper viverra nam libero. Risus in hendrerit gravida rutrum quisque non tellus. Fermentum et sollicitudin ac orci. Augue interdum velit euismod in pellentesque massa. Sit amet justo donec enim diam vulputate. Elit ut aliquam purus sit amet luctus venenatis lectus magna. Tincidunt vitae semper quis lectus nulla at volutpat. Malesuada pellentesque elit eget gravida cum. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Elit ut aliquam purus sit. Auctor elit sed vulputate mi.\r\n\r\nLorem mollis aliquam ut porttitor leo a diam. Arcu felis bibendum ut tristique et egestas. Ultrices in iaculis nunc sed augue lacus viverra. Elit duis tristique sollicitudin nibh sit. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Justo donec enim diam vulputate. Fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed. Erat velit scelerisque in dictum. Orci sagittis eu volutpat odio facilisis mauris sit amet. Eget nulla facilisi etiam dignissim. Mauris augue neque gravida in fermentum. Dui accumsan sit amet nulla. Quis imperdiet massa tincidunt nunc. Netus et malesuada fames ac turpis egestas integer eget aliquet. Senectus et netus et malesuada fames ac turpis. Malesuada proin libero nunc consequat interdum varius sit. Lacus sed turpis tincidunt id aliquet risus feugiat in ante. Egestas egestas fringilla phasellus faucibus scelerisque.\r\n\r\nAenean sed adipiscing diam donec adipiscing. Pretium fusce id velit ut tortor pretium. Faucibus nisl tincidunt eget nullam non nisi est sit. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Massa massa ultricies mi quis hendrerit dolor magna. Eu facilisis sed odio morbi quis. Volutpat blandit aliquam etiam erat velit scelerisque in. Mattis pellentesque id nibh tortor id aliquet lectus proin. Aliquam id diam maecenas ultricies mi eget. Odio ut sem nulla pharetra diam sit amet. Feugiat nisl pretium fusce id. Donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Lectus urna duis convallis convallis. Tempor nec feugiat nisl pretium fusce id velit ut tortor. Dis parturient montes nascetur ridiculus mus mauris vitae.\r\n\r\nEt magnis dis parturient montes nascetur ridiculus mus. Risus ultricies tristique nulla aliquet enim. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. Ut etiam sit amet nisl purus. Aliquam id diam maecenas ultricies. Urna id volutpat lacus laoreet non curabitur gravida arcu ac. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada. Ut diam quam nulla porttitor massa id. In fermentum et sollicitudin ac orci phasellus. Aenean pharetra magna ac placerat vestibulum lectus mauris. Blandit massa enim nec dui. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. Et leo duis ut diam quam.','Dr. Think Hard','','publish','closed','closed','','dr-think-hard','','','2020-01-04 18:23:14','2020-01-04 18:23:14','',0,'http://bible-school.local/?post_type=professor&#038;p=79',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-01-04 17:28:40','2020-01-04 17:28:40','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ullamcorper morbi tincidunt ornare massa eget egestas. Leo urna molestie at elementum eu facilisis. Arcu dictum varius duis at consectetur lorem donec massa. Gravida rutrum quisque non tellus orci ac auctor. Orci eu lobortis elementum nibh tellus molestie. Egestas maecenas pharetra convallis posuere morbi leo. Accumsan lacus vel facilisis volutpat est velit egestas. Laoreet sit amet cursus sit amet dictum sit amet justo. A diam sollicitudin tempor id. Nunc congue nisi vitae suscipit tellus. Ultrices sagittis orci a scelerisque purus semper eget. Et tortor consequat id porta. Egestas maecenas pharetra convallis posuere morbi leo urna molestie at. In fermentum et sollicitudin ac. Magna fringilla urna porttitor rhoncus dolor purus non enim praesent. Nibh ipsum consequat nisl vel.\r\n\r\n&nbsp;','Dr. Pulpit Thumper','','publish','closed','closed','','dr-pulpit-thumper','','','2020-01-04 18:22:17','2020-01-04 18:22:17','',0,'http://bible-school.local/?post_type=professor&#038;p=80',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-01-04 18:22:07','2020-01-04 18:22:07','','professor1','','inherit','open','closed','','professor1','','','2020-01-04 18:22:07','2020-01-04 18:22:07','',80,'http://bible-school.local/wp-content/uploads/2020/01/professor1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-01-04 18:22:31','2020-01-04 18:22:31','','professor2','','inherit','open','closed','','professor2','','','2020-01-04 18:22:31','2020-01-04 18:22:31','',79,'http://bible-school.local/wp-content/uploads/2020/01/professor2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-01-04 18:48:23','2020-01-04 18:48:23','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.','Dr. Singsalot','','publish','closed','closed','','dr-singsalot','','','2020-01-04 19:07:29','2020-01-04 19:07:29','',0,'http://bible-school.local/?post_type=professor&#038;p=89',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-01-04 18:36:02','2020-01-04 18:36:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.','Church Music','','publish','closed','closed','','church-music','','','2020-01-04 18:36:02','2020-01-04 18:36:02','',0,'http://bible-school.local/?post_type=program&#038;p=90',0,'program','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-01-04 18:48:17','2020-01-04 18:48:17','','professor3','','inherit','open','closed','','professor3','','','2020-01-04 18:48:17','2020-01-04 18:48:17','',89,'http://bible-school.local/wp-content/uploads/2020/01/professor3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-01-04 19:03:19','2020-01-04 19:03:19','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5e10e10fd652b','','','2020-01-04 19:03:19','2020-01-04 19:03:19','',0,'http://bible-school.local/?post_type=acf-field-group&#038;p=92',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-01-04 19:03:19','2020-01-04 19:03:19','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5e10e12281544','','','2020-01-04 19:03:19','2020-01-04 19:03:19','',92,'http://bible-school.local/?post_type=acf-field&p=93',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-01-04 19:03:19','2020-01-04 19:03:19','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5e10e13981545','','','2020-01-04 19:03:19','2020-01-04 19:03:19','',92,'http://bible-school.local/?post_type=acf-field&p=94',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-01-04 19:06:58','2020-01-04 19:06:58','','singsalot-banner','','inherit','open','closed','','singsalot-banner','','','2020-01-04 19:06:58','2020-01-04 19:06:58','',89,'http://bible-school.local/wp-content/uploads/2020/01/singsalot-banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-01-04 19:17:58','2020-01-04 19:17:58','','school-building','','inherit','open','closed','','school-building','','','2020-01-04 19:17:58','2020-01-04 19:17:58','',13,'http://bible-school.local/wp-content/uploads/2020/01/school-building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-01-04 19:18:05','2020-01-04 19:18:05','<!-- wp:paragraph -->\n<p>About Page content. Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque voluptate, perspiciatis, error, autem quos nobis necessitatibus repellendus omnis expedita ea dolor facilis. Itaque repellendus iste quisquam eaque? Aperiam, tempora quia?</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','13-revision-v1','','','2020-01-04 19:18:05','2020-01-04 19:18:05','',13,'http://bible-school.local/2020/01/04/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-01-04 21:43:07','2020-01-04 21:43:07','','calendar','','inherit','open','closed','','calendar','','','2020-01-04 21:43:07','2020-01-04 21:43:07','',69,'http://bible-school.local/wp-content/uploads/2020/01/calendar.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-01-04 21:48:34','2020-01-04 21:48:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.</p>\n<!-- /wp:paragraph -->','We Won An Award','OUr school has won an award.','inherit','closed','closed','','56-revision-v1','','','2020-01-04 21:48:34','2020-01-04 21:48:34','',56,'http://bible-school.local/2020/01/04/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-01-04 22:13:43','2020-01-04 22:13:43','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.','Lititz, PA','','publish','closed','closed','','lititz-pa','','','2020-01-04 22:13:43','2020-01-04 22:13:43','',0,'http://bible-school.local/?post_type=campus&#038;p=100',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-01-04 22:13:53','2020-01-04 22:13:53','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed arcu non odio euismod lacinia at. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Et tortor at risus viverra adipiscing at in. Lacus viverra vitae congue eu. Sit amet nisl purus in mollis nunc. Laoreet non curabitur gravida arcu. Pharetra sit amet aliquam id diam maecenas ultricies mi eget. Non sodales neque sodales ut etiam sit amet nisl purus. Aliquet porttitor lacus luctus accumsan. In eu mi bibendum neque egestas congue.','Sacramento, CA','','publish','closed','closed','','sacramento-ca','','','2020-01-04 22:13:53','2020-01-04 22:13:53','',0,'http://bible-school.local/?post_type=campus&#038;p=101',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-01-04 22:15:26','2020-01-04 22:15:26','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','publish','closed','closed','','group_5e110e440b29d','','','2020-01-04 22:44:47','2020-01-04 22:44:47','',0,'http://bible-school.local/?post_type=acf-field-group&#038;p=102',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-01-04 22:15:26','2020-01-04 22:15:26','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_5e110e481b4ec','','','2020-01-04 22:15:26','2020-01-04 22:15:26','',102,'http://bible-school.local/?post_type=acf-field&p=103',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (46,3,0);
INSERT INTO `wp_term_relationships` VALUES (47,3,0);
INSERT INTO `wp_term_relationships` VALUES (48,5,0);
INSERT INTO `wp_term_relationships` VALUES (49,5,0);
INSERT INTO `wp_term_relationships` VALUES (50,4,0);
INSERT INTO `wp_term_relationships` VALUES (51,4,0);
INSERT INTO `wp_term_relationships` VALUES (56,6,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','asdfasdfasdf',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (6,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Eugene');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Testing hello 23123123123');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"571cf9f3c785bf94729729d9d6c04d9193560440f479eb0414a6f168ebe6ba7c\";a:4:{s:10:\"expiration\";i:1578695031;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36\";s:5:\"login\";i:1577485431;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','104');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (21,1,'meta-box-order_event','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'screen_layout_event','2');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','editor_expand=on&post_dfw=off&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1578160341');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_campus','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_campus','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Eugene','$P$BbBTFncQOvkaIMcFYRHBxlX7xhYzeZ/','eugene','eugenepianist@gmail.com','','2019-12-09 23:07:18','1578346047:$P$Bxe2ENr6ZuoDIsAvghmp7akyW33.vF.',0,'Eugene');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24 16:57:38
