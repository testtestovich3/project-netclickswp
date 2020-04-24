-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 24 2020 г., 22:11
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `netclickswp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-22 14:04:10', '2020-04-22 11:04:10', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://netclickswp.loc', 'yes'),
(2, 'home', 'http://netclickswp.loc', 'yes'),
(3, 'blogname', 'netclix', 'yes'),
(4, 'blogdescription', 'Самые свежие фильмы', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@admin.by', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:13:\"video_type/?$\";s:30:\"index.php?post_type=video_type\";s:43:\"video_type/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=video_type&feed=$matches[1]\";s:38:\"video_type/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=video_type&feed=$matches[1]\";s:30:\"video_type/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=video_type&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"video_type/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"video_type/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"video_type/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"video_type/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"video_type/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"video_type/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"video_type/([^/]+)/embed/?$\";s:43:\"index.php?video_type=$matches[1]&embed=true\";s:31:\"video_type/([^/]+)/trackback/?$\";s:37:\"index.php?video_type=$matches[1]&tb=1\";s:51:\"video_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?video_type=$matches[1]&feed=$matches[2]\";s:46:\"video_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?video_type=$matches[1]&feed=$matches[2]\";s:39:\"video_type/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?video_type=$matches[1]&paged=$matches[2]\";s:46:\"video_type/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?video_type=$matches[1]&cpage=$matches[2]\";s:35:\"video_type/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?video_type=$matches[1]&page=$matches[2]\";s:27:\"video_type/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"video_type/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"video_type/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"video_type/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"video_type/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"video_type/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:41:\"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?genre=$matches[1]&feed=$matches[2]\";s:22:\"genre/([^/]+)/embed/?$\";s:38:\"index.php?genre=$matches[1]&embed=true\";s:34:\"genre/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?genre=$matches[1]&paged=$matches[2]\";s:16:\"genre/([^/]+)/?$\";s:27:\"index.php?genre=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:43:\"featured-video-plus/featured-video-plus.php\";i:1;s:29:\"wp-postviews/wp-postviews.php\";i:2;s:27:\"zilla-likes/zilla-likes.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Devion', 'yes'),
(41, 'stylesheet', 'Devion', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
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
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:9:\"О нас\";s:4:\"text\";s:215:\"Этот сайт с самыми современными фильмами. На которые вы можете посмотреть трейлер и оставить свой комментарий о кино!\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603105450', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:3;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:3;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:12:\"categories-2\";}s:9:\"sidebar-2\";a:4:{i:0;s:6:\"text-2\";i:1;s:10:\"nav_menu-2\";i:2;s:14:\"recent-posts-3\";i:3;s:10:\"archives-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1587758651;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587769451;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587812650;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587812668;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587812671;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588244650;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:18:\"Навигация\";s:8:\"nav_menu\";i:24;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587553607;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, '_site_transient_timeout_browser_1570add4b3e660f27835bdca50814a71', '1588158269', 'no'),
(127, '_site_transient_browser_1570add4b3e660f27835bdca50814a71', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.113\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_52f96128424473b846806322e00cf2d7', '1588158270', 'no'),
(129, '_site_transient_php_check_52f96128424473b846806322e00cf2d7', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Devion', 'yes'),
(146, 'theme_mods_Devion', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:23;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587631629;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'ft_op', 'a:1:{s:2:\"id\";s:9:\"ft_devion\";}', 'yes'),
(153, 'views_options', 'a:11:{s:5:\"count\";i:1;s:12:\"exclude_bots\";i:0;s:12:\"display_home\";i:0;s:14:\"display_single\";i:0;s:12:\"display_page\";i:0;s:15:\"display_archive\";i:0;s:14:\"display_search\";i:0;s:13:\"display_other\";i:0;s:8:\"use_ajax\";i:1;s:8:\"template\";s:18:\"%VIEW_COUNT% views\";s:20:\"most_viewed_template\";s:89:\"<li><a href=\"%POST_URL%\"  title=\"%POST_TITLE%\">%POST_TITLE%</a> - %VIEW_COUNT% views</li>\";}', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(155, 'widget_views', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_zilla_likes_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(157, 'fvp-settings', 'a:5:{s:4:\"mode\";s:7:\"replace\";s:9:\"alignment\";s:6:\"center\";s:10:\"conditions\";a:0:{}s:6:\"sizing\";a:2:{s:10:\"responsive\";b:1;s:5:\"width\";i:640;}s:12:\"default_args\";a:4:{s:7:\"general\";a:0:{}s:5:\"vimeo\";a:0:{}s:7:\"youtube\";a:0:{}s:11:\"dailymotion\";a:0:{}}}', 'yes'),
(158, 'fvp-version', '2.3.3', 'yes'),
(170, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587754115;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(172, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587754118;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:43:\"featured-video-plus/featured-video-plus.php\";s:5:\"2.3.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"wp-postviews/wp-postviews.php\";s:6:\"1.76.1\";s:27:\"zilla-likes/zilla-likes.php\";s:5:\"1.1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"featured-video-plus/featured-video-plus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/featured-video-plus\";s:4:\"slug\";s:19:\"featured-video-plus\";s:6:\"plugin\";s:43:\"featured-video-plus/featured-video-plus.php\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/featured-video-plus/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/featured-video-plus.2.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/featured-video-plus/assets/icon-256x256.png?rev=1170997\";s:2:\"1x\";s:64:\"https://ps.w.org/featured-video-plus/assets/icon.svg?rev=1170997\";s:3:\"svg\";s:64:\"https://ps.w.org/featured-video-plus/assets/icon.svg?rev=1170997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/featured-video-plus/assets/banner-1544x500.jpg?rev=1170997\";s:2:\"1x\";s:74:\"https://ps.w.org/featured-video-plus/assets/banner-772x250.jpg?rev=1170997\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-postviews/wp-postviews.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-postviews\";s:4:\"slug\";s:12:\"wp-postviews\";s:6:\"plugin\";s:29:\"wp-postviews/wp-postviews.php\";s:11:\"new_version\";s:6:\"1.76.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-postviews/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-postviews.1.76.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:56:\"https://ps.w.org/wp-postviews/assets/icon.svg?rev=978002\";s:3:\"svg\";s:56:\"https://ps.w.org/wp-postviews/assets/icon.svg?rev=978002\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-postviews/assets/banner-1544x500.jpg?rev=1206762\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-postviews/assets/banner-772x250.jpg?rev=1206762\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(204, 'genre_children', 'a:0:{}', 'yes'),
(223, 'external_theme_updates-Devion', 'O:8:\"stdClass\":3:{s:9:\"lastCheck\";i:1587754117;s:14:\"checkedVersion\";s:3:\"1.2\";s:6:\"update\";N;}', 'yes'),
(225, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587631679;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(227, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587754118;s:7:\"checked\";a:4:{s:6:\"Devion\";s:3:\"1.2\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(229, 'ft_devion', 'a:19:{s:14:\"fabthemes_logo\";s:0:\"\";s:7:\"vid_cat\";s:1:\"0\";s:12:\"slide_number\";s:1:\"7\";s:17:\"fabthemes_banner1\";s:0:\"\";s:14:\"fabthemes_alt1\";s:25:\"Нет спонсоров\";s:14:\"fabthemes_url1\";s:0:\"\";s:14:\"fabthemes_lab1\";s:0:\"\";s:17:\"fabthemes_banner2\";s:0:\"\";s:14:\"fabthemes_alt2\";s:0:\"\";s:14:\"fabthemes_url2\";s:0:\"\";s:14:\"fabthemes_lab2\";s:0:\"\";s:17:\"fabthemes_banner3\";s:0:\"\";s:14:\"fabthemes_alt3\";s:0:\"\";s:14:\"fabthemes_url3\";s:0:\"\";s:14:\"fabthemes_lab3\";s:0:\"\";s:17:\"fabthemes_banner4\";s:0:\"\";s:14:\"fabthemes_alt4\";s:0:\"\";s:14:\"fabthemes_url4\";s:0:\"\";s:14:\"fabthemes_lab4\";s:0:\"\";}', 'yes'),
(232, 'ffref', '531534', 'yes'),
(233, 'fflink', 'powered by wordpress', 'yes'),
(239, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(243, 'category_children', 'a:0:{}', 'yes'),
(249, '_site_transient_timeout_theme_roots', '1587755911', 'no'),
(250, '_site_transient_theme_roots', 'a:4:{s:6:\"Devion\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(251, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":5,\"critical\":1}', 'yes'),
(255, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'homepage.php'),
(2, 3, '_wp_page_template', 'default'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1587626063:1'),
(7, 8, '_wp_attached_file', '2020/04/бэтмен.jpg'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:24:\"2020/04/бэтмен.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 7, '_wp_old_date', '2020-04-22'),
(11, 7, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:47:\"БЭТМЕН (2021) - ТИЗЕР ТРЕЙЛЕР\";s:6:\"author\";s:9:\"FAN MOVIE\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/8SOyHktrjGE/hqdefault.jpg\";s:8:\"filename\";s:47:\"БЭТМЕН (2021) - ТИЗЕР ТРЕЙЛЕР\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=8SOyHktrjGE\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(15, 7, '_zilla_likes', '2'),
(16, 2, '_edit_lock', '1587622304:1'),
(17, 2, 'views', '0'),
(18, 2, '_edit_last', '1'),
(19, 12, '_edit_lock', '1587622387:1'),
(22, 12, 'views', '0'),
(23, 12, '_zilla_likes', '0'),
(24, 12, '_edit_last', '1'),
(27, 14, '_edit_last', '1'),
(28, 14, '_edit_lock', '1587626121:1'),
(33, 14, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:155:\"Зеленая Миля Официальный Трейлер 1 (1999) - Том Хэнкс, Майкл Кларк Дункан, Фрэнк Дарабонт\";s:6:\"author\";s:37:\"Киноклипы Хранилище\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/c8G1144UMcM/hqdefault.jpg\";s:8:\"filename\";s:155:\"Зеленая Миля Официальный Трейлер 1 (1999) - Том Хэнкс, Майкл Кларк Дункан, Фрэнк Дарабонт\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=c8G1144UMcM\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(34, 16, '_wp_attached_file', '2020/04/211px-Green_mile.jpg'),
(35, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:211;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2020/04/211px-Green_mile.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"211px-Green_mile-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 14, '_thumbnail_id', '16'),
(37, 17, '_wp_attached_file', '2020/04/20200220104955d47d836754.jpg'),
(38, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:555;s:4:\"file\";s:36:\"2020/04/20200220104955d47d836754.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"20200220104955d47d836754-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"20200220104955d47d836754-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"20200220104955d47d836754-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(39, 7, '_thumbnail_id', '17'),
(40, 14, '_zilla_likes', '0'),
(41, 19, '_edit_last', '1'),
(42, 19, '_edit_lock', '1587631481:1'),
(43, 20, '_wp_attached_file', '2020/04/1374296682.jpg'),
(44, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:480;s:4:\"file\";s:22:\"2020/04/1374296682.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"1374296682-300x231.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"1374296682-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 19, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:82:\"Смертельная битва - Трейлер на русском - VHSник\";s:6:\"author\";s:9:\"VHSник\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/7Q-U0sMYSkc/hqdefault.jpg\";s:8:\"filename\";s:82:\"Смертельная битва - Трейлер на русском - VHSник\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=7Q-U0sMYSkc\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(50, 22, '_edit_last', '1'),
(51, 22, '_edit_lock', '1587626987:1'),
(52, 23, '_wp_attached_file', '2020/04/813486.460x322c5020.jpg'),
(53, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:322;s:4:\"file\";s:31:\"2020/04/813486.460x322c5020.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"813486.460x322c5020-300x210.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:210;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"813486.460x322c5020-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 22, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:61:\"(НЕ)идеальный мужчина - Трейлер (HD)\";s:6:\"author\";s:19:\"Central Partnership\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/VcnSlZzhfUs/hqdefault.jpg\";s:8:\"filename\";s:61:\"(НЕ)идеальный мужчина - Трейлер (HD)\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=VcnSlZzhfUs\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(59, 25, '_edit_last', '1'),
(60, 25, '_edit_lock', '1587626635:1'),
(65, 25, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:68:\"Собачья жизнь 2 — Русский трейлер (2019)\";s:6:\"author\";s:19:\"HD Трейлеры\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/JpIDJgcGzI0/hqdefault.jpg\";s:8:\"filename\";s:68:\"Собачья жизнь 2 — Русский трейлер (2019)\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=JpIDJgcGzI0\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(66, 27, '_wp_attached_file', '2020/04/l5a0ed1a10f61eq27t61v.jpg'),
(67, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:631;s:6:\"height\";i:1000;s:4:\"file\";s:33:\"2020/04/l5a0ed1a10f61eq27t61v.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"l5a0ed1a10f61eq27t61v-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"l5a0ed1a10f61eq27t61v-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:12:\"kinopoisk.ru\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:12:\"kinopoisk.ru\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 25, '_thumbnail_id', '27'),
(73, 28, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:48:\"Джокер - финальный трейлер\";s:6:\"author\";s:8:\"WBRussia\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/jGfiPs9zuhE/hqdefault.jpg\";s:8:\"filename\";s:48:\"Джокер - финальный трейлер\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=jGfiPs9zuhE\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(74, 28, '_edit_last', '1'),
(75, 28, '_edit_lock', '1587626799:1'),
(76, 30, '_wp_attached_file', '2020/04/Джокер_фильм_Тодда_Филлипса.jpg'),
(77, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:1000;s:4:\"file\";s:63:\"2020/04/Джокер_фильм_Тодда_Филлипса.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:12:\"kinopoisk.ru\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:12:\"kinopoisk.ru\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 31, '_wp_attached_file', '2020/04/joker.jpg'),
(79, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:1000;s:4:\"file\";s:17:\"2020/04/joker.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"joker-203x300.jpg\";s:5:\"width\";i:203;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"joker-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:12:\"kinopoisk.ru\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:12:\"kinopoisk.ru\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 28, '_thumbnail_id', '31'),
(81, 32, '_edit_last', '1'),
(82, 32, '_edit_lock', '1587626963:1'),
(87, 32, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";N;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:58:\"Зверополис – финальный трейлер\";s:6:\"author\";s:19:\"Disney Россия\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/h_5xTcczIdA/hqdefault.jpg\";s:8:\"filename\";s:58:\"Зверополис – финальный трейлер\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=h_5xTcczIdA\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:1;}'),
(88, 34, '_wp_attached_file', '2020/04/zveropolis.jpg'),
(89, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:22:\"2020/04/zveropolis.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"zveropolis-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 32, '_thumbnail_id', '34'),
(91, 32, '_zilla_likes', '0'),
(92, 28, '_zilla_likes', '0'),
(93, 25, '_zilla_likes', '0'),
(94, 22, '_zilla_likes', '0'),
(95, 19, '_zilla_likes', '0'),
(96, 22, '_thumbnail_id', '23'),
(97, 19, '_thumbnail_id', '20'),
(100, 36, '_edit_lock', '1587632832:1'),
(101, 36, 'views', '0'),
(102, 36, '_edit_last', '1'),
(103, 38, '_edit_lock', '1587631940:1'),
(104, 38, 'views', '0'),
(105, 38, '_edit_last', '1'),
(106, 40, '_menu_item_type', 'post_type'),
(107, 40, '_menu_item_menu_item_parent', '0'),
(108, 40, '_menu_item_object_id', '2'),
(109, 40, '_menu_item_object', 'page'),
(110, 40, '_menu_item_target', ''),
(111, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 40, '_menu_item_xfn', ''),
(113, 40, '_menu_item_url', ''),
(114, 40, '_menu_item_orphaned', '1587631967'),
(115, 41, '_menu_item_type', 'post_type'),
(116, 41, '_menu_item_menu_item_parent', '0'),
(117, 41, '_menu_item_object_id', '38'),
(118, 41, '_menu_item_object', 'page'),
(119, 41, '_menu_item_target', ''),
(120, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 41, '_menu_item_xfn', ''),
(122, 41, '_menu_item_url', ''),
(123, 41, '_menu_item_orphaned', '1587631967'),
(124, 42, '_menu_item_type', 'post_type'),
(125, 42, '_menu_item_menu_item_parent', '0'),
(126, 42, '_menu_item_object_id', '36'),
(127, 42, '_menu_item_object', 'page'),
(128, 42, '_menu_item_target', ''),
(129, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 42, '_menu_item_xfn', ''),
(131, 42, '_menu_item_url', ''),
(132, 42, '_menu_item_orphaned', '1587631967'),
(133, 44, '_menu_item_type', 'custom'),
(134, 44, '_menu_item_menu_item_parent', '0'),
(135, 44, '_menu_item_object_id', '44'),
(136, 44, '_menu_item_object', 'custom'),
(137, 44, '_menu_item_target', ''),
(138, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 44, '_menu_item_xfn', ''),
(140, 44, '_menu_item_url', 'http://netclickswp.loc'),
(141, 45, '_menu_item_type', 'taxonomy'),
(142, 45, '_menu_item_menu_item_parent', '0'),
(143, 45, '_menu_item_object_id', '3'),
(144, 45, '_menu_item_object', 'genre'),
(145, 45, '_menu_item_target', ''),
(146, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(147, 45, '_menu_item_xfn', ''),
(148, 45, '_menu_item_url', ''),
(149, 46, '_menu_item_type', 'taxonomy'),
(150, 46, '_menu_item_menu_item_parent', '0'),
(151, 46, '_menu_item_object_id', '4'),
(152, 46, '_menu_item_object', 'genre'),
(153, 46, '_menu_item_target', ''),
(154, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 46, '_menu_item_xfn', ''),
(156, 46, '_menu_item_url', ''),
(157, 47, '_menu_item_type', 'taxonomy'),
(158, 47, '_menu_item_menu_item_parent', '0'),
(159, 47, '_menu_item_object_id', '22'),
(160, 47, '_menu_item_object', 'genre'),
(161, 47, '_menu_item_target', ''),
(162, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 47, '_menu_item_xfn', ''),
(164, 47, '_menu_item_url', ''),
(165, 43, '_wp_trash_meta_status', 'publish'),
(166, 43, '_wp_trash_meta_time', '1587632018'),
(167, 49, '_menu_item_type', 'post_type'),
(168, 49, '_menu_item_menu_item_parent', '0'),
(169, 49, '_menu_item_object_id', '38'),
(170, 49, '_menu_item_object', 'page'),
(171, 49, '_menu_item_target', ''),
(172, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 49, '_menu_item_xfn', ''),
(174, 49, '_menu_item_url', ''),
(175, 50, '_menu_item_type', 'post_type'),
(176, 50, '_menu_item_menu_item_parent', '0'),
(177, 50, '_menu_item_object_id', '36'),
(178, 50, '_menu_item_object', 'page'),
(179, 50, '_menu_item_target', ''),
(180, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 50, '_menu_item_xfn', ''),
(182, 50, '_menu_item_url', ''),
(183, 48, '_wp_trash_meta_status', 'publish'),
(184, 48, '_wp_trash_meta_time', '1587632073'),
(185, 51, '_edit_lock', '1587632241:1'),
(186, 51, 'views', '0'),
(187, 51, '_edit_last', '1'),
(188, 54, '_menu_item_type', 'post_type'),
(189, 54, '_menu_item_menu_item_parent', '0'),
(190, 54, '_menu_item_object_id', '51'),
(191, 54, '_menu_item_object', 'page'),
(192, 54, '_menu_item_target', ''),
(193, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 54, '_menu_item_xfn', ''),
(195, 54, '_menu_item_url', ''),
(196, 53, '_wp_trash_meta_status', 'publish'),
(197, 53, '_wp_trash_meta_time', '1587632260'),
(198, 55, '_edit_lock', '1587632247:1'),
(201, 55, 'views', '0'),
(202, 55, '_zilla_likes', '0'),
(203, 55, '_edit_last', '1'),
(204, 55, '_pingme', '1'),
(205, 55, '_encloseme', '1'),
(206, 57, '_wp_attached_file', '2020/04/1374296682-1.jpg'),
(207, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:624;s:6:\"height\";i:480;s:4:\"file\";s:24:\"2020/04/1374296682-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"1374296682-1-300x231.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"1374296682-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(208, 58, '_wp_attached_file', '2020/04/20200220104955d47d836754-1.jpg'),
(209, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:555;s:4:\"file\";s:38:\"2020/04/20200220104955d47d836754-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"20200220104955d47d836754-1-300x167.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"20200220104955d47d836754-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"20200220104955d47d836754-1-768x426.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(210, 59, '_wp_attached_file', '2020/04/joker-1.jpg'),
(211, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:1000;s:4:\"file\";s:19:\"2020/04/joker-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"joker-1-203x300.jpg\";s:5:\"width\";i:203;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"joker-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:12:\"kinopoisk.ru\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:12:\"kinopoisk.ru\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 60, '_wp_attached_file', '2020/04/l5a0ed1a10f61eq27t61v-1.jpg'),
(213, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:631;s:6:\"height\";i:1000;s:4:\"file\";s:35:\"2020/04/l5a0ed1a10f61eq27t61v-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"l5a0ed1a10f61eq27t61v-1-189x300.jpg\";s:5:\"width\";i:189;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"l5a0ed1a10f61eq27t61v-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:12:\"kinopoisk.ru\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:12:\"kinopoisk.ru\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 61, '_wp_attached_file', '2020/04/neideal.jpg'),
(215, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:244;s:4:\"file\";s:19:\"2020/04/neideal.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"neideal-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 63, '_wp_trash_meta_status', 'publish'),
(217, 63, '_wp_trash_meta_time', '1587754780'),
(218, 64, '_wp_trash_meta_status', 'publish'),
(219, 64, '_wp_trash_meta_time', '1587754790'),
(220, 65, '_wp_trash_meta_status', 'publish'),
(221, 65, '_wp_trash_meta_time', '1587754917');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-22 14:04:10', '2020-04-22 11:04:10', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-04-22 14:04:10', '2020-04-22 11:04:10', '', 0, 'http://netclickswp.loc/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-22 14:04:10', '2020-04-22 11:04:10', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://netclickswp.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-04-23 09:13:30', '2020-04-23 06:13:30', '', 0, 'http://netclickswp.loc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-22 14:04:10', '2020-04-22 11:04:10', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://netclickswp.loc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-04-22 14:04:10', '2020-04-22 11:04:10', '', 0, 'http://netclickswp.loc/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-22 14:04:30', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-22 14:04:30', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?p=4', 0, 'post', '', 0),
(6, 1, '2020-04-22 15:01:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-22 15:01:52', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?post_type=video_type&p=6', 0, 'video_type', '', 0),
(7, 1, '2020-04-23 09:07:20', '2020-04-23 06:07:20', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBQQAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwHHoECBQQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBQQAQ\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QziAoADAcegQIFBAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>«Бэтмен» — предстоящий американский супергеройский фильм, основанный на одноимённых комиксах издательства DC Comics. Картина будет выпущена компанией Warner Bros. и будет перезагрузкой всех фильмов о Бэтмене. <a class=\"q ruhjFe NJLBac fl\" href=\"https://ru.wikipedia.org/wiki/%D0%91%D1%8D%D1%82%D0%BC%D0%B5%D0%BD_(%D1%84%D0%B8%D0%BB%D1%8C%D0%BC,_2021)\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmhMwHHoECBQQAg\">Википедия</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAkQAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6-0CMB16BAgJEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CAoQAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwHnoECAoQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QyxMoADAeegQIChAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+2021+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC431jLLTrbST8vMyQUTVpl5mSWZiTkKJRmpiSVFmclAZlFqemZ-HpiRk5pYnKqQkliSuohV6cLGi70Xmy7subD1wl4FIwMjQ4UL-y82AHl7LvZc2ApkbQAA4i5us24AAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAeegQIChAC&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAeegQIChAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">1 октября 2021 г. (<a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%A1%D0%A8%D0%90&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLUz9U3sEw2LzfQMstOttJPy8zJBRNWmXmZJZmJOQolGamJJUWZyUBmUWp6Zn4emJGTmlicqpCSWJK6iJXtwsILKy5M2MHKCAB6KRVhYAAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAeegQIChAD&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAeegQIChAD\">США</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CAsQAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwH3oECAsQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QyxMoADAfegQICxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+2021+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC431hLLTrbST8vMyQUTVimZRanJJflFi1iVLmy82Hux6cKeC1sv7FUwMjAyVLjYAGRvu7DjYuPFxgtbLzYAAJDxmoBOAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAfegQICxAC&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAfegQICxAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%9C%D1%8D%D1%82%D1%82+%D0%A0%D0%B8%D0%B2%D0%B7&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLSz9U3MCorKEsu1hLLTrbST8vMyQUTVimZRanJJflFi1gFL8y52Hux6WKTwoUFF3Zc2HRh-w5WRgCbkGpsTAAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAfegQICxAD&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAfegQICxAD\">Мэтт Ривз</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:music\" data-md=\"1001\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwIHoECAwQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QyxMoADAgegQIDBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+2021+%D0%BA%D0%BE%D0%BC%D0%BF%D0%BE%D0%B7%D0%B8%D1%82%D0%BE%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC431hLOTrbST8vMyQUTVrmlxZnJi1jVLmy82Hux6cKeC1sv7FUwMjAyVLiw68I-IH8_kNx-YQdQbt_FBgBjgpt8TwAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAgegQIDBAC&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAgegQIDBAC\">Композитор</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%9C%D0%B0%D0%B9%D0%BA%D0%BB+%D0%94%D0%B6%D0%B0%D0%BA%D0%BA%D0%B8%D0%BD%D0%BE&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLUz9U3MMkpNjXWEs5OttJPy8zJBRNWuaXFmcmLWKUvzLmw4cLOC7su7Fa4MOXCNiBnFxDuuLD3wr4drIwAg6K8A1IAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAgegQIDBAD&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAgegQIDBAD\">Майкл Джаккино</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:screenplay\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwIXoECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QyxMoADAhegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+2021+%D1%81%D1%86%D0%B5%D0%BD%D0%B0%D1%80%D0%B8%D0%B9&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC431pLITrbST8vMyQUTVsXJRampeQU5iZWLWJUubLzYe7Hpwp4LWy_sVTAyMDJUuNh4sQ3Eu7DhYsOFHRd2AgCJZhL4UAAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAhegQIDRAC&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAhegQIDRAC\">Сценарий</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%9C%D1%8D%D1%82%D1%82+%D0%A0%D0%B8%D0%B2%D0%B7&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLSz9U3MCorKEsu1pLITrbST8vMyQUTVsXJRampeQU5iZWLWAUvzLnYe7HpYpPChQUXdlzYdGH7DlZGAHJjrh1OAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAhegQIDRAD&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAhegQIDRAD\">Мэтт Ривз</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%91%D0%B8%D0%BB%D0%BB+%D0%A4%D0%B8%D0%BD%D0%B3%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLUz9U3MDQsNzLQkshOttJPy8zJBRNWxclFqal5BTmJlYtYRS9MvLDjwu4LuxUuLAEy9l7YfGHrxYYdrIwADPT_slEAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAjAhegQIDRAE&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAjAhegQIDRAE\">Билл Фингер</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:costume design\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QkCkwInoECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QyxMoADAiegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+2021+%D1%85%D1%83%D0%B4%D0%BE%D0%B6%D0%BD%D0%B8%D0%BA+%D0%BF%D0%BE+%D0%BA%D0%BE%D1%81%D1%82%D1%8E%D0%BC%D0%B0%D0%BC&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC431pLJTrbST8vMyQUTVsn5xSWluakKKanFmel5i1gtLmy82Hux6cKeC1sv7FUwMjAyVLjYerH5wpYL-y5su7D3wo4LuxQu7L-wT-HCrgv7LjZebLrYB1S74cIeAPokB71qAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAiegQIDhAC&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4Q6BMoADAiegQIDhAC\">Художник по костюмам</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%96%D0%B0%D0%BA%D0%BB%D0%B8%D0%BD+%D0%94%D1%8E%D1%80%D1%80%D0%B0%D0%BD&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLSz9U3MCrILisq0JLJTrbST8vMyQUTVsn5xSWluakKKanFmel5i1glL0y7sOHCrgu7L-y4sFfhwpSLfRcbLjYAhfbuYGUEACzhHExaAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAiegQIDhAD&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoATAiegQIDhAD\">Жаклин Дюрран</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=glyn+dillon&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLSz9U3KIlPrrIs05LJTrbST8vMyQUTVsn5xSWluakKKanFmel5i1i503Mq8xRSMnNy8vN2sDICAEByiDVMAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAjAiegQIDhAE&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAjAiegQIDhAE\">Глин Диллон</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379&amp;q=%D0%B1%D1%8D%D1%82%D0%BC%D0%B5%D0%BD+%D0%B4%D1%8D%D0%B2%D0%B8%D0%B4+%D0%BA%D1%80%D0%BE%D1%81%D1%81%D0%BC%D0%B0%D0%BD&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExPN80zSC43VuLSz9U3SDIrLE-y0JLJTrbST8vMyQUTVsn5xSWluakKKanFmel5i1g1Lmy82Hux6cKeC1sv7FW4sOVi74VNF3Zc2KJwYdfFhgv7LjZebATKbbiwdwcrIwCCiYhIaQAAAA&amp;sa=X&amp;ved=2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAzAiegQIDhAF&amp;sxsrf=ALeKk03mIduYB847UJ4DQ85Tw_Xi8ojwbg:1587622155379\" data-ved=\"2ahUKEwjSne-08f3oAhVr16YKHSkYCk4QmxMoAzAiegQIDhAF\">Дэвид Кроссман</a></span></div>\r\n</div>\r\n</div>', 'Бэтмен 2021', '', 'publish', 'open', 'open', '', '%d0%b1%d1%8d%d1%82%d0%bc%d0%b5%d0%bd', '', '', '2020-04-23 10:16:44', '2020-04-23 07:16:44', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=7', 0, 'video_type', '', 0),
(8, 1, '2020-04-23 09:05:10', '2020-04-23 06:05:10', '', 'бэтмен', '', 'inherit', 'open', 'closed', '', '%d0%b1%d1%8d%d1%82%d0%bc%d0%b5%d0%bd', '', '', '2020-04-23 09:05:10', '2020-04-23 06:05:10', '', 7, 'http://netclickswp.loc/wp-content/uploads/2020/04/бэтмен.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2020-04-23 09:13:29', '2020-04-23 06:13:29', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://netclickswp.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-04-23 09:13:29', '2020-04-23 06:13:29', '', 2, 'http://netclickswp.loc/2020/04/23/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-04-23 09:13:31', '2020-04-23 06:13:31', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://netclickswp.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-04-23 09:13:31', '2020-04-23 06:13:31', '', 2, 'http://netclickswp.loc/2020/04/23/2-autosave-v1/', 0, 'revision', '', 0),
(12, 1, '2020-04-23 09:14:54', '2020-04-23 06:14:54', '<!-- wp:paragraph -->\n<p>Друзья, мы добавили несколько новых фильмов в раздел боевики. Наслаждайтесь!</p>\n<!-- /wp:paragraph -->', 'На сайте вышло обновление', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b0-%d1%81%d0%b0%d0%b9%d1%82%d0%b5-%d0%b2%d1%8b%d1%88%d0%bb%d0%be-%d0%be%d0%b1%d0%bd%d0%be%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5', '', '', '2020-04-23 09:14:55', '2020-04-23 06:14:55', '', 0, 'http://netclickswp.loc/?p=12', 0, 'post', '', 0),
(13, 1, '2020-04-23 09:14:54', '2020-04-23 06:14:54', '<!-- wp:paragraph -->\n<p>Друзья, мы добавили несколько новых фильмов в раздел боевики. Наслаждайтесь!</p>\n<!-- /wp:paragraph -->', 'На сайте вышло обновление', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-04-23 09:14:54', '2020-04-23 06:14:54', '', 12, 'http://netclickswp.loc/2020/04/23/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-04-23 09:17:19', '2020-04-23 06:17:19', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBUQAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwG3oECBUQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBUQAQ\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQziAoADAbegQIFRAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Обвиненный в страшном преступлении, Джон Коффи оказывается в блоке смертников тюрьмы «Холодная гора». Вновь прибывший обладал поразительным ростом и был пугающе спокоен, что, впрочем, никак не влияло на отношение к нему начальника блока Пола Эджкомба, привыкшего исполнять приговор.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAsQAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6-0CMBx6BAgLEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwHXoECAwQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQyxMoADAdegQIDBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7QMstOttJPy8zJBRNWmXmZJZmJOQolGamJJUWZyUBmUWp6Zn4emJGTmlicqpCSWJK6iFXjwvYLWy_svjjxwt4LGy72K1zYc2EHkAtk7L_YAJTZc7HnwlYgawMAJV6NpXAAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAdegQIDBAC&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAdegQIDBAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">6 декабря 1999 г. (<a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%A1%D0%A8%D0%90&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC5QAjMtk83LDbTMspOt9NMyc3LBhFVmXmZJZmKOQklGamJJUWYykFmUmp6Znwdm5KQmFqcqpCSWpC5iZbuw8MKKCxN2sDICAPw5fMpcAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAdegQIDBAD&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAdegQIDBAD\">США</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwHnoECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQyxMoADAeegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7QEstOttJPy8zJBRNWKZlFqckl-UWLWDUubL-w9cLuixMv7L2w4WK_woU9F3YAuf0KFxuA4tsu7LjYeLHxwtaLDQByNsT1UAAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAeegQIDRAC&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAeegQIDRAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%A4%D1%80%D1%8D%D0%BD%D0%BA+%D0%94%D0%B0%D1%80%D0%B0%D0%B1%D0%BE%D0%BD%D1%82&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC5QAjNNDC0LyrXEspOt9NMyc3LBhFVKZlFqckl-0SJW6QtLLjZc7L2w98IuhQtTLmy42HBhw4WNF_Zd2HuxaQcrIwCLN6SXUQAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAeegQIDRAD&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAeegQIDRAD\">Фрэнк Дарабонт</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:god\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwH3oECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQyxMoADAfegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%B3%D0%BE%D0%B4&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAfegQIDhAC&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAfegQIDhAC\">Год</a>: </span><span class=\"LrzXr kno-fv\">1999</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/award/award_winner:nominations\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwIHoECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQyxMoADAgegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%BD%D0%BE%D0%BC%D0%B8%D0%BD%D0%B0%D1%86%D0%B8%D0%B8&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7QUspOttJPLE8sSoGQ8eWZeXmpRVZ5-bmZeYklmfl5xYtYtS5sv7D1wu6LEy_svbDhYr_ChT0XdgC5QMbeC_vAHJB4G5DeAQAACSPYXgAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAgegQIDxAC&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAgegQIDxAC\">Номинации</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%9F%D1%80%D0%B5%D0%BC%D0%B8%D1%8F+%C2%AB%D0%9E%D1%81%D0%BA%D0%B0%D1%80%C2%BB+%D0%B7%D0%B0+%D0%BB%D1%83%D1%87%D1%88%D1%83%D1%8E+%D0%BC%D1%83%D0%B6%D1%81%D0%BA%D1%83%D1%8E+%D1%80%D0%BE%D0%BB%D1%8C+%D0%B2%D1%82%D0%BE%D1%80%D0%BE%D0%B3%D0%BE+%D0%BF%D0%BB%D0%B0%D0%BD%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC5Q4gAx0wsrjbSUspOt9BPLE4tSIGR8eWZeXmqRVV5-bmZeYklmfl7xItb4C_MvNlzYemHPhR0X-xUOrb4w72LjhV0XNlxsOLRb4cL2CxsULuy-2Hyx_WIHkOxTuLDnYvOFbSAlYC5Q6z6gfI_ChU0Xmy7sA3M3X9incGH_hd0XNlzYe2HDDlZGAFVufIKgAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAgegQIDxAD&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAgegQIDxAD\">Премия «Оскар» за лучшую мужскую роль второго плана</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%BD%D0%BE%D0%BC%D0%B8%D0%BD%D0%B0%D1%86%D0%B8%D0%B8&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7QUspOttJPLE8sSoGQ8eWZeXmpRVZ5-bmZeYklmfl5xYtYtS5sv7D1wu6LEy_svbDhYr_ChT0XdgC5QMbeC_vAHJB4G5DeAQAACSPYXgAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ44YBKAIwIHoECA8QBA&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\"><span class=\"SW5pqf\">ЕЩЁ</span></a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/award/award_winner:awards\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQkCkwIXoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQyxMoADAhegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%BD%D0%B0%D0%B3%D1%80%D0%B0%D0%B4%D1%8B&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7Qks1OttJPLE8sSoGQ8eWZeXmpRVZgTvEiVrUL2y9svbD74sQLey9suNivcGHPhR1ALpAB5F_YfLEBSG652A0A7QbKvlUAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAhegQIEBAC&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ6BMoADAhegQIEBAC\">Награды</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%9A%D0%B8%D0%BD%D0%BE%D0%BF%D1%80%D0%B5%D0%BC%D0%B8%D1%8F+%C2%AB%D0%92%D1%8B%D0%B1%D0%BE%D1%80+%D0%BA%D1%80%D0%B8%D1%82%D0%B8%D0%BA%D0%BE%D0%B2%C2%BB+%D0%B2+%D0%BD%D0%BE%D0%BC%D0%B8%D0%BD%D0%B0%D1%86%D0%B8%D0%B8+%C2%AB%D0%9B%D1%83%D1%87%D1%88%D0%B8%D0%B9+%D0%B0%D0%BA%D1%82%D1%91%D1%80+%D0%B2%D1%82%D0%BE%D1%80%D0%BE%D0%B3%D0%BE+%D0%BF%D0%BB%D0%B0%D0%BD%D0%B0%C2%BB&amp;stick=H4sIAAAAAAAAACWMMQuCUBSFcRBqaWgPHo0tBk36Z0IqqCQpHVzFoIKGqLG21hYzgpfPFPwF5_6jrq_lnns45zutTrdtrazhKLS9dV-_tr2cbwY9b-JYbuQG0_8dRwvfnwWONuHdjA1cIfFFiYpivFFA0knUD1zoiCdKigVyTiQl3Mu5l9VKIBOaKTSb0o5VNtSNtrSnA9uPQMpkQudmImOctxh5oRSooDhlslbSNH6i3DadvgAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAhegQIEBAD&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\" data-ved=\"2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQmxMoATAhegQIEBAD\">Кинопремия «Выбор критиков» в номинации «Лучший актёр второго плана»</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157&amp;q=%D0%B7%D0%B5%D0%BB%D1%91%D0%BD%D0%B0%D1%8F+%D0%BC%D0%B8%D0%BB%D1%8F+%D0%BD%D0%B0%D0%B3%D1%80%D0%B0%D0%B4%D1%8B&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC62zC7Qks1OttJPLE8sSoGQ8eWZeXmpRVZgTvEiVrUL2y9svbD74sQLey9suNivcGHPhR1ALpAB5F_YfLEBSG652A0A7QbKvlUAAAA&amp;sa=X&amp;ved=2ahUKEwjeoePt8v3oAhVpkIsKHUujAJAQ44YBKAIwIXoECBAQBA&amp;sxsrf=ALeKk02bSiw2rYSsuyyFXjMslkHu4fEpAQ:1587622543157\"><span class=\"SW5pqf\">ЕЩЁ</span></a></span></div>\r\n</div>\r\n</div>', 'Зелёная миля', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b5%d0%bb%d1%91%d0%bd%d0%b0%d1%8f-%d0%bc%d0%b8%d0%bb%d1%8f', '', '', '2020-04-23 10:17:05', '2020-04-23 07:17:05', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=14', 0, 'video_type', '', 0),
(16, 1, '2020-04-23 09:17:11', '2020-04-23 06:17:11', '', '211px-Green_mile', '', 'inherit', 'open', 'closed', '', '211px-green_mile', '', '', '2020-04-23 09:17:11', '2020-04-23 06:17:11', '', 14, 'http://netclickswp.loc/wp-content/uploads/2020/04/211px-Green_mile.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2020-04-23 09:18:08', '2020-04-23 06:18:08', '', '20200220104955d47d836754', '', 'inherit', 'open', 'closed', '', '20200220104955d47d836754', '', '', '2020-04-23 09:18:08', '2020-04-23 06:18:08', '', 7, 'http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2020-04-23 10:16:15', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-23 10:16:15', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?post_type=video_type&p=18', 0, 'video_type', '', 0),
(19, 1, '2020-04-23 10:20:20', '2020-04-23 07:20:20', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBYQAA\" data-ved=\"2ahUKEwiRmuvMgP7oAhVlwqYKHVGnDKAQkCkwHHoECBYQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBYQAQ\" data-ved=\"2ahUKEwiRmuvMgP7oAhVlwqYKHVGnDKAQmOEEKAAwHHoECBYQAQ\">\r\n<div class=\"kno-rdesc\">\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBYQGQ\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkoAjAdegQIFhAZ\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBYQGg\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQziAoADAdegQIFhAa\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Несколько столетий назад Шанг Тсунг — маг из потустороннего мира захватил в свои руки древний воинский турнир. Его цель — ввергнуть наш мир в хаос. Чтобы спасти человечество от гибели, троим воинам предстоит битва… смертельная битва с силами мрака.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6-0CMB56BAgMEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkwH3oECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQyxMoADAfegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D1%81%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii_UMstOttJPy8zJBRNWmXmZJZmJOQolGamJJUWZyUBmUWp6Zn4emJGTmlicqpCSWJK6iNXoYuOFPRe2Xmy42HRh64XdF3su7L2w4WK_woWNF3YAhTZd2KBwYf_FBqDcHqAcUN2FDQDC_H2WegAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAfegQIDRAC\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAfegQIDRAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">13 июля 1995 г. (<a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D0%98%D0%B7%D1%80%D0%B0%D0%B8%D0%BB%D1%8C&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii9U4gAziwuqtMyyk6300zJzcsGEVWZeZklmYo5CSUZqYklRZjKQWZSanpmfB2bkpCYWpyqkJJakLmLluzDjwvaLDRc2XNhxYffFnh2sjABf_wZBYwAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAfegQIDRAD\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAfegQIDRAD\">Израиль</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkwIHoECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQyxMoADAgegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D1%81%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii_UEstOttJPy8zJBRNWKZlFqckl-UWLWI0uNl7Yc2HrxYaLTRe2Xth9sefC3gsbLvYrXNh4YQdQaNOFDQoXG4Ay24DcRqBaoEoABU8CkloAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAgegQIDhAC\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAgegQIDhAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D0%9F%D0%BE%D0%BB+%D0%A3%D0%B8%D0%BB%D1%8C%D1%8F%D0%BC+%D0%A1%D0%BA%D0%BE%D1%82%D1%82+%D0%90%D0%BD%D0%B4%D0%B5%D1%80%D1%81%D0%BE%D0%BD&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii9UgjCLLbMttMSyk6300zJzcsGEVUpmUWpySX7RIlb9C_Mv7LuwW-HC4gs7Luy-2HOx_8IehQsLL-y6sO9i08UmhQsTLuy9sOXC1osNFxuBCvfuYGUEAEgtN4VlAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAgegQIDhAD\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAgegQIDhAD\">Пол Уильям Скотт Андерсон</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:film series\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkwIXoECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQyxMoADAhegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D1%81%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0+%D1%81%D0%B5%D1%80%D0%B8%D1%8F+%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D0%BE%D0%B2&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii_UksxOttJPy8zJBRNWIEKhOLUoM7V4Eav1xcYLey5svdhwsenC1gu7L_Zc2Hthw8V-hQsbL-wACm26sEEBqAIoD-T2K1xsubADrGjPhX0XNgEAHZMq82YAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAhegQIDxAC\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAhegQIDxAC\">Серия фильмов</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D0%A1%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii9U4tVP1zc0zEhJskyrSC7UksxOttJPy8zJBRNWIEKhOLUoM7V4EavihYUX9lzYerHhYtOFrRd2X-y5sPfChov9Chc2XtgBFNp0YcMOVkYA_6p7LV4AAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAhegQIDxAD\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQmxMoATAhegQIDxAD\">Смертельная битва</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:budget\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkwInoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQyxMoADAiegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D1%81%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0+%D0%B1%D1%8E%D0%B4%D0%B6%D0%B5%D1%82&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii_UEslOttJPy8zJBRNWSaUp6akli1j1LjZe2HNh68WGi00Xtl7YfbHnwt4LGy72K1zYeGEHUGjThQ1A5sW-C1subAOqagIAfFoOw1QAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAiegQIEBAC\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAiegQIEBAC\">Бюджет</a>: </span><span class=\"LrzXr kno-fv\">20 миллионов USD</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"hw:/collection/films:box office\" data-md=\"1001\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQkCkwI3oECBEQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQyxMoADAjegQIERAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk03jSvGF6nnDoBN4uwoIKpbgkOMXPQ:1587626272635&amp;q=%D1%81%D0%BC%D0%B5%D1%80%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F+%D0%B1%D0%B8%D1%82%D0%B2%D0%B0+%D0%BA%D0%B0%D1%81%D1%81%D0%BE%D0%B2%D1%8B%D0%B9+%D1%81%D0%B1%D0%BE%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LUz9U3MC7Pii_Uks8ot9JPzs_JSU0uyczP00_LzMkttkrKr1DIT0vLTE5dxGp9sfHCngtbLzZcbLqw9cLuiz0X9l7YcLFf4cLGCzuAQpsubFC4sAso0ghUt-_CpovdF3YqAJkbL-y72AAAe4WsEmwAAAA&amp;ved=2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAjegQIERAC\" data-ved=\"2ahUKEwiHwpDggP7oAhUn0aYKHezRArUQ6BMoADAjegQIERAC\">Кассовый сбор</a>: </span><span class=\"LrzXr kno-fv\">122,1 миллиона USD</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film_series:director\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwiRmuvMgP7oAhVlwqYKHVGnDKAQkCkwIXoECA8QAA\">\r\n<div class=\"Z1hOCe\"></div>\r\n</div>', 'Смертельная битва', '', 'publish', 'open', 'open', '', '19', '', '', '2020-04-23 10:32:27', '2020-04-23 07:32:27', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=19', 0, 'video_type', '', 0),
(20, 1, '2020-04-23 10:19:24', '2020-04-23 07:19:24', '', '1374296682', '', 'inherit', 'open', 'closed', '', '1374296682', '', '', '2020-04-23 10:19:24', '2020-04-23 07:19:24', '', 19, 'http://netclickswp.loc/wp-content/uploads/2020/04/1374296682.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(22, 1, '2020-04-23 10:22:52', '2020-04-23 07:22:52', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBQQAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwG3oECBQQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBQQAQ\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQziAoADAbegQIFBAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Свете не везет с отношениями: она вечно подстраивается под парней, унижается и терпит измены. После расставания с очередным непутевым бойфрендом девушка идет работать в компанию по продаже роботов. Те уже стали частью обычной жизни, их не отличить от людей, но не в пример своим создателям роботы чут<span class=\"piXPB\" tabindex=\"0\" role=\"button\" data-li=\"\" data-t=\"kno-desc-sh\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQsoUBMBt6BAgUEAI\">… <span class=\"wR7plc xXEKkb\">ЕЩЁ</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAsQAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6-0CMBx6BAgLEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwHXoECAwQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAdegQIDBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06p0jLLTrbST8vMyQUTVpl5mSWZiTkKJRmpiSVFmclAZlFqemZ-HpiRk5pYnKqQkliSuojV7MLeC1sv7LiwBUhuuLD7Ys-FvRe7L-xUuLDnYvOFbRfbgVJ7L2xQuLD_YgNQxR6g_FYgawMAInWY5IIAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAdegQIDBAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAdegQIDBAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">16 января 2020 г. (<a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D1%8F&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06pUuLQz9U3MEvKq9Iyy0620k_LzMkFE1aZeZklmYk5CiUZqYklRZnJQGZRanpmfh6YkZOaWJyqkJJYkrqIlefCggv7LjZebLyw42L_DlZGAOWqrcZlAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAdegQIDBAD&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAdegQIDBAD\">Россия</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwHnoECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAeegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06p0hLLTrbST8vMyQUTVimZRanJJflFi1jNLuy9sPXCjgtbgOSGC7sv9lzYe7H7wk6FC3suNl_YdrEdKLX3wgaFiw1A-W0XdlxsvNh4YevFBgASzzwEYgAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAeegQIDRAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAeegQIDRAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%92%D0%B0%D0%B9%D1%81%D0%B1%D0%B5%D1%80%D0%B3,+%D0%9C%D0%B0%D1%80%D1%8E%D1%81+%D0%AD%D1%80%D0%B8%D0%BA%D0%BE%D0%B2%D0%B8%D1%87&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06pUuLSz9U3SDIuy6mo0hLLTrbST8vMyQUTVimZRanJJflFi1h1L0y6sOHCzouNFzZe2Hqx4cJmHYULcy5suNhwse9io8KFtUChHRd2Xdh3YdOFHRfbd7AyAgBWbypNaAAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAeegQIDRAD&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAeegQIDRAD\">Марюс Эрикович Вайсберг</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:sbory\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwH3oECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAfegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D1%81%D0%B1%D0%BE%D1%80%D1%8B&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAfegQIDhAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAfegQIDhAC\">Сборы</a>: </span><span class=\"LrzXr kno-fv\">548 547 648 рублей</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:byudjet\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwIHoECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAgegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D0%B1%D1%8E%D0%B4%D0%B6%D0%B5%D1%82&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAgegQIDxAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAgegQIDxAC\">Бюджет</a>: </span><span class=\"LrzXr kno-fv\">150 000 000 рублей</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:producer\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwIXoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAhegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D0%BF%D1%80%D0%BE%D0%B4%D1%8E%D1%81%D0%B5%D1%80%D1%8B&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06p0hLLTrbST8vMyQUTVgVF-SmlyalFi1gtLuy9sPXCjgtbgOSGC7sv9lzYe7H7wk6FC3suNl_YdrEdKLX3wgaFC_svNlzYd2HLxb6LjRe2Xmy42A0AmuhSlGQAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAhegQIEBAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAhegQIEBAC\">Продюсеры</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%92%D0%B0%D0%B9%D1%81%D0%B1%D0%B5%D1%80%D0%B3,+%D0%9C%D0%B0%D1%80%D1%8E%D1%81+%D0%AD%D1%80%D0%B8%D0%BA%D0%BE%D0%B2%D0%B8%D1%87&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06pUuLSz9U3SDIuy6mo0hLLTrbST8vMyQUTVgVF-SmlyalFi1h1L0y6sOHCzouNFzZe2Hqx4cJmHYULcy5suNhwse9io8KFtUChHRd2Xdh3YdOFHRfbd7AyAgAVN6FTaAAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAhegQIEBAD&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAhegQIEBAD\">Марюс Эрикович Вайсберг</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D0%BF%D1%80%D0%BE%D0%B4%D1%8E%D1%81%D0%B5%D1%80%D1%8B&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06p0hLLTrbST8vMyQUTVgVF-SmlyalFi1gtLuy9sPXCjgtbgOSGC7sv9lzYe7H7wk6FC3suNl_YdrEdKLX3wgaFC_svNlzYd2HLxb6LjRe2Xmy42A0AmuhSlGQAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ44YBKAIwIXoECBAQBA&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\"><span class=\"SW5pqf\">ЕЩЁ</span></a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:screenplay\" data-md=\"1001\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQkCkwInoECBEQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQyxMoADAiegQIERAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%BD%D0%B5%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+%D1%81%D1%86%D0%B5%D0%BD%D0%B0%D1%80%D0%B8%D0%B9&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06p0pLITrbST8vMyQUTVsXJRampeQU5iZWLWM0u7L2w9cKOC1uA5IYLuy_2XNh7sfvCToULey42X9h2sR0otffCBoWLjRfbgCqAzIsNQKGdAMy-MwdkAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAiegQIERAC&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQ6BMoADAiegQIERAC\">Сценарий</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=%D0%96%D0%BE%D1%80%D0%B0+%D0%9A%D1%80%D1%8B%D0%B6%D0%BE%D0%B2%D0%BD%D0%B8%D0%BA%D0%BE%D0%B2&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06pUuLSz9U3qDLMNS6y0JLITrbST8vMyQUTVsXJRampeQU5iZWLWOUvTLuw72LDhQ0KF2ZdbLjYfWHbhX0XNl3Ye2HHhV0g1g5WRgAgX0JbXAAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAiegQIERAD&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoATAiegQIERAD\">Жора Крыжовников</a>, <a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805&amp;q=(%D0%BD%D0%B5)%D0%B8%D0%B4%D0%B5%D0%B0%D0%BB%D1%8C%D0%BD%D1%8B%D0%B9+%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD%D0%B0+evgeniya+khripkova&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEwzqzTOM06pUoJws0zLM_JyzY21JLKTrfTTMnNywYRVcXJRampeQU5i5SJWK40Ley9s1byw48KWC1svbLiw-2LPhb0Xuy_sVLiw52LzhW0X24FSey9sUEgtS0_Ny6xMVMjOKMosyM4vS9zByggANTnSGnoAAAA&amp;sa=X&amp;ved=2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoAjAiegQIERAE&amp;sxsrf=ALeKk039aGksl0pTFtACkxn170bzrwPRTA:1587626503805\" data-ved=\"2ahUKEwiO2q3Ogf7oAhXykIsKHb8zBwoQmxMoAjAiegQIERAE\">Evgeniya Khripkova</a></span></div>\r\n</div>\r\n</div>', '(НЕ)идеальный мужчина', '', 'publish', 'open', 'open', '', '%d0%bd%d0%b5%d0%b8%d0%b4%d0%b5%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%bc%d1%83%d0%b6%d1%87%d0%b8%d0%bd%d0%b0', '', '', '2020-04-23 10:32:04', '2020-04-23 07:32:04', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=22', 0, 'video_type', '', 0),
(23, 1, '2020-04-23 10:22:30', '2020-04-23 07:22:30', '', '813486.460x322c5020', '', 'inherit', 'open', 'closed', '', '813486-460x322c5020', '', '', '2020-04-23 10:22:30', '2020-04-23 07:22:30', '', 22, 'http://netclickswp.loc/wp-content/uploads/2020/04/813486.460x322c5020.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2020-04-23 10:24:27', '2020-04-23 07:24:27', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBYQAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwG3oECBYQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBYQAQ\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQziAoADAbegQIFhAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Старый пес Бадди прожил несколько жизней, прежде чем воссоединиться со своим первым хозяином. Но на этом цепь его перерождений не оборвалась. Он возвращается в теле щенка, получает кличку Молли и выполняет новую миссию – принести счастье проблемной девочке-подростку СиДжей. Продолжение фильма «Собач<span class=\"piXPB\" tabindex=\"0\" role=\"button\" data-li=\"\" data-t=\"kno-desc-sh\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQsoUBMBt6BAgWEAI\">… <span class=\"wR7plc xXEKkb\">ЕЩЁ</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6-0CMBx6BAgMEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwHXoECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQyxMoADAdegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D1%81%D0%BE%D0%B1%D0%B0%D1%87%D1%8C%D1%8F+%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C+2+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEzLNrAsqiwu1jLLTrbST8vMyQUTVpl5mSWZiTkKJRmpiSVFmclAZlFqemZ-HpiRk5pYnKqQkliSuohV52LjhX0XNl7YcLH9Ys_FfoUL2y7suLD9wt6LPQpGChf2X2y4sPXCnos9F7YCWRsAbzfBu3gAAAA&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAdegQIDRAC\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAdegQIDRAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">16 мая 2019 г. (<a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D0%A1%D0%B8%D0%BD%D0%B3%D0%B0%D0%BF%D1%83%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEzLNrAsqiwuVuLQz9U3MCsxKtEyy0620k_LzMkFE1aZeZklmYk5CiUZqYklRZnJQGZRanpmfh6YkZOaWJyqkJJYkrqIVeDCwgs7Luy9sPnChgv7LzZfbNjByggAy_S1o2kAAAA&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQmxMoATAdegQIDRAD\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQmxMoATAdegQIDRAD\">Сингапур</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwHnoECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQyxMoADAeegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D1%81%D0%BE%D0%B1%D0%B0%D1%87%D1%8C%D1%8F+%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C+2+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEzLNrAsqiwu1hLLTrbST8vMyQUTVimZRanJJflFi1h1LjZe2Hdh44UNF9sv9lzsV7iw7cKOC9sv7L3Yo2CkcLHhwlaQwMVGoKqtFxsAFKLr8lgAAAA&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAeegQIDhAC\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAeegQIDhAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D0%93%D0%B5%D0%B9%D0%BB+%D0%9C%D0%B0%D0%BD%D0%BA%D1%83%D0%B7%D0%BE&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NEzLNrAsqiwuVuLSz9U3MDI3NzEr0BLLTrbST8vMyQUTVimZRanJJflFi1jFL0y-sPXCzgu7FS7MubDhwt4Luy42X9h-Yd8OVkYAPfvNXVIAAAA&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQmxMoATAeegQIDhAD\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQmxMoATAeegQIDhAD\">Гейл Манкузо</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:sbory\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwH3oECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQyxMoADAfegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D1%81%D0%BE%D0%B1%D0%B0%D1%87%D1%8C%D1%8F+%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C+2+%D1%81%D0%B1%D0%BE%D1%80%D1%8B&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAfegQIDxAC\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAfegQIDxAC\">Сборы</a>: </span><span class=\"LrzXr kno-fv\">75 602 573 $</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:god\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwIHoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQyxMoADAgegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D1%81%D0%BE%D0%B1%D0%B0%D1%87%D1%8C%D1%8F+%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C+2+%D0%B3%D0%BE%D0%B4&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAgegQIEBAC\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAgegQIEBAC\">Год</a>: </span><span class=\"LrzXr kno-fv\">2019</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:byudjet\" data-md=\"1001\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQkCkwIXoECBEQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQyxMoADAhegQIERAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sa=X&amp;hl=ru&amp;biw=1920&amp;bih=888&amp;sxsrf=ALeKk02O403JOhxoLDtauw38NSbK7ca8-g:1587626593062&amp;q=%D1%81%D0%BE%D0%B1%D0%B0%D1%87%D1%8C%D1%8F+%D0%B6%D0%B8%D0%B7%D0%BD%D1%8C+2+%D0%B1%D1%8E%D0%B4%D0%B6%D0%B5%D1%82&amp;ved=2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAhegQIERAC\" data-ved=\"2ahUKEwjy4vX4gf7oAhWotIsKHSduBrMQ6BMoADAhegQIERAC\">Бюджет</a>: </span><span class=\"LrzXr kno-fv\">16 млн $</span></div>\r\n</div>\r\n</div>', 'Собачья жизнь 2', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b1%d0%b0%d1%87%d1%8c%d1%8f-%d0%b6%d0%b8%d0%b7%d0%bd%d1%8c-2', '', '', '2020-04-23 10:25:32', '2020-04-23 07:25:32', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=25', 0, 'video_type', '', 0),
(27, 1, '2020-04-23 10:24:18', '2020-04-23 07:24:18', '', 'kinopoisk.ru', 'kinopoisk.ru', 'inherit', 'open', 'closed', '', 'kinopoisk-ru', '', '', '2020-04-23 10:24:18', '2020-04-23 07:24:18', '', 25, 'http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2020-04-23 10:28:22', '2020-04-23 07:28:22', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBkQAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwHXoECBkQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBkQAQ\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QziAoADAdegQIGRAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Готэм, начало 1980-х годов. Комик Артур Флек живет с больной матерью, которая с детства учит его «ходить с улыбкой». Пытаясь нести в мир хорошее и дарить людям радость, Артур сталкивается с человеческой жестокостью и постепенно приходит к выводу, что этот мир получит от него не добрую улыбку, а ухмы<span class=\"piXPB\" tabindex=\"0\" role=\"button\" data-li=\"\" data-t=\"kno-desc-sh\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QsoUBMB16BAgZEAI\">… <span class=\"wR7plc xXEKkb\">ЕЩЁ</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6-0CMB56BAgMEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwH3oECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QyxMoADAfegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%B4%D0%B6%D0%BE%D0%BA%D0%B5%D1%80+2019+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExLLiksKLcw1TLLTrbST8vMyQUTVpl5mSWZiTkKJRmpiSVFmclAZlFqemZ-HpiRk5pYnKqQkliSuohV6cKWC9su7Luw68LWiw0KRgaGlgoX9l9suLD1wp6LPSCxCxsAYivj824AAAA&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAfegQIDRAC&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAfegQIDRAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">2 октября 2019 г. (<a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%98%D0%BD%D0%B4%D0%B8%D1%8F&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExLLiksKLcwVeLQz9U3MC7KNtAyy0620k_LzMkFE1aZeZklmYk5CiUZqYklRZnJQGZRanpmfh6YkZOaWJyqkJJYkrqIlevCjAt7L2y5sONi_w5WRgC81pJvYwAAAA&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QmxMoATAfegQIDRAD&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QmxMoATAfegQIDRAD\">Индия</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwIHoECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QyxMoADAgegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%B4%D0%B6%D0%BE%D0%BA%D0%B5%D1%80+2019+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExLLiksKLcw1RLLTrbST8vMyQUTVimZRanJJflFi1iVLmy5sO3Cvgu7Lmy92KBgZGBoqXCx4cJWoNiOi40XG0GiALaDK39OAAAA&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAgegQIDhAC&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAgegQIDhAC\">Режиссер</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%A2%D0%BE%D0%B4%D0%B4+%D0%A4%D0%B8%D0%BB%D0%BB%D0%B8%D0%BF%D1%81&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NExLLiksKLcwVeLUz9U3MCs0jjfREstOttJPy8zJBRNWKZlFqckl-UWLWMUvLLqw78KWC1sULiy5sOPCbiDccWH_xcYdrIwAVrPdD1EAAAA&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QmxMoATAgegQIDhAD&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QmxMoATAgegQIDhAD\">Тодд Филлипс</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:sbory\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwIXoECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QyxMoADAhegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%B4%D0%B6%D0%BE%D0%BA%D0%B5%D1%80+2019+%D1%81%D0%B1%D0%BE%D1%80%D1%8B&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAhegQIDxAC&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAhegQIDxAC\">Сборы</a>: </span><span class=\"LrzXr kno-fv\">$1 074 251 311</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:byudjet\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwInoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QyxMoADAiegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%B4%D0%B6%D0%BE%D0%BA%D0%B5%D1%80+2019+%D0%B1%D1%8E%D0%B4%D0%B6%D0%B5%D1%82&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAiegQIEBAC&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAiegQIEBAC\">Бюджет</a>: </span><span class=\"LrzXr kno-fv\">$55 млн</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:god\" data-md=\"1001\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QkCkwI3oECBEQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4QyxMoADAjegQIERAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108&amp;q=%D0%B4%D0%B6%D0%BE%D0%BA%D0%B5%D1%80+2019+%D0%B3%D0%BE%D0%B4&amp;sa=X&amp;ved=2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAjegQIERAC&amp;sxsrf=ALeKk03XpF-HCmg0FRVuHTT1phKggodDLg:1587626770108\" data-ved=\"2ahUKEwiV5avNgv7oAhXImIsKHTYwDo4Q6BMoADAjegQIERAC\">Год</a>: </span><span class=\"LrzXr kno-fv\">2019</span></div>\r\n</div>\r\n</div>', 'Джокер', '', 'publish', 'open', 'open', '', '%d0%b4%d0%b6%d0%be%d0%ba%d0%b5%d1%80', '', '', '2020-04-23 10:28:22', '2020-04-23 07:28:22', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=28', 0, 'video_type', '', 0),
(30, 1, '2020-04-23 10:27:32', '2020-04-23 07:27:32', '', 'kinopoisk.ru', 'kinopoisk.ru', 'inherit', 'open', 'closed', '', 'kinopoisk-ru-2', '', '', '2020-04-23 10:27:32', '2020-04-23 07:27:32', '', 28, 'http://netclickswp.loc/wp-content/uploads/2020/04/Джокер_фильм_Тодда_Филлипса.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-04-23 10:28:15', '2020-04-23 07:28:15', '', 'kinopoisk.ru', 'kinopoisk.ru', 'inherit', 'open', 'closed', '', 'kinopoisk-ru-3', '', '', '2020-04-23 10:28:15', '2020-04-23 07:28:15', '', 28, 'http://netclickswp.loc/wp-content/uploads/2020/04/joker.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-04-23 10:30:31', '2020-04-23 07:30:31', '<div class=\"mod\" lang=\"ru-BY\" data-md=\"50\" data-hveid=\"CBgQAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwHXoECBgQAA\">\r\n<div class=\"PZPZlf hb8SAc\" data-attrid=\"description\" data-hveid=\"CBgQAQ\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQziAoADAdegQIGBAB\">\r\n<div>\r\n<div class=\"kno-rdesc\">\r\n<div>Добро пожаловать в Зверополис — современный город, населенный самыми разными животными, от огромных слонов до крошечных мышек. Зверополис разделен на районы, полностью повторяющие естественную среду обитания разных жителей — здесь есть и элитный район Площадь Сахары и неприветливый Тундратаун. В это<span class=\"piXPB\" tabindex=\"0\" role=\"button\" data-li=\"\" data-t=\"kno-desc-sh\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQsoUBMB16BAgYEAI\">… <span class=\"wR7plc xXEKkb\">ЕЩЁ</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-md=\"30\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6-0CMB56BAgMEAA\"></div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:initial theatrical regional release date\" data-md=\"1001\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwH3oECA0QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQyxMoADAfegQIDRAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D0%BF%D1%80%D0%B5%D0%BC%D1%8C%D0%B5%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNNMyy0620k_LzMkFE1aZeZklmYk5CiUZqYklRZnJQGZRanpmfh6YkZOaWJyqkJJYkrqIVfXC9gubLmy92HBh34X9QLz7wo6LjQoX9gMFtl7Yc7EHLLUBAL28kFdvAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAfegQIDRAC\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAfegQIDRAC\">Премьера</a>: </span><span class=\"LrzXr kno-fv\">10 февраля 2016 г. (<a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%91%D0%B5%D0%BB%D1%8C%D0%B3%D0%B8%D1%8F&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiAHNMTbK0zLKTrfTTMnNywYRVZl5mSWZijkJJRmpiSVFmMpBZlJqemZ8HZuSkJhanKqQklqQuYuW7MPHC1gu7L_Zc2Hxhx8X-HayMACvTurRlAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAfegQIDRAD\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAfegQIDRAD\">Бельгия</a>)</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:director\" data-md=\"1001\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwIHoECA4QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQyxMoADAgegQIDhAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D1%80%D0%B5%D0%B6%D0%B8%D1%81%D1%81%D0%B5%D1%80%D1%8B&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNNMSy0620k_LzMkFE1YpmUWpySX5RYtY1S9sv7DpwtaLDRf2XdgPxLsv7LjYqADkbr2wDcS82AiSvNgNAOco0XZRAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAgegQIDhAC\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAgegQIDhAC\">Режиссеры</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%91%D0%B0%D0%B9%D1%80%D0%BE%D0%BD+%D0%A5%D0%BE%D0%B2%D0%B0%D1%80%D0%B4&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiAnGM8yryko20xLKTrfTTMnNywYRVSmZRanJJftEiVskLEy9suLDzYsOFfRf2KlxYCqQ2XdgA5G7ZwcoIAFZEabpSAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAgegQIDhAD\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAgegQIDhAD\">Байрон Ховард</a>, <a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%A0%D0%B8%D1%87+%D0%9C%D1%83%D1%80&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiBHEsSirijbXEspOt9NMyc3LBhFVKZlFqckl-0SJW3gsLLuy42K5wYc7F5osNO1gZAYJiA3xFAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAjAgegQIDhAE\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAjAgegQIDhAE\">Рич Мур</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:featured song\" data-md=\"1001\" data-hveid=\"CA8QAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwIXoECA8QAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQyxMoADAhegQIDxAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D0%BF%D0%B5%D1%81%D0%BD%D1%8F&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNNOSzk620k_LzMkFE1ZpqYklpUWpKQrF-Xnpi1jlL2y_sOnC1osNF_Zd2A_Euy_suNioAGRuvdh4Ye_FfgA7wqY8TgAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAhegQIDxAC\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAhegQIDxAC\">Песня</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%A1%D0%B8%D1%8F+Try+Everything&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPi1U_XNzRMzrZIqTQst9CSzk620k_LzMkFE1ZpqYklpUWpKQrF-Xnpi1hFLyy8sONiv0JIUaWCa1lqUWVJRmZe-g5WRgDVjZBGVgAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAhegQIDxAD\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAhegQIDxAD\">Try Everything</a></span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"ss:/webfacts:tip_mulьtfilьma\" data-md=\"1001\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwInoECBAQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQyxMoADAiegQIEBAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D1%82%D0%B8%D0%BF+%D0%BC%D1%83%D0%BB%D1%8C%D1%82%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D0%B0&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAiegQIEBAC\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAiegQIEBAC\">Тип мультфильма</a>: </span><span class=\"LrzXr kno-fv\">компьютерная анимация</span></div>\r\n</div>\r\n</div>\r\n<div class=\"mod\" lang=\"ru-BY\" data-attrid=\"kc:/film/film:cast\" data-md=\"1001\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQkCkwI3oECBEQAA\">\r\n<div class=\"Z1hOCe\">\r\n<div class=\"zloOqf PZPZlf\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQyxMoADAjegQIERAB\"><span class=\"w8qArf\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D0%B2+%D1%80%D0%BE%D0%BB%D1%8F%D1%85&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNNMSyk620k_LzMkFE1bJicUli1iVLmy_sOnC1osNF_Zd2A_Euy_suNiocGGTAlhk98X-i60AXm1Jb0gAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAjegQIERAC\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ6BMoADAjegQIERAC\">В ролях</a>: </span><span class=\"LrzXr kno-fv\"><a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%94%D0%B6%D0%B8%D0%BD%D0%BD%D0%B8%D1%84%D0%B5%D1%80+%D0%93%D1%83%D0%B4%D0%B2%D0%B8%D0%BD&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiBHEss7Mrk7SEspOt9NMyc3LBhFVyYnHJIlb5C1MubLuw48JeINxxseXC1osNChcmX2y-sOXCJpDwDlZGAHoyaidTAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAjegQIERAD\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoATAjegQIERAD\">Джиннифер Гудвин</a>, <a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%94%D0%B6%D0%B5%D0%B9%D1%81%D0%BE%D0%BD+%D0%91%D0%B5%D0%B9%D1%82%D0%BC%D0%B0%D0%BD&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiBHGMjSoy0rWEspOt9NMyc3LBhFVyYnHJIlbZC1MubLuw9cLOi40X9l3Yq3BhIpjTdGHPhQ0X9u5gZQQAEEC5PVEAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAjAjegQIERAE\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAjAjegQIERAE\">Джейсон Бейтман</a>, <a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%A8%D0%B0%D0%BA%D0%B8%D1%80%D0%B0&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNFPiAnPKswwtMrSEspOt9NMyc3LBhFVyYnHJIlaeCysubLiw68KOiw0XNuxgZQQAcaWp0kEAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAzAjegQIERAF\" data-ved=\"2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQmxMoAzAjegQIERAF\">Шакира</a>, <a class=\"fl\" href=\"https://www.google.com/search?hl=ru&amp;sxsrf=ALeKk02tJy7cYfY4Fhc5MQiRzWEnb0MR5w:1587626932837&amp;q=%D0%B7%D0%B2%D0%B5%D1%80%D0%BE%D0%BF%D0%BE%D0%BB%D0%B8%D1%81+%D0%B2+%D1%80%D0%BE%D0%BB%D1%8F%D1%85&amp;stick=H4sIAAAAAAAAAOPgE-LWz9U3MDSyKKqoNNMSyk620k_LzMkFE1bJicUli1iVLmy_sOnC1osNF_Zd2A_Euy_suNiocGGTAlhk98X-i60AXm1Jb0gAAAA&amp;sa=X&amp;ved=2ahUKEwiWg_iag_7oAhVUkMMKHaGJAIYQ44YBKAQwI3oECBEQBg\"><span class=\"SW5pqf\">ЕЩЁ</span></a></span></div>\r\n</div>\r\n</div>', 'Зверополис', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b2%d0%b5%d1%80%d0%be%d0%bf%d0%be%d0%bb%d0%b8%d1%81', '', '', '2020-04-23 10:30:31', '2020-04-23 07:30:31', '', 0, 'http://netclickswp.loc/?post_type=video_type&#038;p=32', 0, 'video_type', '', 0),
(34, 1, '2020-04-23 10:30:27', '2020-04-23 07:30:27', '', 'zveropolis', '', 'inherit', 'open', 'closed', '', 'zveropolis', '', '', '2020-04-23 10:30:27', '2020-04-23 07:30:27', '', 32, 'http://netclickswp.loc/wp-content/uploads/2020/04/zveropolis.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-04-23 11:51:44', '2020-04-23 08:51:44', '<!-- wp:paragraph -->\n<p>Свяжитесь по телефону +7-999-111-11-11</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[57,58,59,60,61]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/1374296682-1.jpg\" alt=\"\" data-id=\"57\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/1374296682-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/1374296682-1/\" class=\"wp-image-57\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754-1.jpg\" alt=\"\" data-id=\"58\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/20200220104955d47d836754-1/\" class=\"wp-image-58\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/joker-1.jpg\" alt=\"\" data-id=\"59\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/joker-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/kinopoisk-ru-4/\" class=\"wp-image-59\"/><figcaption class=\"blocks-gallery-item__caption\">kinopoisk.ru</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v-1.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/kinopoisk-ru-5/\" class=\"wp-image-60\"/><figcaption class=\"blocks-gallery-item__caption\">kinopoisk.ru</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/neideal.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/neideal.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/neideal/\" class=\"wp-image-61\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-04-23 12:07:11', '2020-04-23 09:07:11', '', 0, 'http://netclickswp.loc/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-04-23 11:51:44', '2020-04-23 08:51:44', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-04-23 11:51:44', '2020-04-23 08:51:44', '', 36, 'http://netclickswp.loc/2020/04/23/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-04-23 11:52:18', '2020-04-23 08:52:18', '<!-- wp:paragraph -->\n<p>На нашем сайте только свежие фильмы</p>\n<!-- /wp:paragraph -->', 'Информация', '', 'publish', 'closed', 'closed', '', '%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f', '', '', '2020-04-23 11:52:19', '2020-04-23 08:52:19', '', 0, 'http://netclickswp.loc/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-04-23 11:52:18', '2020-04-23 08:52:18', '<!-- wp:paragraph -->\n<p>На нашем сайте только свежие фильмы</p>\n<!-- /wp:paragraph -->', 'Информация', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-04-23 11:52:18', '2020-04-23 08:52:18', '', 38, 'http://netclickswp.loc/2020/04/23/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-04-23 11:52:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-23 11:52:47', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2020-04-23 11:52:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-23 11:52:47', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2020-04-23 11:52:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-04-23 11:52:47', '0000-00-00 00:00:00', '', 0, 'http://netclickswp.loc/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2020-04-23 11:53:38', '2020-04-23 08:53:38', '{\n    \"Devion::nav_menu_locations[primary]\": {\n        \"value\": -324774862,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    },\n    \"nav_menu[-324774862]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e-\\u0448\\u0430\\u043f\\u043a\\u0430\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    },\n    \"nav_menu_item[-310469647]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"url\": \"http://netclickswp.loc\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\n            \"nav_menu_term_id\": -324774862,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    },\n    \"nav_menu_item[-2034393752]\": {\n        \"value\": {\n            \"object_id\": 3,\n            \"object\": \"genre\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"taxonomy\",\n            \"title\": \"\\u0414\\u0440\\u0430\\u043c\\u0430\",\n            \"url\": \"http://netclickswp.loc/genre/drama/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0414\\u0440\\u0430\\u043c\\u0430\",\n            \"nav_menu_term_id\": -324774862,\n            \"_invalid\": false,\n            \"type_label\": \"Genre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    },\n    \"nav_menu_item[-1760961286]\": {\n        \"value\": {\n            \"object_id\": 4,\n            \"object\": \"genre\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"taxonomy\",\n            \"title\": \"\\u041a\\u043e\\u043c\\u0435\\u0434\\u0438\\u044f\",\n            \"url\": \"http://netclickswp.loc/genre/comedy/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043c\\u0435\\u0434\\u0438\\u044f\",\n            \"nav_menu_term_id\": -324774862,\n            \"_invalid\": false,\n            \"type_label\": \"Genre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    },\n    \"nav_menu_item[-961725010]\": {\n        \"value\": {\n            \"object_id\": 22,\n            \"object\": \"genre\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"taxonomy\",\n            \"title\": \"\\u041a\\u0440\\u0438\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0438\\u043b\\u044c\\u043c\",\n            \"url\": \"http://netclickswp.loc/genre/crime-film/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u0440\\u0438\\u043c\\u0438\\u043d\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0438\\u043b\\u044c\\u043c\",\n            \"nav_menu_term_id\": -324774862,\n            \"_invalid\": false,\n            \"type_label\": \"Genre\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:53:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d6589fa-b5a2-4e17-91e4-1c04d1c611bc', '', '', '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 0, 'http://netclickswp.loc/2020/04/23/5d6589fa-b5a2-4e17-91e4-1c04d1c611bc/', 0, 'customize_changeset', '', 0),
(44, 1, '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 0, 'http://netclickswp.loc/2020/04/23/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f/', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-04-23 11:53:38', '2020-04-23 08:53:38', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 0, 'http://netclickswp.loc/2020/04/23/45/', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-04-23 11:53:38', '2020-04-23 08:53:38', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 0, 'http://netclickswp.loc/2020/04/23/46/', 3, 'nav_menu_item', '', 0),
(47, 1, '2020-04-23 11:53:38', '2020-04-23 08:53:38', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2020-04-23 11:53:38', '2020-04-23 08:53:38', '', 0, 'http://netclickswp.loc/2020/04/23/47/', 4, 'nav_menu_item', '', 0),
(48, 1, '2020-04-23 11:54:33', '2020-04-23 08:54:33', '{\n    \"nav_menu[-1931126853]\": {\n        \"value\": {\n            \"name\": \"\\u0424\\u0443\\u0442\\u0435\\u0440-\\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:54:33\"\n    },\n    \"nav_menu_item[-1880224461]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\n            \"url\": \"http://netclickswp.loc/%d0%b8%d0%bd%d1%84%d0%be%d1%80%d0%bc%d0%b0%d1%86%d0%b8%d1%8f/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\n            \"nav_menu_term_id\": -1931126853,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:54:33\"\n    },\n    \"nav_menu_item[-103956101]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:54:33\"\n    },\n    \"nav_menu_item[-78757606]\": {\n        \"value\": {\n            \"object_id\": 36,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1931126853,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:54:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'daa1d86f-bc47-44ff-8813-53cb18ecdf22', '', '', '2020-04-23 11:54:33', '2020-04-23 08:54:33', '', 0, 'http://netclickswp.loc/2020/04/23/daa1d86f-bc47-44ff-8813-53cb18ecdf22/', 0, 'customize_changeset', '', 0),
(49, 1, '2020-04-23 11:54:33', '2020-04-23 08:54:33', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-04-23 11:54:33', '2020-04-23 08:54:33', '', 0, 'http://netclickswp.loc/2020/04/23/49/', 1, 'nav_menu_item', '', 0),
(50, 1, '2020-04-23 11:54:33', '2020-04-23 08:54:33', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-04-23 11:54:33', '2020-04-23 08:54:33', '', 0, 'http://netclickswp.loc/2020/04/23/50/', 2, 'nav_menu_item', '', 0),
(51, 1, '2020-04-23 11:57:19', '2020-04-23 08:57:19', '<!-- wp:paragraph -->\n<p>На нашем сайте вы можете разместить рекламный баннер.</p>\n<!-- /wp:paragraph -->', 'Реклама', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%b0', '', '', '2020-04-23 11:57:20', '2020-04-23 08:57:20', '', 0, 'http://netclickswp.loc/?page_id=51', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(52, 1, '2020-04-23 11:57:19', '2020-04-23 08:57:19', '<!-- wp:paragraph -->\n<p>На нашем сайте вы можете разместить рекламный баннер.</p>\n<!-- /wp:paragraph -->', 'Реклама', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-04-23 11:57:19', '2020-04-23 08:57:19', '', 51, 'http://netclickswp.loc/2020/04/23/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-04-23 11:57:40', '2020-04-23 08:57:40', '{\n    \"nav_menu_item[-1266620655]\": {\n        \"value\": {\n            \"object_id\": 51,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0420\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430\",\n            \"url\": \"http://netclickswp.loc/%d1%80%d0%b5%d0%ba%d0%bb%d0%b0%d0%bc%d0%b0/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0420\\u0435\\u043a\\u043b\\u0430\\u043c\\u0430\",\n            \"nav_menu_term_id\": 24,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-23 08:57:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8a270733-af57-4f89-8f7f-fa2a8b51766e', '', '', '2020-04-23 11:57:40', '2020-04-23 08:57:40', '', 0, 'http://netclickswp.loc/2020/04/23/8a270733-af57-4f89-8f7f-fa2a8b51766e/', 0, 'customize_changeset', '', 0),
(54, 1, '2020-04-23 11:57:40', '2020-04-23 08:57:40', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2020-04-23 11:57:40', '2020-04-23 08:57:40', '', 0, 'http://netclickswp.loc/2020/04/23/54/', 3, 'nav_menu_item', '', 0),
(55, 1, '2020-04-23 11:59:23', '2020-04-23 08:59:23', '<!-- wp:paragraph -->\n<p>Сейчас идут съемки фильма бэтмен 2021.</p>\n<!-- /wp:paragraph -->', 'Новый бэтмен', '', 'publish', 'open', 'open', '', '%d0%bd%d0%be%d0%b2%d1%8b%d0%b9-%d0%b1%d1%8d%d1%82%d0%bc%d0%b5%d0%bd', '', '', '2020-04-23 11:59:25', '2020-04-23 08:59:25', '', 0, 'http://netclickswp.loc/?p=55', 0, 'post', '', 0),
(56, 1, '2020-04-23 11:59:23', '2020-04-23 08:59:23', '<!-- wp:paragraph -->\n<p>Сейчас идут съемки фильма бэтмен 2021.</p>\n<!-- /wp:paragraph -->', 'Новый бэтмен', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-04-23 11:59:23', '2020-04-23 08:59:23', '', 55, 'http://netclickswp.loc/2020/04/23/55-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-04-23 12:06:59', '2020-04-23 09:06:59', '', '1374296682-1', '', 'inherit', 'open', 'closed', '', '1374296682-1', '', '', '2020-04-23 12:06:59', '2020-04-23 09:06:59', '', 36, 'http://netclickswp.loc/wp-content/uploads/2020/04/1374296682-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-04-23 12:07:00', '2020-04-23 09:07:00', '', '20200220104955d47d836754-1', '', 'inherit', 'open', 'closed', '', '20200220104955d47d836754-1', '', '', '2020-04-23 12:07:00', '2020-04-23 09:07:00', '', 36, 'http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-04-23 12:07:01', '2020-04-23 09:07:01', '', 'kinopoisk.ru', 'kinopoisk.ru', 'inherit', 'open', 'closed', '', 'kinopoisk-ru-4', '', '', '2020-04-23 12:07:01', '2020-04-23 09:07:01', '', 36, 'http://netclickswp.loc/wp-content/uploads/2020/04/joker-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-04-23 12:07:01', '2020-04-23 09:07:01', '', 'kinopoisk.ru', 'kinopoisk.ru', 'inherit', 'open', 'closed', '', 'kinopoisk-ru-5', '', '', '2020-04-23 12:07:01', '2020-04-23 09:07:01', '', 36, 'http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-04-23 12:07:02', '2020-04-23 09:07:02', '', 'neideal', '', 'inherit', 'open', 'closed', '', 'neideal', '', '', '2020-04-23 12:07:02', '2020-04-23 09:07:02', '', 36, 'http://netclickswp.loc/wp-content/uploads/2020/04/neideal.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-04-23 12:07:11', '2020-04-23 09:07:11', '<!-- wp:paragraph -->\n<p>Свяжитесь по телефону +7-999-111-11-11</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[57,58,59,60,61]} -->\n<figure class=\"wp-block-gallery columns-3 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/1374296682-1.jpg\" alt=\"\" data-id=\"57\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/1374296682-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/1374296682-1/\" class=\"wp-image-57\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754-1.jpg\" alt=\"\" data-id=\"58\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/20200220104955d47d836754-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/20200220104955d47d836754-1/\" class=\"wp-image-58\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/joker-1.jpg\" alt=\"\" data-id=\"59\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/joker-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/kinopoisk-ru-4/\" class=\"wp-image-59\"/><figcaption class=\"blocks-gallery-item__caption\">kinopoisk.ru</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v-1.jpg\" alt=\"\" data-id=\"60\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/l5a0ed1a10f61eq27t61v-1.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/kinopoisk-ru-5/\" class=\"wp-image-60\"/><figcaption class=\"blocks-gallery-item__caption\">kinopoisk.ru</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://netclickswp.loc/wp-content/uploads/2020/04/neideal.jpg\" alt=\"\" data-id=\"61\" data-full-url=\"http://netclickswp.loc/wp-content/uploads/2020/04/neideal.jpg\" data-link=\"http://netclickswp.loc/%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b/neideal/\" class=\"wp-image-61\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-04-23 12:07:11', '2020-04-23 09:07:11', '', 36, 'http://netclickswp.loc/2020/04/23/36-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-04-24 21:59:40', '2020-04-24 18:59:40', '{\n    \"blogname\": {\n        \"value\": \"netclix\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-24 18:59:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1462e3bd-80c8-4b88-9d0e-6c6781cacd85', '', '', '2020-04-24 21:59:40', '2020-04-24 18:59:40', '', 0, 'http://netclickswp.loc/2020/04/24/1462e3bd-80c8-4b88-9d0e-6c6781cacd85/', 0, 'customize_changeset', '', 0),
(64, 1, '2020-04-24 21:59:49', '2020-04-24 18:59:49', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-24 18:59:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '634ac2d4-8e73-481a-b4ce-efb1425032c1', '', '', '2020-04-24 21:59:49', '2020-04-24 18:59:49', '', 0, 'http://netclickswp.loc/2020/04/24/634ac2d4-8e73-481a-b4ce-efb1425032c1/', 0, 'customize_changeset', '', 0),
(65, 1, '2020-04-24 22:01:57', '2020-04-24 19:01:57', '{\n    \"blogdescription\": {\n        \"value\": \"\\u0421\\u0430\\u043c\\u044b\\u0435 \\u0441\\u0432\\u0435\\u0436\\u0438\\u0435 \\u0444\\u0438\\u043b\\u044c\\u043c\\u044b\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-24 19:01:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b51166f-3f0a-40be-90f3-0f3bdaece18e', '', '', '2020-04-24 22:01:57', '2020-04-24 19:01:57', '', 0, 'http://netclickswp.loc/2020/04/24/3b51166f-3f0a-40be-90f3-0f3bdaece18e/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Боевик', 'action', 0),
(3, 'Драма', 'drama', 0),
(4, 'Комедия', 'comedy', 0),
(5, 'Документальный', 'documentary', 0),
(6, 'Вестерн', 'western', 0),
(7, 'Гангстерский фильм', 'gangster-movie', 0),
(8, 'Детектив', 'detective', 0),
(9, 'Исторический фильм', 'historical-film', 0),
(10, 'Мелодрама', 'melodrama', 0),
(11, 'Музыкальный фильм', 'music-film', 0),
(12, 'Нуар', 'noir', 0),
(13, 'Политический фильм', 'political-film', 0),
(14, 'Приключенческий фильм', 'adventure-movie', 0),
(15, 'Сказка', 'story', 0),
(16, 'Трагедия', 'tragedy', 0),
(17, 'Трагикомедия', 'tragicomedy', 0),
(18, 'Триллер', 'thriller', 0),
(19, 'Фантастический фильм', 'sci-fi-movie', 0),
(20, 'Фильм ужасов', 'horror-movie', 0),
(21, 'Фильм-катастрофа', 'disaster-movie', 0),
(22, 'Криминальный фильм', 'crime-film', 0),
(23, 'Меню-шапка', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%88%d0%b0%d0%bf%d0%ba%d0%b0', 0),
(24, 'Футер-меню', '%d1%84%d1%83%d1%82%d0%b5%d1%80-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(25, 'Новости', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 3, 0),
(7, 22, 0),
(12, 1, 0),
(14, 3, 0),
(14, 22, 0),
(19, 2, 0),
(19, 14, 0),
(22, 4, 0),
(22, 19, 0),
(25, 3, 0),
(25, 4, 0),
(25, 14, 0),
(28, 3, 0),
(28, 22, 0),
(32, 4, 0),
(44, 23, 0),
(45, 23, 0),
(46, 23, 0),
(47, 23, 0),
(49, 24, 0),
(50, 24, 0),
(54, 24, 0),
(55, 25, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'genre', '', 0, 1),
(3, 3, 'genre', '', 0, 4),
(4, 4, 'genre', '', 0, 3),
(5, 5, 'genre', '', 0, 0),
(6, 6, 'genre', '', 0, 0),
(7, 7, 'genre', '', 0, 0),
(8, 8, 'genre', '', 0, 0),
(9, 9, 'genre', '', 0, 0),
(10, 10, 'genre', '', 0, 0),
(11, 11, 'genre', '', 0, 0),
(12, 12, 'genre', '', 0, 0),
(13, 13, 'genre', '', 0, 0),
(14, 14, 'genre', '', 0, 2),
(15, 15, 'genre', '', 0, 0),
(16, 16, 'genre', '', 0, 0),
(17, 17, 'genre', '', 0, 0),
(18, 18, 'genre', '', 0, 0),
(19, 19, 'genre', '', 0, 1),
(20, 20, 'genre', '', 0, 0),
(21, 21, 'genre', '', 0, 0),
(22, 22, 'genre', '', 0, 3),
(23, 23, 'nav_menu', '', 0, 4),
(24, 24, 'nav_menu', '', 0, 3),
(25, 25, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', 'fvp-post-box'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"667e999ebcdd261234ca6910991fd8cbc87effe040bdee1f504709b2fc6f70c8\";a:4:{s:10:\"expiration\";i:1588763068;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587553468;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1587622038'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:24:\"add-post-type-video_type\";i:1;s:12:\"add-post_tag\";i:2;s:9:\"add-genre\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B1.f3xQ7VJfiO.ZrY6CyYxJj9eTTEE0', 'admin', 'admin@admin.by', 'http://netclickswp.loc', '2020-04-22 11:04:10', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
