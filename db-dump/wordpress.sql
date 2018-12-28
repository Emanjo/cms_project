-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 31.24.128.148:3306
-- Generation Time: 28. Des, 2018 16:25 PM
-- Tjener-versjon: 5.7.23
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `97749_ordpresse`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_comments`
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
-- Dataark for tabell `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 71, 'emanjo', 'emil.jona@gmail.com', '', '127.0.0.1', '2018-11-03 12:56:39', '2018-11-03 12:56:39', 'ethhethet', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_links`
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
-- Tabellstruktur for tabell `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dataark for tabell `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://emanjo.no', 'yes'),
(2, 'home', 'http://emanjo.no', 'yes'),
(3, 'blogname', 'Emil André Johannessen', 'yes'),
(4, 'blogdescription', 'Student with interests in front-end technology and design', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'emil.jona@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:127:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:52:\"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]\";s:33:\"wpforms_log_type/([^/]+)/embed/?$\";s:49:\"index.php?wpforms_log_type=$matches[1]&embed=true\";s:45:\"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]\";s:27:\"wpforms_log_type/([^/]+)/?$\";s:38:\"index.php?wpforms_log_type=$matches[1]\";s:44:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"amn_wpforms-lite/([^/]+)/embed/?$\";s:49:\"index.php?amn_wpforms-lite=$matches[1]&embed=true\";s:37:\"amn_wpforms-lite/([^/]+)/trackback/?$\";s:43:\"index.php?amn_wpforms-lite=$matches[1]&tb=1\";s:45:\"amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]\";s:52:\"amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]\";s:41:\"amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]\";s:33:\"amn_wpforms-lite/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"amn_wpforms-lite/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:2;s:47:\"quick-featured-images/quick-featured-images.php\";i:3;s:49:\"require-featured-image/require-featured-image.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";i:6;s:24:\"wpforms-lite/wpforms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'myPortofolio', 'yes'),
(41, 'stylesheet', 'myPortofolio', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(79, 'widget_text', 'a:4:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:8:\"Welcome!\";s:4:\"text\";s:12:\"saasjkfkasfj\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:10:\"afadfsdfad\";s:4:\"text\";s:9:\"asfasfasf\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:20:\"sfsi_Unistall_plugin\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '36', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:4;a:3:{s:5:\"title\";s:12:\"Latest posts\";s:6:\"number\";i:6;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}i:3;a:2:{s:5:\"title\";s:15:\"Latest comments\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:6:\"text-2\";i:7;s:6:\"text-3\";}s:8:\"home-pic\";a:1:{i:0;s:13:\"media_image-3\";}s:7:\"sidebar\";a:2:{i:0;s:14:\"recent-posts-4\";i:1;s:17:\"recent-comments-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:2:{i:3;a:15:{s:13:\"attachment_id\";i:27;s:3:\"url\";s:77:\"http://localhost/yamann/wp-content/uploads/2018/10/profilepicture-298x300.jpg\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:2032;s:6:\"height\";i:2048;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1546009060;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546023460;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546066671;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546081611;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539153854;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(157, 'current_theme', 'myPortofolio', 'yes'),
(158, 'theme_mods_Snowball', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:28;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541160890;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:5:\"home1\";a:1:{i:0;s:6:\"text-2\";}s:5:\"home2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(186, 'WPLANG', '', 'yes'),
(187, 'new_admin_email', 'emil.jona@gmail.com', 'yes'),
(213, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(241, 'theme_mods_myPortofolio', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:51;s:11:\"header_text\";i:1;}', 'yes'),
(252, 'category_children', 'a:0:{}', 'yes'),
(258, 'recently_activated', 'a:0:{}', 'yes'),
(267, 'rfi_post_types', 'a:1:{i:0;s:4:\"post\";}', 'yes'),
(268, 'rfi_enforcement_start', '1541104084', 'yes'),
(271, 'quick-featured-images-settings', 'a:3:{s:17:\"column_thumb_post\";s:1:\"1\";s:17:\"column_thumb_page\";s:1:\"1\";s:22:\"minimum_role_all_pages\";s:6:\"editor\";}', 'yes'),
(272, 'quick-featured-images-defaults', 'a:0:{}', 'yes'),
(298, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(304, 'wpforms_preview_page', '53', 'yes'),
(305, 'wpforms_version', '1.4.9', 'yes'),
(306, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1541201173;}', 'yes'),
(309, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, '_amn_wpforms-lite_last_checked', '1544918400', 'yes'),
(311, 'wpforms_review', 'a:2:{s:4:\"time\";i:1543858031;s:9:\"dismissed\";b:1;}', 'yes'),
(359, 'adding_tags', 'yes', 'yes'),
(361, 'show_new_notification', 'yes', 'yes'),
(362, 'show_premium_cumulative_count_notification', 'no', 'yes'),
(363, 'sfsi_section1_options', 's:380:\"a:10:{s:16:\"sfsi_rss_display\";s:2:\"no\";s:18:\"sfsi_email_display\";s:3:\"yes\";s:21:\"sfsi_facebook_display\";s:3:\"yes\";s:20:\"sfsi_twitter_display\";s:2:\"no\";s:19:\"sfsi_google_display\";s:2:\"no\";s:20:\"sfsi_youtube_display\";s:2:\"no\";s:22:\"sfsi_pinterest_display\";s:2:\"no\";s:21:\"sfsi_linkedin_display\";s:3:\"yes\";s:22:\"sfsi_instagram_display\";s:2:\"no\";s:17:\"sfsi_custom_files\";s:6:\"a:0:{}\";}\";', 'yes'),
(364, 'sfsi_section2_options', 's:1868:\"a:38:{s:12:\"sfsi_rss_url\";s:0:\"\";s:17:\"sfsi_rss_blogName\";s:0:\"\";s:18:\"sfsi_rss_blogEmail\";s:0:\"\";s:14:\"sfsi_rss_icons\";s:5:\"email\";s:14:\"sfsi_email_url\";s:297:\"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/WW5VYWdpTjBlbTNoQU1tckRDeUt5SkNQUG9RQ0dtUTVnbElwcXgrUDZqTi81Umd4dXpXWkp1bnRoamMxNk5yTkMrQ3RubUhLcnBDTXVlVi9qNWdnZ3dRMWhyeWdnMFlWKzRNNEJiY2huaHoyMHRuaU9Db2RTVGhEYXduTXFGVkZ8dzAvbHNKRGV3cmFBZ0w0QW1BNkJydGdEY2hNbXEwR3V3V2drUTJjb1ZxUT0=/OA==/\";s:24:\"sfsi_facebookPage_option\";s:3:\"yes\";s:21:\"sfsi_facebookPage_url\";s:33:\"https://www.facebook.com/emilanjo\";s:24:\"sfsi_facebookLike_option\";s:2:\"no\";s:25:\"sfsi_facebookShare_option\";s:3:\"yes\";s:21:\"sfsi_twitter_followme\";s:0:\"\";s:27:\"sfsi_twitter_followUserName\";s:0:\"\";s:22:\"sfsi_twitter_aboutPage\";s:0:\"\";s:17:\"sfsi_twitter_page\";s:0:\"\";s:20:\"sfsi_twitter_pageURL\";s:0:\"\";s:26:\"sfsi_twitter_aboutPageText\";s:82:\"Hey, check out this cool site I found: www.yourname.com #Topic via@my_twitter_name\";s:16:\"sfsi_google_page\";s:0:\"\";s:19:\"sfsi_google_pageURL\";s:0:\"\";s:22:\"sfsi_googleLike_option\";s:0:\"\";s:23:\"sfsi_googleShare_option\";s:0:\"\";s:20:\"sfsi_youtube_pageUrl\";s:0:\"\";s:17:\"sfsi_youtube_page\";s:0:\"\";s:19:\"sfsi_youtube_follow\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:0:\"\";s:15:\"sfsi_ytube_user\";s:0:\"\";s:17:\"sfsi_ytube_chnlid\";s:0:\"\";s:19:\"sfsi_pinterest_page\";s:0:\"\";s:22:\"sfsi_pinterest_pageUrl\";s:0:\"\";s:23:\"sfsi_pinterest_pingBlog\";s:0:\"\";s:22:\"sfsi_instagram_pageUrl\";s:0:\"\";s:18:\"sfsi_linkedin_page\";s:3:\"yes\";s:21:\"sfsi_linkedin_pageURL\";s:55:\"https://www.linkedin.com/in/emil-johannessen-b95468144/\";s:20:\"sfsi_linkedin_follow\";s:2:\"no\";s:27:\"sfsi_linkedin_followCompany\";i:0;s:23:\"sfsi_linkedin_SharePage\";s:3:\"yes\";s:30:\"sfsi_linkedin_recommendBusines\";s:2:\"no\";s:30:\"sfsi_linkedin_recommendCompany\";s:0:\"\";s:32:\"sfsi_linkedin_recommendProductId\";i:0;s:21:\"sfsi_CustomIcon_links\";s:0:\"\";}\";', 'yes'),
(365, 'sfsi_section3_options', 's:632:\"a:15:{s:18:\"sfsi_actvite_theme\";s:7:\"default\";s:14:\"sfsi_mouseOver\";s:3:\"yes\";s:21:\"sfsi_mouseOver_effect\";s:5:\"scale\";s:26:\"sfsi_mouseover_effect_type\";s:10:\"same_icons\";s:18:\"sfsi_shuffle_icons\";s:2:\"no\";s:22:\"sfsi_shuffle_Firstload\";s:2:\"no\";s:21:\"sfsi_shuffle_interval\";s:2:\"no\";s:25:\"sfsi_shuffle_intervalTime\";i:0;s:26:\"sfsi_specialIcon_animation\";s:0:\"\";s:26:\"sfsi_specialIcon_MouseOver\";s:2:\"no\";s:26:\"sfsi_specialIcon_Firstload\";s:2:\"no\";s:32:\"sfsi_specialIcon_Firstload_Icons\";s:3:\"all\";s:25:\"sfsi_specialIcon_interval\";s:2:\"no\";s:29:\"sfsi_specialIcon_intervalTime\";s:0:\"\";s:30:\"sfsi_specialIcon_intervalIcons\";s:3:\"all\";}\";', 'yes'),
(366, 'sfsi_section4_options', 's:1555:\"a:40:{s:19:\"sfsi_display_counts\";s:2:\"no\";s:24:\"sfsi_email_countsDisplay\";s:2:\"no\";s:21:\"sfsi_email_countsFrom\";s:6:\"source\";s:23:\"sfsi_email_manualCounts\";i:20;s:22:\"sfsi_rss_countsDisplay\";s:0:\"\";s:21:\"sfsi_rss_manualCounts\";i:20;s:27:\"sfsi_facebook_countsDisplay\";s:2:\"no\";s:24:\"sfsi_facebook_countsFrom\";s:6:\"manual\";s:26:\"sfsi_facebook_mypageCounts\";s:0:\"\";s:26:\"sfsi_facebook_manualCounts\";i:20;s:26:\"sfsi_twitter_countsDisplay\";s:0:\"\";s:23:\"sfsi_twitter_countsFrom\";s:0:\"\";s:25:\"sfsi_twitter_manualCounts\";i:20;s:15:\"tw_consumer_key\";s:0:\"\";s:18:\"tw_consumer_secret\";s:0:\"\";s:21:\"tw_oauth_access_token\";s:0:\"\";s:28:\"tw_oauth_access_token_secret\";s:0:\"\";s:25:\"sfsi_google_countsDisplay\";s:0:\"\";s:22:\"sfsi_google_countsFrom\";s:0:\"\";s:24:\"sfsi_google_manualCounts\";i:20;s:19:\"sfsi_google_api_key\";s:0:\"\";s:27:\"sfsi_linkedIn_countsDisplay\";s:2:\"no\";s:24:\"sfsi_linkedIn_countsFrom\";s:6:\"manual\";s:26:\"sfsi_linkedIn_manualCounts\";i:20;s:26:\"sfsi_youtube_countsDisplay\";s:0:\"\";s:23:\"sfsi_youtube_countsFrom\";s:0:\"\";s:25:\"sfsi_youtube_manualCounts\";i:20;s:17:\"sfsi_youtube_user\";s:0:\"\";s:22:\"sfsi_youtube_channelId\";s:0:\"\";s:28:\"sfsi_pinterest_countsDisplay\";s:0:\"\";s:25:\"sfsi_pinterest_countsFrom\";s:0:\"\";s:27:\"sfsi_pinterest_manualCounts\";i:20;s:25:\"sfsi_instagram_countsFrom\";s:0:\"\";s:28:\"sfsi_instagram_countsDisplay\";s:0:\"\";s:27:\"sfsi_instagram_manualCounts\";i:20;s:19:\"sfsi_instagram_User\";s:0:\"\";s:23:\"sfsi_instagram_clientid\";s:0:\"\";s:21:\"sfsi_instagram_appurl\";s:0:\"\";s:20:\"sfsi_instagram_token\";s:0:\"\";s:24:\"sfsi_youtubeusernameorid\";s:4:\"name\";}\";', 'yes'),
(367, 'sfsi_section5_options', 's:1076:\"a:28:{s:15:\"sfsi_icons_size\";i:40;s:18:\"sfsi_icons_spacing\";i:5;s:20:\"sfsi_icons_Alignment\";s:6:\"center\";s:17:\"sfsi_icons_perRow\";i:5;s:24:\"sfsi_icons_ClickPageOpen\";s:3:\"yes\";s:26:\"sfsi_icons_suppress_errors\";s:2:\"no\";s:16:\"sfsi_icons_stick\";s:2:\"no\";s:22:\"sfsi_rss_MouseOverText\";s:0:\"\";s:24:\"sfsi_email_MouseOverText\";s:15:\"Follow by Email\";s:26:\"sfsi_twitter_MouseOverText\";s:0:\"\";s:27:\"sfsi_facebook_MouseOverText\";s:8:\"Facebook\";s:25:\"sfsi_google_MouseOverText\";s:0:\"\";s:27:\"sfsi_linkedIn_MouseOverText\";s:8:\"LinkedIn\";s:28:\"sfsi_pinterest_MouseOverText\";s:0:\"\";s:26:\"sfsi_youtube_MouseOverText\";s:0:\"\";s:28:\"sfsi_instagram_MouseOverText\";s:0:\"\";s:22:\"sfsi_CustomIcons_order\";s:0:\"\";s:18:\"sfsi_rssIcon_order\";i:1;s:20:\"sfsi_emailIcon_order\";i:8;s:23:\"sfsi_facebookIcon_order\";i:2;s:21:\"sfsi_googleIcon_order\";i:4;s:22:\"sfsi_twitterIcon_order\";i:5;s:22:\"sfsi_youtubeIcon_order\";i:6;s:24:\"sfsi_pinterestIcon_order\";i:7;s:24:\"sfsi_instagramIcon_order\";i:9;s:23:\"sfsi_linkedinIcon_order\";i:3;s:26:\"sfsi_custom_MouseOverTexts\";s:0:\"\";s:23:\"sfsi_custom_social_hide\";s:2:\"no\";}\";', 'yes'),
(368, 'sfsi_section6_options', 's:430:\"a:12:{s:17:\"sfsi_show_Onposts\";s:2:\"no\";s:22:\"sfsi_icons_postPositon\";s:0:\"\";s:20:\"sfsi_icons_alignment\";s:5:\"right\";s:20:\"sfsi_textBefor_icons\";s:26:\"Please follow and like us:\";s:24:\"sfsi_icons_DisplayCounts\";s:2:\"no\";s:12:\"sfsi_rectsub\";s:2:\"no\";s:11:\"sfsi_rectfb\";s:2:\"no\";s:11:\"sfsi_rectgp\";s:2:\"no\";s:12:\"sfsi_rectshr\";s:2:\"no\";s:13:\"sfsi_recttwtr\";s:3:\"yes\";s:14:\"sfsi_rectpinit\";s:2:\"no\";s:16:\"sfsi_rectfbshare\";s:2:\"no\";}\";', 'yes'),
(369, 'sfsi_section7_options', 's:570:\"a:13:{s:15:\"sfsi_popup_text\";s:42:\"Enjoy this blog? Please spread the word :)\";s:27:\"sfsi_popup_background_color\";s:7:\"#eff7f7\";s:23:\"sfsi_popup_border_color\";s:7:\"#f3faf2\";s:27:\"sfsi_popup_border_thickness\";i:1;s:24:\"sfsi_popup_border_shadow\";s:3:\"yes\";s:15:\"sfsi_popup_font\";s:26:\"Helvetica,Arial,sans-serif\";s:19:\"sfsi_popup_fontSize\";i:30;s:20:\"sfsi_popup_fontStyle\";s:0:\"\";s:20:\"sfsi_popup_fontColor\";s:7:\"#000000\";s:17:\"sfsi_Show_popupOn\";s:4:\"none\";s:25:\"sfsi_Show_popupOn_PageIDs\";s:0:\"\";s:14:\"sfsi_Shown_pop\";s:8:\"ETscroll\";s:24:\"sfsi_Shown_popupOnceTime\";i:0;}\";', 'yes'),
(370, 'sfsi_section8_options', 's:1177:\"a:26:{s:20:\"sfsi_form_adjustment\";s:3:\"yes\";s:16:\"sfsi_form_height\";i:180;s:15:\"sfsi_form_width\";i:230;s:16:\"sfsi_form_border\";s:2:\"no\";s:26:\"sfsi_form_border_thickness\";i:1;s:22:\"sfsi_form_border_color\";s:7:\"#b5b5b5\";s:20:\"sfsi_form_background\";s:7:\"#ffffff\";s:22:\"sfsi_form_heading_text\";s:22:\"Get new posts by email\";s:22:\"sfsi_form_heading_font\";s:26:\"Helvetica,Arial,sans-serif\";s:27:\"sfsi_form_heading_fontstyle\";s:4:\"bold\";s:27:\"sfsi_form_heading_fontcolor\";s:7:\"#000000\";s:26:\"sfsi_form_heading_fontsize\";i:16;s:27:\"sfsi_form_heading_fontalign\";s:6:\"center\";s:20:\"sfsi_form_field_text\";s:9:\"Subscribe\";s:20:\"sfsi_form_field_font\";s:26:\"Helvetica,Arial,sans-serif\";s:25:\"sfsi_form_field_fontstyle\";s:6:\"normal\";s:25:\"sfsi_form_field_fontcolor\";s:0:\"\";s:24:\"sfsi_form_field_fontsize\";i:14;s:25:\"sfsi_form_field_fontalign\";s:6:\"center\";s:21:\"sfsi_form_button_text\";s:9:\"Subscribe\";s:21:\"sfsi_form_button_font\";s:26:\"Helvetica,Arial,sans-serif\";s:26:\"sfsi_form_button_fontstyle\";s:4:\"bold\";s:26:\"sfsi_form_button_fontcolor\";s:7:\"#000000\";s:25:\"sfsi_form_button_fontsize\";i:16;s:26:\"sfsi_form_button_fontalign\";s:6:\"center\";s:27:\"sfsi_form_button_background\";s:7:\"#dedede\";}\";', 'yes'),
(371, 'sfsi_section9_options', 's:409:\"a:10:{s:20:\"sfsi_show_via_widget\";s:2:\"no\";s:16:\"sfsi_icons_float\";s:2:\"no\";s:24:\"sfsi_icons_floatPosition\";s:12:\"center-right\";s:26:\"sfsi_icons_floatMargin_top\";i:0;s:29:\"sfsi_icons_floatMargin_bottom\";i:0;s:27:\"sfsi_icons_floatMargin_left\";i:0;s:28:\"sfsi_icons_floatMargin_right\";i:0;s:23:\"sfsi_disable_floaticons\";s:2:\"no\";s:23:\"sfsi_show_via_shortcode\";s:3:\"yes\";s:24:\"sfsi_show_via_afterposts\";s:2:\"no\";}\";', 'yes'),
(372, 'sfsi_feed_id', 'WW5VYWdpTjBlbTNoQU1tckRDeUt5SkNQUG9RQ0dtUTVnbElwcXgrUDZqTi81Umd4dXpXWkp1bnRoamMxNk5yTkMrQ3RubUhLcnBDTXVlVi9qNWdnZ3dRMWhyeWdnMFlWKzRNNEJiY2huaHoyMHRuaU9Db2RTVGhEYXduTXFGVkZ8dzAvbHNKRGV3cmFBZ0w0QW1BNkJydGdEY2hNbXEwR3V3V2drUTJjb1ZxUT0=', 'yes'),
(373, 'sfsi_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/WW5VYWdpTjBlbTNoQU1tckRDeUt5SkNQUG9RQ0dtUTVnbElwcXgrUDZqTi81Umd4dXpXWkp1bnRoamMxNk5yTkMrQ3RubUhLcnBDTXVlVi9qNWdnZ3dRMWhyeWdnMFlWKzRNNEJiY2huaHoyMHRuaU9Db2RTVGhEYXduTXFGVkZ8dzAvbHNKRGV3cmFBZ0w0QW1BNkJydGdEY2hNbXEwR3V3V2drUTJjb1ZxUT0=/OA==/', 'yes'),
(374, 'sfsi_installDate', '2018-11-03 12:29:29', 'yes'),
(375, 'sfsi_RatingDiv', 'yes', 'yes'),
(376, 'sfsi_footer_sec', 'no', 'yes'),
(377, 'sfsi_activate', '0', 'yes'),
(378, 'sfsi_instagram_sf_count', 's:90:\"a:3:{s:4:\"date\";i:1544918400;s:13:\"sfsi_sf_count\";i:0;s:20:\"sfsi_instagram_count\";s:0:\"\";}\";', 'yes'),
(379, 'sfsi_error_reporting_notice_dismissed', '1', 'yes'),
(380, 'widget_sfsi-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(381, 'widget_subscriber_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(382, 'sfsi_pluginVersion', '2.10', 'yes'),
(383, 'sfsi_serverphpVersionnotification', 'yes', 'yes'),
(384, 'show_premium_notification', 'no', 'yes'),
(385, 'show_notification', 'yes', 'yes'),
(386, 'show_mobile_notification', 'yes', 'yes'),
(387, 'sfsi_languageNotice', 'yes', 'yes'),
(388, 'sfsi_pplus_error_reporting_notice_dismissed', '1', 'yes'),
(389, 'sfsi_addThis_icon_removal_notice_dismissed', '1', 'yes'),
(390, 'sfsi_verificatiom_code', 'a2VZMGmHLubzpawnVwZh', 'yes'),
(421, 'classic-editor-replace', 'replace', 'yes'),
(488, 'acf_version', '5.7.7', 'yes'),
(493, 'cptui_new_install', 'false', 'yes'),
(494, 'cptui_post_types', 'a:1:{s:9:\"portfolio\";a:29:{s:4:\"name\";s:9:\"portfolio\";s:5:\"label\";s:9:\"Portfolio\";s:14:\"singular_label\";s:15:\"Portfolio Piece\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(684, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"emil.jona@gmail.com\";s:7:\"version\";s:5:\"5.0.2\";s:9:\"timestamp\";i:1545357458;}', 'no'),
(711, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1545010312', 'no'),
(722, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1545010314', 'no'),
(728, 'db_upgraded', '', 'yes'),
(731, 'can_compress_scripts', '0', 'no'),
(761, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1546006346;s:15:\"version_checked\";s:5:\"5.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(819, '_site_transient_timeout_theme_roots', '1546008146', 'no'),
(820, '_site_transient_theme_roots', 'a:5:{s:12:\"myPortofolio\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(821, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1546006348;s:7:\"checked\";a:5:{s:12:\"myPortofolio\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.1\";s:14:\"twentynineteen\";s:3:\"1.0\";s:15:\"twentyseventeen\";s:3:\"1.8\";s:13:\"twentysixteen\";s:3:\"1.6\";}s:8:\"response\";a:4:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:14:\"twentynineteen\";a:4:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.1.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(822, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1546006348;s:7:\"checked\";a:7:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:3:\"1.7\";s:47:\"quick-featured-images/quick-featured-images.php\";s:6:\"13.3.2\";s:49:\"require-featured-image/require-featured-image.php\";s:5:\"1.4.0\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.1.0\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.15\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.5.0.3\";}s:8:\"response\";a:1:{s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.5.0.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforms-lite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-256x256.png?rev=1371112\";s:2:\"1x\";s:65:\"https://ps.w.org/wpforms-lite/assets/icon-128x128.png?rev=1371112\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=1371112\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=1371112\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"quick-featured-images/quick-featured-images.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/quick-featured-images\";s:4:\"slug\";s:21:\"quick-featured-images\";s:6:\"plugin\";s:47:\"quick-featured-images/quick-featured-images.php\";s:11:\"new_version\";s:6:\"13.3.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/quick-featured-images/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/quick-featured-images.13.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/quick-featured-images/assets/icon-256x256.png?rev=982968\";s:2:\"1x\";s:73:\"https://ps.w.org/quick-featured-images/assets/icon-128x128.png?rev=982968\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/quick-featured-images/assets/banner-1544x500.png?rev=849409\";s:2:\"1x\";s:75:\"https://ps.w.org/quick-featured-images/assets/banner-772x250.png?rev=849409\";}s:11:\"banners_rtl\";a:0:{}}s:49:\"require-featured-image/require-featured-image.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/require-featured-image\";s:4:\"slug\";s:22:\"require-featured-image\";s:6:\"plugin\";s:49:\"require-featured-image/require-featured-image.php\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/require-featured-image/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/require-featured-image.1.4.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/require-featured-image.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dataark for tabell `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8, 7, '_edit_last', '1'),
(9, 7, '_edit_lock', '1541238529:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1541201301:1'),
(19, 20, '_edit_last', '1'),
(20, 20, '_edit_lock', '1539536267:1'),
(24, 9, '_wp_page_template', 'page-sidebar-right.php'),
(43, 25, '_menu_item_type', 'post_type'),
(44, 25, '_menu_item_menu_item_parent', '0'),
(45, 25, '_menu_item_object_id', '9'),
(46, 25, '_menu_item_object', 'page'),
(47, 25, '_menu_item_target', ''),
(48, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 25, '_menu_item_xfn', ''),
(50, 25, '_menu_item_url', ''),
(61, 27, '_wp_attached_file', '2018/10/profilepicture.jpg'),
(62, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2032;s:6:\"height\";i:2048;s:4:\"file\";s:26:\"2018/10/profilepicture.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"profilepicture-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"profilepicture-298x300.jpg\";s:5:\"width\";i:298;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"profilepicture-768x774.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:774;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"profilepicture-1016x1024.jpg\";s:5:\"width\";i:1016;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 28, '_wp_attached_file', '2018/10/cropped-profilepicture.jpg'),
(64, 28, '_wp_attachment_context', 'custom-logo'),
(65, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2032;s:6:\"height\";i:1320;s:4:\"file\";s:34:\"2018/10/cropped-profilepicture.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-profilepicture-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-profilepicture-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"cropped-profilepicture-768x499.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"cropped-profilepicture-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 35, '_menu_item_type', 'post_type'),
(84, 35, '_menu_item_menu_item_parent', '0'),
(85, 35, '_menu_item_object_id', '7'),
(86, 35, '_menu_item_object', 'page'),
(87, 35, '_menu_item_target', ''),
(88, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 35, '_menu_item_xfn', ''),
(90, 35, '_menu_item_url', ''),
(92, 36, '_edit_last', '1'),
(93, 37, '_menu_item_type', 'post_type'),
(94, 37, '_menu_item_menu_item_parent', '0'),
(95, 37, '_menu_item_object_id', '36'),
(96, 37, '_menu_item_object', 'page'),
(97, 37, '_menu_item_target', ''),
(98, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 37, '_menu_item_xfn', ''),
(100, 37, '_menu_item_url', ''),
(101, 36, '_edit_lock', '1541188741:1'),
(102, 40, '_wp_attached_file', '2018/11/IMG-20181018-WA0001.jpg'),
(103, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:31:\"2018/11/IMG-20181018-WA0001.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG-20181018-WA0001-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG-20181018-WA0001-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"IMG-20181018-WA0001-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20181018-WA0001-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 40, '_wp_attachment_image_alt', 'Group photo'),
(108, 41, '_wp_attached_file', '2018/11/IMG-20181013-WA0004.jpg'),
(109, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1600;s:4:\"file\";s:31:\"2018/11/IMG-20181013-WA0004.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG-20181013-WA0004-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG-20181013-WA0004-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"IMG-20181013-WA0004-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG-20181013-WA0004-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 41, '_wp_attachment_image_alt', 'sdfsdfs'),
(118, 44, '_wp_attached_file', '2018/10/cropped-profilepicture-1.jpg'),
(119, 44, '_wp_attachment_context', 'custom-logo'),
(120, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2032;s:6:\"height\";i:2034;s:4:\"file\";s:36:\"2018/10/cropped-profilepicture-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-profilepicture-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-profilepicture-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"cropped-profilepicture-1-768x769.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"cropped-profilepicture-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 51, '_wp_attached_file', '2018/11/logo.svg'),
(135, 51, '_wp_attachment_image_alt', 'logo eaj'),
(140, 53, 'inline_featured_image', '0'),
(141, 9, 'inline_featured_image', '0'),
(169, 65, 'inline_featured_image', '0'),
(170, 65, '_edit_last', '1'),
(171, 65, '_edit_lock', '1541202907:1'),
(172, 67, '_wp_attached_file', '2018/11/concept-2959606_960_720.png'),
(173, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:452;s:4:\"file\";s:35:\"2018/11/concept-2959606_960_720.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"concept-2959606_960_720-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"concept-2959606_960_720-300x141.png\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"concept-2959606_960_720-768x362.png\";s:5:\"width\";i:768;s:6:\"height\";i:362;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 65, '_thumbnail_id', '67'),
(177, 68, 'inline_featured_image', '0'),
(178, 68, '_edit_last', '1'),
(179, 68, '_edit_lock', '1543873876:1'),
(180, 69, '_wp_attached_file', '2018/11/belgiabird.jpg'),
(181, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:563;s:4:\"file\";s:22:\"2018/11/belgiabird.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"belgiabird-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"belgiabird-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"belgiabird-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-A520F\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1540396010\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.6\";s:3:\"iso\";s:2:\"40\";s:13:\"shutter_speed\";s:18:\"0.0057142857142857\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(182, 68, '_thumbnail_id', '69'),
(185, 71, 'inline_featured_image', '0'),
(186, 71, '_edit_last', '1'),
(187, 71, '_edit_lock', '1541249939:1'),
(188, 72, '_wp_attached_file', '2018/11/bruggenight.jpg'),
(189, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1125;s:4:\"file\";s:23:\"2018/11/bruggenight.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"bruggenight-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"bruggenight-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"bruggenight-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"bruggenight-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-A520F\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539204024\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.6\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:3:\"0.1\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(190, 71, '_thumbnail_id', '72'),
(198, 76, '_wp_attached_file', '2018/11/bruggenight-1.jpg'),
(199, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1125;s:4:\"file\";s:25:\"2018/11/bruggenight-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"bruggenight-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"bruggenight-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"bruggenight-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"bruggenight-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-A520F\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539204024\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.6\";s:3:\"iso\";s:4:\"2000\";s:13:\"shutter_speed\";s:3:\"0.1\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(203, 79, 'inline_featured_image', '0'),
(204, 79, '_edit_lock', '1543858213:1'),
(205, 79, '_edit_last', '1'),
(206, 81, '_wp_attached_file', '2018/12/JavaScript-logo.png'),
(207, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1052;s:6:\"height\";i:1052;s:4:\"file\";s:27:\"2018/12/JavaScript-logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"JavaScript-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"JavaScript-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"JavaScript-logo-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"JavaScript-logo-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 81, '_wp_attachment_image_alt', 'JavaScript-logo'),
(209, 79, '_thumbnail_id', '81'),
(219, 84, 'inline_featured_image', '0'),
(220, 84, '_edit_lock', '1543868506:1'),
(221, 84, '_edit_last', '1'),
(222, 84, '_wp_page_template', 'page-portfolio-template.php'),
(223, 85, '_menu_item_type', 'post_type'),
(224, 85, '_menu_item_menu_item_parent', '0'),
(225, 85, '_menu_item_object_id', '84'),
(226, 85, '_menu_item_object', 'page'),
(227, 85, '_menu_item_target', ''),
(228, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 85, '_menu_item_xfn', ''),
(230, 85, '_menu_item_url', ''),
(231, 87, 'inline_featured_image', '0'),
(232, 87, '_edit_lock', '1543869734:1'),
(233, 87, '_edit_last', '1'),
(234, 88, '_wp_attached_file', '2018/12/Vue.js_Logo.svg.png'),
(235, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2018/12/Vue.js_Logo.svg.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Vue.js_Logo.svg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Vue.js_Logo.svg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 88, '_wp_attachment_image_alt', 'vue.js logo'),
(237, 87, '_thumbnail_id', '88'),
(239, 91, 'inline_featured_image', '0'),
(240, 91, '_edit_lock', '1543870099:1'),
(241, 91, '_edit_last', '1'),
(242, 92, '_wp_attached_file', '2018/12/768px-HTML5_logo_and_wordmark.svg.png'),
(243, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:768;s:4:\"file\";s:45:\"2018/12/768px-HTML5_logo_and_wordmark.svg.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"768px-HTML5_logo_and_wordmark.svg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"768px-HTML5_logo_and_wordmark.svg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"768px-HTML5_logo_and_wordmark.svg-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 91, '_thumbnail_id', '92'),
(249, 96, '_wp_attached_file', '2018/12/GitHub-Mark-Light-120px-plus.png'),
(250, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:40:\"2018/12/GitHub-Mark-Light-120px-plus.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 97, '_wp_attached_file', '2018/12/GitHub-Mark-Light-120px-plus-1.png'),
(252, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:42:\"2018/12/GitHub-Mark-Light-120px-plus-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 97, '_wp_attachment_image_alt', 'GitHub'),
(254, 54, 'wpforms_entries_count', '2');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_posts`
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
-- Dataark for tabell `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2018-10-13 11:40:23', '2018-10-13 11:40:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-13 12:02:10', '2018-10-13 12:02:10', '', 0, 'http://localhost/yamann/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-10-13 11:40:23', '2018-10-13 11:40:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-10-13 11:40:23', '2018-10-13 11:40:23', '', 7, 'http://localhost/yamann/2018/10/13/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-10-13 11:40:38', '2018-10-13 11:40:38', '&nbsp;\r\n\r\n[wpforms id=\"54\" title=\"false\" description=\"false\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-02 23:29:56', '2018-11-02 23:29:56', '', 0, 'http://localhost/yamann/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-10-13 11:40:38', '2018-10-13 11:40:38', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-10-13 11:40:38', '2018-10-13 11:40:38', '', 9, 'http://localhost/yamann/2018/10/13/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-10-13 11:40:47', '2018-10-13 11:40:47', 'Contact me on this page', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-10-13 11:40:47', '2018-10-13 11:40:47', '', 9, 'http://localhost/yamann/2018/10/13/9-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-10-13 12:01:59', '2018-10-13 12:01:59', '', '', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-10-13 12:01:59', '2018-10-13 12:01:59', '', 7, 'http://localhost/yamann/7-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-10-13 12:02:10', '2018-10-13 12:02:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-10-13 12:02:10', '2018-10-13 12:02:10', '', 7, 'http://localhost/yamann/7-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-10-14 17:00:10', '2018-10-14 17:00:10', 'About us ..................', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-10-14 17:00:10', '2018-10-14 17:00:10', '', 0, 'http://localhost/yamann/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-10-14 17:00:10', '2018-10-14 17:00:10', 'About us ..................', 'About', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-10-14 17:00:10', '2018-10-14 17:00:10', '', 20, 'http://localhost/yamann/20-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-10-14 17:35:01', '2018-10-14 17:35:01', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-12-03 20:22:42', '2018-12-03 20:22:42', '', 0, 'http://localhost/yamann/?p=25', 4, 'nav_menu_item', '', 0),
(27, 1, '2018-10-14 18:47:17', '2018-10-14 18:47:17', '', 'profilepicture', '', 'inherit', 'open', 'closed', '', 'profilepicture', '', '', '2018-10-14 18:47:17', '2018-10-14 18:47:17', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/10/profilepicture.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-10-14 18:47:32', '2018-10-14 18:47:32', 'http://www.emanjo.no/wp-content/uploads/2018/10/cropped-profilepicture.jpg', 'cropped-profilepicture.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-profilepicture-jpg', '', '', '2018-10-14 18:47:32', '2018-10-14 18:47:32', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/10/cropped-profilepicture.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-11-02 19:56:20', '2018-11-02 19:56:20', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-12-03 20:22:42', '2018-12-03 20:22:42', '', 0, 'http://localhost/yamann/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2018-11-02 20:01:20', '2018-11-02 20:01:20', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-11-02 20:01:20', '2018-11-02 20:01:20', '', 0, 'http://localhost/yamann/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-11-02 20:01:20', '2018-11-02 20:01:20', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-12-03 20:22:42', '2018-12-03 20:22:42', '', 0, 'http://localhost/yamann/37/', 3, 'nav_menu_item', '', 0),
(38, 1, '2018-11-02 20:01:20', '2018-11-02 20:01:20', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-02 20:01:20', '2018-11-02 20:01:20', '', 36, 'http://localhost/yamann/36-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-11-02 20:11:36', '2018-11-02 20:11:36', '', 'IMG-20181018-WA0001', '', 'inherit', 'open', 'closed', '', 'img-20181018-wa0001', '', '', '2018-11-02 20:14:15', '2018-11-02 20:14:15', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/11/IMG-20181018-WA0001.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-11-02 20:28:41', '2018-11-02 20:28:41', '', 'IMG-20181013-WA0004', '', 'inherit', 'open', 'closed', '', 'img-20181013-wa0004', '', '', '2018-11-02 20:28:48', '2018-11-02 20:28:48', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/11/IMG-20181013-WA0004.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-11-02 21:06:55', '2018-11-02 21:06:55', 'http://www.emanjo.no/wp-content/uploads/2018/10/cropped-profilepicture-1.jpg', 'cropped-profilepicture-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-profilepicture-1-jpg', '', '', '2018-11-02 21:06:55', '2018-11-02 21:06:55', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/10/cropped-profilepicture-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-11-02 22:03:17', '2018-11-02 22:03:17', '', 'logo', 'logo', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-11-02 22:03:27', '2018-11-02 22:03:27', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/11/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(53, 1, '2018-11-02 23:26:13', '2018-11-02 23:26:13', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2018-11-02 23:26:13', '2018-11-02 23:26:13', '', 0, 'http://localhost/yamann/wpforms-preview/', 0, 'page', '', 0),
(54, 1, '2018-11-02 23:26:23', '2018-11-02 23:26:23', '{\"id\":\"54\",\"field_id\":3,\"fields\":[{\"id\":\"0\",\"type\":\"name\",\"label\":\"Name\",\"format\":\"first-last\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"simple_placeholder\":\"\",\"simple_default\":\"\",\"first_placeholder\":\"\",\"first_default\":\"\",\"middle_placeholder\":\"\",\"middle_default\":\"\",\"last_placeholder\":\"\",\"last_default\":\"\",\"css\":\"\"},{\"id\":\"1\",\"type\":\"email\",\"label\":\"Email\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"confirmation_placeholder\":\"\",\"default_value\":\"\",\"css\":\"\"},{\"id\":\"2\",\"type\":\"textarea\",\"label\":\"Message\",\"description\":\"\",\"required\":\"1\",\"size\":\"medium\",\"placeholder\":\"\",\"css\":\"\"}],\"settings\":{\"form_title\":\"Simple Contact Form\",\"form_desc\":\"\",\"form_class\":\"\",\"submit_text\":\"Send\",\"submit_text_processing\":\"Sending...\",\"submit_class\":\"\",\"honeypot\":\"1\",\"notification_enable\":\"1\",\"notifications\":{\"1\":{\"email\":\"emil.jona@gmail.com\",\"subject\":\"emil.jona@gmail.com\",\"sender_name\":\"{field_id=\\\"0\\\"}\",\"sender_address\":\"{admin_email}\",\"replyto\":\"{field_id=\\\"1\\\"}\",\"message\":\"{all_fields}\"}},\"confirmations\":{\"1\":{\"type\":\"message\",\"message\":\"<p>Thanks for the message! I will reach out to you as soon as I can<\\/p>\\r\\n<p>&nbsp;<\\/p>\",\"message_scroll\":\"1\",\"page\":\"20\",\"redirect\":\"\"}}},\"meta\":{\"template\":\"contact\"}}', 'Simple Contact Form', '', 'publish', 'closed', 'closed', '', 'simple-contact-form', '', '', '2018-12-04 18:18:53', '2018-12-04 18:18:53', '', 0, 'http://localhost/yamann/?post_type=wpforms&#038;p=54', 0, 'wpforms', '', 0),
(55, 1, '2018-11-02 23:29:31', '2018-11-02 23:29:31', '[wpforms id=\"54\" title=\"false\" description=\"false\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-02 23:29:31', '2018-11-02 23:29:31', '', 9, 'http://localhost/yamann/9-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-11-02 23:29:49', '2018-11-02 23:29:49', '&nbsp;\r\n\r\n&nbsp;\r\n\r\n[wpforms id=\"54\" title=\"false\" description=\"false\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-02 23:29:49', '2018-11-02 23:29:49', '', 9, 'http://localhost/yamann/9-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-11-02 23:29:56', '2018-11-02 23:29:56', '&nbsp;\r\n\r\n[wpforms id=\"54\" title=\"false\" description=\"false\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-11-02 23:29:56', '2018-11-02 23:29:56', '', 9, 'http://localhost/yamann/9-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-11-02 23:44:31', '2018-11-02 23:44:31', '<h2>Hi and welcome to myPortfolio v1.0.0!</h2>\r\nThis is my second attempt at developing a theme for WordPress and for now it seems that it work perfetly. Can\'t wait to be finished with this.\r\n<h3>Some background information:</h3>\r\nThis theme development project is a part of a course that I\'m taking in my exchange year at Howest in Brugge, Belgium. I hope to finish the whole project in time.', 'myPortofolio v.1.0.0', '', 'publish', 'open', 'open', '', 'myportofolio-v-1-0-0', '', '', '2018-11-02 23:44:31', '2018-11-02 23:44:31', '', 0, 'http://localhost/yamann/?p=65', 0, 'post', '', 0),
(66, 1, '2018-11-02 23:41:19', '2018-11-02 23:41:19', '<h2>Hi and welcome to myPortfolio v1.0.0!</h2>\r\nThis is my second attempt at developing a theme for WordPress and for now it seems that it work perfetly. Can\'t wait to be finished with this.\r\n<h3>Some background information:</h3>\r\nThis theme development project is a part of a course that I\'m taking in my exchange year at Howest in Brugge, Belgium. I hope to finish the whole project in time.', 'myPortofolio v.1.0.0', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-11-02 23:41:19', '2018-11-02 23:41:19', '', 65, 'http://localhost/yamann/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-11-02 23:43:56', '2018-11-02 23:43:56', '', 'featured image', '', 'inherit', 'open', 'closed', '', 'concept-2959606_960_720', '', '', '2018-11-02 23:44:10', '2018-11-02 23:44:10', '', 65, 'http://localhost/yamann/wp-content/uploads/2018/11/concept-2959606_960_720.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2018-11-03 00:11:10', '2018-11-03 00:11:10', 'The town that I\'m currently living in is Brugge in Belgium. Here I will spend about 5 months before returning home to Norway to finish my degree in IT &amp; Information systems. My plan after that is to find a job where I can enjoy the fun and interesting life of a developer in front-end technology &amp; design.', 'Brugge', '', 'publish', 'open', 'open', '', 'brugge', '', '', '2018-11-03 00:11:10', '2018-11-03 00:11:10', '', 0, 'http://localhost/yamann/?p=68', 0, 'post', '', 0),
(69, 1, '2018-11-03 00:10:37', '2018-11-03 00:10:37', '', 'belgiabird', '', 'inherit', 'open', 'closed', '', 'belgiabird', '', '', '2018-11-03 00:10:37', '2018-11-03 00:10:37', '', 68, 'http://localhost/yamann/wp-content/uploads/2018/11/belgiabird.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-11-03 00:10:49', '2018-11-03 00:10:49', 'The town that I\'m currently living in is Brugge in Belgium. Here I will spend about 5 months before returning home to Norway to finish my degree in IT &amp; Information systems. My plan after that is to find a job where I can enjoy the fun and interesting life of a developer in front-end technology &amp; design.', 'Brugge', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-11-03 00:10:49', '2018-11-03 00:10:49', '', 68, 'http://localhost/yamann/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-11-03 00:14:45', '2018-11-03 00:14:45', 'Brugge has some really old and nice structures. During the evening/night when it is dark outside, the different buildings get lit up and it looks amazing.', 'Light in the dark', '', 'publish', 'open', 'open', '', 'light-in-the-dark', '', '', '2018-11-03 12:56:43', '2018-11-03 12:56:43', '', 0, 'http://localhost/yamann/?p=71', 0, 'post', '', 1),
(72, 1, '2018-11-03 00:14:12', '2018-11-03 00:14:12', '', 'bruggenight', '', 'inherit', 'open', 'closed', '', 'bruggenight', '', '', '2018-11-03 00:14:12', '2018-11-03 00:14:12', '', 71, 'http://localhost/yamann/wp-content/uploads/2018/11/bruggenight.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-11-03 00:14:25', '2018-11-03 00:14:25', 'Brugge has some really old and nice structures. During the evening/night when it is dark outside, the different buildings get lit up and it looks amazing.', 'Light in the dark', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-11-03 00:14:25', '2018-11-03 00:14:25', '', 71, 'http://localhost/yamann/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-11-03 12:53:47', '2018-11-03 12:53:47', '', 'bruggenight', '', 'inherit', 'open', 'closed', '', 'bruggenight-2', '', '', '2018-11-03 12:53:47', '2018-11-03 12:53:47', '', 71, 'http://localhost/yamann/wp-content/uploads/2018/11/bruggenight-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-12-03 17:30:19', '2018-12-03 17:30:19', 'I currently know basic JavaScript, but I\'m in the process of learning more advanced JavaScript.', 'JavaScript', '', 'publish', 'closed', 'closed', '', 'javascript', '', '', '2018-12-03 17:32:32', '2018-12-03 17:32:32', '', 0, 'http://localhost/yamann/?post_type=portfolio&#038;p=79', 0, 'portfolio', '', 0),
(80, 1, '2018-12-03 17:30:19', '2018-12-03 17:30:19', 'I currently now basic JavaScript, but I\'m in the process of learning more advanced JavaScript.', 'JavaScript', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-12-03 17:30:19', '2018-12-03 17:30:19', '', 79, 'http://localhost/yamann/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-12-03 17:31:36', '2018-12-03 17:31:36', '', 'JavaScript-logo', '', 'inherit', 'open', 'closed', '', 'javascript-logo', '', '', '2018-12-03 17:31:52', '2018-12-03 17:31:52', '', 79, 'http://localhost/yamann/wp-content/uploads/2018/12/JavaScript-logo.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2018-12-03 17:32:32', '2018-12-03 17:32:32', 'I currently know basic JavaScript, but I\'m in the process of learning more advanced JavaScript.', 'JavaScript', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-12-03 17:32:32', '2018-12-03 17:32:32', '', 79, 'http://localhost/yamann/79-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-12-03 20:19:40', '2018-12-03 20:19:40', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'the_portfolio', '', '', '2018-12-03 20:20:02', '2018-12-03 20:20:02', '', 0, 'http://localhost/yamann/?page_id=84', 0, 'page', '', 0),
(85, 1, '2018-12-03 20:19:41', '2018-12-03 20:19:41', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-12-03 20:22:42', '2018-12-03 20:22:42', '', 0, 'http://localhost/yamann/85/', 2, 'nav_menu_item', '', 0),
(86, 1, '2018-12-03 20:19:40', '2018-12-03 20:19:40', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-12-03 20:19:40', '2018-12-03 20:19:40', '', 84, 'http://localhost/yamann/84-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-12-03 20:44:26', '2018-12-03 20:44:26', 'I have basic knowledge of Vue.js. I know how to make an application and I also know how to use basic functionality of nuxt.js.', 'Vue.js', '', 'publish', 'closed', 'closed', '', 'vue-js', '', '', '2018-12-03 20:44:26', '2018-12-03 20:44:26', '', 0, 'http://localhost/yamann/?post_type=portfolio&#038;p=87', 0, 'portfolio', '', 0),
(88, 1, '2018-12-03 20:44:14', '2018-12-03 20:44:14', '', 'Vue.js_Logo.svg', '', 'inherit', 'open', 'closed', '', 'vue-js_logo-svg', '', '', '2018-12-03 20:44:24', '2018-12-03 20:44:24', '', 87, 'http://localhost/yamann/wp-content/uploads/2018/12/Vue.js_Logo.svg.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2018-12-03 20:44:26', '2018-12-03 20:44:26', 'I have basic knowledge of Vue.js. I know how to make an application and I also know how to use basic functionality of nuxt.js.', 'Vue.js', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-12-03 20:44:26', '2018-12-03 20:44:26', '', 87, 'http://localhost/yamann/87-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-12-03 20:50:38', '2018-12-03 20:50:38', 'HTML 5', 'HTML5', '', 'publish', 'closed', 'closed', '', 'html5', '', '', '2018-12-03 20:50:38', '2018-12-03 20:50:38', '', 0, 'http://localhost/yamann/?post_type=portfolio&#038;p=91', 0, 'portfolio', '', 0),
(92, 1, '2018-12-03 20:50:23', '2018-12-03 20:50:23', '', '768px-HTML5_logo_and_wordmark.svg', '', 'inherit', 'open', 'closed', '', '768px-html5_logo_and_wordmark-svg', '', '', '2018-12-03 20:50:23', '2018-12-03 20:50:23', '', 91, 'http://localhost/yamann/wp-content/uploads/2018/12/768px-HTML5_logo_and_wordmark.svg.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2018-12-03 20:50:38', '2018-12-03 20:50:38', 'HTML 5', 'HTML5', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-12-03 20:50:38', '2018-12-03 20:50:38', '', 91, 'http://localhost/yamann/91-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-12-03 21:56:13', '2018-12-03 21:56:13', '', 'GitHub-Mark-Light-120px-plus', '', 'inherit', 'open', 'closed', '', 'github-mark-light-120px-plus', '', '', '2018-12-03 21:56:13', '2018-12-03 21:56:13', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/12/GitHub-Mark-Light-120px-plus.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-12-03 21:59:21', '2018-12-03 21:59:21', 'GitHuB logo', 'GitHub', 'GitHub', 'inherit', 'open', 'closed', '', 'github-mark-light-120px-plus-2', '', '', '2018-12-03 22:00:09', '2018-12-03 22:00:09', '', 0, 'http://localhost/yamann/wp-content/uploads/2018/12/GitHub-Mark-Light-120px-plus-1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dataark for tabell `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dataark for tabell `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(25, 2, 0),
(35, 2, 0),
(37, 2, 0),
(65, 1, 0),
(68, 1, 0),
(71, 1, 0),
(85, 2, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_term_taxonomy`
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
-- Dataark for tabell `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dataark for tabell `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'emanjo'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '98'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"95.174.66.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&urlbutton=none'),
(23, 1, 'wp_user-settings-time', '1543875141'),
(24, 2, 'nickname', 'howest'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'wp_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(40, 1, 'closedpostboxes_post', 'a:1:{i:0;s:12:\"revisionsdiv\";}'),
(41, 1, 'metaboxhidden_post', 'a:0:{}'),
(42, 1, 'session_tokens', 'a:1:{s:64:\"24ad419a6303e140ad384e065d86b09426239a5603b1b343e99f070b87f2fe13\";a:4:{s:10:\"expiration\";i:1545139907;s:2:\"ip\";s:13:\"95.174.66.139\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1544967107;}}');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_users`
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
-- Dataark for tabell `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'emanjo', '$P$B5bei4Cy7/XJnkuLUg/uIjYGCcRXQO.', 'emanjo', 'emil.jona@gmail.com', '', '2018-10-03 06:57:39', '1541158318:$P$BDlD23Fr/rCRDCMU67KFTIVr8jIvBA/', 0, 'emanjo'),
(2, 'howest', '$P$BvPGiV7e/iEeJxuF1mic0hCJ/Z1.Rx1', 'howest', 'howest@gmail.com', '', '2018-11-03 00:45:40', '1541205941:$P$Bz3VcUv.FynfH4U0tZN9kEph9kI5Li1', 0, 'howest');

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
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=823;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
