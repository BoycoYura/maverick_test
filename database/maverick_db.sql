-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2019 at 10:00 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maverick_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-05 17:39:26', '2019-09-05 14:39:26', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://maverick-test', 'yes'),
(2, 'home', 'http://maverick-test', 'yes'),
(3, 'blogname', 'Maverick Site', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'informator1994@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:118:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:26:\"index.php?post_type=events\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=events&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=events&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:39:\"index.php?events=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:33:\"index.php?events=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?events=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?events=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?events=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:51:\"event_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:46:\"event_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:27:\"event_type/([^/]+)/embed/?$\";s:43:\"index.php?event_type=$matches[1]&embed=true\";s:39:\"event_type/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?event_type=$matches[1]&paged=$matches[2]\";s:21:\"event_type/([^/]+)/?$\";s:32:\"index.php?event_type=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:\"font-awesome/font-awesome.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'test-maverick', 'yes'),
(41, 'stylesheet', 'test-maverick', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1568101168;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568126367;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568126368;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568126375;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1568126380;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:1:{s:22:\"AdI8aOPQuxcpXFarDygOXg\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BeTvf5m86VGGRMOcERYkXFnom3TOmP.\";s:10:\"created_at\";i:1568016899;}}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567694626;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1568095904;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568095906;s:7:\"checked\";a:4:{s:13:\"test-maverick\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_timeout_browser_471e4b86e3560c6feb474def098169b6', '1568299177', 'no'),
(128, '_site_transient_browser_471e4b86e3560c6feb474def098169b6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_4119c0564599b106df6b0bd2271e5fd0', '1568299178', 'no'),
(130, '_site_transient_php_check_4119c0564599b106df6b0bd2271e5fd0', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(147, 'theme_mods_test-maverick', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:16:\"header_textcolor\";s:5:\"blank\";s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}}', 'yes'),
(148, 'current_theme', 'test-maverick', 'yes'),
(149, 'theme_switched', '', 'yes'),
(150, 'theme_switched_via_customizer', '', 'yes'),
(151, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(156, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(164, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568095906;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:29:\"font-awesome/font-awesome.php\";s:10:\"4.0.0-rc13\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"font-awesome/font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/font-awesome\";s:4:\"slug\";s:12:\"font-awesome\";s:6:\"plugin\";s:29:\"font-awesome/font-awesome.php\";s:11:\"new_version\";s:10:\"4.0.0-rc13\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/font-awesome/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/font-awesome.4.0.0-rc13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-256x256.png?rev=1991998\";s:2:\"1x\";s:65:\"https://ps.w.org/font-awesome/assets/icon-128x128.png?rev=1991998\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/font-awesome/assets/banner-1544x500.png?rev=1991998\";s:2:\"1x\";s:67:\"https://ps.w.org/font-awesome/assets/banner-772x250.png?rev=1991993\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(165, 'font-awesome', 'a:5:{s:19:\"adminClientLoadSpec\";a:2:{s:4:\"name\";s:4:\"user\";s:13:\"clientVersion\";i:0;}s:6:\"usePro\";b:0;s:25:\"removeUnregisteredClients\";b:0;s:7:\"version\";s:6:\"5.10.2\";s:14:\"lockedLoadSpec\";a:4:{s:6:\"method\";s:7:\"webfont\";s:6:\"v4shim\";b:1;s:14:\"pseudoElements\";b:1;s:7:\"clients\";a:1:{s:4:\"user\";i:0;}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(166, '_transient_font-awesome-releases', 'a:30:{s:5:\"5.0.1\";a:5:{s:7:\"version\";s:5:\"5.0.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2017-12-08T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1278;s:4:\"free\";i:899;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-BRge2B8T+0rmvB/KszFfdQ0PDvPnhV2J80JMKrnq21Fq6tHeKFhSIrdoroXvk7eB\";s:11:\"js/solid.js\";s:71:\"sha384-kbPfTyGdGugnvSKEBJCd6+vYipOQ6a+2np5O4Ty3sW7tgI0MpwPyAh+QwUpMujV9\";s:13:\"js/regular.js\";s:71:\"sha384-hXqI+wajk6jJu2DXwf2oqBg6q5+HqXM5yz9smX94pDjiLzH81gAuVtjter66i1Ct\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tqpP2rDLsdWkeBrG3Jachyp0yzl/pmhnsdV88ySUFZATuziAnHWsHRSS97l5D9jn\";s:12:\"js/brands.js\";s:71:\"sha384-i3UPn8g8uJGiS6R/++68nHyfYAnr/lE/biTuWYbya2dONccicnZZPlAH6P8EWf28\";s:9:\"js/all.js\";s:71:\"sha384-2CD5KZ3lSO1FK9XJ2hsLsEPy5/TBISgKIk2NSEcS03GbEnWEfhzd0x6DBIkqgPN1\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-X1ZQAmDHBeo7eaAJwWMyyA3mva9mMK10CpRFvX8PejR0XIUjwvGDqr2TwJqwbH9S\";s:13:\"css/solid.css\";s:71:\"sha384-TQW9cJIp+U8M7mByg5ZKUQoIxj0ac36aOpNzqQ04HpwyrJivS38EQsKHO2rR5eit\";s:15:\"css/regular.css\";s:71:\"sha384-JZ2w5NHrKZS6hqVAVlhUO3eHPVzjDZqOpWBZZ6opcmMwVjN7uoagKSSftrq8F0pn\";s:19:\"css/fontawesome.css\";s:71:\"sha384-7mC9VNNEUg5vt0kVQGblkna/29L8CpTJ5fkpo0nlmTbfCoDXyuK/gPO3wx8bglOz\";s:14:\"css/brands.css\";s:71:\"sha384-JT52EiskN0hkvVxJA8d2wg8W/tLxrC02M4u5+YAezNnBlY/N2yy3X51pKC1QaPkw\";s:11:\"css/all.css\";s:71:\"sha384-VVoO3UHXsmXwXvf1kJx2jV3b1LbOfTqKL46DdeLG8z4pImkQ4GAP9GMy+MxHMDYG\";}}}s:5:\"5.0.2\";a:5:{s:7:\"version\";s:5:\"5.0.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2017-12-19T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1277;s:4:\"free\";i:904;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-0nloDHslShcnKvH94Zv8nb0zPlzTFCzfZGx9YxR2ngUWs9HXXHVx1PUQw0u9/7LE\";s:11:\"js/solid.js\";s:71:\"sha384-KDEuZV2OBU0Q264kBX2Idu9gYr5z/fQrtvUsKfuKGEDkDxV0GBVN/qi3QoLZPmbJ\";s:13:\"js/regular.js\";s:71:\"sha384-ihKlq3j4PocIYMPkNra+ieEVsLuFzj4rp1yjn3jq+La7r4G9kf9COpWfOI8SGapM\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CxMnuVDquTXcsJnW1rAfSm4uzGr12HENF1oe+JRZm4jcQDerJ6VeA1XLvAso396r\";s:12:\"js/brands.js\";s:71:\"sha384-V+scQ15NnQuKVajRBsSery7bV87d0xDAoCs4pB8ZcwW74+zzW5CkgRmIFOYw8kKX\";s:9:\"js/all.js\";s:71:\"sha384-xiGKJ+4CP2p2WkTifyjHDeZVAg1zBrnJV8LU33N7J+5BWp1biPcSpEJJY7hFiRLn\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-sV6Qj6KRPF7HrXfo5NK0evVt+YbNxUuGZU2udYKDAxwxPVTuEE6lofcZJhRMK4WT\";s:13:\"css/solid.css\";s:71:\"sha384-WEKepgUDOaHRK2/r+qA7W/Srd+36IIOmBm/+wm9aSz6acYC0LkyM9UJElLVNy95T\";s:15:\"css/regular.css\";s:71:\"sha384-GtLUznQ3nMgus15JP1pAE2UH9HAQi8gjQTNfIT+Gq6zFPeeq3y+Xtxt5HUBFF0YO\";s:19:\"css/fontawesome.css\";s:71:\"sha384-CTTGZltCsihOiEwOCbT7p1lhij8kYk6lapCladmNzxj4yXj/AKp6q3+CRoNN3UCG\";s:14:\"css/brands.css\";s:71:\"sha384-F8vNf2eNIHep58ofQztLhhWsZXaTzzfZRqFfWmh7Cup7LqrF0HCtB6UCAIIkZZYZ\";s:11:\"css/all.css\";s:71:\"sha384-bJB2Wn8ZuuMwYA12t6nmPqVTqT64ruKTAWqdxs/Oal3vexA7RPAo3FtVU5hIil2E\";}}}s:5:\"5.0.3\";a:5:{s:7:\"version\";s:5:\"5.0.3\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-08T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1276;s:4:\"free\";i:907;}s:3:\"sri\";a:2:{s:3:\"pro\";a:0:{}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-kysXtDCmCTYxM55rHL+9xPu6+Inoi3ZzZHvcxkXs+iPj5nymJKlauQdXyzubyD0b\";s:11:\"js/solid.js\";s:71:\"sha384-DX1/9hggbc1yKVl40n2dNF9OzLf9ZPwZm87WzIW+FinkgjSq18PXpUxOL4I0iS1+\";s:13:\"js/regular.js\";s:71:\"sha384-J0ggktpCvzBHSxd/a8EBQgQDIWBtASK5rhHMvGWuR/UyjuPgX0iCAcb3OlfhvlQz\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sBtO3o3oG61AtAKrg74kfk50JP0YHcRTwOXgTeUobbJJBgYiCcmtkh784fmHww23\";s:12:\"js/brands.js\";s:71:\"sha384-68dqWCRgViK/UsBTW5vGfntS6GdBDT5D4KWUBXTf6IkF2NFFD+X/0QNs0FZaIELt\";s:9:\"js/all.js\";s:71:\"sha384-4OPaVeLgwRHdGJplmRGxGcoGYwxBAdR8Qr9z/Av7blRYPlRIPtjTygdtpQlD1HHv\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-bnoXyQHIAXdkrtQTtvuajtPgmWqHQ8657dQ4vzySapygDMqzijBpEq96AwgX2u4N\";s:13:\"css/solid.css\";s:71:\"sha384-ioYc/tyAAvPTKdlEWH/BDO/Fn0RGAWisNzyfZNt74mHfA6UPN2tzjD6Nm4ieQfBR\";s:15:\"css/regular.css\";s:71:\"sha384-cDXlx+8npD3wa2ahyeSZvsi9VlRrMmJVIB1rpK7Ftyq4cppWM9d2mBhrlOqYBljt\";s:19:\"css/fontawesome.css\";s:71:\"sha384-l2oTZy4pLseT/J6oW0mwsjKPhjpTctOfU191uVonzezZiqw9PPcz4AMKsIAeyR4P\";s:14:\"css/brands.css\";s:71:\"sha384-J6h7hpR0mfr79Ck/ZfDrhN14FnkbkLbd+mm0yTw5spSpK08yOK/AB9IRR/Dcg8EJ\";s:11:\"css/all.css\";s:71:\"sha384-KFTzeUQSHjcfuC8qqdFm+laWVqpkucx/3uXo41hhKQzUEtbNnNSk8KEEBZ+2lEQy\";}}}s:5:\"5.0.4\";a:5:{s:7:\"version\";s:5:\"5.0.4\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1276;s:4:\"free\";i:907;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8XZ16R7aSGin4NRuv6gn5xfbsvad5H8LR41g48iduwkfZEqDgXlvUjkJKgxqZUiW\";s:11:\"js/solid.js\";s:71:\"sha384-WJDZ/GI6pz1VoELs6i44T3f00fguksrLXIx3LXHdlaAzmOvX/mTK5j+qzHJdKejC\";s:13:\"js/regular.js\";s:71:\"sha384-YzSStfq1m16y1v5M97ViNRpiQUCVpagVVOkqlmww8otyjFkY6EXT4dShlKNuxRDu\";s:11:\"js/light.js\";s:71:\"sha384-iXxa9ExuZ0Fi2N2VO/buuWuAgYIUXNtOaJiKLa40Bjt43KJpzJdhg2TBHyBVqCPh\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7L9/YJQEf9kLPc6sdtoVIsuBNxCVi4OmHPcszcY685IJIcB52hgYoL1OiwTawJS/\";s:12:\"js/brands.js\";s:71:\"sha384-/877azmwW/YhoBsPeM9dh61dNr5XGbuk24lyjPbFWyrPaZPyU2oxgOY6PE1OH4z4\";s:9:\"js/all.js\";s:71:\"sha384-vV0064GQjt+TcoZxVPm/f6vyAivSNofFvOHKLWxcDl784Dzm9W4BBpoTvUG4vi5a\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-rHay3RzsgCtbjvDmBLThu6ESXlU4Al5STjlHSpNygnbeyt04OP1uKZVXB2Zy16+T\";s:13:\"css/solid.css\";s:71:\"sha384-TlWtvBj4TXNlpJC5Qq4aHel0R/dywVcP/6eOFC0qptQ71WWSxJCvuTajjGb1duS9\";s:15:\"css/regular.css\";s:71:\"sha384-eyjlqgvgpHiWM0GoL4/hsTh22piTKmMTM+sfJYacddG2n9AEubqQB/w4CPJK1/1b\";s:13:\"css/light.css\";s:71:\"sha384-4FGoKudkcpRXgx5UNFa5TxzaHUhnvCGFDeZKncEn9KJx/l07kcid3VbpwajrvrFW\";s:19:\"css/fontawesome.css\";s:71:\"sha384-VFi8UvBDvM8muKO8ogMXi2j8vdJiu8hq1uxpX/NS8BsftBiJpheM5AuhFH1dvURx\";s:14:\"css/brands.css\";s:71:\"sha384-sFwP5Zsnp6I4zQxUMPHvv8Bk16eEzU0YhaNbMCftDHPKDD+BR8WdXAHKL4xpipII\";s:11:\"css/all.css\";s:71:\"sha384-1RxicL8bcQJWgpr/clvtGVG7DVFJvDX/DVsJsbjKhXtdo8r5WVZQqB9AHTNPr08A\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-yfrMPoFcXUzdvECrvYRYE7wlxouXxjRSge5x6BlPPOb38tW4n0e8EW79RGU7VY0R\";s:11:\"js/solid.js\";s:71:\"sha384-4KkAk2UXMS9Xl3FoAAN43VJxRZ/emjElCz60xUTegPOZlbPLZGylvor2v7wQ0JNb\";s:13:\"js/regular.js\";s:71:\"sha384-lwwoO5Gg19TptbILrLBjV28EVJ9RW3tD3cGyjCRn3OY9IuLua/YRlE47btZIXfMv\";s:17:\"js/fontawesome.js\";s:71:\"sha384-l7FyBM+wFIWpfmy8RYkWgEu/Me6Hrz98ijLu4nP3PkGbTtTCvtHB5ktI8hLEgEG3\";s:12:\"js/brands.js\";s:71:\"sha384-dl3ONr32uA3YqpqKWzhXLs5k1YbKOn3dwiMbEP1S/XQMa3LPRwvJrhW7+lomL/uc\";s:9:\"js/all.js\";s:71:\"sha384-nVi8MaibAtVMFZb4R1zHUW/DsTJpG/YwPknbGABVOgk5s6Vhopl6XQD/pTCG/DKB\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-MCR8qGTbdyK+hklwz1eKgGiAjT57F5HEJMs/uHRAwZ6GI5602TyGI89FyrbUwiIc\";s:13:\"css/solid.css\";s:71:\"sha384-g2aKxiZcFezoVOq4MsjaxuBbSxSlXD/NRQ5GaPLfvCtcTLgP3fYZKKAGxCM/wMfe\";s:15:\"css/regular.css\";s:71:\"sha384-nM5tBytXTc1HDZ/A3My2gNT2TxLk/M/5yFi0QrOxaZjBi7QpKUfA2QqT+fcSxSlg\";s:19:\"css/fontawesome.css\";s:71:\"sha384-xdTUmhbcetyLRVL4PAriRajOve+/5pjOiy5sJABnhXMcRMVc9HI9s2KmOCjjDK/P\";s:14:\"css/brands.css\";s:71:\"sha384-1beec9tTZuu+KrTudmvRnGpK81r78DKCAXdphCvdG+PR+n/WCczsYPqTBTvYsM7z\";s:11:\"css/all.css\";s:71:\"sha384-DmABxgPhJN5jlTwituIyzIUk6oqyzf3+XuP7q3VfcWA2unxgim7OSSZKKf0KSsnh\";}}}s:5:\"5.0.6\";a:5:{s:7:\"version\";s:5:\"5.0.6\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-01-25T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1387;s:4:\"free\";i:929;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-X9eLyweB0LOTEGCwMARo9+zibrXQYmBMSrhFk4ncpT/WYnPIcpTg0IgBFDgzuPwL\";s:11:\"js/solid.js\";s:71:\"sha384-R/e3QvpS9m8HcN9b9l6nNo678ekTXL31kFY/XtRHSjrihDX8A2DF8HaXhdlAtzMx\";s:13:\"js/regular.js\";s:71:\"sha384-M8TFIPAJNl8UIC8OP6GFcIE0SHkGN4zjwwjz+BBTz60XhNegOrZmjNtTQNKifmXX\";s:11:\"js/light.js\";s:71:\"sha384-jzS22FYPy68IBBet2IRM5aQDOXjg9X1g+drXIVonDtyqGFCtUA0YIdgHdvCCX/fD\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ln5PcCmuH8v+AF9nt+HkM2GfXjsn1CtVc0n+ciM8+oe3nwGyPCceDVva7bUjNfo0\";s:12:\"js/brands.js\";s:71:\"sha384-G12tjfNd/W8L4IrE5+f13LUbpzVowwhNDv+WNecvxjbaGN9bbSY7epBOqUlRqXnq\";s:9:\"js/all.js\";s:71:\"sha384-FrB6Se1Wkxlx66xA4rPuOoOolLyQt5B1uptDmtLJSIVRJDbNkmE3QOLipnMuAbUW\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BptPo+4C0N+fnMTnfw7ddW/zYUJhuNEe7edve8UrMbs+fCpfDJvJcC/lpa5Nvaky\";s:13:\"css/solid.css\";s:71:\"sha384-uBARwTxpZ7FB08kQlCOS/dUaN3TrGGcHthrXYIhZBpdq7YtUdVDM1sAUH9NIozMl\";s:15:\"css/regular.css\";s:71:\"sha384-CydLcYoDSbudHX/6hygyQD4jBMPsv91d/RwdtH1qxI79KG8kII/OzxKDwsswywA4\";s:13:\"css/light.css\";s:71:\"sha384-YWWfxaKIDrbFXuVQnpxASJDHmFl2K5f2vDgrcROb+rYycoqcQVdMlfu3U38boTg/\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sATKZbJwxaEIU3unIoL1VMbIyrNNh7PlgnaiWlicWXeRA7qdnzfFzMP9AaN2wfTU\";s:14:\"css/brands.css\";s:71:\"sha384-Ks7IvHjmJ4FIFxhK4iNrtW0rAVo1DlCYpe/nDsK8CnU+yactd38YiNE1GT018WPg\";s:11:\"css/all.css\";s:71:\"sha384-ldFHeX3xCFvM4uf7m0mCMIoCPVwM71jopwqLZRldf+ojynoGVSxDiphfScLukkwO\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-L8zntmMOcCbOxXiL5Rjn6ubB7KunZiQ8U3bb9x6FFTGDEvVEESW9n+x49jm34K3W\";s:11:\"js/solid.js\";s:71:\"sha384-U0ZJ7q5xbT8hEoRqj61HzpvsqNOQ8bsHY2VqSRPqGOzjHXmmV70Aw+DBC/PT00p4\";s:13:\"js/regular.js\";s:71:\"sha384-G375DXNEVfALvsggywPWDYrRxNOvXaCYt/kiq/GXmbaDW8/B0XtbC8iuLpXXm1jF\";s:17:\"js/fontawesome.js\";s:71:\"sha384-rttr/ldR2uHigckjTCjMDe47ySeFVaL3Q7xUkJZir56u8Z8h/XnHJXHocgyfb25F\";s:12:\"js/brands.js\";s:71:\"sha384-4iSpDug9fizYiQRPpPafdAh5NaF8yzNMjOvu3veWgaFm0iIo8y4vUi7f3Yyz5WP1\";s:9:\"js/all.js\";s:71:\"sha384-0AJY8UERsBUKdWcyF3o2kisLKeIo6G4Tbd8Y6fbyw6qYmn4WBuqcvxokp8m2UzSD\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-U2b24h7gWqOYespg+vI5yiIn4ZYlTevT0N96xkGrw7ktP1gg9XwqEslsdTLJdlGg\";s:13:\"css/solid.css\";s:71:\"sha384-GfC9nfESTZkjCPFbevBVig3FTd6wkjRRYMtj+qFgK8mMBvGIje2rrALgiBy6pwRL\";s:15:\"css/regular.css\";s:71:\"sha384-HGbVnizaFNw8zW+vIol9xMwBFWdV7/k61278Zo1bnMy9dLmjv48D7rtpgYRTe5Pd\";s:19:\"css/fontawesome.css\";s:71:\"sha384-dbkYY2NmVwxaFrr4gq04oVh6w39ovmevsgD80Il1Od3hwpgREqyPb3XqbpaSwN4x\";s:14:\"css/brands.css\";s:71:\"sha384-rK0EPNdv8UCeRNPzX+96ARRlf9hZM+OukGceDTdbPH30DYcSI1x5QyBU7d2I2kHX\";s:11:\"css/all.css\";s:71:\"sha384-VY3F8aCQDLImi4L+tPX4XjtiJwXDwwyXNbkH7SHts0Jlo85t1R15MlXVBKLNx+dj\";}}}s:5:\"5.0.8\";a:5:{s:7:\"version\";s:5:\"5.0.8\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-03-01T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1535;s:4:\"free\";i:946;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-w/sFNq23wbOXJOUpFyISABLXk9tA4Z8r9hl80er2mobEwgS7VXXYDANaWyrCWe3/\";s:11:\"js/solid.js\";s:71:\"sha384-jTxqWCb7UqRDQDd2Nkuh5BkHe9k+ElbFLa3NaJfid5kBK/+cVktzVRXrw0isFWxf\";s:13:\"js/regular.js\";s:71:\"sha384-SIp/+zr0hyfSVIQPkAwB/L1h4fph6T3CmU4mE7IFtGJlgwoCko0Bye/1J0sjyh4v\";s:11:\"js/light.js\";s:71:\"sha384-mfSnp84URDGC1t+cg63LgVKwEs63ulRUpjNneyDZMGMAE9ZKUNZ85rMBMHucGLYP\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ht3fAeBiX/rVmKVyMwONAIIt0aRoPzZgq1FzdRgR9zFo+Kcd8YDwUbFlTItfaYW4\";s:12:\"js/brands.js\";s:71:\"sha384-gJijC/2qM/p3zm2wHECHX1OMLdzlu61sNp7YfmFQxo+OyT9hO1orX7MmnHhaoXQ4\";s:9:\"js/all.js\";s:71:\"sha384-816IUmmhAwCMonQiPZBO/PTgzgsjHtpb78rpsLzldhb4HZjFzBl06Z3eu4ZuwHTz\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-b2wDmqWyAwmI2rS5ut5UweBS1V32L/k1+2Oo7eCaHdXOS/1bFwC8AKevTI6N28LN\";s:13:\"css/solid.css\";s:71:\"sha384-+iHwwKZGTdlVFbv4fsKmLkogfdKlp47zQGkSMDN3ANc8kXjyKudKvQwinI5VH+2C\";s:15:\"css/regular.css\";s:71:\"sha384-0w6MzzKHIB9cUlfWSmSp1Pj6XqGGDseWSMz1Yppk3UOc1dhYhpFx1AuCkMBECEvC\";s:13:\"css/light.css\";s:71:\"sha384-shmfBA2CRxp88gq8NcvWbEN8KExYU4uvQUBEG36BStGZ5k91nGKE4wDvvWvuimbu\";s:19:\"css/fontawesome.css\";s:71:\"sha384-+5VkSw5C1wIu2iUZEfX77QSYRb5fhjmEsRn8u4r9Ma8mvu/GvTag4LDSEAw7RjXl\";s:14:\"css/brands.css\";s:71:\"sha384-VRONz34zTLl4P+DLYyJ8kP8C3tB1PGtqL5p8nBAvHuoc1u32bR3RHixrjffD8Fly\";s:11:\"css/all.css\";s:71:\"sha384-OGsxOZf8qnUumoWWSmTqXMPSNI9URpNYN35fXDb5Cv5jT6OR673ah1e5q+9xKTq6\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-4CnzNxEP5RK316IYY2+W4hc05uJdfd+p9iNVeNG9Ws3Qxf5tKolysO9wu/8rloj2\";s:11:\"js/solid.js\";s:71:\"sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l\";s:13:\"js/regular.js\";s:71:\"sha384-t7yHmUlwFrLxHXNLstawVRBMeSLcXTbQ5hsd0ifzwGtN7ZF7RZ8ppM7Ldinuoiif\";s:17:\"js/fontawesome.js\";s:71:\"sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c\";s:12:\"js/brands.js\";s:71:\"sha384-sCI3dTBIJuqT6AwL++zH7qL8ZdKaHpxU43dDt9SyOzimtQ9eyRhkG3B7KMl6AO19\";s:9:\"js/all.js\";s:71:\"sha384-SlE991lGASHoBfWbelyBPLsUlwY1GwNDJo3jSJO04KZ33K2bwfV9YBauFfnzvynJ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-TGBI4yK0MJz2ga16RLBBt4xT4aoPMPmRYhfu1Kl5IJ0gsLyOBIKHEb49BtoO+lPS\";s:13:\"css/solid.css\";s:71:\"sha384-v2Tw72dyUXeU3y4aM2Y0tBJQkGfplr39mxZqlTBDUZAb9BGoC40+rdFCG0m10lXk\";s:15:\"css/regular.css\";s:71:\"sha384-A/oR8MwZKeyJS+Y0tLZ16QIyje/AmPduwrvjeH6NLiLsp4cdE4uRJl8zobWXBm4u\";s:19:\"css/fontawesome.css\";s:71:\"sha384-q3jl8XQu1OpdLgGFvNRnPdj5VIlCvgsDQTQB6owSOHWlAurxul7f+JpUOVdAiJ5P\";s:14:\"css/brands.css\";s:71:\"sha384-IiIL1/ODJBRTrDTFk/pW8j0DUI5/z9m1KYsTm/RjZTNV8RHLGZXkUDwgRRbbQ+Jh\";s:11:\"css/all.css\";s:71:\"sha384-3AB7yXWz4OeoZcPbieVW64vVXEwADiYyAEhwilzWsLw+9FgqpyjjStpPnpBO8o8S\";}}}s:5:\"5.0.9\";a:5:{s:7:\"version\";s:5:\"5.0.9\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-03-27T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1718;s:4:\"free\";i:989;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vuyo8HdrwozCl2DhHOJ40ytjEx9FGy0cqu8i5GHeIoSUm6MPgqCXAVoUIsudKfuE\";s:11:\"js/solid.js\";s:71:\"sha384-nISI3wKDp2gWn9L91zXOKXZ6JPt2mteGTnaJAMfeNgAoeLKl2AQsWLH69HMmBXHa\";s:13:\"js/regular.js\";s:71:\"sha384-C6h/8oKUfY6cVuGfFSu9uGIlFkaD1u1j+ByYGFTdFbOpHOHpw39lKxqEpRgLQg6A\";s:11:\"js/light.js\";s:71:\"sha384-06sraYAcw8BzUjsPn5z8Qi/QAA2/ZJl5GN3LGtRp7k+tZpu7kw+sRNXDDTU4RkOt\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8QYlVHotqQzcAVhJny7MO9ZR0hASr6cRCpURV+EobTTAv5wftkn4i+U6UrMqoCis\";s:12:\"js/brands.js\";s:71:\"sha384-yIJb2TJeTM04vupX+3lv0Qp9j0Pnk8Qm9UPYlXr3H0ROCHNNLoacpS++HWDabbzi\";s:9:\"js/all.js\";s:71:\"sha384-DtPgXIYsUR6lLmJK14ZNUi11aAoezQtw4ut26Zwy9/6QXHH8W3+gjrRDT+lHiiW4\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-yVUvm1bVSmayKKt0YHPKotNQzlBvgNhEBbQ6U1d38bjpapXMVmE+SLXrpQ9td4Ij\";s:13:\"css/solid.css\";s:71:\"sha384-k8v16DuQ4ZFtRfpTeqTW4tcHIj5tkvUNQm1QiLs90XiToLzyFeV+yxujHjSZ2wim\";s:15:\"css/regular.css\";s:71:\"sha384-hJbmKHxbgrH79UtKxubo1UTe96bOL4Xfhjaqr0csD1UMPEPbeV+446QAC+IGxY+b\";s:13:\"css/light.css\";s:71:\"sha384-wD8IB6DSQidXyIWfwBrsFwTaHTQDsgzyeqzhd1jNdBZHvGSa7KRGb6Q5sMlroCyk\";s:19:\"css/fontawesome.css\";s:71:\"sha384-31qpW3hduWGiGey9tdI9rBBxiog5pxZbPiAlD6YKIgy0P2V1meprKhvpk+xJDkMw\";s:14:\"css/brands.css\";s:71:\"sha384-+LMmZxgyldhNCY6nei3oAWJjHbpbROtVb+f5Ux/nahA+Xjm3wcNdu7zyB39Yj38S\";s:11:\"css/all.css\";s:71:\"sha384-L+XK540vkePe55E7PAfByfvW0XpsyYpsifTpgh/w8WvH6asVg/c2zqp0EfZfZTbF\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-9f5gaI9TkuYhi5O/inzfdOXx2nkIhDsLtXqBNmtY6/c5PoqXfd0U2DAjqQVSCXQh\";s:11:\"js/solid.js\";s:71:\"sha384-P4tSluxIpPk9wNy8WSD8wJDvA8YZIkC6AQ+BfAFLXcUZIPQGu4Ifv4Kqq+i2XzrM\";s:13:\"js/regular.js\";s:71:\"sha384-BazKgf1FxrIbS1eyw7mhcLSSSD1IOsynTzzleWArWaBKoA8jItTB5QR+40+4tJT1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2IUdwouOFWauLdwTuAyHeMMRFfeyy4vqYNjodih+28v2ReC+8j+sLF9cK339k5hY\";s:12:\"js/brands.js\";s:71:\"sha384-qJKAzpOXfvmSjzbmsEtlYziSrpVjh5ROPNqb8UZ60myWy7rjTObnarseSKotmJIx\";s:9:\"js/all.js\";s:71:\"sha384-8iPTk2s/jMVj81dnzb/iFR2sdA7u06vHJyyLlAd4snFpCl/SnyUjRrbdJsw1pGIl\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hl6tZnMfNiJHYyFxpmnRV8+pziARxY3X/4XWfFXldG7sdkkLv+Od2Gpc57P7C1g6\";s:13:\"css/solid.css\";s:71:\"sha384-29Ax2Ao1SMo9Pz5CxU1KMYy+aRLHmOu6hJKgWiViCYpz3f9egAJNwjnKGgr+BXDN\";s:15:\"css/regular.css\";s:71:\"sha384-seionXF7gEANg+LFxIOw3+igh1ZAWgHpNR8SvE64G/Zgmjd918dTL55e8hOy7P4T\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Lyz+8VfV0lv38W729WFAmn77iH5OSroyONnUva4+gYaQTic3iI2fnUKtDSpbVf0J\";s:14:\"css/brands.css\";s:71:\"sha384-ATC/oZittI09GYIoscTZKDdBr/kI3lCwzw3oBMnOYCPVNJ4i7elNlCxSgLfdfFbl\";s:11:\"css/all.css\";s:71:\"sha384-5SOiIsAziJl6AWe0HWRKTXlfcSHKmYV4RBF18PPJ173Kzn7jzMyFuTtk8JA7QQG1\";}}}s:6:\"5.0.10\";a:5:{s:7:\"version\";s:6:\"5.0.10\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-04-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1718;s:4:\"free\";i:991;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-H+U1wWQdWbEtuQPJ4ZpMl8yWydI6xc/306L/NZkpGY8BGpeSpu39V20x03S3xcMw\";s:11:\"js/solid.js\";s:71:\"sha384-m3J/Wb6KcNkFJIpCugSSJITG80sKhEA+16UCFdq1LnpMTOCXwwpeyrE1FmyqoArv\";s:13:\"js/regular.js\";s:71:\"sha384-QNGmoJVI8f07j7N4+DSn4Cdob1PTBJOR6jRGwUwqSPyL2HmvWaBPXuSXOcStGo9D\";s:11:\"js/light.js\";s:71:\"sha384-rv/n2A+UxOzR1qs4wrcOtJ7Ai5Hcn3QQ8tvEkOo5lCvqCD3xwpeO3KZP18JpSXr3\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TxXqLyCP6HYGVtr9V1M1rQE7IMbBEZoDdOX+MFeYNbWNwopWKVQM8NyqtU2x+5t2\";s:12:\"js/brands.js\";s:71:\"sha384-OwdVp9K/baqiXthTvRnYzMcsTaqwG19SfDkTRc/GBIhK9eYlWVVBEvLlueA0STAP\";s:9:\"js/all.js\";s:71:\"sha384-+1nLPoB0gaUktsZJP+ycZectl3GX7wP8Xf2PE/JHrb7X1u7Emm+v7wJMbAcPr8Ge\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-S/uB02cfkgX8kd+j6f3gmw/PPTg8xSiE/w6d8dE852PzHXkGBYLrqpWFse9hInR2\";s:13:\"css/solid.css\";s:71:\"sha384-WjYgBJXUWNFTzFd4wNJuzUZx28GSgjzXrPO4LJrng96HFrI/nLrG1R5NET65v1yR\";s:15:\"css/regular.css\";s:71:\"sha384-D4yOV+i5oKU6w8CiadBDVtSim/UXmlmQfrIdRsuKT3nYhiF/Tb6YLQtyF9l0vqQF\";s:13:\"css/light.css\";s:71:\"sha384-k/d3hya1Xwx/V3yLAr7/6ibFaFIaN+xeY1eIv42A1Bn2HgfB+/YjLscji1sHLOkb\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HE+OCjOJOPZavEcVffA6E24sIfY2RwV4JRieXa/3N5iCY8vgnTwZemElENQ8ak/K\";s:14:\"css/brands.css\";s:71:\"sha384-cyAsyPMdnj21FGg6BEGfZdZ99a/opKBeFa8z5VoHPsPj+tLRYSxkRlPWnGkCJGyA\";s:11:\"css/all.css\";s:71:\"sha384-KwxQKNj2D0XKEW5O/Y6haRH39PE/xry8SAoLbpbCMraqlX7kUP6KHOnrlrtvuJLR\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-RLvgmog5EsZMMDnT3uJo6ScffPHTtMbhtV8pcT8kP5UJzlVRU1SP9Hccelk3zYZc\";s:11:\"js/solid.js\";s:71:\"sha384-Q7KAHqDd5trmfsv85beYZBsUmw0lsreFBQZfsEhzUtUn5HhpjVzwY0Aq4z8DY9sA\";s:13:\"js/regular.js\";s:71:\"sha384-JWLWlnwX0pRcCBsI3ZzOEyVDoUmngnFnbXR9VedCc3ko4R3xDG+KTMYmVciWbf4N\";s:17:\"js/fontawesome.js\";s:71:\"sha384-M2FSA4xMm1G9m4CNXM49UcDHeWcDZNucAlz1WVHxohug0Uw1K+IpUhp/Wjg0y6qG\";s:12:\"js/brands.js\";s:71:\"sha384-6jhVhr5a+Z1nLr9h+fd7ocMEo847wnGFelCHddaOOACUeZNoQwFXTxh4ysXVam8u\";s:9:\"js/all.js\";s:71:\"sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ucawWSvpdgQ67m4VQzI6qBOHIsGRoY2soJtCkkp15b6IaNCLgauWkbKR8SAuiDQ7\";s:13:\"css/solid.css\";s:71:\"sha384-HTDlLIcgXajNzMJv5hiW5s2fwegQng6Hi+fN6t5VAcwO/9qbg2YEANIyKBlqLsiT\";s:15:\"css/regular.css\";s:71:\"sha384-R7FIq3bpFaYzR4ogOiz75MKHyuVK0iHja8gmH1DHlZSq4tT/78gKAa7nl4PJD7GP\";s:19:\"css/fontawesome.css\";s:71:\"sha384-8WwquHbb2jqa7gKWSoAwbJBV2Q+/rQRss9UXL5wlvXOZfSodONmVnifo/+5xJIWX\";s:14:\"css/brands.css\";s:71:\"sha384-KtmfosZaF4BaDBojD9RXBSrq5pNEO79xGiggBxf8tsX+w2dBRpVW5o0BPto2Rb2F\";s:11:\"css/all.css\";s:71:\"sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg\";}}}s:6:\"5.0.12\";a:5:{s:7:\"version\";s:6:\"5.0.12\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-05-03T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1748;s:4:\"free\";i:1043;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-6+8zJP76v3EziONR2vMd32iSU3qbdicAE8KNp+NWniM6mBmvN80NlY+sbvCO+w7M\";s:11:\"js/solid.js\";s:71:\"sha384-y//1Knkpeyl2S568g2ECqUA4n3MKf+kpj1/sfjUQbR1WtBPONceBHrQVMiAqfjLH\";s:13:\"js/regular.js\";s:71:\"sha384-p/qo0lifpToZ0ubNiv1WFzlmYJU+BOenvU+evARCvCqALvbpZuqmZQ207vmYD6QL\";s:11:\"js/light.js\";s:71:\"sha384-z7YlG414oqy0TO7qY/nGfC8zd1LL8JAX3iNQ3iLybUIziHzaMYqBwUvhizEwV0Fd\";s:17:\"js/fontawesome.js\";s:71:\"sha384-CUrLKzrygRugRUPtEJ1u4nV4Ec6GnuDMRDGaxfoFXLI+sraWS6rqGg2Sjfs6BTet\";s:12:\"js/brands.js\";s:71:\"sha384-QlvHmHtevrYI4s/vdiK6chTDouw2pRA5av6ZLVtENubkoCgSZz4ZaXVvplQ1FRPs\";s:9:\"js/all.js\";s:71:\"sha384-quzri7saio48xMf3ED3HiI5YaItt68Q+0J3qc9EIfk1jk3QqCJhS24l6CZpUGfEe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ubRAMbpAKC+ULwg5mkUQLFReIXq1yeiKIcfV7cYp+rEaeINfEglYX6JOte80PCDk\";s:13:\"css/solid.css\";s:71:\"sha384-KY40QRrgoQAM9BPN+gm7JoK30M/P6QqKRCbXUS3uWbPfycyiVeEsPkGNMhcNL3DU\";s:15:\"css/regular.css\";s:71:\"sha384-tYZB+BP2inzRg01pQhSlW4Tloc0ULXYGiBaf5kSB5Tb3+l84bJy+PKerqziKz3iv\";s:13:\"css/light.css\";s:71:\"sha384-PWGGmWk9+xVydf1Gzso0ouaikBBKLu4nCY52q+tBUMq5iXmRhpgTuDkjbtxZ1rXT\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ZDxYpspDwfEsC0ZJDb74i/Rqjb1CnX3a69Dz9vXv4PvvlTEkgMI02TATTRNJoZ06\";s:14:\"css/brands.css\";s:71:\"sha384-M4owBK0KiG0Vz+G5z/8v8tBb1+w9ts66Z6xKkZEPgBwzISkrcNra4GxZcvJPyaGB\";s:11:\"css/all.css\";s:71:\"sha384-HX5QvHXoIsrUAY0tE/wG8+Wt1MwvaY28d9Zciqcj6Ob7Tw99tFPo4YUXcZw9l930\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-STc8Gazx86A+NmeBWQTqa5Ob1wGSRQZevexYiUkKdiqZhi5LSZ28XYAvgptHK5HH\";s:11:\"js/solid.js\";s:71:\"sha384-652/z7yNdGONCCBu0u5h5uF9voJhBdgruAuIDVheEaQ7O/ZC9wyyV+yZsYb32Wy7\";s:13:\"js/regular.js\";s:71:\"sha384-6XNKyHeL6pEPXURVNSKQ0lUP80a5FHqN0oFqSSS8Qviyy2u0KmCMJlQ5iLiAAPBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6AOxTjzzZLvbTJayrLOYweuPckqh0rrB4Sj+Js8Vzgr85/qm2e0DRqi+rBzyK52J\";s:12:\"js/brands.js\";s:71:\"sha384-BPIhZF7kZGuZzBS4SP/oIqzpxWuOUtsPLUTVGpGw+EtB1wKt1hv63jb2OCroS3EX\";s:9:\"js/all.js\";s:71:\"sha384-Voup2lBiiyZYkRto2XWqbzxHXwzcm4A5RfdfG6466bu5LqjwwrjXCMBQBLMWh7qR\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-N44Xrku5FaDiZLZ8lncIZLh+x9xiqk1r0NTlUJQ5xanSpdORyQHP4Zp2WQJ9GlpJ\";s:13:\"css/solid.css\";s:71:\"sha384-VxweGom9fDoUf7YfLTHgO0r70LVNHP5+Oi8dcR4hbEjS8UnpRtrwTx7LpHq/MWLI\";s:15:\"css/regular.css\";s:71:\"sha384-RGDxJbFQcd3/Rei8rYb+3xO3YREd0abxm8WfLkYj7j4HHo5ZVuNUGVx8H8GbpFTQ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-rnr8fdrJ6oj4zli02To2U/e6t1qG8dvJ8yNZZPsKHcU7wFK3MGilejY5R/cUc5kf\";s:14:\"css/brands.css\";s:71:\"sha384-Pln/erVatVEIIVh7sfyudOXs5oajCSHg7l5e2Me02e3TklmDuKEhQ8resTIwyI+w\";s:11:\"css/all.css\";s:71:\"sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9\";}}}s:6:\"5.0.13\";a:5:{s:7:\"version\";s:6:\"5.0.13\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:0;}s:4:\"date\";s:19:\"2018-05-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:1877;s:4:\"free\";i:1109;}s:3:\"sri\";a:2:{s:3:\"pro\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-LDfu/SrM7ecLU6uUcXDDIg59Va/6VIXvEDzOZEiBJCh148mMGba7k3BUFp1fo79X\";s:11:\"js/solid.js\";s:71:\"sha384-CucLC75yxFXtBjA/DCHWMS14abAUhf5HmFRdHyKURqqLqi3OrLsyhCyqp83qjiOR\";s:13:\"js/regular.js\";s:71:\"sha384-1bAvs6o5Yb7MMzvTI3oq2qkreCQFDXb6KISLBhrHR+3sJ/mm7ZWfnQVRwScbPEmd\";s:11:\"js/light.js\";s:71:\"sha384-+iGqamqASU/OvBgGwlIHH6HSEgiluzJvTqcjJy8IN9QG9aUfd0z0pKpTlH7TpU7X\";s:17:\"js/fontawesome.js\";s:71:\"sha384-BUkEHIKZJ0ussRY3zYfFL7R0LpqWmucr9K38zMTJWdGQywTjmzbejVSNIHuNEhug\";s:12:\"js/brands.js\";s:71:\"sha384-44Hl7UlQr9JXHFcZOp9qWHk2H1lrsAN/cG3GNgB2JqbciecuJ2/B9sjelOMttzBM\";s:9:\"js/all.js\";s:71:\"sha384-d84LGg2pm9KhR4mCAs3N29GQ4OYNy+K+FBHX8WhimHpPm86c839++MDABegrZ3gn\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-8YpCivPy+AkMdZ0uAvEP04Gs77AN/6mS5AmZqkCwniP51zSG8rCMaH06OYuC4iXd\";s:13:\"css/solid.css\";s:71:\"sha384-drdlAcijFWubhOfj9OS/gy2Gs34hVhVT90FgJLzrldrLI+7E7lwBxmanEEhKTRTS\";s:15:\"css/regular.css\";s:71:\"sha384-HLkkol/uuRVQDnHaAwidOxb1uCbd78FoGV/teF8vONYKRP9oPQcBZKFdi3LYDy/C\";s:13:\"css/light.css\";s:71:\"sha384-d8NbeymhHpk+ydwT2rk4GxrRuC9pDL/3A6EIedSEYb+LE+KQ5QKgIWTjYwHj/NBs\";s:19:\"css/fontawesome.css\";s:71:\"sha384-LDuQaX4rOgqi4rbWCyWj3XVBlgDzuxGy/E6vWN6U7c25/eSJIwyKhy9WgZCHQWXz\";s:14:\"css/brands.css\";s:71:\"sha384-t3MQUMU0g3tY/0O/50ja6YVaEFYwPpOiPbrHk9p5DmYtkHJU2U1/ujNhYruOJwcj\";s:11:\"css/all.css\";s:71:\"sha384-oi8o31xSQq8S0RpBcb4FaLB8LJi9AT8oIdmS1QldR8Ui7KUQjNAnDlJjp55Ba8FG\";}s:4:\"free\";a:12:{s:14:\"js/v4-shims.js\";s:71:\"sha384-qqI1UsWtMEdkxgOhFCatSq+JwGYOQW+RSazfcjlyZFNGjfwT/T1iJ26+mp70qvXx\";s:11:\"js/solid.js\";s:71:\"sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ\";s:13:\"js/regular.js\";s:71:\"sha384-IJ3h7bJ6KqiB70L7/+fc44fl+nKF5eOFkgM9l/zZii9xs7W2aJrwIlyHZiowN+Du\";s:17:\"js/fontawesome.js\";s:71:\"sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY\";s:12:\"js/brands.js\";s:71:\"sha384-G/XjSSGjG98ANkPn82CYar6ZFqo7iCeZwVZIbNWhAmvCF2l+9b5S21K4udM7TGNu\";s:9:\"js/all.js\";s:71:\"sha384-xymdQtn1n3lH2wcu0qhcdaOpQwyoarkgLVxC/wZ5q7h9gHtxICrpcaSUfygqZGOe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LAtyQAMHxrIJzktG06ww5mJ0KQ+uCqQIJFjwj+ceCjUlZ2jkLwJZt1nBGw4KaFEZ\";s:13:\"css/solid.css\";s:71:\"sha384-Rw5qeepMFvJVEZdSo1nDQD5B6wX0m7c5Z/pLNvjkB14W6Yki1hKbSEQaX9ffUbWe\";s:15:\"css/regular.css\";s:71:\"sha384-EWu6DiBz01XlR6XGsVuabDMbDN6RT8cwNoY+3tIH+6pUCfaNldJYJQfQlbEIWLyA\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GVa9GOgVQgOk+TNYXu7S/InPTfSDTtBalSgkgqQ7sCik56N9ztlkoTr2f/T44oKV\";s:14:\"css/brands.css\";s:71:\"sha384-VGCZwiSnlHXYDojsRqeMn3IVvdzTx5JEuHgqZ3bYLCLUBV8rvihHApoA1Aso2TZA\";s:11:\"css/all.css\";s:71:\"sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp\";}}}s:5:\"5.1.0\";a:5:{s:7:\"version\";s:5:\"5.1.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-06-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2068;s:4:\"free\";i:1264;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-9gfBAY6DS3wT0yuvYN1aaA1Q9R0fYQHliQWLChuYDWJJ0wQJpoNZrzlcqd4+qqny\";s:11:\"js/solid.js\";s:71:\"sha384-q6QALO/4RSDjqnloeDcGnkB0JdK3MykIi6dUW5YD66JHE3JFf8rwtV5AQdYHdE0X\";s:13:\"js/regular.js\";s:71:\"sha384-S21AhcbZ5SXPXH+MH7JuToqmKYXviahLaD1s9yApRbu1JDiMjPBGQIw/3PCHKUio\";s:11:\"js/light.js\";s:71:\"sha384-77i21WTcIcnSPKxwR794RLUQitpNqm6K3Fxsjx8hgoc3ZZbPJu5orgvU/7xS3EFq\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ckjcH5WkBMAwWPjTJiy7K2LaLp37yyCVKAs3DKjhPdo0lRCDIScolBzRsuaSu+bQ\";s:12:\"js/brands.js\";s:71:\"sha384-QPbiRUBnwCr8JYNjjm7CB0QP9h4MLvWUZhsChFX6dLzRkY22/nAxVYqa5nUTd6PL\";s:9:\"js/all.js\";s:71:\"sha384-E5SpgaZcbSJx0Iabb3Jr2AfTRiFnrdOw1mhO19DzzrT9L+wCpDyHUG2q07aQdO6E\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2RBBYH6GaI11IJzJ6V1eL7kXXON+epoQIt+HqpzQdBrtyT7gNwKPDxo2roxUbtW9\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-/h6SKuA/ysT91EgYEGm9B6Z6zlaxuvKeW/JB7FWdGwCFalafxmGzJE2a63hS1BLm\";s:13:\"css/solid.css\";s:71:\"sha384-rvfDcG9KDoxdTesRF/nZ/sj8CdQU+hy6JbNMwxUTqpoI2LaPK8ASQk6E4bgabrox\";s:15:\"css/regular.css\";s:71:\"sha384-6kuJOVhnZHzJdVIZJcWiMZVi/JwinbqLbVxIbR73nNqXnYJDQ5TGtf+3XyASO4Am\";s:13:\"css/light.css\";s:71:\"sha384-ANTAgj8tbw0vj4HgQ4HsB886G2pH15LXbruHPCBcUcaPAtn66UMxh8HQcb1cH141\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PnWzJku7hTqk2JREATthkLpYeVVGcBbXG5yEzk7hD2HIr/VxffIDfNSR7p7u4HUy\";s:14:\"css/brands.css\";s:71:\"sha384-C1HxUFJBptCeaMsYCbPUw8fdL2Cblu3mJZilxrfujE+7QLr8BfuzBl5rPLNM61F6\";s:11:\"css/all.css\";s:71:\"sha384-87DrmpqHRiY8hPLIr7ByqhPIywuSsjuQAfMXAE0sMUpY3BM7nXjf+mLIUSvhDArs\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-3qT9zZfeo1gcy2NmVv5dAhtOYkj91cMLXRkasOiRB/v+EU3G+LZUyk5uqZQdIPsV\";s:11:\"js/solid.js\";s:71:\"sha384-Z7p3uC4xXkxbK7/4keZjny0hTCWPXWfXl/mJ36+pW7ffAGnXzO7P+iCZ0mZv5Zt0\";s:13:\"js/regular.js\";s:71:\"sha384-Y+AVd32cSTAMpwehrH10RiRmA28kvu879VbHTG58mUFhd+Uxl/bkAXsgcIesWn3a\";s:17:\"js/fontawesome.js\";s:71:\"sha384-juNb2Ils/YfoXkciRFz//Bi34FN+KKL2AN4R/COdBOMD9/sV/UsxI6++NqifNitM\";s:12:\"js/brands.js\";s:71:\"sha384-ZqDZAkGUHrXxm3bvcTCmQWz4lt7QGLxzlqauKOyLwg8U0wYcYPDIIVTbZZXjbfsM\";s:9:\"js/all.js\";s:71:\"sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9\";s:16:\"css/v4-shims.css\";s:71:\"sha384-epK5t6ciulYxBQbRDZyYJFVuWey/zPlkBIbv6UujFdGiIwQCeWOyv5PVp2UQXbr2\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5aLiCANDiVeIiNfzcW+kXWzWdC6riDYfxLS6ifvejaqYOiEufCh0zVLMkW4nr8iC\";s:13:\"css/solid.css\";s:71:\"sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp\";s:15:\"css/regular.css\";s:71:\"sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD\";s:19:\"css/fontawesome.css\";s:71:\"sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG\";s:14:\"css/brands.css\";s:71:\"sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k\";s:11:\"css/all.css\";s:71:\"sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt\";}}}s:5:\"5.1.1\";a:5:{s:7:\"version\";s:5:\"5.1.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-07-16T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2067;s:4:\"free\";i:1265;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-rJQjFeDWQReL3KmIeV81jB594CgKx/MmXyAgiuu88Jo253P+PSMgWzivZQtR6N6J\";s:11:\"js/solid.js\";s:71:\"sha384-PyvJtlnGBA/R+hfVbHbnzfeT8G/iTORqPhR5WKGTQXlfmLe5bV+d64NECHG4sIMa\";s:13:\"js/regular.js\";s:71:\"sha384-Mw6yr+W+X+ckaAUbsPUb2BcU3Af9aSjmPMIlMr2iplN0VQIpscDWy/VwY5w0sz9w\";s:11:\"js/light.js\";s:71:\"sha384-0rp6k6cJIuLV1ORowDSSKr4VbEqb664PQUWdBvhJyt6IfkshVb0r6UlOkX6yVdaI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EWJRWU7LQt+ri8YtDjTr8adATyP7y8DwlpE8zruoUC4nHNjtWZMU+iPYK+tFaV3U\";s:12:\"js/brands.js\";s:71:\"sha384-KCMfKsP/3VgeibBQRMu4bT+9041Hi2v9PIz9FLOPJBEvxCBklc4o7tRwwQu4FWsT\";s:9:\"js/all.js\";s:71:\"sha384-cHcg4nvWPIGArJhEgL2F5e09Cn1GyPQpNYKbPatFCpDefCbezZjPA3PhLozKTZnv\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TUicmScQcYANFcc4OQKEX6V1Zek9o9t+dwW/2tZoXmSigBk9JqfHxZZFlSo+0oRl\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-++BmJ9x4V05AhCNnLr/RjPTY4BAFuhZsESUqH5hiwZspBvy7F+DRGvSH8tGHw9P/\";s:13:\"css/solid.css\";s:71:\"sha384-Ux3tEr1RmnxCht2XbPkWWBuotwMVXKOe0PkWN/nmiD5CSV6Tyjl+Kr0J0iX1yd0q\";s:15:\"css/regular.css\";s:71:\"sha384-AKIrAHbICIQF+NEqtykrcdzMjExDiKLa9hOyUVsr4PlHtktH7xaD10vO98UnPjuE\";s:13:\"css/light.css\";s:71:\"sha384-EGKQAl6ZrGi/zGxZ4ykVhc/A3tFVeBiLnneETILtcxQnZpo7ejmb4BkNa3zSgo4K\";s:19:\"css/fontawesome.css\";s:71:\"sha384-bHoj6f1b1CQ6zapOREeYBO/JnDjeV1fLuKn3KHnbqAAnkLva11KY3m8YyKPVXYLF\";s:14:\"css/brands.css\";s:71:\"sha384-E5dVkWQIVhVPtBz/KK2TS7EM9l1+5XiWFPX7l3+5ayHPwDguGsHqof3GQbk55AS3\";s:11:\"css/all.css\";s:71:\"sha384-xyMU7RufUdPGVOZRrc2z2nRWVWBONzqa0NFctWglHmt5q5ukL22+lvHAqhqsIm3h\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-T69Lzd4bE7W8/vVrxvfsx45/AAKf6QmKEg5zSl0v9aZwo/pTKseq81mxdpARTQpx\";s:11:\"js/solid.js\";s:71:\"sha384-GXi56ipjsBwAe6v5X4xSrVNXGOmpdJYZEEh/0/GqJ3JTHsfDsF8v0YQvZCJYAiGu\";s:13:\"js/regular.js\";s:71:\"sha384-sAzYCvbTTKFOxT4VHu+ZjHRMXjvfjT6TAqOng28g4jba88Peg5+hkoVIqQKGjmj1\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NY6PHjYLP2f+gL3uaVfqUZImmw71ArL9+Roi9o+I4+RBqArA2CfW1sJ1wkABFfPe\";s:12:\"js/brands.js\";s:71:\"sha384-0inRy4HkP0hJ038ZyfQ4vLl+F4POKbqnaUB6ewmU4dWP0ki8Q27A0VFiVRIpscvL\";s:9:\"js/all.js\";s:71:\"sha384-BtvRZcyfv4r0x/phJt9Y9HhnN5ur1Z+kZbKVgzVBAlQZX4jvAuImlIz+bG7TS00a\";s:16:\"css/v4-shims.css\";s:71:\"sha384-LCsPWAjCFLDeFHB5Y0SBIOqgC5othK8pIZiJAdbJDiN10B2HXEm1mFNHtED8cViz\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-EH3TEAKYd7R0QbCS4OFuYoEpaXITVg5c/gdZ/beEaAbRjMGVuVLLFjiIKOneCzGZ\";s:13:\"css/solid.css\";s:71:\"sha384-S2gVFTIn1tJ/Plf+40+RRAxBCiBU5oAMFUJxTXT3vOlxtXm7MGjVj62mDpbujs4C\";s:15:\"css/regular.css\";s:71:\"sha384-QNorH84/Id/CMkUkiFb5yTU3E/qqapnCVt6k5xh1PFIJ9hJ8VfovwwH/eMLQTjGS\";s:19:\"css/fontawesome.css\";s:71:\"sha384-0b7ERybvrT5RZyD80ojw6KNKz6nIAlgOKXIcJ0CV7A6Iia8yt2y1bBfLBOwoc9fQ\";s:14:\"css/brands.css\";s:71:\"sha384-SYNjKRRe+vDW0KSn/LrkhG++hqCLJg9ev1jIh8CHKuEA132pgAz+WofmKAhPpTR7\";s:11:\"css/all.css\";s:71:\"sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ\";}}}s:5:\"5.2.0\";a:5:{s:7:\"version\";s:5:\"5.2.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-07-23T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2357;s:4:\"free\";i:1295;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-aoMjEUBUPf5GpXx1WJUeTZ/gBmGqQB1u8uUc2J5LW2xnQtJKkGulESZ+rkoj182s\";s:11:\"js/solid.js\";s:71:\"sha384-1j3ph9Rf+Aaz6rrizz6cdFxU9ZbUyvkbiwQ5+T/BY4I5mk37vUpTA8S9ZZOlfdWu\";s:13:\"js/regular.js\";s:71:\"sha384-8hKZY21U4J3r9N0GFl+24YnDkbRhs8y/nXT6BaZ+sOJDNmz+1DhFawE9UYL37XzB\";s:11:\"js/light.js\";s:71:\"sha384-glAz6mCeiwAe/kHHHG/OvhrjA4+AH55ZfH8fwYp48YCY61POwUmOrH/oYOaF2Ujy\";s:17:\"js/fontawesome.js\";s:71:\"sha384-FQUuiJxt9F0hPc9IP3M5ndmqK53iBCGcy4ZSx8QirhYOIs8l7x+e1/zdswyZEigi\";s:12:\"js/brands.js\";s:71:\"sha384-eg9wHuvEPj6+GlGomBRaMHLF0QfCnjdASWDKd84DMeM9phhyDaPFou/nHJBt0bz+\";s:9:\"js/all.js\";s:71:\"sha384-yBZ34R8uZDBb7pIwm+whKmsCiRDZXCW1vPPn/3Gz0xm4E95frfRNrOmAUfGbSGqN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-2QRS8Mv2zxkE2FAZ5/vfIJ7i0j+oF15LolHAhqFp9Tm4fQ2FEOzgPj4w/mWOTdnC\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-O6mvz45yC1vfdu/EgUxAoSGrP+sFtepMtj7eOQIW1G3WT9Sj5djActZC0hd/F42D\";s:13:\"css/solid.css\";s:71:\"sha384-B/E/KxBX31kY/5sew+X4c8e6ErosbqOOsA3t4k6VVmx8Hrz//v0tEUtXmUVx9X6Q\";s:15:\"css/regular.css\";s:71:\"sha384-g3XsWx0Sqi7JIjLKVnwUxEvqrxTMQPIf3PN+vTdWY2AhduP/rnj0rw89v0nbD4Ro\";s:13:\"css/light.css\";s:71:\"sha384-pcDR01P1wNxsYZiEYdROCAYhU2u8VHOctLrYRonRFtkf/TGEQFWt0rqFbPGWlyn4\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4eP+1rYQmuI3hxrmyE+GT/EIiNbF4R85ciN3jMpmIh+bU5Hz2IU7AdcVe+JS+AJz\";s:14:\"css/brands.css\";s:71:\"sha384-Ei2oxwH0wpwmp7KPdhYnajC5fWDdMENOjDw9OfzWvcFcOGn0Egy+L5AAculaqBbD\";s:11:\"css/all.css\";s:71:\"sha384-TXfwrfuHVznxCssTxWoPZjhcss/hp38gEOH8UPZG/JcXonvBQ6SlsIF49wUzsGno\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-rn4uxZDX7xwNq5bkqSbpSQ3s4tK9evZrXAO1Gv9WTZK4p1+NFsJvOQmkos19ebn2\";s:11:\"js/solid.js\";s:71:\"sha384-YmNA3b9AQuWW8KZguYfqJa/YhKNTwGVD5pQc1cN0ZAVRudFFtR17HR7rooNcVXe4\";s:13:\"js/regular.js\";s:71:\"sha384-YdSTwqfKxyP06Jj3UzTeumv8M+Pme60+KND4oF+5r5VeUCvdkw7NhSzFYWbe00ba\";s:17:\"js/fontawesome.js\";s:71:\"sha384-QcnrgQuRmocjIBY6ByWMmDvUg3HO4MSdVjY7ynJwZfvTDhVPPQOUI9TRzc6/7ZO1\";s:12:\"js/brands.js\";s:71:\"sha384-4BRtleJgTYsMKIVuV1Z7lNE29r4MxwKR7u88TWG2GaXsmSljIykt/YDbmKndKGID\";s:9:\"js/all.js\";s:71:\"sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy\";s:16:\"css/v4-shims.css\";s:71:\"sha384-W14o25dsDf2S/y9FS68rJKUyCoBGkLwr8owWTSTTHj4LOoHdrgSxw1cmNQMULiRb\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-jKeGgxY7zPT61fNXg6OMRDu8vsxOPRLMlgAIUHo1KVag4lyu5B03KsDLYOTMM4ld\";s:13:\"css/solid.css\";s:71:\"sha384-wnAC7ln+XN0UKdcPvJvtqIH3jOjs9pnKnq9qX68ImXvOGz2JuFoEiCjT8jyZQX2z\";s:15:\"css/regular.css\";s:71:\"sha384-zkhEzh7td0PG30vxQk1D9liRKeizzot4eqkJ8gB3/I+mZ1rjgQk+BSt2F6rT2c+I\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HbmWTHay9psM8qyzEKPc8odH4DsOuzdejtnr+OFtDmOcIVnhgReQ4GZBH7uwcjf6\";s:14:\"css/brands.css\";s:71:\"sha384-nT8r1Kzllf71iZl81CdFzObMsaLOhqBU1JD2+XoAALbdtWaXDOlWOZTR4v1ktjPE\";s:11:\"css/all.css\";s:71:\"sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ\";}}}s:5:\"5.3.1\";a:5:{s:7:\"version\";s:5:\"5.3.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-08-28T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2637;s:4:\"free\";i:1341;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8e1r0+5VTqCqkg/9vG+cnipytzBkEh9fpESgVwBZAizMkWRfiaTkdhgdnhLGwuPd\";s:11:\"js/solid.js\";s:71:\"sha384-U4vTrZsQ4ooEtzL162EZfTtCiJNTXOwGDBzV91//DI5L/h48ibzHBiHJmPLpx2hO\";s:13:\"js/regular.js\";s:71:\"sha384-EbI+OvKb7noKOfu8MSi/vCbi0KWlM61MjHDmRk4/vwJkPsMIRcJggYLDGWv7VeYY\";s:11:\"js/light.js\";s:71:\"sha384-2R0W5LA7dXp3ze/WhvjXlUcDaHRhtGlKYxN9QMhGDdjmj2EI1bub5ysSwofJwGfI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-u3o36ga3mMU6/lK/zdiER4h7pPtAK7wBuN0DrZPH22v01RZL8bKZkULIjxcx2/X/\";s:12:\"js/brands.js\";s:71:\"sha384-am5AyalpQCEfbKe6FYiGZc2vX080nrcueZmrbkljxLdQDJ5q5Vu9QDROD/QefEp1\";s:9:\"js/all.js\";s:71:\"sha384-eAVkiER0fL/ySiqS7dXu8TLpoR8d9KRzIYtG0Tz7pi24qgQIIupp0fn2XA1H90fP\";s:16:\"css/v4-shims.css\";s:71:\"sha384-1YFoQoO5Em1oxLErpWpJuswiqPFVHl8HLDUaLjJGJH8+Nra/Y1D6uOZkEgfH5OZf\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Hmg9TonawJaGH8ayFFnEBwvkx61BYLPAOV7b/YDGQEVIs1jh9pWQigAavMuD+Vc/\";s:13:\"css/solid.css\";s:71:\"sha384-wJu5pIbEyJzi+kRgVKVQkPNKI104yNC+IAyK7XXEVGgPGe+LTEERIkpSZbc/wrOx\";s:15:\"css/regular.css\";s:71:\"sha384-pofSFWh/aTwxUvfNhg+LRpOXIFViguTD++4CNlmwgXOrQZj1EOJewBT+DmUVeyJN\";s:13:\"css/light.css\";s:71:\"sha384-9QuzjQIM/Un6pY9bKVJGLW8PauASO8Mf9y3QcsHhfZSXNyXGoXt/POh3VLeiv4mw\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Yz2UJoJEWBkb0TBzOd2kozX5/G4+z5WzWMMZz1Np2vwnFjF5FypnmBUBPH2gUa1F\";s:14:\"css/brands.css\";s:71:\"sha384-AOiME8p6xSUbTO/93cbYmpOihKrqxrLjvkT2lOpIov+udKmjXXXFLfpKeqwTjNTC\";s:11:\"css/all.css\";s:71:\"sha384-9ralMzdK1QYsk4yBY680hmsb4/hJ98xK3w0TIaJ3ll4POWpWUYaA2bRjGGujGT8w\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-DtdEw3/pBQuSag11V3is/UZMjGkGMLDRBgk1UVAOvH6cYoqKjBmCEhePm13skjRV\";s:11:\"js/solid.js\";s:71:\"sha384-GJiigN/ef2B3HMj0haY+eMmG4EIIrhWgGJ2Rv0IaWnNdWdbWPr1sRLkGz7xfjOFw\";s:13:\"js/regular.js\";s:71:\"sha384-sqmLTIuB+bQgkyOcdJ/hAvXl51Z7qqdK/lcH/rt6sdvDKFincQWI+fVgcDZM6NMz\";s:17:\"js/fontawesome.js\";s:71:\"sha384-2OfHGv4zQZxcNK+oL8TR9pA+ADXtUODqGpIRy1zOgioC4X3+2vbOAp5Qv7uHM4Z8\";s:12:\"js/brands.js\";s:71:\"sha384-2vdvXGQdnt+ze3ylY5ESeZ9TOxwxlOsldUzQBwtjvRpen1FwDT767SqyVbYrltjb\";s:9:\"js/all.js\";s:71:\"sha384-kW+oWsYx3YpxvjtZjFXqazFpA7UP/MbiY4jvs+RWZo2+N94PFZ36T6TFkc9O3qoB\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lmquXrF9qn7mMo6iRQ662vN44vTTVUBpcdtDFWPxD9uFPqC/aMn6pcQrTTupiv1A\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-4K9ulTwOtsXr+7hczR7fImKfUZY5THwqvfxwPx1VUCEOt4qssi2Vm+kHY7NJQPoy\";s:13:\"css/solid.css\";s:71:\"sha384-VGP9aw4WtGH/uPAOseYxZ+Vz/vaTb1ehm1bwx92Fm8dTrE+3boLfF1SpAtB1z7HW\";s:15:\"css/regular.css\";s:71:\"sha384-ZlNfXjxAqKFWCwMwQFGhmMh3i89dWDnaFU2/VZg9CvsMGA7hXHQsPIqS+JIAmgEq\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1rquJLNOM3ijoueaaeS5m+McXPJCGdr5HcA03/VHXxcp2kX2sUrQDmFc3jR5i/C7\";s:14:\"css/brands.css\";s:71:\"sha384-rf1bqOAj3+pw6NqYrtaE1/4Se2NBwkIfeYbsFdtiR6TQz0acWiwJbv1IM/Nt/ite\";s:11:\"css/all.css\";s:71:\"sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU\";}}}s:5:\"5.4.1\";a:5:{s:7:\"version\";s:5:\"5.4.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-10-10T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2969;s:4:\"free\";i:1388;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-e+EZ4XUeGXVd0FDmP/mFu7FFe+qVX738ayOS2AErNIPSLz5oZ3OgVa9zEyCds3HP\";s:11:\"js/solid.js\";s:71:\"sha384-KlTWIsOnBg7LJobQmLsv5fQ1qbx73K+o8/xhoUDoIba13SxF4bT5W2WgV3d8mZIw\";s:13:\"js/regular.js\";s:71:\"sha384-MB7Bz/7e8sBWnZgblSLUfFOOi+V1PIkRG/Ex1NMeu0CovaXCzHyCMwAwOF+FAo1s\";s:11:\"js/light.js\";s:71:\"sha384-jlaccvPpizUbHU/8pYAsDEwhhBae8MUcYqHHsKkjFcFsEp3Y6LrVXh0GA84aAkTg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8vKKeD0uIV/HXM5ym3RGB4O7rZ43fCdpiXqP047w7sEE3igcK0Y1U9ApEArcRBDJ\";s:12:\"js/brands.js\";s:71:\"sha384-ShBqjf9lFG58e2NmhnbVlhAOPCWdzkPbBmAEcQ37Liu3TwOYxIizS7J1P3rRLJHm\";s:9:\"js/all.js\";s:71:\"sha384-0+tugznPwCEvPiypW+OwmFjAQvRKlgI0ZZZW3nofNlLMmbYXbmNvfX/9up9XQSRs\";s:16:\"css/v4-shims.css\";s:71:\"sha384-aaXKvb/d7l2hTm3ZDWCy5v4ct5zXIslt+70K4xalZPLu3ifrkYcG61m4u+DIQGEk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-j2EtHJUHBAZF9vkmX0TSA/QqYMf0Npp9P2leJGZFDbLHbcI62HH8w7FRcUMNf8Q2\";s:13:\"css/solid.css\";s:71:\"sha384-oT4lQmwnKx98HRnFgaGvgCdjtKOjep9CjfMdAOPtJU8Vy6NY3X34GfqL0H43ydJn\";s:15:\"css/regular.css\";s:71:\"sha384-xKPOvJDwdb/n5w2kh6cxds98Ae2d5N63xkIydEdoYeA2bxIKUmmyU9lZ9j58mLYS\";s:13:\"css/light.css\";s:71:\"sha384-DZAoxBcs4G15aUXLX4vKbO53ye8L8AB/zg07HOVhIMVclhx8rdWye0AJSQl51ehV\";s:19:\"css/fontawesome.css\";s:71:\"sha384-PPeKwWhk5XZBVVq089DuhGmjaEVB1r+jdmx6jZrqzlef8ojhZXG+E/D6SP7uO1dk\";s:14:\"css/brands.css\";s:71:\"sha384-rmUpvtaCngUop5CYz7WL1LnqkMweXskxP+1AXmkuMSbImsUuy82bUYS4A8Syd3Pf\";s:11:\"css/all.css\";s:71:\"sha384-POYwD7xcktv3gUeZO5s/9nUbRJG/WOmV6jfEGikMJu77LGYO8Rfs2X7URG822aum\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-/s2EnwEz7C3ziRundAGzeOAoGYffu84oY4SOHjhI/2Wqk3Z0usUm9bjdduzhZ9+z\";s:11:\"js/solid.js\";s:71:\"sha384-agDKwSYPuGlC0wD14lKXXwb94jlUkbkoSugquwmKRKWv/nDXe1kApDS/gqUlRQmZ\";s:13:\"js/regular.js\";s:71:\"sha384-SQqzt64aAzh3UJ9XghcA//GE8+NxAIRcuCrrekyDokXP6Bbt/FYAFlV6VSPrZKwH\";s:17:\"js/fontawesome.js\";s:71:\"sha384-ISRc+776vRkDOTSbmnyoZFmwHy7hw2UR3KJpb4YtcfOyqUqhLGou8j5YmYnvQQJ4\";s:12:\"js/brands.js\";s:71:\"sha384-lc/yFuYW3B0EW9B2QSpod2KeBxq6/ZizGwAW6mRLUe3kKUVlSBfDIVZKwKIz/DBg\";s:9:\"js/all.js\";s:71:\"sha384-L469/ELG4Bg9sDQbl0hvjMq8pOcqFgkSpwhwnslzvVVGpDjYJ6wJJyYjvG3u8XW7\";s:16:\"css/v4-shims.css\";s:71:\"sha384-YIDcSvDDaIskj/WDlWwjrNdK194YAGWc1CScdo2tXl3IQVS1zS07xQaoAFlXCf1P\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-2MWWLQq91kFwloAny7gkgoeV33bD/cE3A9ZbB2rCN/YAAR/VEHVoDq6vRJJYTaxM\";s:13:\"css/solid.css\";s:71:\"sha384-osqezT+30O6N/vsMqwW8Ch6wKlMofqueuia2H7fePy42uC05rm1G+BUPSd2iBSJL\";s:15:\"css/regular.css\";s:71:\"sha384-4e3mPOi7K1/4SAx8aMeZqaZ1Pm4l73ZnRRquHFWzPh2Pa4PMAgZm8/WNh6ydcygU\";s:19:\"css/fontawesome.css\";s:71:\"sha384-BzCy2fixOYd0HObpx3GMefNqdbA7Qjcc91RgYeDjrHTIEXqiF00jKvgQG0+zY/7I\";s:14:\"css/brands.css\";s:71:\"sha384-Px1uYmw7+bCkOsNAiAV5nxGKJ0Ixn5nChyW8lCK1Li1ic9nbO5pC/iXaq27X5ENt\";s:11:\"css/all.css\";s:71:\"sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz\";}}}s:5:\"5.4.2\";a:5:{s:7:\"version\";s:5:\"5.4.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-10-25T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:2967;s:4:\"free\";i:1391;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-6TX+vqRZyQq+vB25wCb101/vY510EN37QZgs5f1dfG1+QYuIoQGdFFV8sx8W36AL\";s:11:\"js/solid.js\";s:71:\"sha384-XlRgTEYU6HJ02+ZCuXW2/CgjnpV2+8FuQPTJSJ/+ZCQS5ZXRfIS5FHDRhMvOL++d\";s:13:\"js/regular.js\";s:71:\"sha384-f1yYCENdJ+9NE5J2T8weglyMCtTqRJOeGP9qaLwO43aYY0PVeuAfmsGgTegByFW6\";s:11:\"js/light.js\";s:71:\"sha384-hOiC7FL4572/E3aEEeWM6dF3ch/qFz59R91pAJqjYEKHBXN5u7e2oAYAgeSGF1VB\";s:17:\"js/fontawesome.js\";s:71:\"sha384-zMrS036pMtJ0Ukzo5x2YiTrYDGDaoeO8Yd0IHhI/PaEnfrY/nMHqvKME8C7dHhUE\";s:12:\"js/brands.js\";s:71:\"sha384-LVdS6BqWBV1V0OyGzWK0HrGN4uDZbpO6hja1oVh86MhthieoER2crgKS/KsaiN8E\";s:9:\"js/all.js\";s:71:\"sha384-+lZy0zDh4RS9ZG6+Od6x6irKqoBH4NSy0m7IW8UGbzGZ/rupt9Cd9NdEb5S7+V9w\";s:16:\"css/v4-shims.css\";s:71:\"sha384-ah4vMGE5UgKcCIB90FZl8BOcusXAVTm070n1UuOrNQA9QwkgnhqASrop/Oblr6wY\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3f24zIRoR/ma/cnROK52rTVZpgCXKQ92/89RDq7GO7/9IxIl3VQV/tF6ecGgvUs8\";s:13:\"css/solid.css\";s:71:\"sha384-SYCdBxlsgGngJi9eiKt5Tk6UtOJs1Jq5eU3yZDZ+hOe0GKk/obXhHy50IYVVdJro\";s:15:\"css/regular.css\";s:71:\"sha384-+OdrK32QtByk1ipA7b4+uLddrcWs2bx3nn37Dl5h98PW1AYKIrRZKveBl6AcpgcD\";s:13:\"css/light.css\";s:71:\"sha384-n0uyPlhqrQyWPPzm6+B9xDeZKCD81RgGRsTO7PQt3McgMXSR9zjhGaD5cXHwk+D8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-XkH+Vmez3OoFo52K+SkBE61xZ7vKh9tF35gL9Yf8rD3RtKUqIQGoTJTsLdR5u8rt\";s:14:\"css/brands.css\";s:71:\"sha384-RjTk1OTKX8K8S4QfwhFOfbNSbQxLFgN6jqDw05QuBDDEbc/x6xlPtkPSO4vA1TtI\";s:11:\"css/all.css\";s:71:\"sha384-zhaLg9HKxTxDljOPXpWHGn91XMDH+sYAWRSgvzHes290/ISyrNicGrd6BInTnx3L\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-fzYnAZZYxpOQTjc3Y1eP04DGdMLAy+PeiZ8+ICh4FDLkJR/NJiAgKgK2vEpGx3au\";s:11:\"js/solid.js\";s:71:\"sha384-OQNCj138epg9A13jaL9L/d5vMlK2jyPL4aOgi37KYt07aZARbv/eFGp/wnrCxkW5\";s:13:\"js/regular.js\";s:71:\"sha384-Uj7q9rRb3eJNp0j1kXwOBgEWDGbAiJ7Dcuz4hLRQdtza6pawbo/Bmwgr58THzHyR\";s:17:\"js/fontawesome.js\";s:71:\"sha384-n1qPouQQJ9VNZnZeNZWSDiclpIOJwZBS2bkD6rEX+DTmMXTKXBVCZw2cGbU/I17z\";s:12:\"js/brands.js\";s:71:\"sha384-i1RNpxOOEnRm63Ii3TuV0aM8bJ+6Pv6XHpRSJbN7QlIzZIsl7m36R0GhOTTGN3F9\";s:9:\"js/all.js\";s:71:\"sha384-wp96dIgDl5BLlOXb4VMinXPNiB32VYBSoXOoiARzSTXY+tsK8yDTYfvdTyqzdGGN\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SlbnWxwEHTVYxDLrpIRrG2BpsTpWALbJ6Tx5Fq+XNHRBL7xI6xwhVpuUGrrbLBXe\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+moUZLBX5mmeUnjaImkzlTo5cXyQWAvzbqQapNFd7+dGIaap0koo0rtfe8lHD38R\";s:13:\"css/solid.css\";s:71:\"sha384-uKQOWcYZKOuKmpYpvT0xCFAs/wE157X5Ua3H5onoRAOCNkJAMX/6QF0iXGGQV9cP\";s:15:\"css/regular.css\";s:71:\"sha384-OEIzojYBMrmz48aIjVQj7VG38613/sxpP58OW9h5zBYC7biGFlv9tyu5kWmaAYlF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-HU5rcgG/yUrsDGWsVACclYdzdCcn5yU8V/3V84zSrPDHwZEdjykadlgI6RHrxGrJ\";s:14:\"css/brands.css\";s:71:\"sha384-BCEeiNUiLzxxoeYaIu7jJqq0aVVz2O2Ig4WbWEmRQ2Dx/AAxNV1wMDBXyyrxw1Zd\";s:11:\"css/all.css\";s:71:\"sha384-/rXc/GQVaYpyDdyxK+ecHPVYJSN9bmVFBvjA/9eOB+pb3F2w2N6fc5qB9Ew5yIns\";}}}s:5:\"5.5.0\";a:5:{s:7:\"version\";s:5:\"5.5.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-11-02T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3157;s:4:\"free\";i:1409;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-8sPM0eSaqmdF9ruedfsxEZfxVcIp0cwhosrBhWl/Q4t1eQSMXl6tYenNe87MraQ6\";s:11:\"js/solid.js\";s:71:\"sha384-VxezC2Q+YoC+yUILib+HlmOsFiqNzYtQIXsHYY6ST7QZVfgBNs2giKE97ijGMgUH\";s:13:\"js/regular.js\";s:71:\"sha384-gbY/GPDSEaMQ9cjqWLbLcaxUCtCeExO9oUEZLrOQHfFLoV5ouwIrqF6mGnjyIOc2\";s:11:\"js/light.js\";s:71:\"sha384-SVEn5VmGP1fxV9V5TOZOTwL9dCg50Yb0Xn4fbV9Ic/kp8we6kv4zPVcs9seU0675\";s:17:\"js/fontawesome.js\";s:71:\"sha384-oPma1F1txBbqTG+1O7BEx0A/qFtD+R661ULJLmI9RDQ0PfbRP1tQU3vBIBbJIAxL\";s:12:\"js/brands.js\";s:71:\"sha384-oMyy7aPCmlH4ZGEaKHW+zAoaKDWIFh6iqJ53lusMpn+Kp8SN5nJ2kzkP1qd0+icb\";s:9:\"js/all.js\";s:71:\"sha384-3yBLeJ4waqGSAf4A8pjZ13UF7GuhgbdKnBQvIp/TkWoXtQbtwjlIPNjkDRJ46UCn\";s:16:\"css/v4-shims.css\";s:71:\"sha384-SNyDPad7e8WM4Nu7W/f1x3qsDrLxMCvXurQfwNdp418WWmkkTQuPBGYDZA6rSg0X\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-a2sfkqnB9p/zq6OT4QhuD80qQZ70fGDmo4JUNqP5E7NIICvgRNPjIBkQE/Qcl3SN\";s:13:\"css/solid.css\";s:71:\"sha384-YIyAArzQv8q6Av1kr9cwxHhFcfNBUaolJindR2XO8E3OLp6z3d8My3oWLd33ET7M\";s:15:\"css/regular.css\";s:71:\"sha384-UPs+YiUhgn0/I0swkJmk3PSj3SWmzDrM+S0S09xLI/UUmHBU7ivRHryI3uVL6H+m\";s:13:\"css/light.css\";s:71:\"sha384-33RmjeesW9BZ4wR2Gm3n4iBXOvGTto4znqL2kZleiRanWDxM59IHIq5RsbRioqxb\";s:19:\"css/fontawesome.css\";s:71:\"sha384-srL3Qh9R/n855m4o5fegS//B2q0R1md7z6ndDYaPj8iEp0j0IuKdFVWMY0JosKPF\";s:14:\"css/brands.css\";s:71:\"sha384-t0iPfoyIjBoVR2Kw/65HArpRWQy0/xKBUmdEVTs5VYBb/yiPZxMY6egc9MROr/Og\";s:11:\"css/all.css\";s:71:\"sha384-j8y0ITrvFafF4EkV1mPW0BKm6dp3c+J9Fky22Man50Ofxo2wNe5pT1oZejDH9/Dt\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vBDTb50BKnwbvJZ5ZC5dsGJNQydTI7ZoAjCeJkdta6nSewwGXCnppKI5lrIQX4Qu\";s:11:\"js/solid.js\";s:71:\"sha384-Xgf/DMe1667bioB9X1UM5QX+EG6FolMT4K7G+6rqNZBSONbmPh/qZ62nBPfTx+xG\";s:13:\"js/regular.js\";s:71:\"sha384-XrvTJeiQ46fxxPrZP6fay5yejA2FV4G1XsS8E4Piz6Fz+7FaEFTw7A7GR972irVV\";s:17:\"js/fontawesome.js\";s:71:\"sha384-bNOdVeWbABef8Lh4uZ8c3lJXVlHdf8W5hh1OpJ4dGyqIEhMmcnJrosjQ36Kniaqm\";s:12:\"js/brands.js\";s:71:\"sha384-S2C955KPLo8/zc2J7kJTG38hvFV+SnzXM6hwfEUhGHw5wPo6uXbnbjSJgw3clO4G\";s:9:\"js/all.js\";s:71:\"sha384-GqVMZRt5Gn7tB9D9q7ONtcp4gtHIUEW/yG7h98J7IpE3kpi+srfFyyB/04OV6pG0\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TTjEZR8VsD+LjNa98drkrTRYhdUEaS3gAGE7PGnx2qkePR3fZtnVNoAfxPNyf+IQ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NKdowA6EzI4CWz/dLjoC7dhVj+KczesQbwkbt6y3aRTi1JPZBy2uOocsmHmYvkux\";s:13:\"css/solid.css\";s:71:\"sha384-rdyFrfAIC05c5ph7BKz3l5NG5yEottvO/DQ0dCrwD8gzeQDjYBHNr1ucUpQuljos\";s:15:\"css/regular.css\";s:71:\"sha384-z3ccjLyn+akM2DtvRQCXJwvT5bGZsspS4uptQKNXNg778nyzvdMqiGcqHVGiAUyY\";s:19:\"css/fontawesome.css\";s:71:\"sha384-u5J7JghGz0qUrmEsWzBQkfvc8nK3fUT7DCaQzNQ+q4oEXhGSx+P2OqjWsfIRB8QT\";s:14:\"css/brands.css\";s:71:\"sha384-QT2Z8ljl3UupqMtQNmPyhSPO/d5qbrzWmFxJqmY7tqoTuT2YrQLEqzvVOP2cT5XW\";s:11:\"css/all.css\";s:71:\"sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU\";}}}s:5:\"5.6.0\";a:5:{s:7:\"version\";s:5:\"5.6.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-07T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3363;s:4:\"free\";i:1479;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-Rr25noDuBAtBUFs9feRsF3EK8Pw5bWuhYxD7ztcDUJqR/eiCpNPGIeyO5Ago6pYW\";s:11:\"js/solid.js\";s:71:\"sha384-71d190zi1266uo3WuvCJ77V1YdXxDfm5GPMySGFKTMHsoHaxKhPe5XkKaH9iPLWC\";s:13:\"js/regular.js\";s:71:\"sha384-LvwwgOzFfwTikawPye02NmwONhyBLBbmu04J+IuLBS6HdNHX3JnRqY80mscKVLTH\";s:11:\"js/light.js\";s:71:\"sha384-6DMqAgIR8HN9OqBF3zfhQ4Tmh+KO9Sf0QAwxGkiaKO51dFGBBxBTmdOSneYESZZ0\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Oa9P+sg4Q/5Yo0a/UoRAG8zLSexWLxLgbPb12tgvs/swrfePVf6IdrwoW2RGV2pU\";s:12:\"js/brands.js\";s:71:\"sha384-TN18fDSDUbMxI3DK3z2G8Pl68N7jvVjWPBx8z0m7YhoWKnmGdKRJ6S90IcyeUXUy\";s:9:\"js/all.js\";s:71:\"sha384-rDdEqfkiaN9iEfS6XrBzTxL5wVFzBoMsyHmoAIl/T7VdxJvGYuM5bDlDOkmE6r3C\";s:16:\"css/v4-shims.css\";s:71:\"sha384-L7wiz9NeFS+vFpG/jl0zBsE7EqrVfeNoaHhnvxlsfwihUr9FIbDnfQqv5r8o02wQ\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-NYMicmsVmKaI5/JVN8JamOLMuIrbzeu4Gc+cike3jcoDpaLfMtvWPJeNhnx8K8x0\";s:13:\"css/solid.css\";s:71:\"sha384-RYuivM1ikcxEL+96Q/7B/CcvyswPRuOatldvqvk+Bm3hwVKZUjay1ohuPUyD9ZYk\";s:15:\"css/regular.css\";s:71:\"sha384-voao2F8iKUwwSMRhLJ982edrRSHOmc5v5rvQ/5aH5pvSAx1aoL6usygGSRz3jfHF\";s:13:\"css/light.css\";s:71:\"sha384-aofICWgqJQbZZCaWEU7H0ULLqXTBu/DAALblEYqLfQSjb2ASOw0tADOdJ5rmVDWL\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NFsDS9VURN70zaqw67F1OtJ6MtdeCrHeGMD1KzqIv5ft0JiHgVtV7u+v09yR+iEZ\";s:14:\"css/brands.css\";s:71:\"sha384-84OQfm1oTwjnXmujNUnQC09L4G7mglZspQwfSNPvf5V3zAA1sdvqbIigA9AWY5DB\";s:11:\"css/all.css\";s:71:\"sha384-rTQdcTFdT69CgbBErourkScWQ6j5WQ4aAoCF0UyPhog3PNysM/xz/kqshWKP4NLA\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-08SAgv7bDUyzB5O71dehOCZ42IpryGqW/G+GdxeFmBfaB71QIZWe5ZXBFKYFTEu4\";s:11:\"js/solid.js\";s:71:\"sha384-akyniW0Jfrt1Z7kvRmaF2fkq9vuVQAPEGN4qq7s17l9PG3zz7FThoWnfVxpvnUn9\";s:13:\"js/regular.js\";s:71:\"sha384-gy4pB6yY1j4DPCG6rZcE6NX1Lnqz8ZJEfotVUvCN2EGwlUS3WUHxcn8rrEOYiyiS\";s:17:\"js/fontawesome.js\";s:71:\"sha384-tHFnt8QELQGC1IJzcTUX5zFEnn/FLVa0ADTmxRyeSmWukJ4umWnJbwiMTkw/bKEK\";s:12:\"js/brands.js\";s:71:\"sha384-GEA3+tbEaglIUriKygE2OQX9k7YrAMJ5oZF0mb8Xx7hUmTTWDuQDtPY4l13jl99w\";s:9:\"js/all.js\";s:71:\"sha384-z9ZOvGHHo21RqN5De4rfJMoAxYpaVoiYhuJXPyVmSs8yn20IE3PmBM534CffwSJI\";s:16:\"css/v4-shims.css\";s:71:\"sha384-HiCW4rrGA9WlUM512GMhD+YfcMidwWluZzyu+X55gfVYgAPrlIkG5BnHyAl/VHJO\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-nHELFCUV8tffuhz6PkFYcEl6VCneIQgaHNbLkOHukzJs12+rUiKwsVmVhbqhEAq7\";s:13:\"css/solid.css\";s:71:\"sha384-COsgLGwf6vbsibKzWojSqhIjQND/Sa0RWQ5BHFrKOz5JrUObnh5GEBUH2oZwITuM\";s:15:\"css/regular.css\";s:71:\"sha384-yWI8JeRmJFie/rrEn4skBd/XXXfUWuc7wAhaj9q71PzjdYD3JslHSEU7BXCCcVyP\";s:19:\"css/fontawesome.css\";s:71:\"sha384-J4287OME5B0yzlP80TtfccOBwJJt6xiO2KS14V7z0mVCRwpz+71z7lwP4yoFbTnD\";s:14:\"css/brands.css\";s:71:\"sha384-oT8S/zsbHtHRVSs2Weo00ensyC4I8kyMsMhqTD4XrWxyi8NHHxnS0Hy+QEtgeKUE\";s:11:\"css/all.css\";s:71:\"sha384-aOkxzJ5uQz7WBObEZcHvV5JvRW3TUc2rNPA7pe3AwnsUohiw1Vj2Rgx2KSOkF5+h\";}}}s:5:\"5.6.1\";a:5:{s:7:\"version\";s:5:\"5.6.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-12T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3363;s:4:\"free\";i:1479;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-ts+GFi6rOAISeHC+EnLaj6AOSoosWr3TALIaYSeHCVsNHkGLlTtzdbMvolIe6tG7\";s:11:\"js/solid.js\";s:71:\"sha384-Pl3KUQLNwa33i6dvnL77HMDxZPk93eoi1kB5xZ0eGKgTEt39iQkHdSM6/w53By9e\";s:13:\"js/regular.js\";s:71:\"sha384-8VWoI12VOwcfxYszEUreYXR4Jh1+oxv+mfsVISgPJTsc2Ftw4RC+bO719C+PunjY\";s:11:\"js/light.js\";s:71:\"sha384-hy7ipunNmCKP7KpzkasGow2eTRYx9IbxV0BvBqlWLWRu8mlWMNrj9y6qOLEnxIuF\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ya+lFT8MCnVaSXkMxO4FEUsv4BG1VrVAMY0PiCnmJ4Sq57zoarae8T2EgioHiaMA\";s:12:\"js/brands.js\";s:71:\"sha384-+4YdTIsot+hvYL7nKQ9cJs7OWaFvJ7ZTkVretfEoX8uDiTED9tumG/9RsRmlW3jX\";s:9:\"js/all.js\";s:71:\"sha384-ncMWtRMSOo+cLmfdaa6vmMGzBJKysBDF9tq5YK1MAnAjcyipdW2vgTS1jOntY4fs\";s:16:\"css/v4-shims.css\";s:71:\"sha384-c2aTxrKw0nWEPlLqENAD5t3J3Ajs/o5LBudKFP44hexDYKKQTgRCAaECkBk+p3L9\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-fjim8BUuF/D2Y8Qyr4U5iLdeKqzyQe927qD4SIdbPDyX2iSN6xNGhoyd2jTiw+Sx\";s:13:\"css/solid.css\";s:71:\"sha384-pbj30780YbUh3WmbEAhOL8tHgoaU4xrdmAN+RewL6HsW9EOMIIE4+6rerMXTfJXq\";s:15:\"css/regular.css\";s:71:\"sha384-ThqFFlbk+2bnAn1zc61SL7r8sFUVUkFvtsT+jYr1Jy6xTlvdcqzcerrDGrHqWv6j\";s:13:\"css/light.css\";s:71:\"sha384-QXb14MpvHKJr57ixwhGSXACaU/eGo/NwF/uWE97+C5QPdq8sLQhM1+WKDk6vando\";s:19:\"css/fontawesome.css\";s:71:\"sha384-GQK3B9PHv3SNzYUrdlEpL6CFKQlW/Co4va906SViL0F6U16Li47NXtvwWmFnetYk\";s:14:\"css/brands.css\";s:71:\"sha384-2k7wpGHb3PA1OZUtSqAk+nIVo2wgBQdEoL1F/FnC+/HHi2bh3N9aSstY0Af72gka\";s:11:\"css/all.css\";s:71:\"sha384-NJXGk7R+8gWGBdutmr+/d6XDokLwQhF1U3VA7FhvBDlOq7cNdI69z7NQdnXxcF7k\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-LqOeBjW8oAuwB6xooSoyjAV+CcJLQGftH6m0Xoo+mhJ0TlEAVR9jBsAXXpeEJlyP\";s:11:\"js/solid.js\";s:71:\"sha384-8Lgyylu0vfTGCXDKe435hJgX8s96c19R+dvpH0NHKdX47GA7TmMj+BDiZZ76qqhT\";s:13:\"js/regular.js\";s:71:\"sha384-+e+pqX41PD6VrFw9HZ3YKJHFT+SZoEMBmnMpLUpHrdd5BE46xHCrzap9c6kfTi9H\";s:17:\"js/fontawesome.js\";s:71:\"sha384-T6YzYwAGZAItTIkYlBzfwqa07o9R1AND3Lgt6Or6c5IdukY7tqShoryqwpKrpeIB\";s:12:\"js/brands.js\";s:71:\"sha384-rsLJp1pKbmeEMVcdsNJfAWZ9FQP5CrQt6Vikj/usZcTgrD28FhqYqKJn5XIaoXjm\";s:9:\"js/all.js\";s:71:\"sha384-R5JkiUweZpJjELPWqttAYmYM1P3SNEJRM6ecTQF05pFFtxmCO+Y1CiUhvuDzgSVZ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-s0z+GcIRRdtdjGfnyKRFh9Oaw3aasU/TFotdFmreqjf+a+Mks2Umj0CrlN0S9lqi\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-ir31wc9kqVZclsGL3U5IucynDpj1TeEzDCvxEWqw8QuxLFETRgirOiygjXdjId3z\";s:13:\"css/solid.css\";s:71:\"sha384-aj0h5DVQ8jfwc8DA7JiM+Dysv7z+qYrFYZR+Qd/TwnmpDI6UaB3GJRRTdY8jYGS4\";s:15:\"css/regular.css\";s:71:\"sha384-l+NpTtA08hNNeMp0aMBg/cqPh507w3OvQSRoGnHcVoDCS9OtgxqgR7u8mLQv8poF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-WK8BzK0mpgOdhCxq86nInFqSWLzR5UAsNg0MGX9aDaIIrFWQ38dGdhwnNCAoXFxL\";s:14:\"css/brands.css\";s:71:\"sha384-whKHCkwP9f4MyD1vda26+XRyEg2zkyZezur14Kxc784RxUU1E7HvWVYj9EoJnUV7\";s:11:\"css/all.css\";s:71:\"sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP\";}}}s:5:\"5.6.3\";a:5:{s:7:\"version\";s:5:\"5.6.3\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2018-12-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3365;s:4:\"free\";i:1480;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-2ZaaAuh8tTVN1nHRrlXAX1tz8fGhZDgusJdBI5BBGycCq37AUonw8dHlPpx7iD6N\";s:13:\"js/regular.js\";s:71:\"sha384-nX7teCj1FtQErhxXjr+JWXfe4EjU6KlgeVBHAzQ/L95eWzwx+W1+HuQGmxZT9VkS\";s:11:\"js/light.js\";s:71:\"sha384-E2rKHkorMllWJmt2GKXlwZ3+kPl6i3FrJ8ihFkf6F7F/AtGvuXY21bQC8mhz2Po+\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:9:\"js/all.js\";s:71:\"sha384-4Gm0M5DjJ0zGaEtLu0ztNIoHWiuJ5rKiaVlpZKeNqXAW49eIIa2ymxb3C4c3uEXR\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:13:\"css/solid.css\";s:71:\"sha384-5XPOduYq6F78ZOuHxFHpQJCD2l7aCHCf0+o8qKTD2VfqJTgPT3YkyuBGsDSrVsic\";s:15:\"css/regular.css\";s:71:\"sha384-IXqJGQI1K0IzdpdY2ASrRbDgPr1rUKzDAA90uL7iX1hPQf6Tkve9Z82TUVWm9aje\";s:13:\"css/light.css\";s:71:\"sha384-ouQ4uivIto2ZdBS6+torZMbImJhWA6/m7/CAGY9z0FNDmoAF6uWAEnavvIsR1EBt\";s:19:\"css/fontawesome.css\";s:71:\"sha384-toEUmnrGu+eq8XUD6ovsr/vFX+R3v9+FUGAnpef+uwGKMCeqZkcZfkXQ0Pls5WS7\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:11:\"css/all.css\";s:71:\"sha384-LRlmVvLKVApDVGuspQFnRQJjkv0P7/YFrw84YYQtmYG4nK8c+M+NlmYDCv0rKWpG\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-F4BRNf3onawQt7LDHDJm/hwm3wBtbLIfGk1VSB/3nn3E+7Rox1YpYcKJMsmHBJIl\";s:13:\"js/regular.js\";s:71:\"sha384-V+AkgA1cZ+p3DRK63AHCaXvO68V7B5eHoxl7QVN21zftbkFn/sGAIVR7vmQL3Zhp\";s:17:\"js/fontawesome.js\";s:71:\"sha384-treYPdjUrP4rW5q82SnECO7TPVAz4bpas16yuE9F5o7CeBn2YYw1yr5oC8s8Mf8t\";s:12:\"js/brands.js\";s:71:\"sha384-VLgz+MgaFCnsFLiBwE3ItNouuqbWV2ZnIqfsA6QRHksEAQfgbcoaQ4PP0ZeS0zS5\";s:9:\"js/all.js\";s:71:\"sha384-EIHISlAOj4zgYieurP0SdoiBYfGJKkgWedPHH4jCzpCXLmzVsw1ouK59MuUtP4a1\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-KHV7fADs212mr+U2tmuDnxozv2BzTX1qhxPoZ/lT2QcUFkjwat694MI3AzyiVJ+q\";s:13:\"css/solid.css\";s:71:\"sha384-+0VIRx+yz1WBcCTXBkVQYIBVNEFH1eP6Zknm16roZCyeNg2maWEpk/l/KsyFKs7G\";s:15:\"css/regular.css\";s:71:\"sha384-aubIA90W7NxJ+Ly4QHAqo1JBSwQ0jejV75iHhj59KRwVjLVHjuhS3LkDAoa/ltO4\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jLuaxTTBR42U2qJ/pm4JRouHkEDHkVqH0T1nyQXn1mZ7Snycpf6Rl25VBNthU4z0\";s:14:\"css/brands.css\";s:71:\"sha384-1KLgFVb/gHrlDGLFPgMbeedi6tQBLcWvyNUN+YKXbD7ZFbjX6BLpMDf0PJ32XJfX\";s:11:\"css/all.css\";s:71:\"sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/\";}}}s:5:\"5.7.0\";a:5:{s:7:\"version\";s:5:\"5.7.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-01-28T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-OzCiQJ65BS/RiwFjTWyem+uRtZ4/LnrVVbwHTT8fR5Q9rYqAaavyOK51RDxkXQzm\";s:13:\"js/regular.js\";s:71:\"sha384-JZmzMsvgUATRcNmXpyJHLhiqsREsPN/GBj7O5ifVfRU1o4vBp2dsjawGzYzl0QVW\";s:11:\"js/light.js\";s:71:\"sha384-Vs12SjRkIvphC81scjUNowpLYnSOLOrSGxOwVe00oEvWto49wVgjd6BfdeCPcArI\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-uyhTADGMAJuHgGNdH+rozTpOkfXUORTgjTmMBtxR8ISQjOs+IIWb8UBn9ixSd4xo\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-av0fZBtv517ppGAYKqqaiTvWEK6WXW7W0N1ocPSPI/wi+h8qlgWck2Hikm5cxH0E\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-qD/MNBVMm3hVYCbRTSOW130+CWeRIKbpot9/gR1BHkd7sIct4QKhT1hOPd+2hO8K\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\";}}}s:5:\"5.7.1\";a:5:{s:7:\"version\";s:5:\"5.7.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-02-01T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-5atZgfYD4MHp6kAnxjw4yM3binN4Yh5XXKAIO6m2kIB9CqdRUladdvTdffLnTK3N\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Qmms7kHsbqYnKkSwiePYzreT+ufFVSNBhfLOEp0sEEfEVdORDs/aEnGaJy/l4eoy\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";}}}s:5:\"5.7.2\";a:5:{s:7:\"version\";s:5:\"5.7.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-02-12T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3582;s:4:\"free\";i:1500;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-q8jijYZFNY4pjTA22Qe+33WWGmm0tpPPfMEdUxmXNoEkN5YeCMJYxGcl+XiCckQh\";s:11:\"js/solid.js\";s:71:\"sha384-eLZVpmyzMTRsfwRGkcmyu0PXR5qqYDBCSh5PoYLdWFfDmMIibSuru0Blk+nq1Vfm\";s:13:\"js/regular.js\";s:71:\"sha384-SdSeoV46BZSFmxvlUQwl3ImF6ton2ST4pPzYOmTTkFUm+UjdzORM0pTtF0sIHydx\";s:11:\"js/light.js\";s:71:\"sha384-ua13CrU9gkzyOVxhPFl96iHgwnYTuTZ96YYiG08m1fYLvz8cVyHluzkzK9WcFLpT\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-I3Hhe9TkmlsxzooTtbRzdeLbmkFQE9DVzX/19uTZfHk1zn/uWUyk+a+GyrHyseSq\";s:16:\"css/v4-shims.css\";s:71:\"sha384-U1d6UqL28bnGVHunjKzlOZ8IatZ4il21uTor0FijL3224okgH54hOnOVB50CDK0M\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-j+2fZ2qAg9GyYKkVpuwm+HLQVz6EYCaTqS3KKx8oectYXMgm4bRmohzCfEvi5j7J\";s:15:\"css/regular.css\";s:71:\"sha384-4Cp0kYV2i1JFDfp6MQAdlrauJM+WTabydjMk5iJ7A9D+TXIh5zQMd5KXydBCAUN4\";s:13:\"css/light.css\";s:71:\"sha384-puvvQVSC+mXL7INuI0i5Q7QkwwIyYIBJ7caGHiUXD7FndtoyNd78NxgvuBJAYI2m\";s:19:\"css/fontawesome.css\";s:71:\"sha384-iD1qS/uJjE9q9kecNUe9R4FRvcinAvTcPClTz7NI8RI5gUsJ+eaeJeblG1Ex0ieh\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-6jHF7Z3XI3fF4XZixAuSu0gGKrXwoX/w3uFPxC56OtjChio7wtTGJWRW53Nhx6Ev\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-miy+FCz1uGOaEWy6IaOB4X2pp60+e6jaSECmnvz+qo7Os/Q1oflHUIrS0JdfNafk\";s:11:\"js/solid.js\";s:71:\"sha384-6FXzJ8R8IC4v/SKPI8oOcRrUkJU8uvFK6YJ4eDY11bJQz4lRw5/wGthflEOX8hjL\";s:13:\"js/regular.js\";s:71:\"sha384-Gxfqh68NuE4s0o2renzieYkDYVbdJynynsdrB7UG9yEvgpS9TVM+c4bknWfQXUBg\";s:17:\"js/fontawesome.js\";s:71:\"sha384-xl26xwG2NVtJDw2/96Lmg09++ZjrXPc89j0j7JHjLOdSwHDHPHiucUjfllW0Ywrq\";s:12:\"js/brands.js\";s:71:\"sha384-zJ8/qgGmKwL+kr/xmGA6s1oXK63ah5/1rHuILmZ44sO2Bbq1V3p3eRTkuGcivyhD\";s:9:\"js/all.js\";s:71:\"sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP\";s:16:\"css/v4-shims.css\";s:71:\"sha384-DrjN/yxBJAblffPf548CARk30Xz2Glal7YO5kqQ8c8GHgrAMXZN2ZDTGwV9xTDJF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-3oHRxwaq4aKTY0NVNLfynvnb/U7E0MGiosKUE4cNMIDRezfXvssVlwQ+xsuBLbXf\";s:13:\"css/solid.css\";s:71:\"sha384-r/k8YTFqmlOaqRkZuSiE9trsrDXkh07mRaoGBMoDcmA58OHILZPsk29i2BsFng1B\";s:15:\"css/regular.css\";s:71:\"sha384-IG162Tfx2WTn//TRUi9ahZHsz47lNKzYOp0b6Vv8qltVlPkub2yj9TVwzNck6GEF\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4aon80D8rXCGx9ayDt85LbyUHeMWd3UiBaWliBlJ53yzm9hqN21A+o1pqoyK04h+\";s:14:\"css/brands.css\";s:71:\"sha384-BKw0P+CQz9xmby+uplDwp82Py8x1xtYPK3ORn/ZSoe6Dk3ETP59WCDnX+fI1XCKK\";s:11:\"css/all.css\";s:71:\"sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr\";}}}s:5:\"5.8.0\";a:5:{s:7:\"version\";s:5:\"5.8.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-03-20T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1513;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-gaNKDFtFZuAyZDkB8Wov1Vl24lMu5MD5MXLmUSu+4HzB8tTVwemJnhqN4Zuj27wd\";s:11:\"js/solid.js\";s:71:\"sha384-jOmpRjxTFmJAVhf7+H7o9joWtQWHRZLdr+B25WojM1yfhB9wFkDvQ3x0VDDn4aAI\";s:13:\"js/regular.js\";s:71:\"sha384-GoKOHat5yLSUYiGMfLJkuCErUZrNlW+2FeFYuKOt7sUWbqvMQOqfB+mdpfCU/8Q4\";s:11:\"js/light.js\";s:71:\"sha384-+itlrN2dvS1RqmWnkLQkDqzANbdKqtt6JyQfE/DXxFnhg/PXf0ufRBCSp0c6q81i\";s:17:\"js/fontawesome.js\";s:71:\"sha384-aoV9M7ZLyivlmo8GKrkeWiOUQzBnYBpP6U8gW7WXfhssy+HtO87KzowcBokSiK3g\";s:12:\"js/brands.js\";s:71:\"sha384-XLy4uPbRNbMJUgEm6JLmHI784E68XjgSbheIn0fP/6GdZtCcsZmlXvceAGvhzKCh\";s:9:\"js/all.js\";s:71:\"sha384-gUdv3ElxXd3gVdbCqjppYoQanRONrQDSdaZY3zn1KeASeS8YGy+T/JDaD2ohyarV\";s:16:\"css/v4-shims.css\";s:71:\"sha384-lRITDKAHusCdCcsQiEA2IIoqExMRD36Tbn9CZj00L8klRpDyMeOoPSv6ubcNAHux\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-BUeh/IoVXY+o863GdrQzogOOSo3ABFpxuc9xZhQVnsM2T2vKmrpHGZwaEqqX/SZs\";s:13:\"css/solid.css\";s:71:\"sha384-maIT5Qg1FqlJhNYpN2IgLAb5XPLY8CqZ7tKBQyjHh+nx/7JXsI5bp+8JHnUgeuyw\";s:15:\"css/regular.css\";s:71:\"sha384-iUhpWyroENmdb/oNEGUdCk4J+TfFOm/SNYi79nN/Hb1aQgjofylAAuRTUfpK2yP1\";s:13:\"css/light.css\";s:71:\"sha384-YmipRqYc8Wly1koaxcpAPTnvJIqXBN4Ue5+l0drZn34sdM+UufP6v8D8/s9xxXOI\";s:19:\"css/fontawesome.css\";s:71:\"sha384-/0C3VuTlEzBany89/Wf2OJLSGrduLCC28kuoGL/PCGJjGj01pVtiqOcgZZ9AtlET\";s:14:\"css/brands.css\";s:71:\"sha384-OxPYtFc8yWHWBo2MFY4rHs5dKcTpNGuyft0hQ+K/vSUJA21jrxi+Py412o2wMvsL\";s:11:\"css/all.css\";s:71:\"sha384-/pOR6TNYPdUaQQQRKQ4XHznZ4U2K/Lscb3u6jshUngC/31fLTuyX9FZb24gp4O3J\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-l9bFz0TmR1ecMQdb9mzBeiLLX3z0mqeK0Bsxhim3nnHB9PoA6o3FUumLH7K6W6/D\";s:11:\"js/solid.js\";s:71:\"sha384-prcFDC6iTvvWsx2iSZtbDdeMVWWOtxcQXXagr9uPHwi42uae31Y3Q17eehHuC0JL\";s:13:\"js/regular.js\";s:71:\"sha384-IQnlolMpq26nEj6AOd6JOnY2jqCa69uFBqCGBCWSm4EFZYprebVtp3Z2xVLMElvs\";s:17:\"js/fontawesome.js\";s:71:\"sha384-TAztyRuTlqgZ97tz982rMo44MRC58wyCC0pqKZY3cKWJNkK00qMd3DhQ7R25jpCe\";s:12:\"js/brands.js\";s:71:\"sha384-Gt4maPu5ZO/PkTh32sKMYmmCLGuWtMkv5YBtFZpx4Tu+Of3kFZPYBw9iD/pi4L6s\";s:9:\"js/all.js\";s:71:\"sha384-ukiibbYjFS/1dhODSWD+PrZ6+CGCgf8VbyUH7bQQNUulL+2r59uGYToovytTf4Xm\";s:16:\"css/v4-shims.css\";s:71:\"sha384-IaQiZkMW7NRKIS04GeT98++WyQ6RNaEQlHoHoDrhU+hhCJE4EkfL7itJyj/vanQT\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-5ywFB7dcUP6RcAWMLvCE58MQE5YMXWSPjly1IqItdN0w0TqoJD+w68U7C3ShoZRk\";s:13:\"css/solid.css\";s:71:\"sha384-n4xPrkfCJ3FzmPwM/Nf1QQu7Qx6oDcsbMp+qPOxrJ5w0Tq19ZWd9ylcMWkzKEpwP\";s:15:\"css/regular.css\";s:71:\"sha384-Vma7aWQBdmjVfr98uRd1HcA/r6wPYrlNrIvQBJhDCvZi3X9gVuHtqUKUYep/1KKk\";s:19:\"css/fontawesome.css\";s:71:\"sha384-Sbwc59I1SOoVoCGgBCwAe/M1j5a9cHixHv/7x9vOxORnT73jUaxyK0paobkk3JSt\";s:14:\"css/brands.css\";s:71:\"sha384-5G2m52y/zN053yjBCyNXXotYpL2r5k1wg9aakiM5OgK9kdcCB68EECUce5vZiz/8\";s:11:\"css/all.css\";s:71:\"sha384-Mmxa0mLqhmOeaE8vgOSbKacftZcsNYDjQzuCOm6D02luYSzBG8vpaOykv9lFQ51Y\";}}}s:5:\"5.8.1\";a:5:{s:7:\"version\";s:5:\"5.8.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-03-21T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1513;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-J8Vif9iMSqb5RK45yq6+dnrM1lTP1oQcIHtKpoH0irzUJD/1gCK0pQgIr0hO+hta\";s:11:\"js/solid.js\";s:71:\"sha384-sJjbbGVKgAaulHq0KZK5MsUx9YmPj+4G3oY2vmW12iBNEFkkhObBezK0ZhSXchIs\";s:13:\"js/regular.js\";s:71:\"sha384-lv9QOXVC8fPRX14JTtgPGx1JjQPfjnqnp+bTlEnrW2FRawdJ4V8oe4Yq4kdfgJIp\";s:11:\"js/light.js\";s:71:\"sha384-avwGKnev1pyXYEbWxXSg9S4rpTsws+5vQpoj76SfcccEzOL162Ei8+z4a6AlaMeE\";s:17:\"js/fontawesome.js\";s:71:\"sha384-w6QYwIdCVqcYkHtaFutVu3VlDeu+pBFvlp7e0/tygMFwnWTl13KuVYfsp0ediPpA\";s:12:\"js/brands.js\";s:71:\"sha384-b4zU5X+9uCyU5wpeWBsEIFph6tTD8ERLbUs93uYGQGNqzbcfPDeY6c4jMhTAfBri\";s:9:\"js/all.js\";s:71:\"sha384-GBwm0s/0wYcqnK/JmrCoRqWYIWzFiGEucsfFqkB76Ouii5+d4R31vWHPQtfhv55b\";s:16:\"css/v4-shims.css\";s:71:\"sha384-68zdIccmue/irEHOgRiyNsWTZAGftSb6RkEtUhgaD+8213AXnbThq7m3WsO+B02H\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-LnvOeE4ntog9dzgq63i0OoI6jKPp3p0y693Fh4Fd4eOyx/UsAw0kHXbLKqML1p9R\";s:13:\"css/solid.css\";s:71:\"sha384-MkkthiFx7890Rev6vwUJO4gRT4yuH5tqMm/Wl4/n9/qptaBpiGcMyjfgq2K4h394\";s:15:\"css/regular.css\";s:71:\"sha384-ELBQxbOyxSZRtZPNO1mVgYkEzMOXFNmQY6CLV1nw+4IZoiHWeuwYTnABxPxxsuBE\";s:13:\"css/light.css\";s:71:\"sha384-3SMOAKCN8LYSMjkWz1ChDg4pHSLtD+LuKXaZoHxE1oyDneLR6Ebjm3XHMHO9fWu3\";s:19:\"css/fontawesome.css\";s:71:\"sha384-4HqGlagEHMyfaDQVabl1wx7GCtGw6hDl3sKJEhqQjOCrXrvizhaA2j4hK8Piewtr\";s:14:\"css/brands.css\";s:71:\"sha384-9Wenwezdk1eEhfcpps+Heco4zWw6KuZ2VlevoPomUwWYYZd3nBX0kZ1hBV2zSIKF\";s:11:\"css/all.css\";s:71:\"sha384-Bx4pytHkyTDy3aJKjGkGoHPt3tvv6zlwwjc3iqN7ktaiEMLDPqLSZYts2OjKcBx1\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-DWlD0qU0+4WTFKXrFbt8wXq/1NHvOGT8vwllYM0W2gIeqgaCC3bZ0U464mDtbR70\";s:11:\"js/solid.js\";s:71:\"sha384-IA6YnujJIO+z1m4NKyAGvZ9Wmxrd4Px8WFqhFcgRmwLaJaiwijYgApVpo1MV8p77\";s:13:\"js/regular.js\";s:71:\"sha384-Uc9toywOA44owltk1MWl0lQZ+L0mBzJkLQcdif6+JtG9izvok9DLJtCZX57Uq3k2\";s:17:\"js/fontawesome.js\";s:71:\"sha384-EMmnH+Njn8umuoSMZ3Ae3bC9hDknHKOWL2e9WJD/cN6XLeAN7tr5ZQ0Hx5HDHtkS\";s:12:\"js/brands.js\";s:71:\"sha384-rUOIFHM3HXni/WG5pzDhA1e2Js5nn4bWudTYujHbbI9ztBIxK54CL4ZNZWwcBQeD\";s:9:\"js/all.js\";s:71:\"sha384-g5uSoOSBd7KkhAMlnQILrecXvzst9TdC09/VM+pjDTCM+1il8RHz5fKANTFFb+gQ\";s:16:\"css/v4-shims.css\";s:71:\"sha384-knhdgIEP1JBPHETtXGyUk1FXV22kd1ZAN8yyExweAKAfztV5+kSBjUff4pHDG38c\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-acBDV8BDMPEP50gJeFdMIg9yE8eOPuFdBV9r+2F492NUbKhURdQvglFkG0Q+0rlE\";s:13:\"css/solid.css\";s:71:\"sha384-QokYePQSOwpBDuhlHOsX0ymF6R/vLk/UQVz3WHa6wygxI5oGTmDTv8wahFOSspdm\";s:15:\"css/regular.css\";s:71:\"sha384-FKw7x8fCxuvzBwOJmhTJJsKzBl8dnN9e2R4+pXRfYoHivikuHkzWyhKWDSMcGNK8\";s:19:\"css/fontawesome.css\";s:71:\"sha384-vd1e11sR28tEK9YANUtpIOdjGW14pS87bUBuOIoBILVWLFnS+MCX9T6MMf0VdPGq\";s:14:\"css/brands.css\";s:71:\"sha384-n9+6/aSqa9lBidZMRCQHTHKJscPq6NW4pCQBiMmHdUCvPN8ZOg2zJJTkC7WIezWv\";s:11:\"css/all.css\";s:71:\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\";}}}s:5:\"5.8.2\";a:5:{s:7:\"version\";s:5:\"5.8.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-05-07T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3584;s:4:\"free\";i:1515;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-Ts0FauTmSRKZNl+Uw+WC04UuoVYd2gXlJ+OcUvb1NDrV2XmDcgCr8PPv5MY/7KZR\";s:11:\"js/solid.js\";s:71:\"sha384-9fQzIUDeLlrPRI2CT9AqVv6Yr0JgEY0+rr7ngyaatQAQrEHhCv5CvG8F8UFdgk7u\";s:13:\"js/regular.js\";s:71:\"sha384-uMEQdPXvyCTabszTyCxRRMDh/xIcRlT/fpq2DKkcjR6+lOqq2111EL0C1OiRVu1E\";s:11:\"js/light.js\";s:71:\"sha384-BMiulaMo0kY9ExzwDFFjsXkU373Br7qSwYa/hdDlWEWEkE3flk4mBFvMwlpye3Aw\";s:17:\"js/fontawesome.js\";s:71:\"sha384-b7K10RWf2Q3m26zPrKzM95th5yJnxEw+vpCzNITZFKV8UgxPgHb61bS0xFkKdV2I\";s:12:\"js/brands.js\";s:71:\"sha384-NBtHk407eZGNubj82MbaKt5CrNLfhnYmCbpjSyDk/nWemMXE/mfvm3c1MPjfnWmU\";s:9:\"js/all.js\";s:71:\"sha384-RLPiEwcAdrH2NjFcwJipJtlFoIN1xvqPYeeDX5yYtSNu+HTIkQCDvPQ9thsUnPUS\";s:16:\"css/v4-shims.css\";s:71:\"sha384-TpRSvWoRbPKMMxDvVZgEa9wxoOZyawahRkC2P+ksDRxjPSvZjhEf5nU7pqSWBCQF\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+BcpgpzTfqttc/C2LUPzGXIGunaa/aIuSC/BPO2BBqqMbHNRCF7d3DU54LxbCzTS\";s:13:\"css/solid.css\";s:71:\"sha384-dUUyoHgD2BplZp1AnRbRu0HPC5jscpJEJaJjqnBh7Y5PT1gW7cM6BQEgrcOsSa7e\";s:15:\"css/regular.css\";s:71:\"sha384-jyNdSTwsauV6/i9u6sKFOZBrxlr4QREAY295HsNy8laz4LYryhnPdz0ewFVERKfV\";s:13:\"css/light.css\";s:71:\"sha384-0WqtEOayxoyo7wgxUc5l2RvIbaWTyny0LrJbwsKhrKXUyopxvaNFLIoob4dXRwLO\";s:19:\"css/fontawesome.css\";s:71:\"sha384-fqilzf6i0kkOYm+DT4UC9pWzYf4/eFdJKroY1jZyE7n8eYLujyYM9VCucGf/LdVD\";s:14:\"css/brands.css\";s:71:\"sha384-BeZiOfMYSXjscewXEIJ0PDoBy27u+zVSTP5ZuW3kjEZKCn7pOB7v+oQVtAtHfY0v\";s:11:\"css/all.css\";s:71:\"sha384-xVVam1KS4+Qt2OrFa+VdRUoXygyKIuNWUUUBZYv+n27STsJ7oDOHJgfF0bNKLMJF\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-5i8QG9UXrCZePXfj1ac87dq22tNtGoJ22fmjXaJI8iIy072+ZKv1NZHbsTMfYvnV\";s:11:\"js/solid.js\";s:71:\"sha384-+2/MEhV42Ne5nONkjLVCZFGh5IaEQmfXyvGlsibBiATelTFbVGoLB1sqhczi0hlf\";s:13:\"js/regular.js\";s:71:\"sha384-iFYyWQkY/Zvsdq3IIxRJI2FBoXPj6g73ok7rIH3sZGulA7E5PvFqB5BOELomUuyh\";s:17:\"js/fontawesome.js\";s:71:\"sha384-Ia7KZbX22R7DDSbxNmxHqPQ15ceNzg2U4h5A8dy3K47G2fV1k658BTxXjp7rdhXa\";s:12:\"js/brands.js\";s:71:\"sha384-GtvEzzhN52RvAD7CnSR7TcPw555abR8NK28tAqa/GgIDk59o0TsaK6FHglLstzCf\";s:9:\"js/all.js\";s:71:\"sha384-DJ25uNYET2XCl5ZF++U8eNxPWqcKohUUBUpKGlNLMchM7q4Wjg2CUpjHLaL8yYPH\";s:16:\"css/v4-shims.css\";s:71:\"sha384-XyBa62YmP9n5OJlz31oJcSVUqdJJ1dgQZriaAHtKZn/8Bu8KJ+PMJ/jjVGvhwvQi\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-PLvJTjM1QH/74H66d1I1vU8KYsjkbjSJn87gUIUsIO6Xjf8fRO8Hxdevr46EkV7M\";s:13:\"css/solid.css\";s:71:\"sha384-ioUrHig76ITq4aEJ67dHzTvqjsAP/7IzgwE7lgJcg2r7BRNGYSK0LwSmROzYtgzs\";s:15:\"css/regular.css\";s:71:\"sha384-hCIN6p9+1T+YkCd3wWjB5yufpReULIPQ21XA/ncf3oZ631q2HEhdC7JgKqbk//4+\";s:19:\"css/fontawesome.css\";s:71:\"sha384-sri+NftO+0hcisDKgr287Y/1LVnInHJ1l+XC7+FOabmTTIK0HnE2ID+xxvJ21c5J\";s:14:\"css/brands.css\";s:71:\"sha384-i2PyM6FMpVnxjRPi0KW/xIS7hkeSznkllv+Hx/MtYDaHA5VcF0yL3KVlvzp8bWjQ\";s:11:\"css/all.css\";s:71:\"sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay\";}}}s:5:\"5.9.0\";a:5:{s:7:\"version\";s:5:\"5.9.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-06-04T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:3831;s:4:\"free\";i:1534;}s:3:\"sri\";a:2:{s:3:\"pro\";a:15:{s:14:\"js/v4-shims.js\";s:71:\"sha384-A2MQ6ZItVBjKp0Efdmi8Xze6uRApxGoHzuGImgZGk6JfuaQ9Vkcev6HtJSQzftWE\";s:11:\"js/solid.js\";s:71:\"sha384-pAEZwWHMzeWUPLx+edoghTzc+LBoBSIWMNFPeZGDiFDP6WL4g+EHr7DhQMUpjSLZ\";s:13:\"js/regular.js\";s:71:\"sha384-GlXg5Pw5UjuoWpx2tbE3LsctnmBsngO5u5c+nK1slAwSuwN86zPzez+sFxncM+Tc\";s:11:\"js/light.js\";s:71:\"sha384-C6XejYBP1H4YOZVReSXSBion6LKXOt7htNgjRlcKQSsMnL+/Ok1vyvI5EQs1/H1e\";s:17:\"js/fontawesome.js\";s:71:\"sha384-nFIVFc2+uHHcH70YEBnMC6UmUjVxcQ0rZJe7u58lz5aUDQRz0l3xFmVSdao7Ag/K\";s:12:\"js/brands.js\";s:71:\"sha384-4Md2NBtJT8CgVnGaoonPkhRdMvGcFRH/nATvRJ0+2VsJ5bjySPpBil+KbSC+9yFv\";s:9:\"js/all.js\";s:71:\"sha384-nKdXFHC25mX+ztWymakpQ8nRykznAcZ+yHi9XETJ8CuVvvSGeg/0QCPhvDb41hUb\";s:16:\"css/v4-shims.css\";s:71:\"sha384-tlZ/hMWxtcO6JxnBPYGsa5Oiu1gmAqp/bY7s7G6m5OOCJvcNQ6Fo39YHu4Elr+Hf\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-dwNK02s77FqYOBDJpF4ttbI23g2UUTrI9euJ+OQGonHAy4W1kCpAyV7ozLK24GWz\";s:13:\"css/solid.css\";s:71:\"sha384-KyLwW4NRDhAz4RVatBCvFATniD3ze5rJvP1usxUFectdGgG8n+7OTcZug8s4bj5H\";s:15:\"css/regular.css\";s:71:\"sha384-FrLF2uGffV1P93pQZme192v/cHRu1XlgjMreWAScHPPjBz/p9pNTx/bTV83x8peQ\";s:13:\"css/light.css\";s:71:\"sha384-/ggAGHSQWxssDRflcj0aeAlGN2rNgsnWOLv1ZU5FEvjQWxP53glq5pNPjtfldVVN\";s:19:\"css/fontawesome.css\";s:71:\"sha384-QSCxeayZXa6bvOhHReoQRGN7utvnOnY3JoBHGxM61JQQ1EXA7AT3m7dnlHXLhnCj\";s:14:\"css/brands.css\";s:71:\"sha384-wRa49NRotGDh34aLO1Hjbu65qHSTF/ZNSBm7uTpMUa2EQ1Csq7Zlswm+FR9hcWtn\";s:11:\"css/all.css\";s:71:\"sha384-vlOMx0hKjUCl4WzuhIhSNZSm2yQCaf0mOU1hEDK/iztH3gU4v5NMmJln9273A6Jz\";}s:4:\"free\";a:13:{s:14:\"js/v4-shims.js\";s:71:\"sha384-npD7syUhXOZUTbAzJEyIPGq/8gGAhBmei7JkUwUki9hAtz9oPkFJwx5f3vGb7SOi\";s:11:\"js/solid.js\";s:71:\"sha384-kDWpGOpzLEy85/cK1Df/ba6PkpDHAKUGOX4YHEt0sFzHdrTY1rGmT/gYHN3zCcF0\";s:13:\"js/regular.js\";s:71:\"sha384-xrLv+W4OudHJZ6QDKuv+el28Wyr4OMO0qSQuBiPqhBsnSGKdGct/ElQm+2/fx/eS\";s:17:\"js/fontawesome.js\";s:71:\"sha384-RXRrB6R44g3RRohoKLAOK5MjNq4PVvz7iZErCckeyobGIJLpTP2qq6xjJFuKnfZu\";s:12:\"js/brands.js\";s:71:\"sha384-CZZj1HZWqgh/CGR22Lnl6+fZC6IDR10ga+wECjipCR3zId+7ZxZP1JNI+YgdzyO/\";s:9:\"js/all.js\";s:71:\"sha384-7Gk1S6elg570RSJJxILsRiq8o0CO99g1zjfOISrqjFUCjxHDn3TmaWoWOqt6eswF\";s:16:\"css/v4-shims.css\";s:71:\"sha384-zpflLcSaYRmTsnK2LTOdvChgML+Tt/4aE2szcblLVBXd8Jq/HGz6rhZqZ+4TkK75\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-Bfk4oyOug+rBqsciYilQ+iwazXsMTURz/M6Gfx7fb02KNeW5VHwt7aHTXWNU9B2W\";s:13:\"css/solid.css\";s:71:\"sha384-ypqxM+6jj5ropInEPawU1UEhbuOuBkkz59KyIbbsTu4Sw62PfV3KUnQadMbIoAzq\";s:15:\"css/regular.css\";s:71:\"sha384-5E/NXotaQSDJW8gq/9pxwQHSPRrb21suHuLPqOIlgob8QC8ltM13i6HLujrhWmBL\";s:19:\"css/fontawesome.css\";s:71:\"sha384-NnhYAEceBbm5rQuNvCv6o4iIoPZlkaWfvuXVh4XkRNvHWKgu/Mk2nEjFZpPQdwiz\";s:14:\"css/brands.css\";s:71:\"sha384-vfTtNoEyqnxivzqkzc+mvlVeCWPGwMlIIkeTkt0mcUQNmFLyyXxY5SgZIkKQIXRK\";s:11:\"css/all.css\";s:71:\"sha384-i1LQnF23gykqWXg6jxC2ZbCbUMxyw5gLZY6UiUS98LYV5unm8GWmfkIS6jqJfb4E\";}}}s:6:\"5.10.0\";a:5:{s:7:\"version\";s:6:\"5.10.0\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-07-29T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5481;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-vzU1ar4oP9lOG/JJdj1q/+3aatI/ZbpyHIMelvsAi2Ee8gCiTIb/YhqRymLLZkje\";s:11:\"js/solid.js\";s:71:\"sha384-Vh+IVHoo4c4JXOfJBoUxIiEJf6bB443zoyGtwY8WbBmCU+7fAq9QX9JLtFcNSPZl\";s:13:\"js/regular.js\";s:71:\"sha384-wNQjNuGVt9TzLWqaxsZvH5uIDIxEkpSCeSPg6nF2ud6AK9jXY9yMFA6CbcZrr+cZ\";s:11:\"js/light.js\";s:71:\"sha384-sEc8iKGnMxm+Dm4AQabXbw0DKZU9FtFrWMppMOsxaUZsLL5pcpQs4aL/OfefTw7g\";s:17:\"js/fontawesome.js\";s:71:\"sha384-8YSeMunSTZdDZy7rZxfG3NqC3KnYaCKxTJMm9yoILgIoMpXeTKDrV8TeV9C5ItEc\";s:13:\"js/duotone.js\";s:71:\"sha384-PcDzzpTJzDDda2YUM4EY5ZqnZQ3DTIFtoaAn7t07N0UIY1HVyaxIHRzROmFBd48z\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-JB1N15Wp6AIOL3sQ9Tm4a0kATlQy9/+/nLmU9B2wv4K4gGNAUFZEU7qDcxIPJLXy\";s:12:\"js/brands.js\";s:71:\"sha384-8TDwqaS9Kr9a/3cVS6+XkvWUM1tz6XdS8s2urD5rXY1Cz22kPF77ZuG1gIWaz6kZ\";s:9:\"js/all.js\";s:71:\"sha384-G/ZR3ntz68JZrH4pfPJyRbjW+c0+ojii5f+GYiYwldYU69A+Ejat6yIfLSxljXxD\";s:16:\"css/v4-shims.css\";s:71:\"sha384-y51MGgwaeLjbh5fbY1GJ6PypnEoMkGu8MoR1HRE/p/hHfiEE1G9bK/79bstJpyYk\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-85qDq8Thytv8iDkEBcdksps8EZiX4DEo3vh6Ijk38Xi4RVm37Ttn+HU9rsXho2fN\";s:13:\"css/solid.css\";s:71:\"sha384-Zbnz7QaugaSWTYmuSFTHGzMLxXAu2vzmqJhA/DS3bnaZGJaatH8apOWXfFaP6PMh\";s:15:\"css/regular.css\";s:71:\"sha384-pWItZRjB6NLzlrnwcL+2alve4CtHiaLj9W5ZwGPgy6dtMzCPsGv/qEcRvrbVkW5i\";s:13:\"css/light.css\";s:71:\"sha384-2CRj/5C4pwyS5v+q0KXxQ39b3qsKQNE6T+9FFaAOlps/XjJcK+M20aMUxuQtRLaZ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-eHoocPgXsiuZh+Yy6+7DsKAerLXyJmu2Hadh4QYyt+8v86geixVYwFqUvMU8X90l\";s:15:\"css/duotone.css\";s:71:\"sha384-R3QzTxyukP03CMqKFe0ssp5wUvBPEyy9ZspCB+Y01fEjhMwcXixTyeot+S40+AjZ\";s:14:\"css/brands.css\";s:71:\"sha384-/BwiSb9M4ZqztN8bEG+VrC9ohWSBX3qEV95+/+gBJoE4+zG3KqcLj8ShUhBIALSm\";s:11:\"css/all.css\";s:71:\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-RT+uACaLSP2jOOLdRXKvxcgxA/WNa36UYkM14r9ODCgz51g7frfTdR+Jv3q46NW3\";s:11:\"js/solid.js\";s:71:\"sha384-WvtEEwvz7coGHFMqz/gUsacHkjubSgzLIieTORXey1KIpl+/r1Sk5owMdBxnGFHy\";s:13:\"js/regular.js\";s:71:\"sha384-eX5P9jt8OdQQ4ME1Y4Q90r5k0qCw55F9jie73NYjcSEHIYYV+x3MW3XgqK7HDuOG\";s:17:\"js/fontawesome.js\";s:71:\"sha384-LMbxIMq/Ra43sLL8MF9d0C8NDym6Cp7d2rtvvZUd5n4EuGE3GSYBmf6JV41EB7+y\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-yhpUSfH+AXwjqsle/7pS92NQZivmuHw41bqBfGxkaV4ftpRTE9Z6MNd2oh9x/BBm\";s:12:\"js/brands.js\";s:71:\"sha384-SgCx6DCTHwPNfTrT8PeDNKVR+bLsTKTVnBbtZYSLgfp4dd+KGa6j4/Jy96HTd0nw\";s:9:\"js/all.js\";s:71:\"sha384-BfzGEucsDAHnSR99xBvG8cNHx7h6sEbKJejtvqlMrN8nMi3gP2ds+sMAjWfWnZyn\";s:16:\"css/v4-shims.css\";s:71:\"sha384-R4Ah6+FGj2TWi1SbbJo01aRwLwdNunBoW4ALQ4SdcDpyQpKoP0pTL3Ce0Hf0oMOh\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-oBn2TNb41FLJEvg05fPEoAhWHErn7PR1FiyT6NjQkoPzDDg1n/e/GrwRgh34gDmQ\";s:13:\"css/solid.css\";s:71:\"sha384-dHM1276IWlmmltsiRRg04ASaTBbgAqnnjneOemUaqff0rqTtVHw5qqKE5i0k4Qll\";s:15:\"css/regular.css\";s:71:\"sha384-OVGJJ0J6OIuVjxoE5rUQPFweGgzO0xT+HKN5IChh3LTrsWQKjHocfKq+nk/8DogN\";s:19:\"css/fontawesome.css\";s:71:\"sha384-YYaKmJMZQbIhKGKC1QGjVKSQ3s9OlZitN6xQQEPksarSkM0WNkq5Kke0yehyNwyT\";s:14:\"css/brands.css\";s:71:\"sha384-19EzMRnOAF4Gg36FukRf0Bee26rnZC49Ld5mFG+8XiQ8ddeKQYj7Rnl12YxIoHe6\";s:11:\"css/all.css\";s:71:\"sha384-0c38nfCMzF8w8DBI+9nTWzApOpr1z0WuyswL4y6x/2ZTtmj/Ki5TedKeUcFusC/k\";}}}s:6:\"5.10.1\";a:5:{s:7:\"version\";s:6:\"5.10.1\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-08-02T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5485;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-P9HMMmM/ObyzYMvKfF0Xf40MYwNdkI08AwhSyCsAVlmXZkJ9GaI0Z23pozRg8HAe\";s:11:\"js/solid.js\";s:71:\"sha384-WtnuXyp6MLUsHy3FAqJyL7aL0a/mdUjPwIs/Ub7FXJZufo/0qH9aFsTDY5Q6Bx3m\";s:13:\"js/regular.js\";s:71:\"sha384-ZlV+aQMpcvCEqNPe9qTu/S6+eBL+DfRjOxr9wtsoZyGnJ/vwQk/U2SZhZ8tJqH5F\";s:11:\"js/light.js\";s:71:\"sha384-TZInz5PvbxRzxSlGI1WYKmrrBBk/XTTZymO6w+smmSVD6RFpfZd+JtSye/viSFxA\";s:17:\"js/fontawesome.js\";s:71:\"sha384-v97MeHGTkmNphZhn+D7412xlPlc61o4jy6CouRwKfNltfXH68HcYhmQBr2j/J/Vp\";s:13:\"js/duotone.js\";s:71:\"sha384-QwVJpiaupNLHQYsfQUftqzWXMT+SsU4AKnlvxDGzNjTq5xPXRbG/ohsvyIEyK2uf\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-++EkH6KNUkbsGzUhPmRa5yboy873FnCrHLPNWnvcfYOzCCShCQHtdQ3RQTt3WDsW\";s:12:\"js/brands.js\";s:71:\"sha384-DGr5D3fYhGn4bylN+nFRaxvPt6s4FjV7B5EhOOFUKW0JKU2vco3q3xtgSZeeEYpw\";s:9:\"js/all.js\";s:71:\"sha384-FW78RPcSpi13vjx77nPWQIrQbNSLkPBopb0qGzLCxD2x4Kr6FA8V05C/6cpgkKPL\";s:16:\"css/v4-shims.css\";s:71:\"sha384-rql5zubvrhoXpo5buqgoiKryiT02OHCEtveKZrj4NX/C2Kuy7W2P7vl+RVzBUl9m\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-V8iByeksgr2la9ceLV1jNv7uWdzI3pYZLNzgYqWmQuQZa7khs4d6QC84YnMWoKxx\";s:13:\"css/solid.css\";s:71:\"sha384-BrYpEWmuPyxLgVmvUGa111AoxZ3kKwiG4TVjjewWZV9vww+dTLWpmEffDSEg9Gf5\";s:15:\"css/regular.css\";s:71:\"sha384-yLDdP4XFV3JqISKN0JaZ0kdyks9S+U2o9uBmNbmZh85yjdF/kpu+oY3/eXQcGHhT\";s:13:\"css/light.css\";s:71:\"sha384-CL557/BMzDSg/4ctPpKDphHJgLqpdJ5rvOklcaHzLHpX+qsgd4V/xao6Rya4xKMQ\";s:19:\"css/fontawesome.css\";s:71:\"sha384-OvQaO09Stu8nVnOdc+6B3WjpKg9dfBxoakdLxJKAYgsz62+DzBUCvWRxPl9LRVSq\";s:15:\"css/duotone.css\";s:71:\"sha384-Na50X0DRTNz+Sc+4XbFXONmaknKHBHw6gvRZ4coLQCl7ZLXziulq+4wvTZxkaM+U\";s:14:\"css/brands.css\";s:71:\"sha384-9J78p9RP9gty/jk0TJPvYSzmYYCH4cRRkDMnZGxZNh1wdaXLvXzIk90EWrxjjqr9\";s:11:\"css/all.css\";s:71:\"sha384-y++enYq9sdV7msNmXr08kJdkX4zEI1gMjjkw0l9ttOepH7fMdhb7CePwuRQCfwCr\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-BtUWeH6hQDQGUZewQDmWRMisAxvs1LtqoVQgmbFptFnH1GpBw2b2vZenxfFmRtOS\";s:11:\"js/solid.js\";s:71:\"sha384-dc4FEGpFyXnyL9DbieF6I8Xzipdt7GRHX6k8RM/ow6+IDISjPeeTwTiAkNzjv2OI\";s:13:\"js/regular.js\";s:71:\"sha384-7Sk1mIxPYoZb2I3YK86sPsPMftKqv0aWP+dgX//x1mF1mSOYydXmX7DbtHN99bea\";s:17:\"js/fontawesome.js\";s:71:\"sha384-NXKh+ixIINN/JHIorH6fcTNwaAekBk2v7azch6cKmQm7wtb0yBt8ctqn1FAspAW5\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-A6TzAYakDQ9XwDY1hOPxAxI/3t6kol61Ed9hvHegEwcENzAE0vLojG6wItQDmclf\";s:12:\"js/brands.js\";s:71:\"sha384-BZIBcmKlroIkWe3e13MZbUHZdmagAU/8cnXo9mIW5p5wzf+/U5ULLQ8TVioSuCnC\";s:9:\"js/all.js\";s:71:\"sha384-aC/bNmpJEYrEVX5KNHN+m0CmvycQX9wDnYv8X2gdXQjrbtDP5OcU5DRiXwL6bPwr\";s:16:\"css/v4-shims.css\";s:71:\"sha384-i1lF6V7EeiD7KOgGLtAvJiK1GAQx4ogzG6B9gpEaDuHSLZuM3sFtPZrI6H2Gzqs6\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-94OQehjHMl3lApC2tWmjwtxlB0oEtSE2zrTdf8uuWEaDEkkCxXK/w0vFs5J5WPU1\";s:13:\"css/solid.css\";s:71:\"sha384-VUnOJnDrNS0aVOhF6puq5SPJOP5oOvIO6n54m14E2/OHv6DU1gklJ4EImoD382c5\";s:15:\"css/regular.css\";s:71:\"sha384-gr19od0wAxe2+mYHEXvS7Y1ppn+ESoAQzTYGPauVJYyAYYl0NBQaKveeQnzez2Rm\";s:19:\"css/fontawesome.css\";s:71:\"sha384-jUGOH+gYMCfz2jbO6DW8vojES/a323h7dcoT6qI7Bvod9mew/wwTZryjccmaMOkf\";s:14:\"css/brands.css\";s:71:\"sha384-+B+cmd37r9agFUqHw5ABups/+o97SqA/Y6S5b3ly2q0ABacloQs0HZOQAX1NpJhF\";s:11:\"css/all.css\";s:71:\"sha384-wxqG4glGB3nlqX0bi23nmgwCSjWIW13BdLUEYC4VIMehfbcro/ATkyDsF/AbIOVe\";}}}s:6:\"5.10.2\";a:5:{s:7:\"version\";s:6:\"5.10.2\";s:8:\"download\";a:1:{s:21:\"separates_web_desktop\";b:1;}s:4:\"date\";s:19:\"2019-08-22T00:00:00\";s:9:\"iconCount\";a:2:{s:3:\"pro\";i:5485;s:4:\"free\";i:1535;}s:3:\"sri\";a:2:{s:3:\"pro\";a:18:{s:14:\"js/v4-shims.js\";s:71:\"sha384-z089sTZgTLfns4lyNCTpVbdQA6JAhOs6JXwRH4ig0M6EHPg+Lzp/hdcx2OHQn/v8\";s:11:\"js/solid.js\";s:71:\"sha384-JzK2muq5DGAdfmBP1xyuFUAYGceTmP/Y84tZvRxkdtsjwuIcd8Hpf1D+5izeBUQP\";s:13:\"js/regular.js\";s:71:\"sha384-p89srWlrnSOel/vi/SpBD/wyTTJhu+27jcfOazOCUnLTpcxG+NVuYs/okkO2JBox\";s:11:\"js/light.js\";s:71:\"sha384-vh/BsPXkl02OgBjk1HJkukipMWFU6vHADY4W3u9BXIrKjcRFw5Y5XikVLoLElHee\";s:17:\"js/fontawesome.js\";s:71:\"sha384-sy0tjZ+ivgcg2wUVVEmLMO5wfntWOSyQaD7AQec0iXINci5JAP92T8sM4YldYQIA\";s:13:\"js/duotone.js\";s:71:\"sha384-2j1n2yG+7lkO9CjnN1DSQOGJoDEaJPEr+TPmTer3pK/yD3bQ/Kk8bqJyS3LfCK26\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-eYjh/PZbsWw6lqYWtDM+NlcRs3pUkOk8r4mxv/x0xDjmYPXTxPKQ8ZNXxOnd0UCL\";s:12:\"js/brands.js\";s:71:\"sha384-nyTyvpFz3BvQZucRUSSEDlyivN7GAC2Xhgl9M92o/rt/KfEZ7LkqusFXlCjM4DvC\";s:9:\"js/all.js\";s:71:\"sha384-lowSFbzpSYKDOsvnpi2JVneSnkrbVjOTwcHOWpC+tj/YT1mxTDIB3ZqbtllmfUSC\";s:16:\"css/v4-shims.css\";s:71:\"sha384-88Tda+TyAtJK9/cRRXAWdJjyE56Tg4ai2x7RoSEqSVodcInAoV0HNQ2ofaGCidyr\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-+OTv1mrGtdzHGeAuFSVKpPvaMXNpUu+W+Xs4xYz2RgUlrBctmMyE3noRImN5j+ot\";s:13:\"css/solid.css\";s:71:\"sha384-FCdq+BRoY+lV7Zy7HKKQ4zoywYLRyasGk6IrmrXfmYs0xIgL0QrPeEPTu3T4Uqcc\";s:15:\"css/regular.css\";s:71:\"sha384-hKM7KqUOh6F2PI59uEhofbDs/5qHHdJEULlmNWJEQcu3D/5/vl5zpwBrveC4GAbI\";s:13:\"css/light.css\";s:71:\"sha384-dlxpRYGi8Pjg49IqtrDIVZmCOQZ//oDKDkoqbn/IXrwwQDP4Uf0ys6+eH1z9sfhV\";s:19:\"css/fontawesome.css\";s:71:\"sha384-1sdMwbsd8X7Y+nVcEr/4D35smQEaEd6Qz+R00Y+NPUkG8MyRa97RrX5I4nqDt6X7\";s:15:\"css/duotone.css\";s:71:\"sha384-B6+5TXCEkY2Io8b+v2Ki0aEWnpCFgBYkOzXAHY3oQ4tr90JpQC1RErwFbvJ9CRt8\";s:14:\"css/brands.css\";s:71:\"sha384-hIpb1kefRKjC/r6WxN0S6Nai7+AuherqCoHKD0HNdXkbzJkZcS4o62bJ7ODiBWAu\";s:11:\"css/all.css\";s:71:\"sha384-XxNLWSzCxOe/CFcHcAiJAZ7LarLmw3f4975gOO6QkxvULbGGNDoSOTzItGUG++Q+\";}s:4:\"free\";a:14:{s:14:\"js/v4-shims.js\";s:71:\"sha384-gDM1aRghQ5DRg+fSCROSYawrJhbAHqa6Teb2Br0qRJtb+vRJlyU4U4xnmN5cwJ9j\";s:11:\"js/solid.js\";s:71:\"sha384-RbVpZhfPW/1SmcShwIOauawY5vJWxTCeEnmiUCiY2SbkrbKuSGTqJ9NnBUmcP95A\";s:13:\"js/regular.js\";s:71:\"sha384-CYi/gunDGMYA12KV546MNRqsjbbWSyKgPjA9BwVMBQmIMhzVrjyUJwkV9uujzHLJ\";s:17:\"js/fontawesome.js\";s:71:\"sha384-5WtMZ7frOu4PgR22YgRSlercgEU28i5Zn39Svk6+2cg1MOigLDSsvXccsmJO2Wxp\";s:24:\"js/conflict-detection.js\";s:71:\"sha384-Hg1lNcVEsyCqBb1J4/U9X9IW2DEhAKIBfBIE0J0eiWGEX9LEpEULwcsqoAb6HDgG\";s:12:\"js/brands.js\";s:71:\"sha384-0kDL5YEgNJjL/kNToZYEds3evLmosarb6OU2eKqRYu6O28jcJc121tjUC40sG9VB\";s:9:\"js/all.js\";s:71:\"sha384-QMu+Y+eu45Nfr9fmFOlw8EqjiUreChmoQ7k7C1pFNO8hEbGv9yzsszTmz+RzwyCh\";s:16:\"css/v4-shims.css\";s:71:\"sha384-updXts+unDswrMsYxLc5R+HfSmF8CuEIOe48Rj3DoVoPUIImOT1fs26H/tr/H9gC\";s:19:\"css/svg-with-js.css\";s:71:\"sha384-G0mvrlfkz9DnjBCRmY8Wf7nC8wTxDsHE3pGAc7/4rDLh5+v9Z00qi/uyjjcDf1nf\";s:13:\"css/solid.css\";s:71:\"sha384-qPldrzmea0i8jhonuql0da/kQWeaXdQl+krGXcTQUdRUGHcXBfSrBbZLbyMcCWcF\";s:15:\"css/regular.css\";s:71:\"sha384-zuVEAfuEXYtKnHpmwmkhzwMdR2uek5gePU1XveESmScyRJHbncv8rLEAt+ofv7ze\";s:19:\"css/fontawesome.css\";s:71:\"sha384-hM7EQerc09E4O3zhtvF2iqcB4ZkEu9xkLQndhXdGGCEJ/sB4JK54SuKGmIC35UTf\";s:14:\"css/brands.css\";s:71:\"sha384-qVnmyLTtnGPGEN3HDG2MCEOXWH1Yk/i70lKRuV+gMCDQg+jblQlFGPf1mejWUyYG\";s:11:\"css/all.css\";s:71:\"sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9\";}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(179, 'recovery_mode_email_last_sent', '1568016899', 'yes'),
(181, 'articles_category_children', 'a:0:{}', 'yes'),
(184, 'event_type_children', 'a:0:{}', 'yes'),
(189, 'category_children', 'a:0:{}', 'yes'),
(198, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1568055529', 'no'),
(199, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: ru.wordpress.org</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(219, '_site_transient_timeout_theme_roots', '1568097705', 'no'),
(220, '_site_transient_theme_roots', 'a:4:{s:13:\"test-maverick\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1567694626'),
(5, 6, '_wp_attached_file', '2019/09/teams.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:71;s:4:\"file\";s:17:\"2019/09/teams.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2019/09/cropped-teams.png'),
(8, 7, '_wp_attachment_context', 'custom-logo'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:71;s:4:\"file\";s:25:\"2019/09/cropped-teams.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1567751689'),
(30, 11, '_menu_item_type', 'custom'),
(31, 11, '_menu_item_menu_item_parent', '0'),
(32, 11, '_menu_item_object_id', '11'),
(33, 11, '_menu_item_object', 'custom'),
(34, 11, '_menu_item_target', ''),
(35, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 11, '_menu_item_xfn', ''),
(37, 11, '_menu_item_url', '#'),
(39, 12, '_menu_item_type', 'custom'),
(40, 12, '_menu_item_menu_item_parent', '0'),
(41, 12, '_menu_item_object_id', '12'),
(42, 12, '_menu_item_object', 'custom'),
(43, 12, '_menu_item_target', ''),
(44, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 12, '_menu_item_xfn', ''),
(46, 12, '_menu_item_url', '#'),
(48, 13, '_menu_item_type', 'custom'),
(49, 13, '_menu_item_menu_item_parent', '0'),
(50, 13, '_menu_item_object_id', '13'),
(51, 13, '_menu_item_object', 'custom'),
(52, 13, '_menu_item_target', ''),
(53, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 13, '_menu_item_xfn', ''),
(55, 13, '_menu_item_url', '#'),
(57, 14, '_wp_trash_meta_status', 'publish'),
(58, 14, '_wp_trash_meta_time', '1567752081'),
(59, 19, '_edit_lock', '1567758116:1'),
(60, 20, '_edit_lock', '1567758354:1'),
(61, 27, '_edit_last', '1'),
(62, 27, '_edit_lock', '1567758823:1'),
(63, 31, '_edit_last', '1'),
(64, 31, '_edit_lock', '1567760777:1'),
(65, 32, '_edit_last', '1'),
(66, 32, '_edit_lock', '1567759209:1'),
(67, 33, '_edit_last', '1'),
(68, 33, '_edit_lock', '1567760477:1'),
(69, 34, '_edit_last', '1'),
(70, 34, '_edit_lock', '1567760493:1'),
(71, 34, '_wp_trash_meta_status', 'publish'),
(72, 34, '_wp_trash_meta_time', '1567760924'),
(73, 34, '_wp_desired_post_slug', 'first'),
(74, 33, '_wp_trash_meta_status', 'publish'),
(75, 33, '_wp_trash_meta_time', '1567760927'),
(76, 33, '_wp_desired_post_slug', '%d1%82%d1%80%d0%b5%d1%82%d1%8f-%d0%ba%d0%b0%d1%81%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f'),
(77, 32, '_wp_trash_meta_status', 'publish'),
(78, 32, '_wp_trash_meta_time', '1567760928'),
(79, 32, '_wp_desired_post_slug', '%d0%b4%d1%80%d1%83%d0%b3%d0%b0-%d0%ba%d0%b0%d1%81%d1%82%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f'),
(80, 31, '_wp_trash_meta_status', 'publish'),
(81, 31, '_wp_trash_meta_time', '1567760930'),
(82, 31, '_wp_desired_post_slug', '%d0%bf%d0%b5%d1%80%d1%88%d0%b0-%d0%ba%d0%b0%d1%81%d1%82%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f'),
(83, 35, '_edit_last', '1'),
(84, 35, '_edit_lock', '1567760979:1'),
(85, 36, '_edit_last', '1'),
(86, 36, '_edit_lock', '1567760933:1'),
(87, 35, '_wp_trash_meta_status', 'publish'),
(88, 35, '_wp_trash_meta_time', '1567761128'),
(89, 35, '_wp_desired_post_slug', '%d0%bd%d0%be%d0%b2%d0%b0%d1%8f'),
(90, 37, '_edit_last', '1'),
(91, 37, '_edit_lock', '1567761008:1'),
(92, 38, '_edit_last', '1'),
(93, 38, '_edit_lock', '1567761146:1'),
(94, 37, '_wp_trash_meta_status', 'publish'),
(95, 37, '_wp_trash_meta_time', '1567761295'),
(96, 37, '_wp_desired_post_slug', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b8%d0%b9'),
(97, 36, '_wp_trash_meta_status', 'publish'),
(98, 36, '_wp_trash_meta_time', '1567761331'),
(99, 36, '_wp_desired_post_slug', '%d1%81%d1%82%d0%b0%d1%80%d0%b0%d1%8f'),
(100, 38, '_wp_trash_meta_status', 'publish'),
(101, 38, '_wp_trash_meta_time', '1567761333'),
(102, 38, '_wp_desired_post_slug', '%d1%82%d1%80%d0%b5%d1%82%d1%8c%d1%8f'),
(103, 39, '_edit_last', '1'),
(104, 39, '_edit_lock', '1567761261:1'),
(105, 40, '_edit_last', '1'),
(106, 40, '_edit_lock', '1567761957:1'),
(107, 41, '_wp_attached_file', '2019/09/school.png'),
(108, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:73;s:6:\"height\";i:62;s:4:\"file\";s:18:\"2019/09/school.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 42, '_wp_attached_file', '2019/09/luxfon.com_18586.jpg'),
(110, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2848;s:6:\"height\";i:2136;s:4:\"file\";s:28:\"2019/09/luxfon.com_18586.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"luxfon.com_18586-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"luxfon.com_18586-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"luxfon.com_18586-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"luxfon.com_18586-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"FinePix S6500fd\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1209310656\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"6.2\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0.1\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(111, 40, '_thumbnail_id', '42'),
(112, 43, '_edit_last', '1'),
(113, 43, '_edit_lock', '1567764312:1'),
(114, 45, '_edit_lock', '1567768891:1'),
(115, 45, '_wp_page_template', 'news.php'),
(116, 47, '_menu_item_type', 'post_type'),
(117, 47, '_menu_item_menu_item_parent', '0'),
(118, 47, '_menu_item_object_id', '45'),
(119, 47, '_menu_item_object', 'page'),
(120, 47, '_menu_item_target', ''),
(121, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 47, '_menu_item_xfn', ''),
(123, 47, '_menu_item_url', ''),
(124, 48, '_edit_last', '1'),
(125, 48, '_edit_lock', '1568018873:1'),
(126, 1, '_edit_lock', '1568018901:1'),
(128, 50, '_edit_lock', '1568018953:1'),
(130, 52, '_edit_lock', '1568018936:1'),
(133, 55, '_edit_lock', '1568028400:1'),
(135, 57, '_edit_lock', '1568028413:1'),
(137, 59, '_edit_lock', '1568036357:1'),
(138, 61, '_edit_lock', '1568036904:1'),
(139, 60, '_wp_trash_meta_status', 'publish'),
(140, 60, '_wp_trash_meta_time', '1568037036'),
(141, 60, '_wp_desired_post_slug', '60-2'),
(142, 59, '_wp_trash_meta_status', 'publish'),
(143, 59, '_wp_trash_meta_time', '1568037037'),
(144, 59, '_wp_desired_post_slug', '59-2'),
(145, 62, '_edit_lock', '1568036944:1'),
(146, 63, '_edit_lock', '1568037051:1'),
(147, 64, '_edit_lock', '1568037234:1'),
(148, 66, '_edit_lock', '1568096396:1'),
(149, 112, '_menu_item_type', 'custom'),
(150, 112, '_menu_item_menu_item_parent', '0'),
(151, 112, '_menu_item_object_id', '112'),
(152, 112, '_menu_item_object', 'custom'),
(153, 112, '_menu_item_target', ''),
(154, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 112, '_menu_item_xfn', ''),
(156, 112, '_menu_item_url', 'http://maverick-test/'),
(158, 64, '_wp_trash_meta_status', 'publish'),
(159, 64, '_wp_trash_meta_time', '1568097592'),
(160, 64, '_wp_desired_post_slug', '64-2'),
(161, 65, '_wp_trash_meta_status', 'publish'),
(162, 65, '_wp_trash_meta_time', '1568097592'),
(163, 65, '_wp_desired_post_slug', '65-2'),
(164, 76, '_wp_trash_meta_status', 'publish'),
(165, 76, '_wp_trash_meta_time', '1568097592'),
(166, 76, '_wp_desired_post_slug', '76-2'),
(167, 77, '_wp_trash_meta_status', 'publish'),
(168, 77, '_wp_trash_meta_time', '1568097592'),
(169, 77, '_wp_desired_post_slug', '77-2'),
(170, 78, '_wp_trash_meta_status', 'publish'),
(171, 78, '_wp_trash_meta_time', '1568097592'),
(172, 78, '_wp_desired_post_slug', '78-2'),
(173, 79, '_wp_trash_meta_status', 'publish'),
(174, 79, '_wp_trash_meta_time', '1568097592'),
(175, 79, '_wp_desired_post_slug', '79-2'),
(176, 80, '_wp_trash_meta_status', 'publish'),
(177, 80, '_wp_trash_meta_time', '1568097592'),
(178, 80, '_wp_desired_post_slug', '80-2'),
(179, 81, '_wp_trash_meta_status', 'publish'),
(180, 81, '_wp_trash_meta_time', '1568097592'),
(181, 81, '_wp_desired_post_slug', '81-2'),
(182, 82, '_wp_trash_meta_status', 'publish'),
(183, 82, '_wp_trash_meta_time', '1568097592'),
(184, 82, '_wp_desired_post_slug', '82-2'),
(185, 83, '_wp_trash_meta_status', 'publish'),
(186, 83, '_wp_trash_meta_time', '1568097592'),
(187, 83, '_wp_desired_post_slug', '83-2'),
(188, 84, '_wp_trash_meta_status', 'publish'),
(189, 84, '_wp_trash_meta_time', '1568097592'),
(190, 84, '_wp_desired_post_slug', '84-2'),
(191, 85, '_wp_trash_meta_status', 'publish'),
(192, 85, '_wp_trash_meta_time', '1568097592'),
(193, 85, '_wp_desired_post_slug', '85-2'),
(194, 86, '_wp_trash_meta_status', 'publish'),
(195, 86, '_wp_trash_meta_time', '1568097592'),
(196, 86, '_wp_desired_post_slug', '86-2'),
(197, 87, '_wp_trash_meta_status', 'publish'),
(198, 87, '_wp_trash_meta_time', '1568097592'),
(199, 87, '_wp_desired_post_slug', '87-2'),
(200, 88, '_wp_trash_meta_status', 'publish'),
(201, 88, '_wp_trash_meta_time', '1568097592'),
(202, 88, '_wp_desired_post_slug', '88-2'),
(203, 89, '_wp_trash_meta_status', 'publish'),
(204, 89, '_wp_trash_meta_time', '1568097592'),
(205, 89, '_wp_desired_post_slug', '89-2'),
(206, 90, '_wp_trash_meta_status', 'publish'),
(207, 90, '_wp_trash_meta_time', '1568097592'),
(208, 90, '_wp_desired_post_slug', '90-2'),
(209, 91, '_wp_trash_meta_status', 'publish'),
(210, 91, '_wp_trash_meta_time', '1568097592'),
(211, 91, '_wp_desired_post_slug', '91-2'),
(212, 106, '_wp_trash_meta_status', 'publish'),
(213, 106, '_wp_trash_meta_time', '1568097592'),
(214, 106, '_wp_desired_post_slug', '106-2'),
(215, 107, '_wp_trash_meta_status', 'publish'),
(216, 107, '_wp_trash_meta_time', '1568097592'),
(217, 107, '_wp_desired_post_slug', '107-2'),
(218, 108, '_wp_trash_meta_status', 'publish'),
(219, 108, '_wp_trash_meta_time', '1568097597'),
(220, 108, '_wp_desired_post_slug', '108-2'),
(221, 111, '_wp_trash_meta_status', 'publish'),
(222, 111, '_wp_trash_meta_time', '1568097597'),
(223, 111, '_wp_desired_post_slug', '111-2'),
(224, 113, '_wp_trash_meta_status', 'publish'),
(225, 113, '_wp_trash_meta_time', '1568097597'),
(226, 113, '_wp_desired_post_slug', '113-2'),
(227, 95, '_wp_trash_meta_status', 'publish'),
(228, 95, '_wp_trash_meta_time', '1568097597'),
(229, 95, '_wp_desired_post_slug', 'afsfasf'),
(230, 74, '_wp_trash_meta_status', 'publish'),
(231, 74, '_wp_trash_meta_time', '1568097597'),
(232, 74, '_wp_desired_post_slug', 'aggsfa'),
(233, 75, '_wp_trash_meta_status', 'publish'),
(234, 75, '_wp_trash_meta_time', '1568097597'),
(235, 75, '_wp_desired_post_slug', 'aggsfa-2'),
(236, 103, '_wp_trash_meta_status', 'publish'),
(237, 103, '_wp_trash_meta_time', '1568097597'),
(238, 103, '_wp_desired_post_slug', 'agsag'),
(239, 92, '_wp_trash_meta_status', 'publish'),
(240, 92, '_wp_trash_meta_time', '1568097597'),
(241, 92, '_wp_desired_post_slug', 'asaf'),
(242, 93, '_wp_trash_meta_status', 'publish'),
(243, 93, '_wp_trash_meta_time', '1568097597'),
(244, 93, '_wp_desired_post_slug', 'asaf-2'),
(245, 109, '_wp_trash_meta_status', 'publish'),
(246, 109, '_wp_trash_meta_time', '1568097597'),
(247, 109, '_wp_desired_post_slug', 'asfa'),
(248, 110, '_wp_trash_meta_status', 'publish'),
(249, 110, '_wp_trash_meta_time', '1568097597'),
(250, 110, '_wp_desired_post_slug', 'asfa-2'),
(251, 94, '_wp_trash_meta_status', 'publish'),
(252, 94, '_wp_trash_meta_time', '1568097597'),
(253, 94, '_wp_desired_post_slug', 'asfas'),
(254, 97, '_wp_trash_meta_status', 'publish'),
(255, 97, '_wp_trash_meta_time', '1568097597'),
(256, 97, '_wp_desired_post_slug', 'asfasf'),
(257, 67, '_wp_trash_meta_status', 'publish'),
(258, 67, '_wp_trash_meta_time', '1568097597'),
(259, 67, '_wp_desired_post_slug', 'asgag'),
(260, 68, '_wp_trash_meta_status', 'publish'),
(261, 68, '_wp_trash_meta_time', '1568097597'),
(262, 68, '_wp_desired_post_slug', 'asgag-2'),
(263, 69, '_wp_trash_meta_status', 'publish'),
(264, 69, '_wp_trash_meta_time', '1568097597'),
(265, 69, '_wp_desired_post_slug', 'asgag-3'),
(266, 98, '_wp_trash_meta_status', 'publish'),
(267, 98, '_wp_trash_meta_time', '1568097597'),
(268, 98, '_wp_desired_post_slug', 'avsf'),
(269, 66, '_wp_trash_meta_status', 'publish'),
(270, 66, '_wp_trash_meta_time', '1568097597'),
(271, 66, '_wp_desired_post_slug', 'babasbas'),
(272, 70, '_wp_trash_meta_status', 'publish'),
(273, 70, '_wp_trash_meta_time', '1568097597'),
(274, 70, '_wp_desired_post_slug', 'djfddhdf'),
(275, 71, '_wp_trash_meta_status', 'publish'),
(276, 71, '_wp_trash_meta_time', '1568097597'),
(277, 71, '_wp_desired_post_slug', 'djfddhdf-2'),
(278, 72, '_wp_trash_meta_status', 'publish'),
(279, 72, '_wp_trash_meta_time', '1568097603'),
(280, 72, '_wp_desired_post_slug', 'djfddhdf-3'),
(281, 104, '_wp_trash_meta_status', 'publish'),
(282, 104, '_wp_trash_meta_time', '1568097603'),
(283, 104, '_wp_desired_post_slug', 'gasg'),
(284, 73, '_wp_trash_meta_status', 'publish'),
(285, 73, '_wp_trash_meta_time', '1568097603'),
(286, 73, '_wp_desired_post_slug', 'gtewt'),
(287, 96, '_wp_trash_meta_status', 'publish'),
(288, 96, '_wp_trash_meta_time', '1568097603'),
(289, 96, '_wp_desired_post_slug', 'red'),
(290, 99, '_wp_trash_meta_status', 'publish'),
(291, 99, '_wp_trash_meta_time', '1568097603'),
(292, 99, '_wp_desired_post_slug', 'red-2'),
(293, 100, '_wp_trash_meta_status', 'publish'),
(294, 100, '_wp_trash_meta_time', '1568097603'),
(295, 100, '_wp_desired_post_slug', 'red-3'),
(296, 102, '_wp_trash_meta_status', 'publish'),
(297, 102, '_wp_trash_meta_time', '1568097603'),
(298, 102, '_wp_desired_post_slug', 'red-4'),
(299, 63, '_wp_trash_meta_status', 'publish'),
(300, 63, '_wp_trash_meta_time', '1568097603'),
(301, 63, '_wp_desired_post_slug', '%d1%80%d0%b5%d1%81%d1%82%d0%b8%d0%ba'),
(302, 62, '_wp_trash_meta_status', 'publish'),
(303, 62, '_wp_trash_meta_time', '1568097603'),
(304, 62, '_wp_desired_post_slug', '%d1%82%d0%b5%d0%bd'),
(305, 61, '_wp_trash_meta_status', 'publish'),
(306, 61, '_wp_trash_meta_time', '1568097603'),
(307, 61, '_wp_desired_post_slug', '%d1%82%d0%b5%d1%81%d1%82'),
(308, 101, '_wp_trash_meta_status', 'publish'),
(309, 101, '_wp_trash_meta_time', '1568097604'),
(310, 101, '_wp_desired_post_slug', '%d1%84%d0%b0%d1%96'),
(311, 105, '_wp_trash_meta_status', 'publish'),
(312, 105, '_wp_trash_meta_time', '1568097604'),
(313, 105, '_wp_desired_post_slug', '%d1%84%d1%96%d0%bf%d1%84'),
(314, 114, '_edit_lock', '1568097666:1'),
(315, 115, '_edit_lock', '1568097966:1'),
(316, 116, '_edit_lock', '1568097737:1'),
(317, 117, '_edit_lock', '1568098015:1'),
(318, 118, '_edit_lock', '1568098189:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-05 17:39:26', '2019-09-05 14:39:26', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Тестовая новость, один!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-09-09 11:50:40', '2019-09-09 08:50:40', '', 0, 'http://maverick-test/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-05 17:39:26', '2019-09-05 14:39:26', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://maverick-test/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-05 17:39:26', '2019-09-05 14:39:26', '', 0, 'http://maverick-test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-05 17:39:26', '2019-09-05 14:39:26', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://maverick-test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-05 17:39:26', '2019-09-05 14:39:26', '', 0, 'http://maverick-test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-09-05 17:39:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-05 17:39:38', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?p=4', 0, 'post', '', 0),
(5, 1, '2019-09-05 17:43:46', '2019-09-05 14:43:46', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-05 14:43:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '103c5cee-5723-47c3-ba27-eb37229e043d', '', '', '2019-09-05 17:43:46', '2019-09-05 14:43:46', '', 0, 'http://maverick-test/2019/09/05/103c5cee-5723-47c3-ba27-eb37229e043d/', 0, 'customize_changeset', '', 0),
(6, 1, '2019-09-06 09:34:29', '2019-09-06 06:34:29', '', 'teams', '', 'inherit', 'open', 'closed', '', 'teams', '', '', '2019-09-06 09:34:29', '2019-09-06 06:34:29', '', 0, 'http://maverick-test/wp-content/uploads/2019/09/teams.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-09-06 09:34:34', '2019-09-06 06:34:34', 'http://maverick-test/wp-content/uploads/2019/09/cropped-teams.png', 'cropped-teams.png', '', 'inherit', 'open', 'closed', '', 'cropped-teams-png', '', '', '2019-09-06 09:34:34', '2019-09-06 06:34:34', '', 0, 'http://maverick-test/wp-content/uploads/2019/09/cropped-teams.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2019-09-06 09:34:49', '2019-09-06 06:34:49', '{\n    \"blogname\": {\n        \"value\": \"Maverick Site\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-06 06:34:49\"\n    },\n    \"test-maverick::custom_logo\": {\n        \"value\": 7,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-06 06:34:49\"\n    },\n    \"test-maverick::header_textcolor\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-06 06:34:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a947179a-c70f-46e5-a72e-931b55aedd30', '', '', '2019-09-06 09:34:49', '2019-09-06 06:34:49', '', 0, 'http://maverick-test/2019/09/06/a947179a-c70f-46e5-a72e-931b55aedd30/', 0, 'customize_changeset', '', 0),
(11, 1, '2019-09-06 09:39:40', '2019-09-06 06:39:40', '', 'Курси', '', 'publish', 'closed', 'closed', '', '%d0%ba%d1%83%d1%80%d1%81%d0%b8', '', '', '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 0, 'http://maverick-test/?p=11', 2, 'nav_menu_item', '', 0),
(12, 1, '2019-09-06 09:39:40', '2019-09-06 06:39:40', '', 'Вакансії', '', 'publish', 'closed', 'closed', '', '%d0%b2%d0%b0%d0%ba%d0%b0%d0%bd%d1%81%d1%96%d1%97', '', '', '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 0, 'http://maverick-test/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2019-09-06 09:39:40', '2019-09-06 06:39:40', '', 'Про Хаб', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%80%d0%be-%d1%85%d0%b0%d0%b1', '', '', '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 0, 'http://maverick-test/?p=13', 4, 'nav_menu_item', '', 0),
(14, 1, '2019-09-06 09:41:21', '2019-09-06 06:41:21', '{\n    \"test-maverick::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-06 06:41:21\"\n    },\n    \"test-maverick::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-06 06:41:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '271144d4-e9db-4db7-baef-15db165f2c4a', '', '', '2019-09-06 09:41:21', '2019-09-06 06:41:21', '', 0, 'http://maverick-test/2019/09/06/271144d4-e9db-4db7-baef-15db165f2c4a/', 0, 'customize_changeset', '', 0),
(15, 1, '2019-09-06 11:18:39', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:18:39', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=15', 0, 'articles', '', 0),
(16, 1, '2019-09-06 11:19:20', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:19:20', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=16', 0, 'articles', '', 0),
(17, 1, '2019-09-06 11:19:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:19:25', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=17', 0, 'articles', '', 0),
(18, 1, '2019-09-06 11:23:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:23:36', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=18', 0, 'articles', '', 0),
(19, 1, '2019-09-06 11:24:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-06 11:24:17', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?p=19', 0, 'post', '', 0),
(20, 1, '2019-09-06 11:25:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-06 11:25:54', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?p=20', 0, 'post', '', 0),
(21, 1, '2019-09-06 11:25:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:25:56', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=21', 0, 'articles', '', 0),
(22, 1, '2019-09-06 11:28:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:28:25', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=22', 0, 'articles', '', 0),
(23, 1, '2019-09-06 11:30:08', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:30:08', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=23', 0, 'articles', '', 0),
(24, 1, '2019-09-06 11:30:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:30:36', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=24', 0, 'articles', '', 0),
(25, 1, '2019-09-06 11:31:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:31:17', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=25', 0, 'articles', '', 0),
(26, 1, '2019-09-06 11:33:21', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:33:21', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=26', 0, 'articles', '', 0),
(27, 1, '2019-09-06 11:33:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:33:33', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=articles&p=27', 0, 'articles', '', 0),
(28, 1, '2019-09-06 11:39:16', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:39:16', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=events&p=28', 0, 'events', '', 0),
(29, 1, '2019-09-06 11:39:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:39:25', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=events&p=29', 0, 'events', '', 0),
(30, 1, '2019-09-06 11:39:29', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 11:39:29', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=events&p=30', 0, 'events', '', 0),
(31, 1, '2019-09-06 11:41:24', '2019-09-06 08:41:24', 'Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1\r\n\r\n&nbsp;', 'Перша кастомна подія', '', 'trash', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d1%88%d0%b0-%d0%ba%d0%b0%d1%81%d1%82%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f__trashed', '', '', '2019-09-06 12:08:50', '2019-09-06 09:08:50', '', 0, 'http://maverick-test/?post_type=events&#038;p=31', 0, 'events', '', 0),
(32, 1, '2019-09-06 11:41:47', '2019-09-06 08:41:47', 'Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2', 'Друга кастомна подія', '', 'trash', 'closed', 'closed', '', '%d0%b4%d1%80%d1%83%d0%b3%d0%b0-%d0%ba%d0%b0%d1%81%d1%82%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f__trashed', '', '', '2019-09-06 12:08:48', '2019-09-06 09:08:48', '', 0, 'http://maverick-test/?post_type=events&#038;p=32', 0, 'events', '', 0),
(33, 1, '2019-09-06 11:42:09', '2019-09-06 08:42:09', 'Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3', 'Третя касомна подія', '', 'trash', 'closed', 'closed', '', '%d1%82%d1%80%d0%b5%d1%82%d1%8f-%d0%ba%d0%b0%d1%81%d0%be%d0%bc%d0%bd%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f__trashed', '', '', '2019-09-06 12:08:47', '2019-09-06 09:08:47', '', 0, 'http://maverick-test/?post_type=events&#038;p=33', 0, 'events', '', 0),
(34, 1, '2019-09-06 12:03:49', '2019-09-06 09:03:49', '', 'First', '', 'trash', 'closed', 'closed', '', 'first__trashed', '', '', '2019-09-06 12:08:44', '2019-09-06 09:08:44', '', 0, 'http://maverick-test/?post_type=events&#038;p=34', 0, 'events', '', 0),
(35, 1, '2019-09-06 12:09:05', '2019-09-06 09:09:05', 'Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1 Текст 1', 'Новая', '', 'trash', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%b0%d1%8f__trashed', '', '', '2019-09-06 12:12:08', '2019-09-06 09:12:08', '', 0, 'http://maverick-test/?post_type=events&#038;p=35', 0, 'events', '', 0),
(36, 1, '2019-09-06 12:11:15', '2019-09-06 09:11:15', 'Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2', 'Старая', '', 'trash', 'closed', 'closed', '', '%d1%81%d1%82%d0%b0%d1%80%d0%b0%d1%8f__trashed', '', '', '2019-09-06 12:15:31', '2019-09-06 09:15:31', '', 0, 'http://maverick-test/?post_type=events&#038;p=36', 0, 'events', '', 0),
(37, 1, '2019-09-06 12:12:29', '2019-09-06 09:12:29', 'Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2 Текст 2', 'Первий', '', 'trash', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b8%d0%b9__trashed', '', '', '2019-09-06 12:14:55', '2019-09-06 09:14:55', '', 0, 'http://maverick-test/?post_type=events&#038;p=37', 0, 'events', '', 0),
(38, 1, '2019-09-06 12:14:36', '2019-09-06 09:14:36', 'Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3 Текст 3', 'Третья', '', 'trash', 'closed', 'closed', '', '%d1%82%d1%80%d0%b5%d1%82%d1%8c%d1%8f__trashed', '', '', '2019-09-06 12:15:33', '2019-09-06 09:15:33', '', 0, 'http://maverick-test/?post_type=events&#038;p=38', 0, 'events', '', 0),
(39, 1, '2019-09-06 12:15:46', '2019-09-06 09:15:46', 'Перший постПерший постПерший постПерший постПерший постПерший постПерший пост', 'Перший пост', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%80%d1%88%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2019-09-06 12:16:44', '2019-09-06 09:16:44', '', 0, 'http://maverick-test/?post_type=events&#038;p=39', 0, 'events', '', 0),
(40, 1, '2019-09-06 12:15:59', '2019-09-06 09:15:59', 'Другий постДругий постДругий постДругий постДругий постДругий постДругий постДругий постДругий постДругий постДругий пост', 'Другий пост', '', 'publish', 'closed', 'closed', '', '%d0%b4%d1%80%d1%83%d0%b3%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2019-09-06 12:21:21', '2019-09-06 09:21:21', '', 0, 'http://maverick-test/?post_type=events&#038;p=40', 0, 'events', '', 0),
(41, 1, '2019-09-06 12:21:02', '2019-09-06 09:21:02', '', 'school', '', 'inherit', 'open', 'closed', '', 'school', '', '', '2019-09-06 12:21:02', '2019-09-06 09:21:02', '', 40, 'http://maverick-test/wp-content/uploads/2019/09/school.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-09-06 12:21:16', '2019-09-06 09:21:16', '', 'luxfon.com_18586', '', 'inherit', 'open', 'closed', '', 'luxfon-com_18586', '', '', '2019-09-06 12:21:16', '2019-09-06 09:21:16', '', 40, 'http://maverick-test/wp-content/uploads/2019/09/luxfon.com_18586.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-09-06 12:28:38', '2019-09-06 09:28:38', 'Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост Третий пост', 'Третий пост', '', 'publish', 'closed', 'closed', '', '%d1%82%d1%80%d0%b5%d1%82%d0%b8%d0%b9-%d0%bf%d0%be%d1%81%d1%82', '', '', '2019-09-06 12:28:38', '2019-09-06 09:28:38', '', 0, 'http://maverick-test/?post_type=events&#038;p=43', 0, 'events', '', 0),
(44, 1, '2019-09-06 12:48:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-06 12:48:18', '0000-00-00 00:00:00', '', 0, 'http://maverick-test/?post_type=events&p=44', 0, 'events', '', 0),
(45, 1, '2019-09-06 14:23:53', '2019-09-06 11:23:53', '', 'Новини', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%b8%d0%bd%d0%b8', '', '', '2019-09-06 14:23:53', '2019-09-06 11:23:53', '', 0, 'http://maverick-test/?page_id=45', 0, 'page', '', 0),
(46, 1, '2019-09-06 14:23:53', '2019-09-06 11:23:53', '', 'Новини', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2019-09-06 14:23:53', '2019-09-06 11:23:53', '', 45, 'http://maverick-test/2019/09/06/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-09-06 14:24:20', '2019-09-06 11:24:20', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 0, 'http://maverick-test/?p=47', 5, 'nav_menu_item', '', 0),
(48, 1, '2019-09-09 09:59:19', '2019-09-09 06:59:19', 'Четверта подія Четверта подіяЧетверта подіяЧетверта подіяЧетверта подіяЧетверта подіяЧетверта подіяЧетверта подія', 'Четверта подія', '', 'publish', 'closed', 'closed', '', '%d1%87%d0%b5%d1%82%d0%b2%d0%b5%d1%80%d1%82%d0%b0-%d0%bf%d0%be%d0%b4%d1%96%d1%8f', '', '', '2019-09-09 09:59:19', '2019-09-09 06:59:19', '', 0, 'http://maverick-test/?post_type=events&#038;p=48', 0, 'events', '', 0),
(49, 1, '2019-09-09 11:50:40', '2019-09-09 08:50:40', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Тестовая новость, один!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-09-09 11:50:40', '2019-09-09 08:50:40', '', 1, 'http://maverick-test/2019/09/09/1-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2019-09-09 11:50:55', '2019-09-09 08:50:55', '<!-- wp:paragraph -->\n<p> пфіпфіптфіфіоалдфоіплдофжлдіпожлфожіпожфіжпфіпплдф   тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоаіплфіпфіпфдфоіплдофжлдіпожіффжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  </p>\n<!-- /wp:paragraph -->', 'Тестовая новость, два!', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d1%8c-%d0%b4%d0%b2%d0%b0', '', '', '2019-09-09 11:51:32', '2019-09-09 08:51:32', '', 0, 'http://maverick-test/?p=50', 0, 'post', '', 0),
(51, 1, '2019-09-09 11:50:55', '2019-09-09 08:50:55', '', 'Тестовая новость, два!', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-09-09 11:50:55', '2019-09-09 08:50:55', '', 50, 'http://maverick-test/2019/09/09/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-09-09 11:51:17', '2019-09-09 08:51:17', '<!-- wp:paragraph -->\n<p> тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф   тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф </p>\n<!-- /wp:paragraph -->', 'Тестовая новость, три!', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b0%d1%8f-%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d1%8c-%d1%82%d1%80%d0%b8', '', '', '2019-09-09 11:51:17', '2019-09-09 08:51:17', '', 0, 'http://maverick-test/?p=52', 0, 'post', '', 0),
(53, 1, '2019-09-09 11:51:17', '2019-09-09 08:51:17', '<!-- wp:paragraph -->\n<p> тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф   тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф </p>\n<!-- /wp:paragraph -->', 'Тестовая новость, три!', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-09-09 11:51:17', '2019-09-09 08:51:17', '', 52, 'http://maverick-test/2019/09/09/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2019-09-09 11:51:32', '2019-09-09 08:51:32', '<!-- wp:paragraph -->\n<p> пфіпфіптфіфіоалдфоіплдофжлдіпожлфожіпожфіжпфіпплдф   тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоаіплфіпфіпфдфоіплдофжлдіпожіффжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  тфіоалдфоіплдофжлдіпожлфожіпожфіжплдф  </p>\n<!-- /wp:paragraph -->', 'Тестовая новость, два!', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-09-09 11:51:32', '2019-09-09 08:51:32', '', 50, 'http://maverick-test/2019/09/09/50-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-09-09 14:29:03', '2019-09-09 11:29:03', '<!-- wp:paragraph -->\n<p>фіпфіпфіпфіпфпіфіпфп</p>\n<!-- /wp:paragraph -->', 'Тест 4', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82-4', '', '', '2019-09-09 14:29:03', '2019-09-09 11:29:03', '', 0, 'http://maverick-test/?p=55', 0, 'post', '', 0),
(56, 1, '2019-09-09 14:29:03', '2019-09-09 11:29:03', '<!-- wp:paragraph -->\n<p>фіпфіпфіпфіпфпіфіпфп</p>\n<!-- /wp:paragraph -->', 'Тест 4', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-09-09 14:29:03', '2019-09-09 11:29:03', '', 55, 'http://maverick-test/2019/09/09/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-09-09 14:29:14', '2019-09-09 11:29:14', '<!-- wp:paragraph -->\n<p>фіпфіпфіпфіпфіпф</p>\n<!-- /wp:paragraph -->', 'Тест 5', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82-5', '', '', '2019-09-09 14:29:14', '2019-09-09 11:29:14', '', 0, 'http://maverick-test/?p=57', 0, 'post', '', 0),
(58, 1, '2019-09-09 14:29:14', '2019-09-09 11:29:14', '<!-- wp:paragraph -->\n<p>фіпфіпфіпфіпфіпф</p>\n<!-- /wp:paragraph -->', 'Тест 5', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2019-09-09 14:29:14', '2019-09-09 11:29:14', '', 57, 'http://maverick-test/2019/09/09/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-09-09 16:41:13', '2019-09-09 13:41:13', '<br/>', '', '', 'trash', 'closed', 'closed', '', '59-2__trashed', '', '', '2019-09-09 16:50:37', '2019-09-09 13:50:37', '', 0, 'http://maverick-test/?mail=59-2', 0, 'mail', '', 0),
(60, 1, '2019-09-09 16:49:20', '2019-09-09 13:49:20', '<br/>', '', '', 'trash', 'closed', 'closed', '', '60-2__trashed', '', '', '2019-09-09 16:50:36', '2019-09-09 13:50:36', '', 0, 'http://maverick-test/?mail=60-2', 0, 'mail', '', 0),
(61, 1, '2019-09-09 16:50:20', '2019-09-09 13:50:20', 'Рестер<br/>Тестер', 'Тест', '', 'trash', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=%d1%82%d0%b5%d1%81%d1%82', 0, 'mail', '', 0),
(62, 1, '2019-09-09 16:51:04', '2019-09-09 13:51:04', 'фыпгфоыпдф<br/>тен', 'тен', '', 'trash', 'closed', 'closed', '', '%d1%82%d0%b5%d0%bd__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=%d1%82%d0%b5%d0%bd', 0, 'mail', '', 0),
(63, 1, '2019-09-09 16:52:19', '2019-09-09 13:52:19', 'фыпфыпдлфлыжпжф<br/>рестик', 'рестик', '', 'trash', 'closed', 'closed', '', '%d1%80%d0%b5%d1%81%d1%82%d0%b8%d0%ba__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=%d1%80%d0%b5%d1%81%d1%82%d0%b8%d0%ba', 0, 'mail', '', 0),
(64, 1, '2019-09-09 16:55:52', '2019-09-09 13:55:52', '<br/>', '', '', 'trash', 'closed', 'closed', '', '64-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=64-2', 0, 'mail', '', 0),
(65, 1, '2019-09-09 16:55:55', '2019-09-09 13:55:55', '<br/>', '', '', 'trash', 'closed', 'closed', '', '65-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=65-2', 0, 'mail', '', 0),
(66, 1, '2019-09-09 16:57:21', '2019-09-09 13:57:21', 'rwarasfasfa<br/>asgasasf', 'babasbas', '', 'trash', 'closed', 'closed', '', 'babasbas__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=babasbas', 0, 'mail', '', 0),
(67, 1, '2019-09-09 16:59:41', '2019-09-09 13:59:41', 'asfasfasf<br/>asgaga', 'asgag', '', 'trash', 'closed', 'closed', '', 'asgag__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asgag', 0, 'mail', '', 0),
(68, 1, '2019-09-09 16:59:45', '2019-09-09 13:59:45', 'asfasfasf<br/>asgaga', 'asgag', '', 'trash', 'closed', 'closed', '', 'asgag-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asgag-2', 0, 'mail', '', 0),
(69, 1, '2019-09-09 16:59:50', '2019-09-09 13:59:50', 'asfasfasf<br/>asgaga', 'asgag', '', 'trash', 'closed', 'closed', '', 'asgag-3__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asgag-3', 0, 'mail', '', 0),
(70, 1, '2019-09-09 17:02:32', '2019-09-09 14:02:32', 'dgsdgsdgsdg<br/>dsdbdsg', 'djfddhdf', '', 'trash', 'closed', 'closed', '', 'djfddhdf__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=djfddhdf', 0, 'mail', '', 0),
(71, 1, '2019-09-09 17:02:34', '2019-09-09 14:02:34', 'dgsdgsdgsdg<br/>dsdbdsg', 'djfddhdf', '', 'trash', 'closed', 'closed', '', 'djfddhdf-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=djfddhdf-2', 0, 'mail', '', 0),
(72, 1, '2019-09-09 17:04:09', '2019-09-09 14:04:09', 'dgsdgsdgsdg<br/>dsdbdsg', 'djfddhdf', '', 'trash', 'closed', 'closed', '', 'djfddhdf-3__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=djfddhdf-3', 0, 'mail', '', 0),
(73, 1, '2019-09-09 17:04:32', '2019-09-09 14:04:32', 'qwtqwtqwt<br/>qwtqwtqwt', 'gtewt', '', 'trash', 'closed', 'closed', '', 'gtewt__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=gtewt', 0, 'mail', '', 0),
(74, 1, '2019-09-09 17:05:28', '2019-09-09 14:05:28', 'asfasf<br/>afasf', 'aggsfa', '', 'trash', 'closed', 'closed', '', 'aggsfa__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=aggsfa', 0, 'mail', '', 0),
(75, 1, '2019-09-09 17:05:38', '2019-09-09 14:05:38', 'asfasf<br/>afasf', 'aggsfa', '', 'trash', 'closed', 'closed', '', 'aggsfa-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=aggsfa-2', 0, 'mail', '', 0),
(76, 1, '2019-09-09 17:10:28', '2019-09-09 14:10:28', '<br/>', '', '', 'trash', 'closed', 'closed', '', '76-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=76-2', 0, 'mail', '', 0),
(77, 1, '2019-09-09 17:10:29', '2019-09-09 14:10:29', '<br/>', '', '', 'trash', 'closed', 'closed', '', '77-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=77-2', 0, 'mail', '', 0),
(78, 1, '2019-09-09 17:10:33', '2019-09-09 14:10:33', '<br/>', '', '', 'trash', 'closed', 'closed', '', '78-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=78-2', 0, 'mail', '', 0),
(79, 1, '2019-09-09 17:11:08', '2019-09-09 14:11:08', '<br/>', '', '', 'trash', 'closed', 'closed', '', '79-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=79-2', 0, 'mail', '', 0),
(80, 1, '2019-09-09 17:11:11', '2019-09-09 14:11:11', '<br/>', '', '', 'trash', 'closed', 'closed', '', '80-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=80-2', 0, 'mail', '', 0),
(81, 1, '2019-09-09 17:11:12', '2019-09-09 14:11:12', '<br/>', '', '', 'trash', 'closed', 'closed', '', '81-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=81-2', 0, 'mail', '', 0),
(82, 1, '2019-09-09 17:11:44', '2019-09-09 14:11:44', '<br/>', '', '', 'trash', 'closed', 'closed', '', '82-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=82-2', 0, 'mail', '', 0),
(83, 1, '2019-09-09 17:11:45', '2019-09-09 14:11:45', '<br/>', '', '', 'trash', 'closed', 'closed', '', '83-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=83-2', 0, 'mail', '', 0),
(84, 1, '2019-09-09 17:11:46', '2019-09-09 14:11:46', '<br/>', '', '', 'trash', 'closed', 'closed', '', '84-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=84-2', 0, 'mail', '', 0),
(85, 1, '2019-09-09 17:12:09', '2019-09-09 14:12:09', '<br/>', '', '', 'trash', 'closed', 'closed', '', '85-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=85-2', 0, 'mail', '', 0),
(86, 1, '2019-09-09 17:12:11', '2019-09-09 14:12:11', '<br/>', '', '', 'trash', 'closed', 'closed', '', '86-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=86-2', 0, 'mail', '', 0),
(87, 1, '2019-09-09 17:13:45', '2019-09-09 14:13:45', '<br/>', '', '', 'trash', 'closed', 'closed', '', '87-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=87-2', 0, 'mail', '', 0),
(88, 1, '2019-09-09 17:13:53', '2019-09-09 14:13:53', '<br/>', '', '', 'trash', 'closed', 'closed', '', '88-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=88-2', 0, 'mail', '', 0),
(89, 1, '2019-09-09 17:14:00', '2019-09-09 14:14:00', '<br/>', '', '', 'trash', 'closed', 'closed', '', '89-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=89-2', 0, 'mail', '', 0),
(90, 1, '2019-09-09 17:14:04', '2019-09-09 14:14:04', '<br/>', '', '', 'trash', 'closed', 'closed', '', '90-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=90-2', 0, 'mail', '', 0),
(91, 1, '2019-09-09 17:14:16', '2019-09-09 14:14:16', '<br/>', '', '', 'trash', 'closed', 'closed', '', '91-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=91-2', 0, 'mail', '', 0),
(92, 1, '2019-09-09 17:14:22', '2019-09-09 14:14:22', 'asfasf<br/>asfa', 'asaf', '', 'trash', 'closed', 'closed', '', 'asaf__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asaf', 0, 'mail', '', 0),
(93, 1, '2019-09-09 17:14:27', '2019-09-09 14:14:27', 'asfasf<br/>asfa', 'asaf', '', 'trash', 'closed', 'closed', '', 'asaf-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asaf-2', 0, 'mail', '', 0),
(94, 1, '2019-09-09 17:15:33', '2019-09-09 14:15:33', 'asfasf<br/>asfas', 'asfas', '', 'trash', 'closed', 'closed', '', 'asfas__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asfas', 0, 'mail', '', 0),
(95, 1, '2019-09-09 17:19:00', '2019-09-09 14:19:00', 'asfasfasf<br/>asfasf', 'afsfasf', '', 'trash', 'closed', 'closed', '', 'afsfasf__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=afsfasf', 0, 'mail', '', 0),
(96, 1, '2019-09-09 17:20:51', '2019-09-09 14:20:51', 'gasga<br/>red', 'red', '', 'trash', 'closed', 'closed', '', 'red__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=red', 0, 'mail', '', 0),
(97, 1, '2019-09-09 17:22:12', '2019-09-09 14:22:12', 'fasfasf<br/>afsa', 'asfasf', '', 'trash', 'closed', 'closed', '', 'asfasf__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asfasf', 0, 'mail', '', 0),
(98, 1, '2019-09-09 17:23:51', '2019-09-09 14:23:51', 'fsafasfasfasf<br/>safsasf', 'avsf', '', 'trash', 'closed', 'closed', '', 'avsf__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=avsf', 0, 'mail', '', 0),
(99, 1, '2019-09-09 17:25:32', '2019-09-09 14:25:32', 'red<br/>red', 'red', '', 'trash', 'closed', 'closed', '', 'red-2__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=red-2', 0, 'mail', '', 0),
(100, 1, '2019-09-09 17:29:16', '2019-09-09 14:29:16', 'red<br/>red', 'red', '', 'trash', 'closed', 'closed', '', 'red-3__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=red-3', 0, 'mail', '', 0),
(101, 1, '2019-09-09 17:32:28', '2019-09-09 14:32:28', 'red<br/>фіаф', 'фаі', '', 'trash', 'closed', 'closed', '', '%d1%84%d0%b0%d1%96__trashed', '', '', '2019-09-10 09:40:04', '2019-09-10 06:40:04', '', 0, 'http://maverick-test/?mail=%d1%84%d0%b0%d1%96', 0, 'mail', '', 0),
(102, 1, '2019-09-09 17:34:20', '2019-09-09 14:34:20', 'ard<br/>red', 'red', '', 'trash', 'closed', 'closed', '', 'red-4__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=red-4', 0, 'mail', '', 0),
(103, 1, '2019-09-09 17:35:14', '2019-09-09 14:35:14', 'rafsasfa<br/>asgas', 'agsag', '', 'trash', 'closed', 'closed', '', 'agsag__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=agsag', 0, 'mail', '', 0),
(104, 1, '2019-09-09 17:35:46', '2019-09-09 14:35:46', 'reasf<br/>asgasg', 'gasg', '', 'trash', 'closed', 'closed', '', 'gasg__trashed', '', '', '2019-09-10 09:40:03', '2019-09-10 06:40:03', '', 0, 'http://maverick-test/?mail=gasg', 0, 'mail', '', 0),
(105, 1, '2019-09-09 17:37:27', '2019-09-09 14:37:27', 'фіпфіп<br/>фіпф', 'фіпф', '', 'trash', 'closed', 'closed', '', '%d1%84%d1%96%d0%bf%d1%84__trashed', '', '', '2019-09-10 09:40:04', '2019-09-10 06:40:04', '', 0, 'http://maverick-test/?mail=%d1%84%d1%96%d0%bf%d1%84', 0, 'mail', '', 0),
(106, 1, '2019-09-09 17:47:00', '2019-09-09 14:47:00', '<br/>', '', '', 'trash', 'closed', 'closed', '', '106-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=106-2', 0, 'mail', '', 0),
(107, 1, '2019-09-09 17:47:15', '2019-09-09 14:47:15', '<br/>', '', '', 'trash', 'closed', 'closed', '', '107-2__trashed', '', '', '2019-09-10 09:39:52', '2019-09-10 06:39:52', '', 0, 'http://maverick-test/?mail=107-2', 0, 'mail', '', 0),
(108, 1, '2019-09-09 17:47:29', '2019-09-09 14:47:29', '<br/>', '', '', 'trash', 'closed', 'closed', '', '108-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=108-2', 0, 'mail', '', 0),
(109, 1, '2019-09-09 17:48:12', '2019-09-09 14:48:12', 'asfasfasf<br/>asf', 'asfa', '', 'trash', 'closed', 'closed', '', 'asfa__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asfa', 0, 'mail', '', 0),
(110, 1, '2019-09-09 17:48:12', '2019-09-09 14:48:12', 'asfasfasf<br/>asf', 'asfa', '', 'trash', 'closed', 'closed', '', 'asfa-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=asfa-2', 0, 'mail', '', 0),
(111, 1, '2019-09-09 17:49:11', '2019-09-09 14:49:11', '<br/>', '', '', 'trash', 'closed', 'closed', '', '111-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=111-2', 0, 'mail', '', 0),
(112, 1, '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 'Головна', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%be%d0%bb%d0%be%d0%b2%d0%bd%d0%b0', '', '', '2019-09-10 09:22:58', '2019-09-10 06:22:58', '', 0, 'http://maverick-test/?p=112', 1, 'nav_menu_item', '', 0),
(113, 1, '2019-09-10 09:37:15', '2019-09-10 06:37:15', '<br/>', '', '', 'trash', 'closed', 'closed', '', '113-2__trashed', '', '', '2019-09-10 09:39:57', '2019-09-10 06:39:57', '', 0, 'http://maverick-test/?mail=113-2', 0, 'mail', '', 0),
(114, 1, '2019-09-10 09:40:27', '2019-09-10 06:40:27', 'Rasa<br/><br/>Rato<br/><br/>Rik<br/><br/>Karo<br/><br/>ajsakgkags', 'Rasa', '', 'publish', 'closed', 'closed', '', 'rasa', '', '', '2019-09-10 09:40:27', '2019-09-10 06:40:27', '', 0, 'http://maverick-test/?mail=rasa', 0, 'mail', '', 0),
(115, 1, '2019-09-10 09:43:48', '2019-09-10 06:43:48', 'Ім*я:Rek<br/><br/> <b>Прізвище:</b>Redo<br/><br/> <b>Посада:</b>safsla<br/><br/> <b>Сайт:</b>asla;lsflasfl<br/><br/> <b>Комментар:</b>Kiro', 'Rek', '', 'publish', 'closed', 'closed', '', 'rek', '', '', '2019-09-10 09:43:48', '2019-09-10 06:43:48', '', 0, 'http://maverick-test/?mail=rek', 0, 'mail', '', 0),
(116, 1, '2019-09-10 09:44:31', '2019-09-10 06:44:31', '<b>Ім*я:</b>Birka<br/><br/> <b>Прізвище:</b>Risto<br/><br/> <b>Посада:</b>redik<br/><br/> <b>Сайт:</b>redik<br/><br/> <b>Комментар:</b>asgasgasg', 'Birka', '', 'publish', 'closed', 'closed', '', 'birka', '', '', '2019-09-10 09:44:31', '2019-09-10 06:44:31', '', 0, 'http://maverick-test/?mail=birka', 0, 'mail', '', 0),
(117, 1, '2019-09-10 09:46:32', '2019-09-10 06:46:32', '<b>Ім*я:</b>Klo<br/><br/> <b>Прізвище:</b>locker<br/><br/> <b>Посада:</b>red<br/><br/> <b>Сайт:</b>ted<br/><br/> <b>Комментар:</b>ristrl', 'Klo', '', 'publish', 'closed', 'closed', '', 'klo', '', '', '2019-09-10 09:46:32', '2019-09-10 06:46:32', '', 0, 'http://maverick-test/?mail=klo', 0, 'mail', '', 0),
(118, 1, '2019-09-10 09:51:50', '2019-09-10 06:51:50', '<b>Ім*я:</b>riko<br/><br/> <b>Прізвище:</b>roko<br/><br/> <b>Посада:</b>red<br/><br/> <b>Сайт:</b>ted<br/><br/> <b>Комментар:</b>misti', 'riko', '', 'publish', 'closed', 'closed', '', 'riko', '', '', '2019-09-10 09:51:50', '2019-09-10 06:51:50', '', 0, 'http://maverick-test/?mail=riko', 0, 'mail', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'primary-menu', 'primary-menu', 0),
(3, 'Перший', '%d0%bf%d0%b5%d1%80%d1%88%d0%b8%d0%b9', 0),
(4, 'Другий', '%d0%b4%d1%80%d1%83%d0%b3%d0%b8%d0%b9', 0),
(5, 'Третій', '%d1%82%d1%80%d0%b5%d1%82%d1%96%d0%b9', 0),
(6, 'Перший', '%d0%bf%d0%b5%d1%80%d1%88%d0%b8%d0%b9', 0),
(7, 'Другий', '%d0%b4%d1%80%d1%83%d0%b3%d0%b8%d0%b9', 0),
(8, 'Перший', '%d0%bf%d0%b5%d1%80%d1%88%d0%b8%d0%b9', 0),
(9, 'Нова', '%d0%bd%d0%be%d0%b2%d0%b0', 0),
(10, 'Стара', '%d1%81%d1%82%d0%b0%d1%80%d0%b0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(12, 2, 0),
(13, 2, 0),
(31, 9, 1),
(32, 10, 1),
(33, 9, 1),
(39, 10, 1),
(40, 9, 1),
(47, 2, 0),
(50, 1, 0),
(52, 1, 0),
(55, 1, 0),
(57, 1, 0),
(112, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'taxonomy', '', 0, 0),
(4, 4, 'taxonomy', '', 0, 0),
(5, 5, 'taxonomy', '', 0, 0),
(6, 6, 'event-type', '', 0, 0),
(7, 7, 'event-type', '', 0, 0),
(8, 8, 'articles_category', '', 0, 0),
(9, 9, 'event_type', '', 0, 1),
(10, 10, 'event_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"bac04478377d0b85f8e4c0c592e3593de82b8bdfd072521e4ef134cdf6387d6c\";a:4:{s:10:\"expiration\";i:1568185126;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568012326;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1567751731'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BSBGcG77L4AkldjHjf/f5goSB3YD2R1', 'admin', 'informator1994@gmail.com', '', '2019-09-05 14:39:26', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
