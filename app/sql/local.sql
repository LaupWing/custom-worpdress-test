-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-04-23 04:30:09','2023-04-23 04:30:09','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=814 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://tutorial-college.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://tutorial-college.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
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
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:163:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:12:\"professor/?$\";s:29:\"index.php?post_type=professor\";s:42:\"professor/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:37:\"professor/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=professor&feed=$matches[1]\";s:29:\"professor/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=professor&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:50:\"professor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:45:\"professor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?professor=$matches[1]&feed=$matches[2]\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:34:\"are-you-paying-attention/index.php\";i:2;s:23:\"loco-translate/loco.php\";i:3;s:19:\"members/members.php\";i:4;s:51:\"our-first-unique-plugin/our-first-unique-plugin.php\";i:5;s:32:\"our-word-filter-plugin/index.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:2:{i:0;s:108:\"C:\\Users\\pin-d\\Local Sites\\tutorial-college\\app\\public/wp-content/themes/fictonal-university-theme/style.css\";i:1;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','fictonal-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictonal-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
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
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','35','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','33','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1697776209','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:87:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','2','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:7:{i:1684567811;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1684600211;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684600253;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1684643411;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684643453;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1684729811;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','{Yw I=pt2#iwxC$79WK*rRre.&T|p]nrC+KeMR;9TUt>60H;5j3[hx+gZ#/@dS6n','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','{O<R^g$t=(0y5Wn=/Hu&&FdTn{[c-#/+f1qFBkf$9Wi*4bBSmHn:^< ]?~nPJ2kP','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:1:{s:22:\"2XdVd1UVnhilRANtRUxDGx\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BlG8t.hqd22uWUS932KCRGjj8xRsEZ0\";s:10:\"created_at\";i:1684483261;}}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1682226901;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (125,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:3:\"6.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2.2-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-rollback-0.zip\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:3:\"6.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1684564470;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1684564476;s:7:\"checked\";a:1:{s:25:\"fictonal-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (132,'auth_key','lJ?@s[1.JxGIUeKkr>fxx8xsTQcZMr;yxU^:et.HyCIYrPH]uP6> ^vy>CUREP|K','no');
INSERT INTO `wp_options` VALUES (133,'auth_salt','3QqJ1e`7K6{;~46IYy&b(RE))~x5?.*AwSw%P1s<jIU@a?c}7w$WkEv IP.SF #O','no');
INSERT INTO `wp_options` VALUES (134,'logged_in_key','6gyk=bd}^UGYG*q&vaE>(kYNO`a|(XKvHiUN[%G{Sp@@a&Dh[WjP-{|+M]#A<xOa','no');
INSERT INTO `wp_options` VALUES (135,'logged_in_salt','E/6|_8&4lXc:(_Xw~ dNu* YW)M8MxH|j_C}jq/* {_x1&e.>sh5XO!>~:yEb5z9','no');
INSERT INTO `wp_options` VALUES (153,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (156,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (159,'current_theme','Fictional University;','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_fictonal-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (181,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":3,\"critical\":1}','yes');
INSERT INTO `wp_options` VALUES (225,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (269,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (286,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (350,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (411,'acf_version','6.1.6','yes');
INSERT INTO `wp_options` VALUES (461,'_transient_sirsc-plugin-notice_adons_notice','1','yes');
INSERT INTO `wp_options` VALUES (464,'sirsc_db_version','7.1','yes');
INSERT INTO `wp_options` VALUES (465,'sirsc_jobs_db_ver','1','no');
INSERT INTO `wp_options` VALUES (618,'_transient_timeout_members_30days_flag','1686122360','no');
INSERT INTO `wp_options` VALUES (619,'_transient_members_30days_flag','1','no');
INSERT INTO `wp_options` VALUES (620,'members_activated','1683530360','yes');
INSERT INTO `wp_options` VALUES (621,'members_addons_migrated','1','yes');
INSERT INTO `wp_options` VALUES (622,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (623,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (625,'members_notifications','a:4:{s:6:\"update\";i:1684489626;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (628,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (629,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (665,'recovery_mode_email_last_sent','1684483261','yes');
INSERT INTO `wp_options` VALUES (735,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1685083380','no');
INSERT INTO `wp_options` VALUES (736,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (737,'_site_transient_timeout_browser_c2e8770a57bb05f02fa99fc10237a511','1685083481','no');
INSERT INTO `wp_options` VALUES (738,'_site_transient_browser_c2e8770a57bb05f02fa99fc10237a511','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"113.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (753,'wcp_location','1','yes');
INSERT INTO `wp_options` VALUES (756,'wcp_wordcount','1','yes');
INSERT INTO `wp_options` VALUES (759,'wcp_headline','Test','yes');
INSERT INTO `wp_options` VALUES (762,'wcp_charactercount','','yes');
INSERT INTO `wp_options` VALUES (765,'wcp_readtime','1','yes');
INSERT INTO `wp_options` VALUES (788,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1684564476;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.6.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.6.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:19:\"members/members.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.2.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.2.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2503334\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2503334\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}}','no');
INSERT INTO `wp_options` VALUES (791,'loco_recent','a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:1:{s:58:\"plugin.our-first-unique-plugin/our-first-unique-plugin.php\";i:1684484819;}}s:1:\"t\";i:1684484819;}','no');
INSERT INTO `wp_options` VALUES (792,'_transient_timeout_loco_po_65eda2af76e37aa2bf80d2647160c657','1685348735','no');
INSERT INTO `wp_options` VALUES (793,'_transient_loco_po_65eda2af76e37aa2bf80d2647160c657','a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:55:\"plugins/our-first-unique-plugin/languages/wcpdomain.pot\";s:5:\"bytes\";i:768;s:5:\"mtime\";i:1684484735;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:4;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1684484735;}','no');
INSERT INTO `wp_options` VALUES (795,'plugin_words_to_filter','Lorem, sed, tempor','yes');
INSERT INTO `wp_options` VALUES (804,'replacementText','###!','yes');
INSERT INTO `wp_options` VALUES (812,'_site_transient_timeout_theme_roots','1684566276','no');
INSERT INTO `wp_options` VALUES (813,'_site_transient_theme_roots','a:1:{s:25:\"fictonal-university-theme\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1683014179:1');
INSERT INTO `wp_postmeta` VALUES (4,7,'_edit_lock','1682481584:1');
INSERT INTO `wp_postmeta` VALUES (6,10,'_edit_lock','1682679770:1');
INSERT INTO `wp_postmeta` VALUES (7,13,'_edit_lock','1682695456:1');
INSERT INTO `wp_postmeta` VALUES (8,15,'_edit_lock','1682681956:1');
INSERT INTO `wp_postmeta` VALUES (9,17,'_wp_attached_file','2023/04/ff4e2b95814992795e698e9645890f9e.jpg');
INSERT INTO `wp_postmeta` VALUES (10,17,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:44:\"2023/04/ff4e2b95814992795e698e9645890f9e.jpg\";s:8:\"filesize\";i:126948;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:44:\"ff4e2b95814992795e698e9645890f9e-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24091;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"ff4e2b95814992795e698e9645890f9e-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:150260;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:44:\"ff4e2b95814992795e698e9645890f9e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8241;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:44:\"ff4e2b95814992795e698e9645890f9e-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:98872;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (11,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (12,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (13,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (14,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (15,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (16,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (17,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (18,22,'_menu_item_url','http://tutorial-college.local/');
INSERT INTO `wp_postmeta` VALUES (19,22,'_menu_item_orphaned','1682695524');
INSERT INTO `wp_postmeta` VALUES (20,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (21,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (22,23,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (24,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (25,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (26,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (27,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (32,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (33,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (34,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (35,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (36,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,24,'_menu_item_orphaned','1682695524');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (42,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (43,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (44,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (45,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (46,25,'_menu_item_orphaned','1682695524');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (52,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (53,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (54,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (61,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (62,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (63,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (64,27,'_menu_item_orphaned','1682695524');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (69,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (70,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (71,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (72,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (73,28,'_menu_item_orphaned','1682695524');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (79,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (80,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (81,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (88,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (89,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (90,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (98,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (105,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (106,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (107,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (108,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (110,33,'_edit_lock','1684483291:1');
INSERT INTO `wp_postmeta` VALUES (111,35,'_edit_lock','1682750366:1');
INSERT INTO `wp_postmeta` VALUES (112,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (113,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (114,38,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (115,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (116,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (117,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (119,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (120,38,'_menu_item_orphaned','1682830509');
INSERT INTO `wp_postmeta` VALUES (121,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (122,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (123,39,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (124,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (125,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (126,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (128,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,31,'_wp_old_date','2023-04-28');
INSERT INTO `wp_postmeta` VALUES (131,32,'_wp_old_date','2023-04-28');
INSERT INTO `wp_postmeta` VALUES (132,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,40,'_menu_item_object_id','35');
INSERT INTO `wp_postmeta` VALUES (135,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,23,'_wp_old_date','2023-04-28');
INSERT INTO `wp_postmeta` VALUES (142,26,'_wp_old_date','2023-04-28');
INSERT INTO `wp_postmeta` VALUES (143,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,41,'_edit_lock','1683443969:1');
INSERT INTO `wp_postmeta` VALUES (145,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,42,'_edit_lock','1683443996:1');
INSERT INTO `wp_postmeta` VALUES (148,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (149,44,'_edit_lock','1682919232:1');
INSERT INTO `wp_postmeta` VALUES (150,42,'event_date','20230514');
INSERT INTO `wp_postmeta` VALUES (151,42,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (152,41,'event_date','20230528');
INSERT INTO `wp_postmeta` VALUES (153,41,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (154,46,'_edit_lock','1683444133:1');
INSERT INTO `wp_postmeta` VALUES (155,46,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,46,'event_date','20220505');
INSERT INTO `wp_postmeta` VALUES (157,46,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (158,47,'_edit_lock','1682922315:1');
INSERT INTO `wp_postmeta` VALUES (159,49,'_edit_lock','1683443975:1');
INSERT INTO `wp_postmeta` VALUES (160,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,49,'event_date','20260529');
INSERT INTO `wp_postmeta` VALUES (162,49,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (163,50,'_edit_lock','1682923002:1');
INSERT INTO `wp_postmeta` VALUES (164,50,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,50,'event_date','20170503');
INSERT INTO `wp_postmeta` VALUES (166,50,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (167,51,'_edit_lock','1683443977:1');
INSERT INTO `wp_postmeta` VALUES (168,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (169,51,'event_date','20100522');
INSERT INTO `wp_postmeta` VALUES (170,51,'_event_date','field_644f4f541a12f');
INSERT INTO `wp_postmeta` VALUES (171,52,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (172,52,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,52,'_menu_item_object_id','-25');
INSERT INTO `wp_postmeta` VALUES (174,52,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (175,52,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,52,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,52,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,52,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (180,23,'_wp_old_date','2023-04-30');
INSERT INTO `wp_postmeta` VALUES (181,26,'_wp_old_date','2023-04-30');
INSERT INTO `wp_postmeta` VALUES (182,40,'_wp_old_date','2023-04-30');
INSERT INTO `wp_postmeta` VALUES (183,53,'_edit_lock','1683443935:1');
INSERT INTO `wp_postmeta` VALUES (184,54,'_edit_lock','1683471609:1');
INSERT INTO `wp_postmeta` VALUES (185,55,'_edit_lock','1683443589:1');
INSERT INTO `wp_postmeta` VALUES (186,56,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,56,'_edit_lock','1682929911:1');
INSERT INTO `wp_postmeta` VALUES (188,42,'related_programs','a:2:{i:0;s:2:\"54\";i:1;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (189,42,'_related_programs','field_644f65f48672e');
INSERT INTO `wp_postmeta` VALUES (190,58,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (191,58,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (192,58,'_menu_item_object_id','-36');
INSERT INTO `wp_postmeta` VALUES (193,58,'_menu_item_object','program');
INSERT INTO `wp_postmeta` VALUES (194,58,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (195,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (196,58,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (197,58,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (200,60,'_edit_lock','1682930772:1');
INSERT INTO `wp_postmeta` VALUES (201,61,'_edit_lock','1683620440:1');
INSERT INTO `wp_postmeta` VALUES (202,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (203,61,'related_programs','a:2:{i:0;s:2:\"54\";i:1;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (204,61,'_related_programs','field_644f65f48672e');
INSERT INTO `wp_postmeta` VALUES (205,62,'_wp_attached_file','2023/05/pathetic.png');
INSERT INTO `wp_postmeta` VALUES (206,62,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:562;s:6:\"height\";i:777;s:4:\"file\";s:20:\"2023/05/pathetic.png\";s:8:\"filesize\";i:523785;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"pathetic-217x300.png\";s:5:\"width\";i:217;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:73451;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"pathetic-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30936;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"pathetic-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:83507;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"pathetic-480x650.png\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:260729;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (207,61,'_thumbnail_id','62');
INSERT INTO `wp_postmeta` VALUES (210,60,'_thumbnail_id','64');
INSERT INTO `wp_postmeta` VALUES (211,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (212,60,'related_programs','a:1:{i:0;s:2:\"55\";}');
INSERT INTO `wp_postmeta` VALUES (213,60,'_related_programs','field_644f65f48672e');
INSERT INTO `wp_postmeta` VALUES (214,64,'_wp_attached_file','2023/05/aaa.png');
INSERT INTO `wp_postmeta` VALUES (215,64,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1005;s:6:\"height\";i:706;s:4:\"file\";s:15:\"2023/05/aaa.png\";s:8:\"filesize\";i:1567457;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"aaa-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:124895;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"aaa-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49341;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:15:\"aaa-768x540.png\";s:5:\"width\";i:768;s:6:\"height\";i:540;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:649441;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:15:\"aaa-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:193602;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:15:\"aaa-480x650.png\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:474915;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (216,62,'_edit_lock','1682998397:1');
INSERT INTO `wp_postmeta` VALUES (217,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,65,'_edit_lock','1682998501:1');
INSERT INTO `wp_postmeta` VALUES (219,68,'_wp_attached_file','2023/05/cool4.png');
INSERT INTO `wp_postmeta` VALUES (220,68,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1198;s:6:\"height\";i:644;s:4:\"file\";s:17:\"2023/05/cool4.png\";s:8:\"filesize\";i:558532;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"cool4-300x161.png\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32087;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"cool4-1024x550.png\";s:5:\"width\";i:1024;s:6:\"height\";i:550;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:232303;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"cool4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23705;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"cool4-768x413.png\";s:5:\"width\";i:768;s:6:\"height\";i:413;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:146346;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"cool4-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:65960;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"cool4-480x644.png\";s:5:\"width\";i:480;s:6:\"height\";i:644;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:213845;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"cool4-1198x250.png\";s:5:\"width\";i:1198;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:143657;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (221,68,'_edit_lock','1682998732:1');
INSERT INTO `wp_postmeta` VALUES (222,61,'page_banner_subtitle','The leading voice on barking and biology.');
INSERT INTO `wp_postmeta` VALUES (223,61,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (224,61,'page_banner_background_image','68');
INSERT INTO `wp_postmeta` VALUES (225,61,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (226,69,'_wp_attached_file','2023/05/IMG_5070.jpg');
INSERT INTO `wp_postmeta` VALUES (227,69,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:20:\"2023/05/IMG_5070.jpg\";s:8:\"filesize\";i:593339;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"IMG_5070-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15665;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"IMG_5070-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:111195;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"IMG_5070-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7605;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"IMG_5070-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69189;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"IMG_5070-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:217679;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"IMG_5070-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:372100;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"IMG_5070-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24050;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"IMG_5070-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61566;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"IMG_5070-1500x250.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51739;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1658174994\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_5070.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (228,69,'_edit_lock','1682999484:1');
INSERT INTO `wp_postmeta` VALUES (229,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (230,5,'page_banner_subtitle','Hello World');
INSERT INTO `wp_postmeta` VALUES (231,5,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (232,5,'page_banner_background_image','69');
INSERT INTO `wp_postmeta` VALUES (233,5,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (234,70,'page_banner_subtitle','Hello World');
INSERT INTO `wp_postmeta` VALUES (235,70,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (236,70,'page_banner_background_image','69');
INSERT INTO `wp_postmeta` VALUES (237,70,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (238,1,'_edit_lock','1684490239:1');
INSERT INTO `wp_postmeta` VALUES (239,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,72,'_edit_lock','1683443605:1');
INSERT INTO `wp_postmeta` VALUES (241,54,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (242,54,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tellus augue, commodo eget ornare varius, eleifend eget quam. Nullam a rhoncus velit. Aliquam accumsan elementum lorem. Sed id nisl pulvinar, finibus augue vitae, ornare ipsum. Sed blandit, ante non sagittis feugiat, libero neque rutrum felis, nec malesuada nunc leo ac lorem. Nulla vitae tellus viverra, pharetra est sed, sodales enim. Aenean sodales, elit nec blandit euismod, nulla nisl porttitor elit, eu ultrices ante tellus eget lorem.');
INSERT INTO `wp_postmeta` VALUES (243,54,'_main_body_content','field_64574ef278623');
INSERT INTO `wp_postmeta` VALUES (244,54,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (245,54,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (246,54,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (247,54,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (248,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,55,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tellus augue, commodo eget ornare varius, eleifend eget quam. Nullam a rhoncus velit. Aliquam accumsan elementum lorem. Sed id nisl pulvinar, finibus augue vitae, ornare ipsum. Sed blandit, ante non sagittis feugiat, libero neque rutrum felis, nec malesuada nunc leo ac lorem. Nulla vitae tellus viverra, pharetra est sed, sodales enim. Aenean sodales, elit nec blandit euismod, nulla nisl porttitor elit, eu ultrices ante tellus eget lorem.');
INSERT INTO `wp_postmeta` VALUES (250,55,'_main_body_content','field_64574ef278623');
INSERT INTO `wp_postmeta` VALUES (251,55,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (252,55,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (253,55,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (254,55,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (255,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (256,53,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tellus augue, commodo eget ornare varius, eleifend eget quam. Nullam a rhoncus velit. Aliquam accumsan elementum lorem. Sed id nisl pulvinar, finibus augue vitae, ornare ipsum. Sed blandit, ante non sagittis feugiat, libero neque rutrum felis, nec malesuada nunc leo ac lorem. Nulla vitae tellus viverra, pharetra est sed, sodales enim. Aenean sodales, elit nec blandit euismod, nulla nisl porttitor elit, eu ultrices ante tellus eget lorem.');
INSERT INTO `wp_postmeta` VALUES (257,53,'_main_body_content','field_64574ef278623');
INSERT INTO `wp_postmeta` VALUES (258,53,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (259,53,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (260,53,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (261,53,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (262,46,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (263,46,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (264,46,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (265,46,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (266,46,'related_programs','a:3:{i:0;s:2:\"54\";i:1;s:2:\"55\";i:2;s:2:\"53\";}');
INSERT INTO `wp_postmeta` VALUES (267,46,'_related_programs','field_644f65f48672e');
INSERT INTO `wp_postmeta` VALUES (268,74,'_edit_lock','1683445065:1');
INSERT INTO `wp_postmeta` VALUES (269,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (270,74,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (271,74,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (272,74,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (273,74,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (274,75,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (275,75,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (276,75,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (277,75,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (278,76,'_wp_trash_meta_status','auto-draft');
INSERT INTO `wp_postmeta` VALUES (279,76,'_wp_trash_meta_time','1683531118');
INSERT INTO `wp_postmeta` VALUES (280,76,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (281,78,'_edit_lock','1683533582:1');
INSERT INTO `wp_postmeta` VALUES (282,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (283,78,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (284,78,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (285,78,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (286,78,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (287,79,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (288,79,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (289,79,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (290,79,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (291,80,'_edit_lock','1683536191:1');
INSERT INTO `wp_postmeta` VALUES (292,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (293,80,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (294,80,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (295,80,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (296,80,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (297,81,'_edit_lock','1683541438:1');
INSERT INTO `wp_postmeta` VALUES (298,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (299,81,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (300,81,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (301,81,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (302,81,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (318,82,'_edit_lock','1683633770:1');
INSERT INTO `wp_postmeta` VALUES (319,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (352,90,'liked_professor_id','61');
INSERT INTO `wp_postmeta` VALUES (353,90,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (354,90,'_wp_trash_meta_time','1683704483');
INSERT INTO `wp_postmeta` VALUES (355,90,'_wp_desired_post_slug','2nd-php-test');
INSERT INTO `wp_postmeta` VALUES (356,91,'liked_professor_id','61');
INSERT INTO `wp_postmeta` VALUES (357,91,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (358,91,'_wp_trash_meta_time','1683704877');
INSERT INTO `wp_postmeta` VALUES (359,91,'_wp_desired_post_slug','2nd-php-test');
INSERT INTO `wp_postmeta` VALUES (360,92,'liked_professor_id','61');
INSERT INTO `wp_postmeta` VALUES (363,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (366,1,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (367,1,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (368,1,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (369,1,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (370,94,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (371,94,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (372,94,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (373,94,'_page_banner_background_image','field_64508536ae78a');
INSERT INTO `wp_postmeta` VALUES (374,1,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (375,1,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (376,95,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (377,95,'_page_banner_subtitle','field_64508525ae789');
INSERT INTO `wp_postmeta` VALUES (378,95,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (379,95,'_page_banner_background_image','field_64508536ae78a');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-04-23 04:30:09','2023-04-23 04:30:09','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lobortis cursus odio, non cursus risus feugiat a. Etiam elit nisi, imperdiet ac finibus non, volutpat et quam. Etiam condimentum ullamcorper eleifend. Nunc ut diam id libero pretium laoreet sit amet eu risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus suscipit ac lectus sit amet blandit. Phasellus et lectus non lacus placerat lobortis quis at erat. Vestibulum sed laoreet metus, nec molestie nunc. In at felis nisi. Duis aliquam augue ac arcu tempus, ac sodales ex dignissim. Pellentesque vestibulum felis eu sem dictum, non malesuada eros gravida. Donec lorem purus, imperdiet ullamcorper pulvinar id, blandit in lacus. Vestibulum gravida dui non ante scelerisque, vel rutrum risus congue. Quisque at eros mauris. Etiam mattis auctor justo, in eleifend arcu rhoncus non. Quisque tristique euismod sapien, at gravida turpis ultricies ac.</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-05-19 09:31:29','2023-05-19 09:31:29','',0,'http://tutorial-college.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-04-23 04:30:09','2023-04-23 04:30:09','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tutorial-college.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-04-23 04:30:09','2023-04-23 04:30:09','',0,'http://tutorial-college.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-04-23 04:30:09','2023-04-23 04:30:09','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tutorial-college.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-04-23 04:30:09','2023-04-23 04:30:09','',0,'http://tutorial-college.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-04-26 03:39:42','2023-04-26 03:39:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','About us','','publish','closed','closed','','about-us','','','2023-05-02 03:52:52','2023-05-02 03:52:52','',0,'http://tutorial-college.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-04-26 03:39:42','2023-04-26 03:39:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','5-revision-v1','','','2023-04-26 03:39:42','2023-04-26 03:39:42','',5,'http://tutorial-college.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-04-26 03:40:00','2023-04-26 03:40:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','closed','','privacy-policy-2','','','2023-04-26 03:40:00','2023-04-26 03:40:00','',0,'http://tutorial-college.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-04-26 03:40:00','2023-04-26 03:40:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','7-revision-v1','','','2023-04-26 03:40:00','2023-04-26 03:40:00','',7,'http://tutorial-college.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-04-26 04:00:25','2023-04-26 04:00:25','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2023-04-28 11:05:12','2023-04-28 11:05:12','',5,'http://tutorial-college.local/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-04-26 04:00:25','2023-04-26 04:00:25','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','10-revision-v1','','','2023-04-26 04:00:25','2023-04-26 04:00:25','',10,'http://tutorial-college.local/?p=11',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2023-04-28 10:59:40','2023-04-28 10:59:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Our goals','','publish','closed','closed','','our-goals','','','2023-04-28 10:59:40','2023-04-28 10:59:40','',5,'http://tutorial-college.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-04-28 10:59:40','2023-04-28 10:59:40','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Our goals','','inherit','closed','closed','','13-revision-v1','','','2023-04-28 10:59:40','2023-04-28 10:59:40','',13,'http://tutorial-college.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-04-28 11:12:54','2023-04-28 11:12:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2023-04-28 11:19:13','2023-04-28 11:19:13','',7,'http://tutorial-college.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-04-28 11:12:54','2023-04-28 11:12:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 11:12:54','2023-04-28 11:12:54','',15,'http://tutorial-college.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-04-28 11:17:47','2023-04-28 11:17:47','','ff4e2b95814992795e698e9645890f9e','','inherit','open','closed','','ff4e2b95814992795e698e9645890f9e','','','2023-04-28 11:17:47','2023-04-28 11:17:47','',15,'http://tutorial-college.local/wp-content/uploads/2023/04/ff4e2b95814992795e698e9645890f9e.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-04-28 11:17:49','2023-04-28 11:17:49','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://tutorial-college.local/wp-content/uploads/2023/04/ff4e2b95814992795e698e9645890f9e-1024x1024.jpg\" alt=\"\" class=\"wp-image-17\"/></figure>\n<!-- /wp:image -->','Cookie Policy','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 11:17:49','2023-04-28 11:17:49','',15,'http://tutorial-college.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-04-28 11:18:08','2023-04-28 11:18:08','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"width\":438,\"height\":438,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://tutorial-college.local/wp-content/uploads/2023/04/ff4e2b95814992795e698e9645890f9e-1024x1024.jpg\" alt=\"\" class=\"wp-image-17\" width=\"438\" height=\"438\"/></figure>\n<!-- /wp:image -->','Cookie Policy','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 11:18:08','2023-04-28 11:18:08','',15,'http://tutorial-college.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-04-28 11:18:21','2023-04-28 11:18:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":17,\"width\":438,\"height\":438,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://tutorial-college.local/wp-content/uploads/2023/04/ff4e2b95814992795e698e9645890f9e-1024x1024.jpg\" alt=\"\" class=\"wp-image-17\" width=\"438\" height=\"438\"/></figure>\n<!-- /wp:image -->','Cookie Policy','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 11:18:21','2023-04-28 11:18:21','',15,'http://tutorial-college.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-04-28 11:19:13','2023-04-28 11:19:13','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','15-revision-v1','','','2023-04-28 11:19:13','2023-04-28 11:19:13','',15,'http://tutorial-college.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-04-28 15:25:24','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2023-04-28 15:25:24','0000-00-00 00:00:00','',0,'http://tutorial-college.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-05-01 07:40:01','2023-04-28 15:27:18',' ','','','publish','closed','closed','','23','','','2023-05-01 07:40:01','2023-05-01 07:40:01','',0,'http://tutorial-college.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-04-28 15:25:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-04-28 15:25:24','0000-00-00 00:00:00','',5,'http://tutorial-college.local/?p=24',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-04-28 15:25:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-04-28 15:25:24','0000-00-00 00:00:00','',5,'http://tutorial-college.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-05-01 07:40:01','2023-04-28 15:27:18',' ','','','publish','closed','closed','','26','','','2023-05-01 07:40:01','2023-05-01 07:40:01','',0,'http://tutorial-college.local/?p=26',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2023-04-28 15:25:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-04-28 15:25:24','0000-00-00 00:00:00','',7,'http://tutorial-college.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2023-04-28 15:25:24','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-04-28 15:25:24','0000-00-00 00:00:00','',0,'http://tutorial-college.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2023-04-28 16:22:33','2023-04-28 16:22:33',' ','','','publish','closed','closed','','29','','','2023-04-28 16:22:33','2023-04-28 16:22:33','',7,'http://tutorial-college.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-04-28 16:22:33','2023-04-28 16:22:33',' ','','','publish','closed','closed','','30','','','2023-04-28 16:22:33','2023-04-28 16:22:33','',0,'http://tutorial-college.local/?p=30',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2023-04-30 04:55:23','2023-04-28 16:23:13','','google','','publish','closed','closed','','google','','','2023-04-30 04:55:23','2023-04-30 04:55:23','',0,'http://tutorial-college.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2023-04-30 04:55:23','2023-04-28 16:23:13',' ','','','publish','closed','closed','','32','','','2023-04-30 04:55:23','2023-04-30 04:55:23','',0,'http://tutorial-college.local/?p=32',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2023-04-29 06:41:21','2023-04-29 06:41:21','','Home','','publish','closed','closed','','home','','','2023-04-29 06:41:21','2023-04-29 06:41:21','',0,'http://tutorial-college.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2023-04-29 06:41:21','2023-04-29 06:41:21','','Home','','inherit','closed','closed','','33-revision-v1','','','2023-04-29 06:41:21','2023-04-29 06:41:21','',33,'http://tutorial-college.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2023-04-29 06:41:47','2023-04-29 06:41:47','','Blog','','publish','closed','closed','','blog','','','2023-04-29 06:41:47','2023-04-29 06:41:47','',0,'http://tutorial-college.local/?page_id=35',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2023-04-29 06:41:47','2023-04-29 06:41:47','','Blog','','inherit','closed','closed','','35-revision-v1','','','2023-04-29 06:41:47','2023-04-29 06:41:47','',35,'http://tutorial-college.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2023-04-30 04:55:09','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2023-04-30 04:55:09','0000-00-00 00:00:00','',0,'http://tutorial-college.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2023-04-30 04:55:23','2023-04-30 04:55:23',' ','','','publish','closed','closed','','39','','','2023-04-30 04:55:23','2023-04-30 04:55:23','',0,'http://tutorial-college.local/?p=39',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2023-05-01 07:40:01','2023-04-30 04:55:49',' ','','','publish','closed','closed','','40','','','2023-05-01 07:40:01','2023-05-01 07:40:01','',0,'http://tutorial-college.local/?p=40',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2023-04-30 05:05:27','2023-04-30 05:05:27','<hr>\n\n<div id=\"Content\">\n<div class=\"boxed\">\n<div id=\"lipsum\">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non scelerisque nunc. Aenean nibh mi, euismod non suscipit at, ornare vitae ipsum. Ut eget arcu augue. Sed vel pretium mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi auctor fermentum tellus, sit amet porta dui pellentesque ac. Etiam auctor venenatis turpis, a hendrerit lorem accumsan non. Donec laoreet in velit ut rutrum. Aenean eget hendrerit ligula, non imperdiet est. Maecenas interdum sapien a justo porttitor, in semper metus volutpat. Praesent convallis tellus quis congue lobortis. Aenean sed dui ac ex consectetur euismod eu vitae eros. Cras pulvinar accumsan augue, nec gravida justo pretium et. Phasellus libero nibh, auctor a ex ac, interdum interdum nunc.\n\n</div>\n</div>\n</div>','math Meetup','','publish','closed','closed','','math-meetup','','','2023-05-01 05:43:57','2023-05-01 05:43:57','',0,'http://tutorial-college.local/?post_type=event&#038;p=41',0,'event','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2023-04-30 05:05:34','2023-04-30 05:05:34','<hr>\n\n<div id=\"Content\">\n<div class=\"boxed\">\n<div id=\"lipsum\">\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non scelerisque nunc. Aenean nibh mi, euismod non suscipit at, ornare vitae ipsum. Ut eget arcu augue. Sed vel pretium mi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi auctor fermentum tellus, sit amet porta dui pellentesque ac. Etiam auctor venenatis turpis, a hendrerit lorem accumsan non. Donec laoreet in velit ut rutrum. Aenean eget hendrerit ligula, non imperdiet est. Maecenas interdum sapien a justo porttitor, in semper metus volutpat. Praesent convallis tellus quis congue lobortis. Aenean sed dui ac ex consectetur euismod eu vitae eros. Cras pulvinar accumsan augue, nec gravida justo pretium et. Phasellus libero nibh, auctor a ex ac, interdum interdum nunc.\n\n</div>\n</div>\n</div>','Cat meet up','','publish','closed','closed','','cat-meet-up','','','2023-05-01 07:12:39','2023-05-01 07:12:39','',0,'http://tutorial-college.local/?post_type=event&#038;p=42',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2023-05-01 05:35:41','2023-05-01 05:35:41','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_644f4f53b9e99','','','2023-05-01 05:36:11','2023-05-01 05:36:11','',0,'http://tutorial-college.local/?post_type=acf-field-group&#038;p=44',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2023-05-01 05:35:41','2023-05-01 05:35:41','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_644f4f541a12f','','','2023-05-01 05:35:41','2023-05-01 05:35:41','',44,'http://tutorial-college.local/?post_type=acf-field&p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2023-05-01 05:54:43','2023-05-01 05:54:43','<!-- wp:paragraph -->\n<p>In the past</p>\n<!-- /wp:paragraph -->','In the past','','publish','closed','closed','','in-the-past','','','2023-05-07 07:22:13','2023-05-07 07:22:13','',0,'http://tutorial-college.local/?post_type=event&#038;p=46',0,'event','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2023-05-01 06:27:38','2023-05-01 06:27:38','','Past Events','','publish','closed','closed','','past-events','','','2023-05-01 06:27:38','2023-05-01 06:27:38','',0,'http://tutorial-college.local/?page_id=47',0,'page','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2023-05-01 06:27:38','2023-05-01 06:27:38','','Past Events','','inherit','closed','closed','','47-revision-v1','','','2023-05-01 06:27:38','2023-05-01 06:27:38','',47,'http://tutorial-college.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2023-05-01 06:32:04','2023-05-01 06:32:04','<!-- wp:paragraph -->\n<p>FUTER EVENT</p>\n<!-- /wp:paragraph -->','FUTURE EVENT','','publish','closed','closed','','future-event','','','2023-05-01 06:32:04','2023-05-01 06:32:04','',0,'http://tutorial-college.local/?post_type=event&#038;p=49',0,'event','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2023-05-01 06:32:19','2023-05-01 06:32:19','<!-- wp:paragraph -->\n<p>more past eventsmore past eventsmore past eventsmore past eventsmore past eventsmore past events</p>\n<!-- /wp:paragraph -->','more past events','','publish','closed','closed','','more-past-events','','','2023-05-01 06:32:19','2023-05-01 06:32:19','',0,'http://tutorial-college.local/?post_type=event&#038;p=50',0,'event','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2023-05-01 06:37:14','2023-05-01 06:37:14','<!-- wp:paragraph -->\n<p>another past eventanother past eventanother past eventanother past eventanother past eventanother past event</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','another past event','','publish','closed','closed','','another-past-event','','','2023-05-01 06:49:47','2023-05-01 06:49:47','',0,'http://tutorial-college.local/?post_type=event&#038;p=51',0,'event','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2023-05-01 07:40:01','2023-05-01 06:45:33','','Events','','publish','closed','closed','','52','','','2023-05-01 07:40:01','2023-05-01 07:40:01','',0,'http://tutorial-college.local/?p=52',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-05-01 06:49:53','2023-05-01 06:49:53','','Math','','publish','closed','closed','','math','','','2023-05-07 07:13:16','2023-05-07 07:13:16','',0,'http://tutorial-college.local/?post_type=program&#038;p=53',0,'program','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-05-01 06:50:10','2023-05-01 06:50:10','','Biology','','publish','closed','closed','','biology','','','2023-05-07 07:13:01','2023-05-07 07:13:01','',0,'http://tutorial-college.local/?post_type=program&#038;p=54',0,'program','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-05-01 06:50:18','2023-05-01 06:50:18','','English','','publish','closed','closed','','english','','','2023-05-07 07:13:08','2023-05-07 07:13:08','',0,'http://tutorial-college.local/?post_type=program&#038;p=55',0,'program','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2023-05-01 07:12:02','2023-05-01 07:12:02','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_644f65f3d2742','','','2023-05-01 08:09:15','2023-05-01 08:09:15','',0,'http://tutorial-college.local/?post_type=acf-field-group&#038;p=56',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-05-01 07:12:02','2023-05-01 07:12:02','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Program(s)','related_programs','publish','closed','closed','','field_644f65f48672e','','','2023-05-01 07:12:02','2023-05-01 07:12:02','',56,'http://tutorial-college.local/?post_type=acf-field&p=57',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-05-01 07:40:01','2023-05-01 07:40:01','','Programs','','publish','closed','closed','','programs','','','2023-05-01 07:40:01','2023-05-01 07:40:01','',0,'http://tutorial-college.local/?p=58',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-05-01 08:05:33','2023-05-01 08:05:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam finibus ac justo et mollis. Donec faucibus libero odio. Pellentesque aliquam purus non porta fringilla. In vel quam viverra, aliquam metus quis, faucibus metus. Nulla vitae turpis neque. Maecenas eget placerat felis. Proin elementum metus non sem venenatis pulvinar. Nulla varius nisl vitae mauris accumsan sodales.</p>\n<!-- /wp:paragraph -->','Dr Meow','','publish','closed','closed','','dr-meow','','','2023-05-01 08:36:24','2023-05-01 08:36:24','',0,'http://tutorial-college.local/?post_type=professor&#038;p=60',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-05-01 08:05:53','2023-05-01 08:05:53','<!-- wp:paragraph -->\n<p>Sed non euismod turpis. Donec tincidunt, metus vel blandit rhoncus, erat lectus iaculis odio, id placerat risus urna in elit. Proin rutrum orci at justo lobortis cursus. Nam a nisi sem. Cras orci ligula, dictum sed velit id, ultricies imperdiet metus. Aliquam erat volutpat. Nullam molestie sed odio sed aliquam. Duis congue vestibulum ultricies. Donec congue eleifend sem, sit amet luctus turpis semper id. Maecenas fermentum libero vel leo vehicula imperdiet. Nullam quis nunc et enim semper posuere. Praesent maximus tortor vitae ipsum vulputate, eget consectetur eros consectetur. Vestibulum rutrum ante vitae ullamcorper auctor. Phasellus nisi velit, consectetur efficitur tortor vitae, volutpat ultrices ipsum. Nulla facilisi.</p>\n<!-- /wp:paragraph -->','Dr Bark','','publish','closed','closed','','dr-bark','','','2023-05-07 06:28:57','2023-05-07 06:28:57','',0,'http://tutorial-college.local/?post_type=professor&#038;p=61',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-05-01 08:21:23','2023-05-01 08:21:23','','pathetic','','inherit','open','closed','','pathetic','','','2023-05-01 08:21:23','2023-05-01 08:21:23','',61,'http://tutorial-college.local/wp-content/uploads/2023/05/pathetic.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-05-01 08:36:18','2023-05-01 08:36:18','','aaa','','inherit','open','closed','','aaa','','','2023-05-01 08:36:18','2023-05-01 08:36:18','',60,'http://tutorial-college.local/wp-content/uploads/2023/05/aaa.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-05-02 03:37:22','2023-05-02 03:37:22','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_64508524edfed','','','2023-05-02 03:37:22','2023-05-02 03:37:22','',0,'http://tutorial-college.local/?post_type=acf-field-group&#038;p=65',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-05-02 03:37:22','2023-05-02 03:37:22','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_64508525ae789','','','2023-05-02 03:37:22','2023-05-02 03:37:22','',65,'http://tutorial-college.local/?post_type=acf-field&p=66',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-05-02 03:37:22','2023-05-02 03:37:22','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_64508536ae78a','','','2023-05-02 03:37:22','2023-05-02 03:37:22','',65,'http://tutorial-college.local/?post_type=acf-field&p=67',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-05-02 03:38:52','2023-05-02 03:38:52','','cool4','','inherit','open','closed','','cool4','','','2023-05-02 03:38:52','2023-05-02 03:38:52','',61,'http://tutorial-college.local/wp-content/uploads/2023/05/cool4.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-05-02 03:51:16','2023-05-02 03:51:16','','IMG_5070','','inherit','open','closed','','img_5070','','','2023-05-02 03:51:16','2023-05-02 03:51:16','',5,'http://tutorial-college.local/wp-content/uploads/2023/05/IMG_5070.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-05-02 03:52:52','2023-05-02 03:52:52','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis id dolor in bibendum. Maecenas gravida nulla vel leo dignissim suscipit. Aliquam erat volutpat. Suspendisse dictum tortor ligula, quis dignissim sapien ultrices elementum. Nulla dignissim mi eu leo hendrerit hendrerit. Curabitur finibus ultricies turpis non mattis. Sed condimentum elit vehicula justo consequat lacinia. Morbi vestibulum, lorem convallis ornare varius, ex quam gravida massa, in porttitor purus diam in neque. Curabitur at dolor nec mi hendrerit pellentesque vitae non odio. Nulla facilisi. Proin quis purus viverra, cursus velit in, faucibus nunc.</p>\n<!-- /wp:paragraph -->','About us','','inherit','closed','closed','','5-revision-v1','','','2023-05-02 03:52:52','2023-05-02 03:52:52','',5,'http://tutorial-college.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-05-07 07:11:40','2023-05-07 07:11:40','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Body Content','main-body-content','publish','closed','closed','','group_64574ef1cc0d1','','','2023-05-07 07:15:48','2023-05-07 07:15:48','',0,'http://tutorial-college.local/?post_type=acf-field-group&#038;p=72',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-05-07 07:11:40','2023-05-07 07:11:40','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_64574ef278623','','','2023-05-07 07:11:40','2023-05-07 07:11:40','',72,'http://tutorial-college.local/?post_type=acf-field&p=73',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-05-07 07:37:44','2023-05-07 07:37:44','','Search','','publish','closed','closed','','search','','','2023-05-07 07:37:45','2023-05-07 07:37:45','',0,'http://tutorial-college.local/?page_id=74',0,'page','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-05-07 07:37:44','2023-05-07 07:37:44','','Search','','inherit','closed','closed','','74-revision-v1','','','2023-05-07 07:37:44','2023-05-07 07:37:44','',74,'http://tutorial-college.local/?p=75',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (76,2,'2023-05-08 07:31:58','2023-05-08 07:31:58','','Auto Draft','','trash','open','open','','__trashed','','','2023-05-08 07:31:58','2023-05-08 07:31:58','',0,'http://tutorial-college.local/?p=76',0,'post','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-05-08 07:31:58','2023-05-08 07:31:58','','Auto Draft','','inherit','closed','closed','','76-revision-v1','','','2023-05-08 07:31:58','2023-05-08 07:31:58','',76,'http://tutorial-college.local/?p=77',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-05-08 08:08:10','2023-05-08 08:08:10','','My Notes','','publish','closed','closed','','my-notes','','','2023-05-08 08:08:10','2023-05-08 08:08:10','',0,'http://tutorial-college.local/?page_id=78',0,'page','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-05-08 08:08:10','2023-05-08 08:08:10','','My Notes','','inherit','closed','closed','','78-revision-v1','','','2023-05-08 08:08:10','2023-05-08 08:08:10','',78,'http://tutorial-college.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-05-08 08:15:46','2023-05-08 08:15:46','<!-- wp:paragraph -->\n<p>Lorem ipsum yo</p>\n<!-- /wp:paragraph -->','Biology Lecture #','','publish','closed','closed','','biology-lecture','','','2023-05-08 08:56:31','2023-05-08 08:56:31','',0,'http://tutorial-college.local/?post_type=note&#038;p=80',0,'note','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-05-08 08:16:05','2023-05-08 08:16:05','Math was greate 1 + 1 = 2','Math Lecture #3','','publish','closed','closed','','math-lecture-1','','','2023-05-08 09:15:49','2023-05-08 09:15:49','',0,'http://tutorial-college.local/?post_type=note&#038;p=81',0,'note','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-05-09 08:15:42','2023-05-09 08:15:42','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"like\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Like Professor ID','like-professor-id','publish','closed','closed','','group_645a00f4222fc','','','2023-05-09 08:21:46','2023-05-09 08:21:46','',0,'http://tutorial-college.local/?post_type=acf-field-group&#038;p=82',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-05-09 08:15:42','2023-05-09 08:15:42','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Liked Professor ID','liked_professor_id','publish','closed','closed','','field_645a00f46133a','','','2023-05-09 08:21:46','2023-05-09 08:21:46','',82,'http://tutorial-college.local/?post_type=acf-field&#038;p=83',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2023-05-10 07:24:27','2023-05-10 07:24:27','','2nd PHP Test','','trash','closed','closed','','2nd-php-test__trashed','','','2023-05-10 07:41:23','2023-05-10 07:41:23','',0,'http://tutorial-college.local/like/2nd-php-test/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2023-05-10 07:47:30','2023-05-10 07:47:30','','2nd PHP Test','','trash','closed','closed','','2nd-php-test__trashed-2','','','2023-05-10 07:47:57','2023-05-10 07:47:57','',0,'http://tutorial-college.local/like/2nd-php-test/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2023-05-10 07:48:00','2023-05-10 07:48:00','','2nd PHP Test','','publish','closed','closed','','2nd-php-test','','','2023-05-10 07:48:00','2023-05-10 07:48:00','',0,'http://tutorial-college.local/like/2nd-php-test/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2023-05-19 06:44:41','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-05-19 06:44:41','0000-00-00 00:00:00','',0,'http://tutorial-college.local/?p=93',0,'post','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2023-05-19 08:10:57','2023-05-19 08:10:57','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-05-19 08:10:57','2023-05-19 08:10:57','',1,'http://tutorial-college.local/?p=94',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2023-05-19 09:31:28','2023-05-19 09:31:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lobortis cursus odio, non cursus risus feugiat a. Etiam elit nisi, imperdiet ac finibus non, volutpat et quam. Etiam condimentum ullamcorper eleifend. Nunc ut diam id libero pretium laoreet sit amet eu risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus suscipit ac lectus sit amet blandit. Phasellus et lectus non lacus placerat lobortis quis at erat. Vestibulum sed laoreet metus, nec molestie nunc. In at felis nisi. Duis aliquam augue ac arcu tempus, ac sodales ex dignissim. Pellentesque vestibulum felis eu sem dictum, non malesuada eros gravida. Donec lorem purus, imperdiet ullamcorper pulvinar id, blandit in lacus. Vestibulum gravida dui non ante scelerisque, vel rutrum risus congue. Quisque at eros mauris. Etiam mattis auctor justo, in eleifend arcu rhoncus non. Quisque tristique euismod sapien, at gravida turpis ultricies ac.</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2023-05-19 09:31:28','2023-05-19 09:31:28','',1,'http://tutorial-college.local/?p=95',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2023-05-19 09:55:19','2023-05-19 09:55:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lobortis cursus odio, non cursus risus feugiat a. Etiam elit nisi, imperdiet ac finibus non, volutpat et quam. Etiam condimentum ullamcorper eleifend. Nunc ut diam id libero pretium laoreet sit amet eu risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus suscipit ac lectus sit amet blandit. Phasellus et lectus non lacus placerat lobortis quis at erat. Vestibulum sed laoreet metus, nec molestie nunc. In at felis nisi. Duis aliquam augue ac arcu tempus, ac sodales ex dignissim. Pellentesque vestibulum felis eu sem dictum, non malesuada eros gravida. Donec lorem purus, imperdiet ullamcorper pulvinar id, blandit in lacus. Vestibulum gravida dui non ante scelerisque, vel rutrum risus congue. Quisque at eros mauris. Etiam mattis auctor justo, in eleifend arcu rhoncus non. Quisque tristique euismod sapien, at gravida turpis ultricies ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/are-you-paying-attention -->\n<h1 class=\"wp-block-ourplugin-are-you-paying-attention\">This is the frontend.</h1>\n<!-- /wp:ourplugin/are-you-paying-attention -->','Hello world!','','inherit','closed','closed','','1-autosave-v1','','','2023-05-19 09:55:19','2023-05-19 09:55:19','',1,'http://tutorial-college.local/?p=96',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,4,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (39,4,0);
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
INSERT INTO `wp_term_relationships` VALUES (52,2,0);
INSERT INTO `wp_term_relationships` VALUES (58,2,0);
INSERT INTO `wp_term_relationships` VALUES (76,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','Awaards',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Super Amazing Menu','super-amazing-menu',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Laup');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','Laup');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','Wing');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Testing hello world');
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
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"7c32708910b008b17049b6bb3ebcafaaa28afee58ffa605f1782e8e004b22763\";a:5:{s:10:\"expiration\";i:1684651480;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\";s:5:\"login\";i:1684478680;s:4:\"loco\";a:4:{s:1:\"c\";s:17:\"Loco_data_Session\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:7:\"success\";a:0:{}}s:1:\"t\";i:1684484735;}}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','93');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:12:\"post-excerpt\";i:3;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-05-01T08:21:50.640Z\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_user-settings-time','1682929282');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_program','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_program','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (47,3,'nickname','laupwing');
INSERT INTO `wp_usermeta` VALUES (48,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (49,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (50,3,'description','');
INSERT INTO `wp_usermeta` VALUES (51,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (52,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (53,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (54,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (55,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (56,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (57,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (58,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (59,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (60,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (62,1,'closedpostboxes_like','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (63,1,'metaboxhidden_like','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (64,1,'closedpostboxes_post','a:2:{i:0;s:23:\"acf-group_64508524edfed\";i:1;s:10:\"members-cp\";}');
INSERT INTO `wp_usermeta` VALUES (65,1,'metaboxhidden_post','a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'root','$P$B6l5fTT0IoaM0s7vMG5Z2nSkd.UpMN0','root','dev-email@wpengine.local','http://tutorial-college.local','2023-04-23 04:30:09','',0,'Laup');
INSERT INTO `wp_users` VALUES (3,'laupwing','$P$Bt0kvtEIyK62ugt70MvAGHeoxvuRA7/','laupwing','laupwing@gmail.com','','2023-05-08 07:49:43','',0,'laupwing');
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

-- Dump completed on 2023-05-20  9:19:07
