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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-09-02 09:09:08','2020-09-02 09:09:08','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=730 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Quentin was here.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','qcrida@gmail.com','yes');
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
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:180:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=42&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','Europe/London','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','44','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','42','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1614589747','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1607078229;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1607116150;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1607159350;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607159565;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607159566;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1607591350;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','5%bjF,7q+jauZ_4z5y4N8dx],n{z!akY62+M~v}*wJ`ogP9=?6/DcZ=bmcD[&J@#','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','6KH=Z[,J==Kfsv:IPl-p6JH%B,YDW}HF9VRB{Jrh9X[V_Z!3%?.SiVur]UW3v7Vx','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.3-partial-1.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.3-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5.2-partial-1.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.2-rollback-1.zip\";}s:7:\"current\";s:5:\"5.5.2\";s:7:\"version\";s:5:\"5.5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.5.1\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1607074708;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607074711;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599458587;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (132,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (150,'_transient_health-check-site-status-result','{\"good\":9,\"recommended\":9,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (167,'theme_mods_fictional-university-theme','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}}','yes');
INSERT INTO `wp_options` VALUES (168,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (169,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (173,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (174,'new_admin_email','qcrida@gmail.com','yes');
INSERT INTO `wp_options` VALUES (288,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (349,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (430,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (437,'acf_version','5.9.1','yes');
INSERT INTO `wp_options` VALUES (536,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (708,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1607494997','no');
INSERT INTO `wp_options` VALUES (709,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (727,'_site_transient_timeout_theme_roots','1607076511','no');
INSERT INTO `wp_options` VALUES (728,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (729,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1607074712;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.4\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1600838916:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1600838904:1');
INSERT INTO `wp_postmeta` VALUES (9,9,'_edit_lock','1599470830:1');
INSERT INTO `wp_postmeta` VALUES (10,16,'_edit_lock','1602580428:1');
INSERT INTO `wp_postmeta` VALUES (11,3,'_edit_lock','1599648731:1');
INSERT INTO `wp_postmeta` VALUES (12,20,'_edit_lock','1600670613:1');
INSERT INTO `wp_postmeta` VALUES (13,22,'_edit_lock','1600753316:1');
INSERT INTO `wp_postmeta` VALUES (14,24,'_edit_lock','1599629278:1');
INSERT INTO `wp_postmeta` VALUES (15,28,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (16,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,28,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (18,28,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (19,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,28,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (23,28,'_menu_item_orphaned','1600755593');
INSERT INTO `wp_postmeta` VALUES (24,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (25,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,29,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (27,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (28,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (32,29,'_menu_item_orphaned','1600755593');
INSERT INTO `wp_postmeta` VALUES (33,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,30,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (36,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,30,'_menu_item_orphaned','1600755593');
INSERT INTO `wp_postmeta` VALUES (42,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,31,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (45,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,32,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (54,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,32,'_menu_item_orphaned','1600755593');
INSERT INTO `wp_postmeta` VALUES (60,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,33,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (63,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,33,'_menu_item_orphaned','1600755594');
INSERT INTO `wp_postmeta` VALUES (69,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (72,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,34,'_menu_item_orphaned','1600755594');
INSERT INTO `wp_postmeta` VALUES (78,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,35,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (81,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,35,'_menu_item_orphaned','1600755594');
INSERT INTO `wp_postmeta` VALUES (87,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (88,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,36,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (90,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (91,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (96,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (97,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,37,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (99,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (100,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,38,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (108,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (114,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,39,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (117,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,40,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (126,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,41,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (133,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,41,'_menu_item_object_id','41');
INSERT INTO `wp_postmeta` VALUES (135,41,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (136,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,41,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (141,42,'_edit_lock','1600837263:1');
INSERT INTO `wp_postmeta` VALUES (142,44,'_edit_lock','1600838645:1');
INSERT INTO `wp_postmeta` VALUES (149,1,'_edit_lock','1600838929:1');
INSERT INTO `wp_postmeta` VALUES (152,50,'_edit_lock','1602060852:1');
INSERT INTO `wp_postmeta` VALUES (155,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,53,'_edit_lock','1602067624:1');
INSERT INTO `wp_postmeta` VALUES (157,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (158,54,'_edit_lock','1602236949:1');
INSERT INTO `wp_postmeta` VALUES (159,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (160,55,'_edit_lock','1602580614:1');
INSERT INTO `wp_postmeta` VALUES (163,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (164,61,'_edit_lock','1602065561:1');
INSERT INTO `wp_postmeta` VALUES (165,55,'event_date','20201011');
INSERT INTO `wp_postmeta` VALUES (166,55,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (167,54,'event_date','20201029');
INSERT INTO `wp_postmeta` VALUES (168,54,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (169,53,'event_date','20200909');
INSERT INTO `wp_postmeta` VALUES (170,53,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (171,63,'_edit_lock','1602148983:1');
INSERT INTO `wp_postmeta` VALUES (172,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (173,63,'event_date','20201023');
INSERT INTO `wp_postmeta` VALUES (174,63,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (175,64,'_edit_lock','1602149420:1');
INSERT INTO `wp_postmeta` VALUES (176,66,'_edit_lock','1602150208:1');
INSERT INTO `wp_postmeta` VALUES (177,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (178,66,'event_date','20201001');
INSERT INTO `wp_postmeta` VALUES (179,66,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (180,67,'_edit_lock','1602150667:1');
INSERT INTO `wp_postmeta` VALUES (181,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (182,67,'event_date','20171021');
INSERT INTO `wp_postmeta` VALUES (183,67,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (184,68,'_edit_lock','1602150683:1');
INSERT INTO `wp_postmeta` VALUES (185,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (186,68,'event_date','19710510');
INSERT INTO `wp_postmeta` VALUES (187,68,'_event_date','field_5f7d91a54846f');
INSERT INTO `wp_postmeta` VALUES (188,69,'_edit_lock','1602669830:1');
INSERT INTO `wp_postmeta` VALUES (189,70,'_edit_lock','1602668491:1');
INSERT INTO `wp_postmeta` VALUES (190,71,'_edit_lock','1602667723:1');
INSERT INTO `wp_postmeta` VALUES (191,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (192,72,'_edit_lock','1602667192:1');
INSERT INTO `wp_postmeta` VALUES (193,54,'related','a:1:{i:0;s:2:\"70\";}');
INSERT INTO `wp_postmeta` VALUES (194,54,'_related','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (195,54,'related_programs','a:2:{i:0;s:2:\"70\";i:1;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (196,54,'_related_programs','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (197,76,'_edit_lock','1602564611:1');
INSERT INTO `wp_postmeta` VALUES (198,77,'_edit_lock','1602568622:1');
INSERT INTO `wp_postmeta` VALUES (199,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (200,77,'related_programs','a:1:{i:0;s:2:\"70\";}');
INSERT INTO `wp_postmeta` VALUES (201,77,'_related_programs','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (202,78,'_wp_attached_file','2020/10/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (203,78,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/10/barksalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"34\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:18:\"389.23076923075945\";s:1:\"h\";s:18:\"252.99999999999997\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"140\";s:1:\"y\";s:2:\"10\";s:1:\"w\";s:18:\"234.09230769230817\";s:1:\"h\";s:3:\"317\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (204,77,'_thumbnail_id','78');
INSERT INTO `wp_postmeta` VALUES (205,79,'_wp_attached_file','2020/10/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (206,79,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/10/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"4\";s:1:\"y\";s:2:\"31\";s:1:\"w\";s:3:\"422\";s:1:\"h\";s:17:\"274.3000000000069\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"107\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:17:\"245.9076923076928\";s:1:\"h\";s:3:\"333\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (207,76,'_thumbnail_id','79');
INSERT INTO `wp_postmeta` VALUES (208,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,76,'related_programs','a:2:{i:0;s:2:\"70\";i:1;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (210,76,'_related_programs','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (211,80,'_edit_lock','1602510291:1');
INSERT INTO `wp_postmeta` VALUES (212,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (213,80,'related_programs','a:1:{i:0;s:2:\"69\";}');
INSERT INTO `wp_postmeta` VALUES (214,80,'_related_programs','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (215,81,'_wp_attached_file','2020/10/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (216,81,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2020/10/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";s:15:\"micSelectedArea\";a:1:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"76\";s:1:\"w\";s:16:\"363.076923076914\";s:1:\"h\";s:3:\"236\";s:5:\"scale\";s:15:\"5.7114285714286\";}}}');
INSERT INTO `wp_postmeta` VALUES (217,80,'_thumbnail_id','81');
INSERT INTO `wp_postmeta` VALUES (218,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (219,82,'_edit_lock','1602565699:1');
INSERT INTO `wp_postmeta` VALUES (220,77,'page_banner_subtitle','Hitting high pitches and petri dishes.');
INSERT INTO `wp_postmeta` VALUES (221,77,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (222,77,'page_banner_background_image','85');
INSERT INTO `wp_postmeta` VALUES (223,77,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (224,85,'_wp_attached_file','2020/10/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (225,85,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/10/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"91\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (226,86,'_wp_attached_file','2020/10/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (227,86,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2020/10/building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"71\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (228,16,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (229,16,'page_banner_subtitle','A Great Institution for Centuries.');
INSERT INTO `wp_postmeta` VALUES (230,16,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (231,16,'page_banner_background_image','86');
INSERT INTO `wp_postmeta` VALUES (232,16,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (233,87,'page_banner_subtitle','Great Institution for Centuries.');
INSERT INTO `wp_postmeta` VALUES (234,87,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (235,87,'page_banner_background_image','86');
INSERT INTO `wp_postmeta` VALUES (236,87,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (237,88,'page_banner_subtitle','A Great Institution for Centuries.');
INSERT INTO `wp_postmeta` VALUES (238,88,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (239,88,'page_banner_background_image','86');
INSERT INTO `wp_postmeta` VALUES (240,88,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (241,89,'_wp_attached_file','2020/10/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (242,89,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2020/10/notebook-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (243,55,'page_banner_subtitle','Say it with Words');
INSERT INTO `wp_postmeta` VALUES (244,55,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (245,55,'page_banner_background_image','89');
INSERT INTO `wp_postmeta` VALUES (246,55,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (247,55,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (248,55,'_related_programs','field_5f7ff9a76b924');
INSERT INTO `wp_postmeta` VALUES (249,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (250,70,'page_banner_subtitle','Living things and things.(Homage to Mad Mike)');
INSERT INTO `wp_postmeta` VALUES (251,70,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (252,70,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (253,70,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (254,90,'_edit_lock','1602653787:1');
INSERT INTO `wp_postmeta` VALUES (255,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (256,90,'page_banner_subtitle','Renfield Street at it\'s finest (in the SAVOY as well!)');
INSERT INTO `wp_postmeta` VALUES (257,90,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (258,90,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (259,90,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (260,91,'_edit_lock','1602653836:1');
INSERT INTO `wp_postmeta` VALUES (261,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (262,91,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (263,91,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (264,91,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (265,91,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (266,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (267,92,'_edit_lock','1602585276:1');
INSERT INTO `wp_postmeta` VALUES (268,90,'map_location','a:12:{s:7:\"address\";s:33:\"55 Renfrew St, Glasgow G2 3DU, UK\";s:3:\"lat\";d:55.86551;s:3:\"lng\";d:-4.2579213999999999;s:4:\"zoom\";i:17;s:8:\"place_id\";s:128:\"Ei5SZW5mcmV3IFN0LCBTYXVjaGllaGFsbCBTdCwgR2xhc2dvdyBHMiAzRFUsIFVLIi4qLAoUChIJt5L_6yZEiEgRfVc7ndpVHjsSFAoSCUuSjSAhRIhIEZdj4P9ugo6I\";s:4:\"name\";s:14:\"Renfrew Street\";s:11:\"street_name\";s:18:\"Sauchiehall Street\";s:17:\"street_name_short\";s:14:\"Sauchiehall St\";s:5:\"state\";s:8:\"Scotland\";s:9:\"post_code\";s:6:\"G2 3DU\";s:7:\"country\";s:14:\"United Kingdom\";s:13:\"country_short\";s:2:\"GB\";}');
INSERT INTO `wp_postmeta` VALUES (269,90,'_map_location','field_5f85830cc7c8c');
INSERT INTO `wp_postmeta` VALUES (270,91,'map_location','a:11:{s:7:\"address\";s:41:\"37a Castle Terrace, Edinburgh EH1 2EL, UK\";s:3:\"lat\";d:55.946957386421396;s:3:\"lng\";d:-3.2019559596328806;s:4:\"zoom\";i:18;s:8:\"place_id\";s:27:\"ChIJr2GjB5nHh0gRKpieIgjpRSA\";s:13:\"street_number\";s:3:\"37a\";s:11:\"street_name\";s:14:\"Castle Terrace\";s:5:\"state\";s:8:\"Scotland\";s:9:\"post_code\";s:7:\"EH1 2EL\";s:7:\"country\";s:14:\"United Kingdom\";s:13:\"country_short\";s:2:\"GB\";}');
INSERT INTO `wp_postmeta` VALUES (271,91,'_map_location','field_5f85830cc7c8c');
INSERT INTO `wp_postmeta` VALUES (272,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,95,'_edit_lock','1602667557:1');
INSERT INTO `wp_postmeta` VALUES (274,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,71,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (276,71,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (277,71,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (278,71,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (279,71,'related_campus','a:2:{i:0;s:2:\"91\";i:1;s:2:\"90\";}');
INSERT INTO `wp_postmeta` VALUES (280,71,'_related_campus','field_5f86c35351a48');
INSERT INTO `wp_postmeta` VALUES (281,70,'related_campus','a:2:{i:0;s:2:\"91\";i:1;s:2:\"90\";}');
INSERT INTO `wp_postmeta` VALUES (282,70,'_related_campus','field_5f86c35351a48');
INSERT INTO `wp_postmeta` VALUES (283,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (284,69,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (285,69,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (286,69,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (287,69,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (288,69,'related_campus','a:1:{i:0;s:2:\"90\";}');
INSERT INTO `wp_postmeta` VALUES (289,69,'_related_campus','field_5f86c35351a48');
INSERT INTO `wp_postmeta` VALUES (290,97,'_edit_lock','1602857691:1');
INSERT INTO `wp_postmeta` VALUES (293,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (294,97,'page_banner_subtitle','Bioligy made easier.');
INSERT INTO `wp_postmeta` VALUES (295,97,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (296,97,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (297,97,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (298,98,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (299,98,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (300,98,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (301,98,'_page_banner_background_image','field_5f8535c6d06c3');
INSERT INTO `wp_postmeta` VALUES (304,99,'page_banner_subtitle','Bioligy made easier.');
INSERT INTO `wp_postmeta` VALUES (305,99,'_page_banner_subtitle','field_5f8535b1d06c2');
INSERT INTO `wp_postmeta` VALUES (306,99,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (307,99,'_page_banner_background_image','field_5f8535c6d06c3');
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-09-02 09:09:08','2020-09-02 09:09:08','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-09-23 06:31:10','2020-09-23 05:31:10','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-09-02 09:09:08','2020-09-02 09:09:08','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-09-02 09:09:08','2020-09-02 09:09:08','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-09-02 09:09:08','2020-09-02 09:09:08','<!-- wp:paragraph -->\n<p>This is the privacy polocy section. YKWIM?</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-09-08 07:10:46','2020-09-08 06:10:46','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-09-07 09:11:22','2020-09-07 08:11:22','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2020-09-23 06:30:59','2020-09-23 05:30:59','',0,'http://fictional-university.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-09-07 09:11:22','2020-09-07 08:11:22','<!-- wp:paragraph -->\n<p>xcvjkoiyf rtuioihgviuhuibckbv</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-09-07 09:11:22','2020-09-07 08:11:22','',5,'http://fictional-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-09-07 09:12:05','2020-09-07 08:12:05','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2020-09-23 06:30:47','2020-09-23 05:30:47','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-09-07 09:12:05','2020-09-07 08:12:05','<!-- wp:paragraph -->\n<p>&lt;?php $names = array(\'Quentin\', \'Este\', \'Nana\');<br>$count = 0;<br>while($count &lt; count($names)) { echo \"&lt;li&gt;Hi, my name is $names[$count]&lt;/li&gt;\"; $count++; }?&gt;</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-09-07 09:12:05','2020-09-07 08:12:05','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-09-07 09:34:55','2020-09-07 08:34:55','<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p><strong>Dear Quentin , Thank you for your recent application for the role of Customer Assistant.<br><br>The next stage in the recruitment process is to complete a short online assessment.  This is to help you understand what it\'s like to work for Morrisons and for us to understand whether you would be a good fit for the role.</strong></p></blockquote>\n<!-- /wp:quote -->','Test Page 12345','','publish','closed','closed','','test-page-123','','','2020-09-07 10:03:53','2020-09-07 09:03:53','',0,'http://fictional-university.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-09-07 09:34:55','2020-09-07 08:34:55','<!-- wp:paragraph -->\n<p>xcghjkjhugytrtyuiobvcjkjbugvj</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 09:34:55','2020-09-07 08:34:55','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-09-07 09:36:26','2020-09-07 08:36:26','<!-- wp:paragraph -->\n<p>abcdefghijklmnop qrstuv wxyz now we know our alphabet....</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 09:36:26','2020-09-07 08:36:26','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-09-07 09:37:59','2020-09-07 08:37:59','<!-- wp:paragraph -->\n<p>abcdefghijklmnop qrstuv wxyz now we know our alphabet....</p>\n<!-- /wp:paragraph -->','Test Page 12345','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 09:37:59','2020-09-07 08:37:59','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-09-07 09:39:01','2020-09-07 08:39:01','<!-- wp:paragraph -->\n<p>Dear Quentin ,&nbsp;Thank you for your recent application for the role of Customer Assistant.<br><br>The next stage in the recruitment process is to complete a short online assessment.&nbsp; This is to help you understand what it\'s like to work for Morrisons and for us to understand whether you would be a good fit for the role.</p>\n<!-- /wp:paragraph -->','Test Page 12345','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 09:39:01','2020-09-07 08:39:01','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-09-07 09:40:04','2020-09-07 08:40:04','<!-- wp:quote {\"align\":\"center\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center\"><p><strong>Dear Quentin , Thank you for your recent application for the role of Customer Assistant.<br><br>The next stage in the recruitment process is to complete a short online assessment.  This is to help you understand what it\'s like to work for Morrisons and for us to understand whether you would be a good fit for the role.</strong></p></blockquote>\n<!-- /wp:quote -->','Test Page 12345','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 09:40:04','2020-09-07 08:40:04','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-09-07 10:03:53','2020-09-07 09:03:53','<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p><strong>Dear Quentin , Thank you for your recent application for the role of Customer Assistant.<br><br>The next stage in the recruitment process is to complete a short online assessment.  This is to help you understand what it\'s like to work for Morrisons and for us to understand whether you would be a good fit for the role.</strong></p></blockquote>\n<!-- /wp:quote -->','Test Page 12345','','inherit','closed','closed','','9-revision-v1','','','2020-09-07 10:03:53','2020-09-07 09:03:53','',9,'http://fictional-university.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-09-08 06:18:21','2020-09-08 05:18:21','<!-- wp:paragraph -->\n<p>This is the page about content. Bla bla bla. Hows your mother and how\'s your father?</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-10-13 06:59:15','2020-10-13 05:59:15','',0,'http://fictional-university.local/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-09-08 06:18:21','2020-09-08 05:18:21','<!-- wp:paragraph -->\n<p>This is the page about content. Bla bla bla. Hows your mother and how\'s your father?</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','16-revision-v1','','','2020-09-08 06:18:21','2020-09-08 05:18:21','',16,'http://fictional-university.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-09-08 06:19:40','2020-09-08 05:19:40','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-09-08 06:19:40','2020-09-08 05:19:40','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-09-08 07:10:46','2020-09-08 06:10:46','<!-- wp:paragraph -->\n<p>This is the privacy polocy section. YKWIM?</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-09-08 07:10:46','2020-09-08 06:10:46','',3,'http://fictional-university.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-09-08 11:15:56','2020-09-08 10:15:56','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-09-21 07:45:54','2020-09-21 06:45:54','',16,'http://fictional-university.local/?page_id=20',1,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-09-08 11:15:56','2020-09-08 10:15:56','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2020-09-08 11:15:56','2020-09-08 10:15:56','',20,'http://fictional-university.local/20-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-09-08 11:16:25','2020-09-08 10:16:25','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-09-21 07:46:09','2020-09-21 06:46:09','',16,'http://fictional-university.local/?page_id=22',2,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-09-08 11:16:25','2020-09-08 10:16:25','<!-- wp:paragraph -->\n<p>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','22-revision-v1','','','2020-09-08 11:16:25','2020-09-08 10:16:25','',22,'http://fictional-university.local/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-09-09 06:30:09','2020-09-09 05:30:09','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-09-09 06:30:09','2020-09-09 05:30:09','',3,'http://fictional-university.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-09-09 06:30:09','2020-09-09 05:30:09','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','24-revision-v1','','','2020-09-09 06:30:09','2020-09-09 05:30:09','',24,'http://fictional-university.local/24-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-09-22 07:19:53','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-09-22 07:19:53','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-09-22 07:19:53','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:53','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-09-22 07:19:53','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:53','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-09-22 07:23:56','2020-09-22 06:23:56',' ','','','publish','closed','closed','','31','','','2020-09-22 07:24:04','2020-09-22 06:24:04','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-09-22 07:19:53','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:53','0000-00-00 00:00:00','',16,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-09-22 07:19:53','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:53','0000-00-00 00:00:00','',16,'http://fictional-university.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-09-22 07:19:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:54','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-09-22 07:19:54','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-09-22 07:19:54','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-09-22 07:23:56','2020-09-22 06:23:56',' ','','','publish','closed','closed','','36','','','2020-09-22 07:24:04','2020-09-22 06:24:04','',0,'http://fictional-university.local/?p=36',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-09-22 07:36:45','2020-09-22 06:36:45',' ','','','publish','closed','closed','','37','','','2020-09-22 07:36:45','2020-09-22 06:36:45','',16,'http://fictional-university.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-09-22 07:36:45','2020-09-22 06:36:45',' ','','','publish','closed','closed','','38','','','2020-09-22 07:36:45','2020-09-22 06:36:45','',0,'http://fictional-university.local/?p=38',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-09-22 07:40:04','2020-09-22 06:40:04',' ','','','publish','closed','closed','','39','','','2020-09-22 07:40:58','2020-09-22 06:40:58','',0,'http://fictional-university.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-09-22 07:40:04','2020-09-22 06:40:04',' ','','','publish','closed','closed','','40','','','2020-09-22 07:40:58','2020-09-22 06:40:58','',0,'http://fictional-university.local/?p=40',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-09-22 07:40:04','2020-09-22 06:40:04','','Google','','publish','closed','closed','','google','','','2020-09-22 07:40:58','2020-09-22 06:40:58','',0,'http://fictional-university.local/?p=41',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-09-23 06:03:20','2020-09-23 05:03:20','','Home','','publish','closed','closed','','home','','','2020-09-23 06:03:20','2020-09-23 05:03:20','',0,'http://fictional-university.local/?page_id=42',0,'page','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-09-23 06:03:20','2020-09-23 05:03:20','','Home','','inherit','closed','closed','','42-revision-v1','','','2020-09-23 06:03:20','2020-09-23 05:03:20','',42,'http://fictional-university.local/42-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-09-23 06:03:40','2020-09-23 05:03:40','','Blog','','publish','closed','closed','','blog','','','2020-09-23 06:03:40','2020-09-23 05:03:40','',0,'http://fictional-university.local/?page_id=44',0,'page','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-09-23 06:03:40','2020-09-23 05:03:40','','Blog','','inherit','closed','closed','','44-revision-v1','','','2020-09-23 06:03:40','2020-09-23 05:03:40','',44,'http://fictional-university.local/44-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-09-23 06:27:08','2020-09-23 05:27:08','<!-- wp:paragraph -->\n<p>Je suis Charlie </p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-09-23 06:27:08','2020-09-23 05:27:08','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-09-23 06:30:47','2020-09-23 05:30:47','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-09-23 06:30:47','2020-09-23 05:30:47','',7,'http://fictional-university.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-09-23 06:30:59','2020-09-23 05:30:59','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-09-23 06:30:59','2020-09-23 05:30:59','',5,'http://fictional-university.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-09-23 06:31:10','2020-09-23 05:31:10','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-09-23 06:31:10','2020-09-23 05:31:10','',1,'http://fictional-university.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-09-23 07:10:50','2020-09-23 06:10:50','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Winning Awards Our Way','We have won another award this year!','publish','open','open','','winning-awards-our-way','','','2020-10-07 09:55:35','2020-10-07 08:55:35','',0,'http://fictional-university.local/?p=50',0,'post','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-09-23 07:10:50','2020-09-23 06:10:50','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Winning Awards Our Way','','inherit','closed','closed','','50-revision-v1','','','2020-09-23 07:10:50','2020-09-23 06:10:50','',50,'http://fictional-university.local/50-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-10-06 07:33:03','2020-10-06 06:33:03','Abra cadabra sdfghjkllkjh hgfglukfglihsdv how as the wine slows and and the sun seets on another dau in the life of a genius, he looks to his book for some inspiration. Then he takes another healthy slug of the red chardonnay that women don\'t drink.','Maths Meetup','1 + 1 = 2','publish','closed','closed','','maths-meetup','','','2020-10-07 11:47:03','2020-10-07 10:47:03','',0,'http://fictional-university.local/?post_type=event&#038;p=53',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-10-06 07:33:42','2020-10-06 06:33:42','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2020-10-09 10:49:08','2020-10-09 09:49:08','',0,'http://fictional-university.local/?post_type=event&#038;p=54',0,'event','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-10-06 07:34:16','2020-10-06 06:34:16','hgjhiug o;ih shdsofhoasih iodslknsdkb;gh;dlkjsdkjsbdcsdg;afjh . What a wondefurl woild!\n\n&nbsp;','Poetry Day','Poetry is the fluid of life in our heads and hearts.','publish','closed','closed','','poetry-day','','','2020-10-13 10:16:54','2020-10-13 09:16:54','',0,'http://fictional-university.local/?post_type=event&#038;p=55',0,'event','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-10-07 09:55:35','2020-10-07 08:55:35','<!-- wp:paragraph -->\n<p>\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\n<!-- /wp:paragraph -->','Winning Awards Our Way','We have won another award this year!','inherit','closed','closed','','50-revision-v1','','','2020-10-07 09:55:35','2020-10-07 08:55:35','',50,'http://fictional-university.local/50-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-10-07 11:02:43','2020-10-07 10:02:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5f7d91832e005','','','2020-10-07 11:02:43','2020-10-07 10:02:43','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=61',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-10-07 11:02:43','2020-10-07 10:02:43','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5f7d91a54846f','','','2020-10-07 11:02:43','2020-10-07 10:02:43','',61,'http://fictional-university.local/?post_type=acf-field&p=62',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-10-08 10:23:02','2020-10-08 09:23:02','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Metaphysics for Plonkers','','publish','closed','closed','','metaphysics-for-plonkers','','','2020-10-08 10:23:02','2020-10-08 09:23:02','',0,'http://fictional-university.local/?post_type=event&#038;p=63',0,'event','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-10-08 10:29:58','2020-10-08 09:29:58','','Past Events','','publish','closed','closed','','past-events','','','2020-10-08 10:29:58','2020-10-08 09:29:58','',0,'http://fictional-university.local/?page_id=64',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-10-08 10:29:58','2020-10-08 09:29:58','','Past Events','','inherit','closed','closed','','64-revision-v1','','','2020-10-08 10:29:58','2020-10-08 09:29:58','',64,'http://fictional-university.local/64-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-10-08 10:43:27','2020-10-08 09:43:27','','When I was a baby','','publish','closed','closed','','when-i-was-a-baby','','','2020-10-08 10:43:28','2020-10-08 09:43:28','',0,'http://fictional-university.local/?post_type=event&#038;p=66',0,'event','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-10-08 10:48:46','2020-10-08 09:48:46','','When She was Born','','publish','closed','closed','','when-she-was-born','','','2020-10-08 10:51:04','2020-10-08 09:51:04','',0,'http://fictional-university.local/?post_type=event&#038;p=67',0,'event','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-10-08 10:49:28','2020-10-08 09:49:28','','When I was born!','','publish','closed','closed','','when-i-was-born','','','2020-10-08 10:51:22','2020-10-08 09:51:22','',0,'http://fictional-university.local/?post_type=event&#038;p=68',0,'event','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-10-09 06:21:22','2020-10-09 05:21:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis ligula at quam vehicula tempor in rhoncus ex. Proin tristique ipsum et tortor dignissim, in ornare enim semper. Duis a ante nibh. Cras suscipit justo nulla, nec volutpat nibh facilisis iaculis. Integer et magna dictum erat iaculis pretium. Vestibulum nec libero sit amet diam tristique porta at vitae sem. Proin non erat lacinia lorem tempor lobortis eget id dolor. Sed imperdiet hendrerit urna. Pellentesque commodo leo massa, non maximus nibh tincidunt vitae. Nulla vel facilisis ex. Integer vel turpis eu justo pellentesque viverra. Suspendisse ultricies imperdiet odio, id tempor odio dignissim eget. Donec eu varius sapien. Aliquam pretium felis et interdum tempus. Suspendisse sollicitudin tincidunt arcu, eu eleifend est fermentum non. Fusce eleifend, metus id pulvinar dignissim, nisi sem eleifend dolor, in facilisis purus enim sagittis justo.</p>\n<!-- /wp:paragraph -->','Mathematics','','publish','closed','closed','','mathematics','','','2020-10-14 10:41:46','2020-10-14 09:41:46','',0,'http://fictional-university.local/?post_type=program&#038;p=69',0,'program','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-10-09 06:21:47','2020-10-09 05:21:47','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis ligula at quam vehicula tempor in rhoncus ex. Proin tristique ipsum et tortor dignissim, in ornare enim semper. Duis a ante nibh. Cras suscipit justo nulla, nec volutpat nibh facilisis iaculis. Integer et magna dictum erat iaculis pretium. Vestibulum nec libero sit amet diam tristique porta at vitae sem. Proin non erat lacinia lorem tempor lobortis eget id dolor. Sed imperdiet hendrerit urna. Pellentesque commodo leo massa, non maximus nibh tincidunt vitae. Nulla vel facilisis ex. Integer vel turpis eu justo pellentesque viverra. Suspendisse ultricies imperdiet odio, id tempor odio dignissim eget. Donec eu varius sapien. Aliquam pretium felis et interdum tempus. Suspendisse sollicitudin tincidunt arcu, eu eleifend est fermentum non. Fusce eleifend, metus id pulvinar dignissim, nisi sem eleifend dolor, in facilisis purus enim sagittis justo.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2020-10-14 10:41:30','2020-10-14 09:41:30','',0,'http://fictional-university.local/?post_type=program&#038;p=70',0,'program','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-10-09 06:22:08','2020-10-09 05:22:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus venenatis ligula at quam vehicula tempor in rhoncus ex. Proin tristique ipsum et tortor dignissim, in ornare enim semper. Duis a ante nibh. Cras suscipit justo nulla, nec volutpat nibh facilisis iaculis. Integer et magna dictum erat iaculis pretium. Vestibulum nec libero sit amet diam tristique porta at vitae sem. Proin non erat lacinia lorem tempor lobortis eget id dolor. Sed imperdiet hendrerit urna. Pellentesque commodo leo massa, non maximus nibh tincidunt vitae. Nulla vel facilisis ex. Integer vel turpis eu justo pellentesque viverra. Suspendisse ultricies imperdiet odio, id tempor odio dignissim eget. Donec eu varius sapien. Aliquam pretium felis et interdum tempus. Suspendisse sollicitudin tincidunt arcu, eu eleifend est fermentum non. Fusce eleifend, metus id pulvinar dignissim, nisi sem eleifend dolor, in facilisis purus enim sagittis justo.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2020-10-14 10:28:43','2020-10-14 09:28:43','',0,'http://fictional-university.local/?post_type=program&#038;p=71',0,'program','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-10-09 06:50:42','2020-10-09 05:50:42','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Programs','related-programs','publish','closed','closed','','group_5f7ff983acb06','','','2020-10-12 13:14:09','2020-10-12 12:14:09','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=72',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-10-09 06:50:42','2020-10-09 05:50:42','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5f7ff9a76b924','','','2020-10-09 07:15:06','2020-10-09 06:15:06','',72,'http://fictional-university.local/?post_type=acf-field&#038;p=73',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-10-12 11:36:29','2020-10-12 10:36:29','<!-- wp:paragraph -->\n<p>Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow,Meeeow, meeow, meeow etc</p>\n<!-- /wp:paragraph -->','Dr Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2020-10-12 14:04:52','2020-10-12 13:04:52','',0,'http://fictional-university.local/?post_type=professor&#038;p=76',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-10-12 11:37:09','2020-10-12 10:37:09','<!-- wp:paragraph -->\n<p>Woof, woof, woof, woof, Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof,Woof, woof, woof, woof etc.</p>\n<!-- /wp:paragraph -->','Dr Barksalot','','publish','closed','closed','','dr-barksalot','','','2020-10-13 06:25:33','2020-10-13 05:25:33','',0,'http://fictional-university.local/?post_type=professor&#038;p=77',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-10-12 13:40:48','2020-10-12 12:40:48','','barksalot','','inherit','open','closed','','barksalot','','','2020-10-12 13:40:48','2020-10-12 12:40:48','',77,'http://fictional-university.local/wp-content/uploads/2020/10/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-10-12 13:42:28','2020-10-12 12:42:28','','meowsalot','','inherit','open','closed','','meowsalot','','','2020-10-12 13:42:28','2020-10-12 12:42:28','',76,'http://fictional-university.local/wp-content/uploads/2020/10/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-10-12 14:43:56','2020-10-12 13:43:56','<!-- wp:paragraph -->\n<p>Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak,Croak, Croak, Croak etc</p>\n<!-- /wp:paragraph -->','Dr Jeremy Fisher','','publish','closed','closed','','dr-jeremy-fisher','','','2020-10-12 14:44:50','2020-10-12 13:44:50','',0,'http://fictional-university.local/?post_type=professor&#038;p=80',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-10-12 14:44:34','2020-10-12 13:44:34','','frog-bio','','inherit','open','closed','','frog-bio','','','2020-10-12 14:44:34','2020-10-12 13:44:34','',80,'http://fictional-university.local/wp-content/uploads/2020/10/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-10-13 06:09:03','2020-10-13 05:09:03','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5f85358046fce','','','2020-10-13 06:09:03','2020-10-13 05:09:03','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-10-13 06:09:03','2020-10-13 05:09:03','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5f8535b1d06c2','','','2020-10-13 06:09:03','2020-10-13 05:09:03','',82,'http://fictional-university.local/?post_type=acf-field&p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-10-13 06:09:03','2020-10-13 05:09:03','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5f8535c6d06c3','','','2020-10-13 06:09:03','2020-10-13 05:09:03','',82,'http://fictional-university.local/?post_type=acf-field&p=84',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-10-13 06:13:09','2020-10-13 05:13:09','','field','','inherit','open','closed','','field','','','2020-10-13 06:13:47','2020-10-13 05:13:47','',77,'http://fictional-university.local/wp-content/uploads/2020/10/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-10-13 06:35:44','2020-10-13 05:35:44','','building','','inherit','open','closed','','building','','','2020-10-13 06:37:01','2020-10-13 05:37:01','',16,'http://fictional-university.local/wp-content/uploads/2020/10/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-10-13 06:37:01','2020-10-13 05:37:01','<!-- wp:paragraph -->\n<p>This is the page about content. Bla bla bla. Hows your mother and how\'s your father?</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','16-revision-v1','','','2020-10-13 06:37:01','2020-10-13 05:37:01','',16,'http://fictional-university.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-10-13 06:59:15','2020-10-13 05:59:15','<!-- wp:paragraph -->\n<p>This is the page about content. Bla bla bla. Hows your mother and how\'s your father?</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','16-revision-v1','','','2020-10-13 06:59:15','2020-10-13 05:59:15','',16,'http://fictional-university.local/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-10-13 10:16:32','2020-10-13 09:16:32','','notebook','','inherit','open','closed','','notebook','','','2020-10-13 10:16:54','2020-10-13 09:16:54','',55,'http://fictional-university.local/wp-content/uploads/2020/10/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-10-13 11:33:08','2020-10-13 10:33:08','<!-- wp:paragraph -->\n<p>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</p>\n<!-- /wp:paragraph -->','Codeclan Glasgow','','publish','closed','closed','','codeclan-glasgow','','','2020-10-14 06:36:27','2020-10-14 05:36:27','',0,'http://fictional-university.local/?post_type=campus&#038;p=90',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-10-13 11:33:36','2020-10-13 10:33:36','','Codeclan Edinburgh','','publish','closed','closed','','codeclan-edinburgh','','','2020-10-14 06:37:36','2020-10-14 05:37:36','',0,'http://fictional-university.local/?post_type=campus&#038;p=91',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-10-13 11:36:44','2020-10-13 10:36:44','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Map Location','map-location','publish','closed','closed','','group_5f858304837d1','','','2020-10-13 11:36:50','2020-10-13 10:36:50','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=92',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-10-13 11:36:44','2020-10-13 10:36:44','a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_5f85830cc7c8c','','','2020-10-13 11:36:44','2020-10-13 10:36:44','',92,'http://fictional-university.local/?post_type=acf-field&p=93',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-10-14 10:24:28','2020-10-14 09:24:28','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Campus(es)','related-campuses','publish','closed','closed','','group_5f86c349764e1','','','2020-10-14 10:28:12','2020-10-14 09:28:12','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=95',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-10-14 10:24:28','2020-10-14 09:24:28','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Campus(es)','related_campus','publish','closed','closed','','field_5f86c35351a48','','','2020-10-14 10:28:12','2020-10-14 09:28:12','',95,'http://fictional-university.local/?post_type=acf-field&#038;p=96',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-10-16 14:43:16','2020-10-16 13:43:16','<!-- wp:paragraph -->\n<p>Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.</p>\n<!-- /wp:paragraph -->','Biology For Dummies','','publish','open','open','','biology-for-dummies','','','2020-10-16 14:44:13','2020-10-16 13:44:13','',0,'http://fictional-university.local/?p=97',0,'post','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-10-16 14:43:16','2020-10-16 13:43:16','<!-- wp:paragraph -->\n<p>Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.</p>\n<!-- /wp:paragraph -->','Biology For Dummies','','inherit','closed','closed','','97-revision-v1','','','2020-10-16 14:43:16','2020-10-16 13:43:16','',97,'http://fictional-university.local/97-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-10-16 14:44:13','2020-10-16 13:44:13','<!-- wp:paragraph -->\n<p>Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.Dummy text for dummies.</p>\n<!-- /wp:paragraph -->','Biology For Dummies','','inherit','closed','closed','','97-revision-v1','','','2020-10-16 14:44:13','2020-10-16 13:44:13','',97,'http://fictional-university.local/97-revision-v1/',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,3,0);
INSERT INTO `wp_term_relationships` VALUES (38,3,0);
INSERT INTO `wp_term_relationships` VALUES (39,4,0);
INSERT INTO `wp_term_relationships` VALUES (40,4,0);
INSERT INTO `wp_term_relationships` VALUES (41,4,0);
INSERT INTO `wp_term_relationships` VALUES (50,5,0);
INSERT INTO `wp_term_relationships` VALUES (97,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','Here is a description for the Awards Category.',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Another Footer Menu','another-footer-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
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
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Quin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Coder of \"Note\" and newby Software Developer.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"38aeba8dcc95a1ab0dbe5adc8fe5364aedc79af3a9560f7160c097341a66ae0c\";a:4:{s:10:\"expiration\";i:1604052055;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1603879255;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','101');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1602506481');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_professor','a:0:{}');
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
INSERT INTO `wp_users` VALUES (1,'admin','$P$Bjlu4WbHsAmkw/K4LESSRoF7al2QPb.','admin','qcrida@gmail.com','http://fictional-university.local','2020-09-02 09:09:08','',0,'Quin');
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

-- Dump completed on 2020-12-04  9:59:34
