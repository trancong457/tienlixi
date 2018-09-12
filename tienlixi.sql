-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2018 at 12:13 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tienlixi`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpl_commentmeta`
--

CREATE TABLE `wpl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_comments`
--

CREATE TABLE `wpl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_comments`
--

INSERT INTO `wpl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-10 04:25:19', '2018-09-10 04:25:19', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_links`
--

CREATE TABLE `wpl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_options`
--

CREATE TABLE `wpl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_options`
--

INSERT INTO `wpl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/tienlixi', 'yes'),
(2, 'home', 'http://localhost/tienlixi', 'yes'),
(3, 'blogname', 'Tiền Lì Xì 2018', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'trancong.joomla@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:19:"jetpack/jetpack.php";i:2;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:4;s:45:"woocommerce-services/woocommerce-services.php";i:5;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'luckymoney', 'yes'),
(41, 'stylesheet', 'luckymoney', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:45:"woocommerce-services/woocommerce-services.php";a:2:{i:0;s:17:"WC_Connect_Loader";i:1;s:16:"plugin_uninstall";}}', 'no'),
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
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wpl_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"primary-widget-area";a:0:{}s:15:"top-widget-area";a:1:{i:0;s:13:"custom_html-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:"title";s:12:"test widgets";s:7:"content";s:13:"test widgets ";}s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:13:{i:1536747921;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536748906;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536749190;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1536749837;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1536759706;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1536769521;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1536796800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536812840;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536824506;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536824516;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1536825140;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1538438400;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1536555989;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(123, '_site_transient_timeout_browser_61082fc9c192de563bde4f89002ce53b', '1537158336', 'no'),
(124, '_site_transient_browser_61082fc9c192de563bde4f89002ce53b', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"61.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(125, 'can_compress_scripts', '1', 'no'),
(144, 'new_admin_email', 'trancong.joomla@gmail.com', 'yes'),
(152, 'recently_activated', 'a:1:{s:47:"woocommerce-quick-buy/woocommerce-quick-buy.php";i:1536737933;}', 'yes'),
(155, 'current_theme', 'Lucky Money Theme', 'yes'),
(156, 'theme_mods_luckymoney', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"center-menu";i:21;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1536726493;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"primary-widget-area";a:0:{}s:15:"top-widget-area";a:1:{i:0;s:13:"custom_html-2";}}}}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(168, 'woocommerce_store_address', '80 Ha Dac', 'yes'),
(169, 'woocommerce_store_address_2', '', 'yes'),
(170, 'woocommerce_store_city', 'Ho Chi Minh', 'yes'),
(171, 'woocommerce_default_country', 'VN', 'yes'),
(172, 'woocommerce_store_postcode', '71759', 'yes'),
(173, 'woocommerce_allowed_countries', 'all', 'yes'),
(174, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(175, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_ship_to_countries', '', 'yes'),
(177, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(178, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(179, 'woocommerce_calc_taxes', 'no', 'yes'),
(180, 'woocommerce_enable_coupons', 'yes', 'yes'),
(181, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(182, 'woocommerce_currency', 'VND', 'yes'),
(183, 'woocommerce_currency_pos', 'right_space', 'yes'),
(184, 'woocommerce_price_thousand_sep', ',', 'yes'),
(185, 'woocommerce_price_decimal_sep', '.', 'yes'),
(186, 'woocommerce_price_num_decimals', '0', 'yes'),
(187, 'woocommerce_shop_page_id', '5', 'yes'),
(188, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(189, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(190, 'woocommerce_weight_unit', 'kg', 'yes'),
(191, 'woocommerce_dimension_unit', 'cm', 'yes'),
(192, 'woocommerce_enable_reviews', 'no', 'yes'),
(193, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(194, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(195, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(196, 'woocommerce_review_rating_required', 'yes', 'no'),
(197, 'woocommerce_manage_stock', 'yes', 'yes'),
(198, 'woocommerce_hold_stock_minutes', '60', 'no'),
(199, 'woocommerce_notify_low_stock', 'yes', 'no'),
(200, 'woocommerce_notify_no_stock', 'yes', 'no'),
(201, 'woocommerce_stock_email_recipient', 'trancong.joomla@gmail.com', 'no'),
(202, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(203, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(204, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(205, 'woocommerce_stock_format', '', 'yes'),
(206, 'woocommerce_file_download_method', 'force', 'no'),
(207, 'woocommerce_downloads_require_login', 'no', 'no'),
(208, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(209, 'woocommerce_prices_include_tax', 'no', 'yes'),
(210, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(211, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(212, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(213, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(214, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(215, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(216, 'woocommerce_price_display_suffix', '', 'yes'),
(217, 'woocommerce_tax_total_display', 'itemized', 'no'),
(218, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(219, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(220, 'woocommerce_ship_to_destination', 'billing', 'no'),
(221, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(222, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(223, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(224, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(225, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(226, 'woocommerce_registration_generate_username', 'yes', 'no'),
(227, 'woocommerce_registration_generate_password', 'yes', 'no'),
(228, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(229, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(230, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(231, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(232, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(233, 'woocommerce_trash_pending_orders', '', 'no'),
(234, 'woocommerce_trash_failed_orders', '', 'no'),
(235, 'woocommerce_trash_cancelled_orders', '', 'no'),
(236, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(237, 'woocommerce_email_from_name', 'Tiền Lì Xì 2018', 'no'),
(238, 'woocommerce_email_from_address', 'trancong.joomla@gmail.com', 'no'),
(239, 'woocommerce_email_header_image', '', 'no'),
(240, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(241, 'woocommerce_email_base_color', '#96588a', 'no'),
(242, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(243, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(244, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(245, 'woocommerce_cart_page_id', '6', 'yes'),
(246, 'woocommerce_checkout_page_id', '7', 'yes'),
(247, 'woocommerce_myaccount_page_id', '8', 'yes'),
(248, 'woocommerce_terms_page_id', '', 'no'),
(249, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(250, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(251, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(252, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(253, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(254, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(255, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(256, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(257, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(258, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(259, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(260, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(261, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(262, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(263, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(264, 'woocommerce_api_enabled', 'no', 'yes'),
(265, 'woocommerce_single_image_width', '600', 'yes'),
(266, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(267, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(268, 'woocommerce_demo_store', 'no', 'no'),
(269, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(270, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(271, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(272, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(274, 'default_product_cat', '15', 'yes'),
(277, 'woocommerce_version', '3.4.5', 'yes'),
(278, 'woocommerce_db_version', '3.4.5', 'yes'),
(279, 'woocommerce_admin_notices', 'a:2:{i:0;s:20:"no_secure_connection";i:1;s:19:"no_shipping_methods";}', 'yes'),
(280, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(281, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(292, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(296, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(297, '_transient_timeout_external_ip_address_::1', '1537170111', 'no'),
(298, '_transient_external_ip_address_::1', '116.109.90.193', 'no'),
(302, 'woocommerce_product_type', 'both', 'yes'),
(303, 'woocommerce_allow_tracking', 'yes', 'yes'),
(305, 'woocommerce_tracker_last_send', '1536565453', 'yes'),
(310, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:"enabled";s:3:"yes";s:16:"reroute_requests";s:3:"yes";s:5:"email";s:25:"trancong.joomla@gmail.com";}', 'yes'),
(311, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(312, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(313, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(316, 'jetpack_activated', '1', 'yes'),
(319, 'jetpack_activation_source', 'a:2:{i:0;s:7:"unknown";i:1;N;}', 'yes'),
(320, 'jetpack_sync_settings_disable', '0', 'yes'),
(321, '_transient_timeout_jetpack_file_data_6.5', '1539071202', 'no');
INSERT INTO `wpl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(322, '_transient_jetpack_file_data_6.5', 'a:58:{s:32:"c22c48d7cfe9d38dff2864cfea64636a";a:15:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:39:"Check your spelling, style, and grammar";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:115:"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche";s:12:"plan_classes";s:0:"";}s:32:"fb5c4814ddc3946a3f22cc838fcb2af3";a:15:{s:4:"name";s:8:"Carousel";s:11:"description";s:75:"Display images and galleries in a gorgeous, full-screen browsing experience";s:14:"jumpstart_desc";s:79:"Brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:80:"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image";s:12:"plan_classes";s:0:"";}s:32:"5813eda53235a9a81a69b1f6a4a15db6";a:15:{s:4:"name";s:13:"Comment Likes";s:11:"description";s:64:"Increase visitor engagement by adding a Like button to comments.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"39";s:20:"recommendation_order";s:2:"17";s:10:"introduced";s:3:"5.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:37:"like widget, like button, like, likes";s:12:"plan_classes";s:0:"";}s:32:"7ef4ca32a1c84fc10ef50c8293cae5df";a:15:{s:4:"name";s:8:"Comments";s:11:"description";s:80:"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:53:"comments, comment, facebook, twitter, google+, social";s:12:"plan_classes";s:0:"";}s:32:"c5331bfc2648dfeeebe486736d79a72c";a:15:{s:4:"name";s:12:"Contact Form";s:11:"description";s:57:"Insert a customizable contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:18:"Writing, Jumpstart";s:25:"additional_search_queries";s:44:"contact, form, grunion, feedback, submission";s:12:"plan_classes";s:0:"";}s:32:"707c77d2e8cb0c12d094e5423c8beda8";a:15:{s:4:"name";s:20:"Custom content types";s:11:"description";s:74:"Display different types of content on your site with custom content types.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:72:"cpt, custom post types, portfolio, portfolios, testimonial, testimonials";s:12:"plan_classes";s:0:"";}s:32:"cd499b1678cfe3aabfc8ca0d3eb7e8b9";a:15:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:53:"Tweak your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:108:"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet";s:12:"plan_classes";s:0:"";}s:32:"7d266d6546645f42cf52a66387699c50";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"5d436678d5e010ac6b0f157aa1021554";a:15:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:27:"Increase reach and traffic.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"google, seo, firehose, search, broadcast, broadcasting";s:12:"plan_classes";s:0:"";}s:32:"2c9ff765b826940496a65c0f927a594a";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"092b94702bb483a5472578283c2103d6";a:15:{s:4:"name";s:16:"Google Analytics";s:11:"description";s:56:"Set up Google Analytics without touching a line of code.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"37";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"4.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:37:"webmaster, google, analytics, console";s:12:"plan_classes";s:17:"business, premium";}s:32:"6bd77e09440df2b63044cf8cb7963773";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"ee1a10e2ef5733ab19eb1eb552d5ecb3";a:15:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:20:"gravatar, hovercards";s:12:"plan_classes";s:0:"";}s:32:"284c08538b0bdc266315b2cf80b9c044";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"0ce5c3ac630dea9f41215e48bb0f52f3";a:15:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:53:"Automatically load new content when a visitor scrolls";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:33:"scroll, infinite, infinite scroll";s:12:"plan_classes";s:0:"";}s:32:"87da2858d4f9cadb6a44fdcf32e8d2b5";a:15:{s:4:"name";s:8:"JSON API";s:11:"description";s:51:"Allow applications to securely access your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:50:"api, rest, develop, developers, json, klout, oauth";s:12:"plan_classes";s:0:"";}s:32:"004962cb7cb9ec2b64769ac4df509217";a:15:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:57:"Use LaTeX markup for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:47:"latex, math, equation, equations, formula, code";s:12:"plan_classes";s:0:"";}s:32:"7f408184bee8850d439c01322867e72c";a:15:{s:4:"name";s:11:"Lazy Images";s:11:"description";s:16:"Lazy load images";s:14:"jumpstart_desc";s:164:"Lazy-loading images improve your site''s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:23:"Appearance, Recommended";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:33:"mobile, theme, performance, image";s:12:"plan_classes";s:0:"";}s:32:"2ad914b747f382ae918ed3b37077d4a1";a:15:{s:4:"name";s:5:"Likes";s:11:"description";s:63:"Give visitors an easy way to show they appreciate your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:26:"like, likes, wordpress.com";s:12:"plan_classes";s:0:"";}s:32:"b347263e3470979442ebf0514e41e893";a:15:{s:4:"name";s:6:"Manage";s:11:"description";s:54:"Manage all of your sites from a centralized dashboard.";s:14:"jumpstart_desc";s:151:"Helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:26:"manage, management, remote";s:12:"plan_classes";s:0:"";}s:32:"589982245aa6f495b72ab7cf57a1a48e";a:15:{s:4:"name";s:8:"Markdown";s:11:"description";s:50:"Write posts or pages in plain-text Markdown syntax";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:12:"md, markdown";s:12:"plan_classes";s:0:"";}s:32:"d3bec8e063d637bc285018241b783725";a:15:{s:4:"name";s:21:"WordPress.com Toolbar";s:11:"description";s:91:"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"16";s:10:"introduced";s:3:"4.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"General";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:19:"adminbar, masterbar";s:12:"plan_classes";s:0:"";}s:32:"6ab1c3e749bcfba2dedbaebe6c9fc614";a:15:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:31:"Enable the Jetpack Mobile theme";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:24:"mobile, theme, minileven";s:12:"plan_classes";s:0:"";}s:32:"b7be7da643ec641511839ecc6afb6def";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"d54f83ff429a8a37ace796de98459411";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"0f8b373fa12c825162c0b0bc20b8bbdd";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"5d7b0750cb34a4a72a44fa67790de639";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"f07fde8db279ffb0116c727df72c6374";a:15:{s:4:"name";s:7:"Monitor";s:11:"description";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:14:"jumpstart_desc";s:61:"Receive immediate notifications if your site goes down, 24/7.";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:37:"monitor, uptime, downtime, monitoring";s:12:"plan_classes";s:0:"";}s:32:"136a5445a49150db75472862f3d3aefb";a:15:{s:4:"name";s:13:"Notifications";s:11:"description";s:57:"Receive instant notifications of site comments and likes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:7:"General";s:25:"additional_search_queries";s:62:"notification, notifications, toolbar, adminbar, push, comments";s:12:"plan_classes";s:0:"";}s:32:"395d8ae651afabb54d1e98440674b384";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"4484ac68583fbbaab0ef698cdc986950";a:15:{s:4:"name";s:6:"Photon";s:11:"description";s:29:"Serve images from our servers";s:14:"jumpstart_desc";s:141:"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:34:"Recommended, Jumpstart, Appearance";s:25:"additional_search_queries";s:38:"photon, image, cdn, performance, speed";s:12:"plan_classes";s:0:"";}s:32:"6f30193afa5b1360e3fa2676501b5e3a";a:15:{s:4:"name";s:13:"Post by email";s:11:"description";s:33:"Publish posts by sending an email";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:20:"post by email, email";s:12:"plan_classes";s:0:"";}s:32:"3e9f8bd3755d92e8e5d06966a957beb8";a:15:{s:4:"name";s:7:"Protect";s:11:"description";s:41:"Block suspicious-looking sign in activity";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:8:"Security";s:25:"additional_search_queries";s:65:"security, secure, protection, botnet, brute force, protect, login";s:12:"plan_classes";s:0:"";}s:32:"0cacc8ab2145ad11cb54d181a98aa550";a:15:{s:4:"name";s:9:"Publicize";s:11:"description";s:27:"Automated social marketing.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:107:"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing";s:12:"plan_classes";s:0:"";}s:32:"a528c2f803a92c5c2effa67cd33ab33a";a:15:{s:4:"name";s:20:"Progressive Web Apps";s:11:"description";s:85:"Speed up and improve the reliability of your site using the latest in web technology.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"38";s:20:"recommendation_order";s:2:"18";s:10:"introduced";s:5:"5.6.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:26:"manifest, pwa, progressive";s:12:"plan_classes";s:0:"";}s:32:"329b8efce059081d46936ece0c6736b3";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"5fdd42d482712fbdaf000b28ea7adce9";a:15:{s:4:"name";s:13:"Related posts";s:11:"description";s:64:"Increase page views by showing related content to your visitors.";s:14:"jumpstart_desc";s:113:"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:22:"related, related posts";s:12:"plan_classes";s:0:"";}s:32:"2c5096ef610018e98a8bcccfbea4471e";a:15:{s:4:"name";s:6:"Search";s:11:"description";s:41:"Enhanced search, powered by Elasticsearch";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:0:"";s:7:"feature";s:6:"Search";s:25:"additional_search_queries";s:6:"search";s:12:"plan_classes";s:8:"business";}s:32:"0d81dd7df3ad2f245e84fd4fb66bf829";a:15:{s:4:"name";s:9:"SEO Tools";s:11:"description";s:50:"Better results on search engines and social media.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"35";s:20:"recommendation_order";s:2:"15";s:10:"introduced";s:3:"4.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:7:"Traffic";s:25:"additional_search_queries";s:81:"search engine optimization, social preview, meta description, custom title format";s:12:"plan_classes";s:17:"business, premium";}s:32:"32aaa676b3b6c9f3ef22430e1e0bca24";a:15:{s:4:"name";s:7:"Sharing";s:11:"description";s:37:"Allow visitors to share your content.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:141:"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr";s:12:"plan_classes";s:0:"";}s:32:"948472b453cda59b38bb7c37af889af0";a:15:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:50:"Embed media from popular sites without any coding.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:236:"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube";s:12:"plan_classes";s:0:"";}s:32:"7d00a6ca0a79fbe893275aaf6ed6ae42";a:15:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:54:"Create short and simple links for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:17:"shortlinks, wp.me";s:12:"plan_classes";s:0:"";}s:32:"372e711395f23c466e04d4fd07f73099";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"2ea687cec293289a2a3e5f0459e79768";a:15:{s:4:"name";s:8:"Sitemaps";s:11:"description";s:50:"Make it easy for search engines to find your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:20:"Recommended, Traffic";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:39:"sitemap, traffic, search, site map, seo";s:12:"plan_classes";s:0:"";}s:32:"2fe9dc2c7389d4f0825a0b23bc8b19d1";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"e7cf8a7e0f151ccf7cbdc6d8f118f316";a:15:{s:4:"name";s:14:"Single Sign On";s:11:"description";s:62:"Allow users to log into this site using WordPress.com accounts";s:14:"jumpstart_desc";s:98:"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:19:"Security, Jumpstart";s:25:"additional_search_queries";s:34:"sso, single sign on, login, log in";s:12:"plan_classes";s:0:"";}s:32:"34fb073ed896af853ed48bd5739240cb";a:15:{s:4:"name";s:10:"Site Stats";s:11:"description";s:44:"Collect valuable traffic stats and insights.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:23:"Site Stats, Recommended";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:54:"statistics, tracking, analytics, views, traffic, stats";s:12:"plan_classes";s:0:"";}s:32:"8de0dfff24a17cf0fa0011dfc691a3f3";a:15:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:87:"Allow users to subscribe to your posts and comments and receive notifications via email";s:14:"jumpstart_desc";s:126:"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:21:"Engagement, Jumpstart";s:25:"additional_search_queries";s:74:"subscriptions, subscription, email, follow, followers, subscribers, signup";s:12:"plan_classes";s:0:"";}s:32:"4744f348db095538d3edcacb0ed99c89";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"d89db0d934b39f86065ff58e73594070";a:15:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:61:"Display image galleries in a variety of elegant arrangements.";s:14:"jumpstart_desc";s:61:"Display image galleries in a variety of elegant arrangements.";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:21:"Appearance, Jumpstart";s:25:"additional_search_queries";s:43:"gallery, tiles, tiled, grid, mosaic, images";s:12:"plan_classes";s:0:"";}s:32:"01987a7ba5e19786f2992501add8181a";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}s:32:"20459cc462babfc5a82adf6b34f6e8b1";a:15:{s:4:"name";s:12:"Data Backups";s:11:"description";s:54:"Off-site backups, security scans, and automatic fixes.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:16:"Security, Health";s:25:"additional_search_queries";s:28:"vaultpress, backup, security";s:12:"plan_classes";s:0:"";}s:32:"836245eb0a8f0c5272542305a88940c1";a:15:{s:4:"name";s:17:"Site verification";s:11:"description";s:58:"Establish your site''s authenticity with external services.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:10:"Engagement";s:25:"additional_search_queries";s:56:"webmaster, seo, google, bing, pinterest, search, console";s:12:"plan_classes";s:0:"";}s:32:"e94397a5c47c1be995eff613e65a674f";a:15:{s:4:"name";s:10:"VideoPress";s:11:"description";s:27:"Fast, ad-free video hosting";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:7:"Writing";s:25:"additional_search_queries";s:25:"video, videos, videopress";s:12:"plan_classes";s:17:"business, premium";}s:32:"032cd76e08467c732ccb026efda0c9cd";a:15:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:42:"Control where widgets appear on your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:54:"widget visibility, logic, conditional, widgets, widget";s:12:"plan_classes";s:0:"";}s:32:"9b3e84beedf2e96f1ac5dd6498d2b1aa";a:15:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:54:"Add images, Twitter streams, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:10:"Appearance";s:25:"additional_search_queries";s:65:"widget, widgets, facebook, gallery, twitter, gravatar, image, rss";s:12:"plan_classes";s:0:"";}s:32:"7724fd9600745cf93e37cc09282e1a37";a:15:{s:4:"name";s:3:"Ads";s:11:"description";s:60:"Earn income by allowing Jetpack to display high quality ads.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"4.5.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:19:"Traffic, Appearance";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:26:"advertising, ad codes, ads";s:12:"plan_classes";s:17:"premium, business";}s:32:"5b8f8e5b5a1887e3c0393cb78d5143a3";a:15:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";s:25:"additional_search_queries";s:0:"";s:12:"plan_classes";s:0:"";}}', 'no'),
(323, 'jetpack_available_modules', 'a:1:{s:3:"6.5";a:43:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:13:"comment-likes";s:3:"5.1";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:16:"google-analytics";s:3:"4.5";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:11:"lazy-images";s:5:"5.6.0";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"masterbar";s:3:"4.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:3:"pwa";s:5:"5.6.0";s:13:"related-posts";s:3:"2.9";s:6:"search";s:3:"5.0";s:9:"seo-tools";s:3:"4.4";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:8:"sitemaps";s:3:"3.9";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";s:7:"wordads";s:5:"4.5.0";}}', 'yes'),
(324, 'jetpack_options', 'a:4:{s:7:"version";s:14:"6.5:1536565591";s:11:"old_version";s:14:"6.5:1536565591";s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:1;}', 'yes'),
(325, 'wc_ppec_version', '1.6.3', 'yes'),
(327, 'jetpack_testimonial', '0', 'yes'),
(333, 'do_activate', '0', 'yes'),
(336, '_transient_timeout_jetpack_https_test_message', '1536824832', 'no'),
(337, '_transient_jetpack_https_test_message', '', 'no'),
(338, '_transient_shipping-transient-version', '1536565941', 'yes'),
(341, '_transient_product_query-transient-version', '1536745324', 'yes'),
(345, '_transient_timeout_wc_shipping_method_count_0_1536565941', '1539158090', 'no'),
(346, '_transient_wc_shipping_method_count_0_1536565941', '0', 'no'),
(348, '_transient_product-transient-version', '1536745324', 'yes'),
(393, '_transient_timeout_wc_shipping_method_count_1_1536565941', '1539164800', 'no'),
(394, '_transient_wc_shipping_method_count_1_1536565941', '0', 'no'),
(397, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:1:{i:0;i:21;}}', 'yes'),
(398, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(421, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.4";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1536574505;s:7:"version";s:5:"5.0.4";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(425, 'category_children', 'a:0:{}', 'yes'),
(430, '_transient_timeout_wc_report_sales_by_date', '1536766236', 'no'),
(431, '_transient_wc_report_sales_by_date', 'a:48:{s:32:"43d9ff5283b949ad68f4f1d33872440f";a:0:{}s:32:"aad818811dd6fadb698667e9e9bb8882";a:0:{}s:32:"95e620c1623bcc65b2797e11d4718a22";a:0:{}s:32:"13c1f475cc96ebb37290db0154960caf";N;s:32:"38e78e5e96da2f3582d9e9bb6dd8b8b1";a:0:{}s:32:"0ac1acab34c2050c4455976bba734cf7";a:0:{}s:32:"4cba421baa78bd53089f005f4b001ede";a:0:{}s:32:"b13df5a30dcd7f949fb868334a41af93";a:0:{}s:32:"b36889c63f9661f6272f788595fa050a";a:0:{}s:32:"a62795d794cd8b995de73818b1bbcd16";a:0:{}s:32:"bca31beb2aead8b81e697774c01b6aed";a:0:{}s:32:"72c394d367ec8c55885c5be84db1f8b7";N;s:32:"b391bf5a0d24e7da8eb478c27490db1c";a:0:{}s:32:"091cc03b3e131cfadefdaf3c5f03b265";a:0:{}s:32:"8dbab4c170a758f3def25325ee293530";a:0:{}s:32:"ec14c7f30eb7ef66c81253fd14cbda18";a:0:{}s:32:"9b98c8cbb8b06b4c712cd1ef7508027e";a:0:{}s:32:"d288a434e18dc3174ee4981a70333046";a:0:{}s:32:"478338818e14df9e5d15a0d3e76633f9";a:0:{}s:32:"da2a65383ccb89ff500ac4854bfd8900";N;s:32:"01aa02edb7494848cc0ab81f13026908";a:0:{}s:32:"511cb71ae76ce124111f3c00a95c3755";a:0:{}s:32:"d82e2657a20a90ff482aa26a77e1f684";a:0:{}s:32:"8ac6694740351fbd9f10ff9ca8a5a0b8";a:0:{}s:32:"b2b6291b919e26dc5c821053a02807a6";a:0:{}s:32:"45c944de53d7b44a20fa372dfd7469c5";a:0:{}s:32:"f5af8a0c6dfdd571efad6b8fa0fae2f6";a:0:{}s:32:"a4b9fca58faaf2e0c38a56a6a169e43f";N;s:32:"0431cc99c50374c615713a4a74dd633a";a:0:{}s:32:"e6e3b89f7d94bbf475de73d72192763b";a:0:{}s:32:"7cc25f604e780f119c1cd14febe790ed";a:0:{}s:32:"7d9229f619606a97e5837e4e9343d825";a:0:{}s:32:"b2d233eda7d378fda56e69e411889cc4";a:0:{}s:32:"ac853e94739a47228d4f491d3a52dc88";a:0:{}s:32:"b9e02d485cfe84f17e50f39de768b1e0";a:0:{}s:32:"9c7699499781144da2c6f0890170b2fe";N;s:32:"f682aa9f6e5ab9be03a578dcc9602910";a:0:{}s:32:"8a87469bc0cbb8569e9f955b8b5eedec";a:0:{}s:32:"3cd20fdc7547b307c9381ef65a1477ab";a:0:{}s:32:"cb2a0a8c01cdff8469cf53cd2b4688f6";a:0:{}s:32:"66f6631f0f31d1e7e9e89c9a8cffe301";a:0:{}s:32:"023fcb48330b756b056d9cec9f759ce2";a:0:{}s:32:"81cf0f645c165e39aa39465b931528ee";a:0:{}s:32:"b9bd7bf8dafa0468135f9ce32abd45bf";N;s:32:"2ac6a3dc16b05849330a487ee77c8124";a:0:{}s:32:"25862d2031c1964db8bcf9155c052c70";a:0:{}s:32:"1cd74e3c1fe057dc97b0dbd07b2dc239";a:0:{}s:32:"98452bf2b651e1fd31bb3fbf9b351b82";a:0:{}}', 'no'),
(457, '_transient_timeout_wc_related_24', '1536736479', 'no'),
(458, '_transient_wc_related_24', 'a:1:{s:50:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=24";a:0:{}}', 'no'),
(481, 'woocommerce_catalog_columns', '3', 'yes'),
(482, 'woocommerce_catalog_rows', '4', 'yes'),
(496, '_transient_timeout_woocommerce_system_status_wp_version_check', '1536738318', 'no'),
(497, '_transient_woocommerce_system_status_wp_version_check', '4.9.8', 'no'),
(505, '_transient_timeout_wc_related_17', '1536740724', 'no'),
(506, '_transient_wc_related_17', 'a:1:{s:50:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=17";a:4:{i:0;s:2:"10";i:1;s:2:"12";i:2;s:2:"15";i:3;s:2:"19";}}', 'no'),
(544, 'product_cat_children', 'a:0:{}', 'yes'),
(564, '_transient_timeout__woocommerce_helper_updates', '1536764481', 'no'),
(565, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1536721281;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(577, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1536737768;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-11 09:51:37";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip";s:10:"autoupdate";b:1;}}}', 'no'),
(578, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1536737771;s:7:"checked";a:4:{s:10:"luckymoney";s:3:"1.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(582, 'theme_mods_twentysixteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1536726503;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:7:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:13:"custom_html-2";}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(612, '_transient_timeout_wc_related_12', '1536825657', 'no'),
(613, '_transient_wc_related_12', 'a:1:{s:50:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=12";a:3:{i:0;s:2:"10";i:1;s:2:"15";i:2;s:2:"17";}}', 'no'),
(620, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1536748534', 'no');
INSERT INTO `wpl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(621, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4504;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2983;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2585;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2450;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1883;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1680;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1673;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1459;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1404;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1401;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1397;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1334;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1283;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1241;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1113;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1072;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1041;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1038;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:921;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:893;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:834;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:813;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:807;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:734;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:704;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:696;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:689;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:688;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:678;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:667;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:658;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:658;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:647;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:644;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:619;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:616;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:614;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:606;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:600;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:598;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:576;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:553;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:546;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:542;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:532;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:526;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:516;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:516;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:515;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:510;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:501;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:496;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:493;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:487;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:481;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:480;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:460;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:458;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:454;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:446;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:442;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:437;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:422;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:421;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:418;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:417;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:417;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:414;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:409;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:389;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:388;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:374;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:374;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:371;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:366;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:364;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:361;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:360;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:354;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:348;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:347;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:347;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:345;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:339;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:338;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:334;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:329;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:328;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:312;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:309;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:309;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:306;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:304;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:303;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:302;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:301;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:300;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:298;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:294;}}', 'no'),
(624, '_site_transient_timeout_theme_roots', '1536739568', 'no'),
(625, '_site_transient_theme_roots', 'a:4:{s:10:"luckymoney";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(627, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1536737841;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"4.0.8";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.4";s:9:"hello.php";s:3:"1.7";s:19:"jetpack/jetpack.php";s:3:"6.5";s:27:"woocommerce/woocommerce.php";s:5:"3.4.5";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:5:"1.6.3";s:47:"woocommerce-quick-buy/woocommerce-quick-buy.php";s:3:"1.9";s:45:"woocommerce-services/woocommerce-services.php";s:6:"1.16.0";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:14:"contact-form-7";s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-11 08:09:52";s:7:"package";s:78:"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.2/vi.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:8:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.4";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:19:"jetpack/jetpack.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/jetpack";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:3:"6.5";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/jetpack.6.5.zip";s:5:"icons";a:3:{s:2:"2x";s:60:"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404";s:2:"1x";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";s:3:"svg";s:52:"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404";}s:7:"banners";a:2:{s:2:"2x";s:63:"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404";s:2:"1x";s:62:"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.4.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";O:8:"stdClass":9:{s:2:"id";s:57:"w.org/plugins/woocommerce-gateway-paypal-express-checkout";s:4:"slug";s:43:"woocommerce-gateway-paypal-express-checkout";s:6:"plugin";s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";s:11:"new_version";s:5:"1.6.3";s:3:"url";s:74:"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/";s:7:"package";s:92:"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.3.zip";s:5:"icons";a:2:{s:2:"2x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204";s:2:"1x";s:96:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204";}s:7:"banners";a:2:{s:2:"2x";s:99:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204";s:2:"1x";s:98:"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204";}s:11:"banners_rtl";a:0:{}}s:47:"woocommerce-quick-buy/woocommerce-quick-buy.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/woocommerce-quick-buy";s:4:"slug";s:21:"woocommerce-quick-buy";s:6:"plugin";s:47:"woocommerce-quick-buy/woocommerce-quick-buy.php";s:11:"new_version";s:3:"1.9";s:3:"url";s:52:"https://wordpress.org/plugins/woocommerce-quick-buy/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/woocommerce-quick-buy.1.9.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/woocommerce-quick-buy/assets/icon-256x256.jpg?rev=1325531";s:2:"1x";s:74:"https://ps.w.org/woocommerce-quick-buy/assets/icon-128x128.jpg?rev=1325531";}s:7:"banners";a:1:{s:2:"1x";s:76:"https://ps.w.org/woocommerce-quick-buy/assets/banner-772x250.jpg?rev=1037952";}s:11:"banners_rtl";a:0:{}}s:45:"woocommerce-services/woocommerce-services.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/woocommerce-services";s:4:"slug";s:20:"woocommerce-services";s:6:"plugin";s:45:"woocommerce-services/woocommerce-services.php";s:11:"new_version";s:6:"1.16.0";s:3:"url";s:51:"https://wordpress.org/plugins/woocommerce-services/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-services.1.16.0.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-256x256.png?rev=1910075";s:2:"1x";s:73:"https://ps.w.org/woocommerce-services/assets/icon-128x128.png?rev=1910075";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/woocommerce-services/assets/banner-1544x500.png?rev=1910075";s:2:"1x";s:75:"https://ps.w.org/woocommerce-services/assets/banner-772x250.png?rev=1910075";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(628, '_transient_timeout_plugin_slugs', '1536824334', 'no'),
(629, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:19:"jetpack/jetpack.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:91:"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php";i:6;s:47:"woocommerce-quick-buy/woocommerce-quick-buy.php";i:7;s:45:"woocommerce-services/woocommerce-services.php";}', 'no'),
(635, '_transient_timeout_jetpack_https_test', '1536824832', 'no'),
(636, '_transient_jetpack_https_test', '1', 'no'),
(651, '_transient_timeout_wc_related_10', '1536833067', 'no'),
(652, '_transient_wc_related_10', 'a:2:{s:50:"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=10";a:3:{i:0;s:2:"12";i:1;s:2:"15";i:2;s:2:"17";}s:50:"limit=6&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=10";a:5:{i:0;s:2:"12";i:1;s:2:"15";i:2;s:2:"17";i:3;s:2:"48";i:4;s:2:"49";}}', 'no'),
(656, '_transient_timeout_jetpack_idc_allowed', '1536748164', 'no'),
(657, '_transient_jetpack_idc_allowed', '1', 'no'),
(665, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(666, '_transient_timeout_wc_term_counts', '1539337332', 'no'),
(667, '_transient_wc_term_counts', 'a:4:{i:16;s:1:"6";i:18;s:1:"1";i:19;s:1:"1";i:17;s:1:"5";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpl_postmeta`
--

CREATE TABLE `wpl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_postmeta`
--

INSERT INTO `wpl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_wc_review_count', '0'),
(4, 9, '_wc_rating_count', 'a:0:{}'),
(5, 9, '_wc_average_rating', '0'),
(6, 10, '_wc_review_count', '0'),
(7, 10, '_wc_rating_count', 'a:0:{}'),
(8, 10, '_wc_average_rating', '0'),
(9, 10, '_edit_last', '1'),
(10, 10, '_edit_lock', '1536744951:1'),
(11, 11, '_wp_attached_file', '2018/09/YearDOG_Folio_1bill.jpeg'),
(12, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4096;s:6:"height";i:2457;s:4:"file";s:32:"2018/09/YearDOG_Folio_1bill.jpeg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-300x180.jpeg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-768x461.jpeg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"YearDOG_Folio_1bill-1024x614.jpeg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:32:"YearDOG_Folio_1bill-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:32:"YearDOG_Folio_1bill-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:32:"YearDOG_Folio_1bill-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 10, '_thumbnail_id', '11'),
(14, 10, '_sku', ''),
(15, 10, '_regular_price', '300000'),
(16, 10, '_sale_price', ''),
(17, 10, '_sale_price_dates_from', ''),
(18, 10, '_sale_price_dates_to', ''),
(19, 10, 'total_sales', '0'),
(20, 10, '_tax_status', 'taxable'),
(21, 10, '_tax_class', ''),
(22, 10, '_manage_stock', 'no'),
(23, 10, '_backorders', 'no'),
(24, 10, '_sold_individually', 'no'),
(25, 10, '_weight', ''),
(26, 10, '_length', ''),
(27, 10, '_width', ''),
(28, 10, '_height', ''),
(29, 10, '_upsell_ids', 'a:0:{}'),
(30, 10, '_crosssell_ids', 'a:0:{}'),
(31, 10, '_purchase_note', ''),
(32, 10, '_default_attributes', 'a:0:{}'),
(33, 10, '_virtual', 'no'),
(34, 10, '_downloadable', 'no'),
(35, 10, '_product_image_gallery', '25,22,13,11,20'),
(36, 10, '_download_limit', '-1'),
(37, 10, '_download_expiry', '-1'),
(38, 10, '_stock', NULL),
(39, 10, '_stock_status', 'instock'),
(40, 10, '_product_version', '3.4.5'),
(41, 10, '_price', '300000'),
(42, 12, '_wc_review_count', '0'),
(43, 12, '_wc_rating_count', 'a:0:{}'),
(44, 12, '_wc_average_rating', '0'),
(45, 12, '_edit_last', '1'),
(46, 12, '_edit_lock', '1536566883:1'),
(47, 13, '_wp_attached_file', '2018/09/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88.jpeg'),
(48, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4611;s:6:"height";i:2766;s:4:"file";s:63:"2018/09/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88.jpeg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-300x180.jpeg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-768x461.jpeg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:64:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-1024x614.jpeg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:63:"Year_of_dog_10_Gold_Hologram_serial_number_1_of_88-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 12, '_thumbnail_id', '13'),
(50, 12, '_sku', ''),
(51, 12, '_regular_price', '400000'),
(52, 12, '_sale_price', ''),
(53, 12, '_sale_price_dates_from', ''),
(54, 12, '_sale_price_dates_to', ''),
(55, 12, 'total_sales', '0'),
(56, 12, '_tax_status', 'taxable'),
(57, 12, '_tax_class', ''),
(58, 12, '_manage_stock', 'no'),
(59, 12, '_backorders', 'no'),
(60, 12, '_sold_individually', 'no'),
(61, 12, '_weight', ''),
(62, 12, '_length', ''),
(63, 12, '_width', ''),
(64, 12, '_height', ''),
(65, 12, '_upsell_ids', 'a:0:{}'),
(66, 12, '_crosssell_ids', 'a:0:{}'),
(67, 12, '_purchase_note', ''),
(68, 12, '_default_attributes', 'a:0:{}'),
(69, 12, '_virtual', 'no'),
(70, 12, '_downloadable', 'no'),
(71, 12, '_product_image_gallery', ''),
(72, 12, '_download_limit', '-1'),
(73, 12, '_download_expiry', '-1'),
(74, 12, '_stock', NULL),
(75, 12, '_stock_status', 'instock'),
(76, 12, '_product_version', '3.4.5'),
(77, 12, '_price', '400000'),
(78, 14, '_wc_review_count', '0'),
(79, 14, '_wc_rating_count', 'a:0:{}'),
(80, 14, '_wc_average_rating', '0'),
(81, 15, '_wc_review_count', '0'),
(82, 15, '_wc_rating_count', 'a:0:{}'),
(83, 15, '_wc_average_rating', '0'),
(84, 15, '_edit_last', '1'),
(85, 15, '_edit_lock', '1536567125:1'),
(86, 16, '_wp_attached_file', '2018/09/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11.jpeg'),
(87, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2917;s:6:"height";i:1750;s:4:"file";s:74:"2018/09/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11.jpeg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-300x180.jpeg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-768x461.jpeg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:75:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-1024x614.jpeg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:74:"CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 15, '_thumbnail_id', '16'),
(89, 15, '_sku', ''),
(90, 15, '_regular_price', '200000'),
(91, 15, '_sale_price', ''),
(92, 15, '_sale_price_dates_from', ''),
(93, 15, '_sale_price_dates_to', ''),
(94, 15, 'total_sales', '0'),
(95, 15, '_tax_status', 'taxable'),
(96, 15, '_tax_class', ''),
(97, 15, '_manage_stock', 'no'),
(98, 15, '_backorders', 'no'),
(99, 15, '_sold_individually', 'no'),
(100, 15, '_weight', ''),
(101, 15, '_length', ''),
(102, 15, '_width', ''),
(103, 15, '_height', ''),
(104, 15, '_upsell_ids', 'a:0:{}'),
(105, 15, '_crosssell_ids', 'a:0:{}'),
(106, 15, '_purchase_note', ''),
(107, 15, '_default_attributes', 'a:0:{}'),
(108, 15, '_virtual', 'no'),
(109, 15, '_downloadable', 'no'),
(110, 15, '_product_image_gallery', ''),
(111, 15, '_download_limit', '-1'),
(112, 15, '_download_expiry', '-1'),
(113, 15, '_stock', NULL),
(114, 15, '_stock_status', 'instock'),
(115, 15, '_product_version', '3.4.5'),
(116, 15, '_price', '200000'),
(117, 17, '_wc_review_count', '0'),
(118, 17, '_wc_rating_count', 'a:0:{}'),
(119, 17, '_wc_average_rating', '0'),
(120, 17, '_edit_last', '1'),
(121, 17, '_edit_lock', '1536567258:1'),
(122, 17, '_thumbnail_id', '11'),
(123, 17, '_sku', ''),
(124, 17, '_regular_price', '500000'),
(125, 17, '_sale_price', ''),
(126, 17, '_sale_price_dates_from', ''),
(127, 17, '_sale_price_dates_to', ''),
(128, 17, 'total_sales', '0'),
(129, 17, '_tax_status', 'taxable'),
(130, 17, '_tax_class', ''),
(131, 17, '_manage_stock', 'no'),
(132, 17, '_backorders', 'no'),
(133, 17, '_sold_individually', 'no'),
(134, 17, '_weight', ''),
(135, 17, '_length', ''),
(136, 17, '_width', ''),
(137, 17, '_height', ''),
(138, 17, '_upsell_ids', 'a:0:{}'),
(139, 17, '_crosssell_ids', 'a:0:{}'),
(140, 17, '_purchase_note', ''),
(141, 17, '_default_attributes', 'a:0:{}'),
(142, 17, '_virtual', 'no'),
(143, 17, '_downloadable', 'no'),
(144, 17, '_product_image_gallery', ''),
(145, 17, '_download_limit', '-1'),
(146, 17, '_download_expiry', '-1'),
(147, 17, '_stock', NULL),
(148, 17, '_stock_status', 'instock'),
(149, 17, '_product_version', '3.4.5'),
(150, 17, '_price', '500000'),
(151, 18, '_wc_review_count', '0'),
(152, 18, '_wc_rating_count', 'a:0:{}'),
(153, 18, '_wc_average_rating', '0'),
(154, 18, '_edit_last', '1'),
(155, 18, '_edit_lock', '1536567467:1'),
(156, 19, '_wc_review_count', '0'),
(157, 19, '_wc_rating_count', 'a:0:{}'),
(158, 19, '_wc_average_rating', '0'),
(159, 19, '_edit_last', '1'),
(160, 19, '_edit_lock', '1536567613:1'),
(161, 20, '_wp_attached_file', '2018/09/DOG_CANADA_Box.jpeg'),
(162, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4611;s:6:"height";i:2766;s:4:"file";s:27:"2018/09/DOG_CANADA_Box.jpeg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"DOG_CANADA_Box-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-300x180.jpeg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-768x461.jpeg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"DOG_CANADA_Box-1024x614.jpeg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:27:"DOG_CANADA_Box-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-600x360.jpeg";s:5:"width";i:600;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:27:"DOG_CANADA_Box-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(163, 19, '_thumbnail_id', '20'),
(164, 19, '_sku', ''),
(165, 19, '_regular_price', '700000'),
(166, 19, '_sale_price', ''),
(167, 19, '_sale_price_dates_from', ''),
(168, 19, '_sale_price_dates_to', ''),
(169, 19, 'total_sales', '0'),
(170, 19, '_tax_status', 'taxable'),
(171, 19, '_tax_class', ''),
(172, 19, '_manage_stock', 'no'),
(173, 19, '_backorders', 'no'),
(174, 19, '_sold_individually', 'no'),
(175, 19, '_weight', ''),
(176, 19, '_length', ''),
(177, 19, '_width', ''),
(178, 19, '_height', ''),
(179, 19, '_upsell_ids', 'a:0:{}'),
(180, 19, '_crosssell_ids', 'a:0:{}'),
(181, 19, '_purchase_note', ''),
(182, 19, '_default_attributes', 'a:0:{}'),
(183, 19, '_virtual', 'no'),
(184, 19, '_downloadable', 'no'),
(185, 19, '_product_image_gallery', ''),
(186, 19, '_download_limit', '-1'),
(187, 19, '_download_expiry', '-1'),
(188, 19, '_stock', NULL),
(189, 19, '_stock_status', 'instock'),
(190, 19, '_product_version', '3.4.5'),
(191, 19, '_price', '700000'),
(192, 21, '_wc_review_count', '0'),
(193, 21, '_wc_rating_count', 'a:0:{}'),
(194, 21, '_wc_average_rating', '0'),
(195, 21, '_edit_last', '1'),
(196, 21, '_edit_lock', '1536567862:1'),
(197, 22, '_wp_attached_file', '2018/09/YearDOG_mockENV_1bill.jpeg'),
(198, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4096;s:6:"height";i:3218;s:4:"file";s:34:"2018/09/YearDOG_mockENV_1bill.jpeg";s:5:"sizes";a:10:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:34:"YearDOG_mockENV_1bill-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-600x471.jpeg";s:5:"width";i:600;s:6:"height";i:471;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-300x236.jpeg";s:5:"width";i:300;s:6:"height";i:236;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-768x603.jpeg";s:5:"width";i:768;s:6:"height";i:603;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"YearDOG_mockENV_1bill-1024x805.jpeg";s:5:"width";i:1024;s:6:"height";i:805;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:34:"YearDOG_mockENV_1bill-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:11:"shop_single";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-600x471.jpeg";s:5:"width";i:600;s:6:"height";i:471;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"YearDOG_mockENV_1bill-100x100.jpeg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(199, 21, '_thumbnail_id', '22'),
(200, 21, '_sku', ''),
(201, 21, '_regular_price', '100000'),
(202, 21, '_sale_price', ''),
(203, 21, '_sale_price_dates_from', ''),
(204, 21, '_sale_price_dates_to', ''),
(205, 21, 'total_sales', '0'),
(206, 21, '_tax_status', 'taxable'),
(207, 21, '_tax_class', ''),
(208, 21, '_manage_stock', 'no'),
(209, 21, '_backorders', 'no'),
(210, 21, '_sold_individually', 'no'),
(211, 21, '_weight', ''),
(212, 21, '_length', ''),
(213, 21, '_width', ''),
(214, 21, '_height', ''),
(215, 21, '_upsell_ids', 'a:0:{}'),
(216, 21, '_crosssell_ids', 'a:0:{}'),
(217, 21, '_purchase_note', ''),
(218, 21, '_default_attributes', 'a:0:{}'),
(219, 21, '_virtual', 'no'),
(220, 21, '_downloadable', 'no'),
(221, 21, '_product_image_gallery', ''),
(222, 21, '_download_limit', '-1'),
(223, 21, '_download_expiry', '-1'),
(224, 21, '_stock', NULL),
(225, 21, '_stock_status', 'instock'),
(226, 21, '_product_version', '3.4.5'),
(227, 21, '_price', '100000'),
(228, 23, '_edit_last', '1'),
(229, 23, '_edit_lock', '1536568076:1'),
(230, 24, '_wc_review_count', '0'),
(231, 24, '_wc_rating_count', 'a:0:{}'),
(232, 24, '_wc_average_rating', '0'),
(233, 24, '_edit_last', '1'),
(234, 24, '_edit_lock', '1536739021:1'),
(235, 25, '_wp_attached_file', '2018/09/ChinZodiacMOCK_Pig_grande.jpg'),
(236, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:599;s:6:"height";i:445;s:4:"file";s:37:"2018/09/ChinZodiacMOCK_Pig_grande.jpg";s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:18:"woocommerce_single";a:4:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-400x297.jpg";s:5:"width";i:400;s:6:"height";i:297;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-300x223.jpg";s:5:"width";i:300;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:5:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:1;}s:14:"shop_thumbnail";a:4:{s:4:"file";s:37:"ChinZodiacMOCK_Pig_grande-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(237, 24, '_thumbnail_id', '25'),
(238, 24, '_sku', ''),
(239, 24, '_regular_price', '300000'),
(240, 24, '_sale_price', ''),
(241, 24, '_sale_price_dates_from', ''),
(242, 24, '_sale_price_dates_to', ''),
(243, 24, 'total_sales', '0'),
(244, 24, '_tax_status', 'taxable'),
(245, 24, '_tax_class', ''),
(246, 24, '_manage_stock', 'no'),
(247, 24, '_backorders', 'no'),
(248, 24, '_sold_individually', 'no'),
(249, 24, '_weight', ''),
(250, 24, '_length', ''),
(251, 24, '_width', ''),
(252, 24, '_height', ''),
(253, 24, '_upsell_ids', 'a:0:{}'),
(254, 24, '_crosssell_ids', 'a:0:{}'),
(255, 24, '_purchase_note', ''),
(256, 24, '_default_attributes', 'a:0:{}'),
(257, 24, '_virtual', 'no'),
(258, 24, '_downloadable', 'no'),
(259, 24, '_product_image_gallery', ''),
(260, 24, '_download_limit', '-1'),
(261, 24, '_download_expiry', '-1'),
(262, 24, '_stock', NULL),
(263, 24, '_stock_status', 'instock'),
(264, 24, '_product_version', '3.4.5'),
(265, 24, '_price', '300000'),
(266, 26, '_edit_lock', '1536572890:1'),
(267, 27, '_menu_item_type', 'custom'),
(268, 27, '_menu_item_menu_item_parent', '0'),
(269, 27, '_menu_item_object_id', '27'),
(270, 27, '_menu_item_object', 'custom'),
(271, 27, '_menu_item_target', ''),
(272, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(273, 27, '_menu_item_xfn', ''),
(274, 27, '_menu_item_url', 'http://localhost/tienlixi'),
(275, 26, '_wp_trash_meta_status', 'publish'),
(276, 26, '_wp_trash_meta_time', '1536572914'),
(277, 28, '_edit_last', '1'),
(278, 28, '_edit_lock', '1536572852:1'),
(281, 31, '_menu_item_type', 'post_type'),
(282, 31, '_menu_item_menu_item_parent', '0'),
(283, 31, '_menu_item_object_id', '28'),
(284, 31, '_menu_item_object', 'post'),
(285, 31, '_menu_item_target', ''),
(286, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(287, 31, '_menu_item_xfn', ''),
(288, 31, '_menu_item_url', ''),
(289, 30, '_wp_trash_meta_status', 'publish'),
(290, 30, '_wp_trash_meta_time', '1536573033'),
(291, 32, '_wp_trash_meta_status', 'publish'),
(292, 32, '_wp_trash_meta_time', '1536573693'),
(293, 33, '_edit_lock', '1536574207:1'),
(294, 33, '_wp_trash_meta_status', 'publish'),
(295, 33, '_wp_trash_meta_time', '1536574208'),
(296, 34, '_edit_lock', '1536574324:1'),
(297, 35, '_menu_item_type', 'taxonomy'),
(298, 35, '_menu_item_menu_item_parent', '0'),
(299, 35, '_menu_item_object_id', '16'),
(300, 35, '_menu_item_object', 'product_cat'),
(301, 35, '_menu_item_target', ''),
(302, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(303, 35, '_menu_item_xfn', ''),
(304, 35, '_menu_item_url', ''),
(305, 36, '_menu_item_type', 'taxonomy'),
(306, 36, '_menu_item_menu_item_parent', '0'),
(307, 36, '_menu_item_object_id', '18'),
(308, 36, '_menu_item_object', 'product_cat'),
(309, 36, '_menu_item_target', ''),
(310, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(311, 36, '_menu_item_xfn', ''),
(312, 36, '_menu_item_url', ''),
(313, 37, '_menu_item_type', 'taxonomy'),
(314, 37, '_menu_item_menu_item_parent', '0'),
(315, 37, '_menu_item_object_id', '19'),
(316, 37, '_menu_item_object', 'product_cat'),
(317, 37, '_menu_item_target', ''),
(318, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(319, 37, '_menu_item_xfn', ''),
(320, 37, '_menu_item_url', ''),
(321, 34, '_wp_trash_meta_status', 'publish'),
(322, 34, '_wp_trash_meta_time', '1536574334'),
(323, 38, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(324, 38, '_mail', 'a:8:{s:7:"subject";s:36:"Tiền Lì Xì 2018 "[your-subject]"";s:6:"sender";s:39:"[your-name] <trancong.joomla@gmail.com>";s:4:"body";s:183:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Tiền Lì Xì 2018 (http://localhost/tienlixi)";s:9:"recipient";s:25:"trancong.joomla@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(325, 38, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:36:"Tiền Lì Xì 2018 "[your-subject]"";s:6:"sender";s:47:"Tiền Lì Xì 2018 <trancong.joomla@gmail.com>";s:4:"body";s:125:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Tiền Lì Xì 2018 (http://localhost/tienlixi)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:35:"Reply-To: trancong.joomla@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(326, 38, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(327, 38, '_additional_settings', NULL),
(328, 38, '_locale', 'en_US'),
(329, 39, '_edit_last', '1'),
(330, 39, '_edit_lock', '1536574448:1'),
(333, 42, '_menu_item_type', 'post_type'),
(334, 42, '_menu_item_menu_item_parent', '0'),
(335, 42, '_menu_item_object_id', '39'),
(336, 42, '_menu_item_object', 'post'),
(337, 42, '_menu_item_target', ''),
(338, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(339, 42, '_menu_item_xfn', ''),
(340, 42, '_menu_item_url', ''),
(341, 41, '_wp_trash_meta_status', 'publish'),
(342, 41, '_wp_trash_meta_time', '1536574617'),
(343, 43, '_wp_trash_meta_status', 'publish'),
(344, 43, '_wp_trash_meta_time', '1536648926'),
(345, 44, '_wp_trash_meta_status', 'publish'),
(346, 44, '_wp_trash_meta_time', '1536650625'),
(347, 45, '_wp_trash_meta_status', 'publish'),
(348, 45, '_wp_trash_meta_time', '1536652135'),
(349, 46, '_wp_trash_meta_status', 'publish'),
(350, 46, '_wp_trash_meta_time', '1536655581'),
(351, 47, '_wc_review_count', '0'),
(352, 47, '_wc_rating_count', 'a:0:{}'),
(353, 47, '_wc_average_rating', '0'),
(354, 18, '_wp_trash_meta_status', 'draft'),
(355, 18, '_wp_trash_meta_time', '1536739180'),
(356, 18, '_wp_desired_post_slug', ''),
(357, 48, '_sku', ''),
(358, 48, '_regular_price', '500000'),
(359, 48, '_sale_price', ''),
(360, 48, '_sale_price_dates_from', ''),
(361, 48, '_sale_price_dates_to', ''),
(362, 48, 'total_sales', '0'),
(363, 48, '_tax_status', 'taxable'),
(364, 48, '_tax_class', ''),
(365, 48, '_manage_stock', 'no'),
(366, 48, '_backorders', 'no'),
(367, 48, '_sold_individually', 'no'),
(368, 48, '_weight', ''),
(369, 48, '_length', ''),
(370, 48, '_width', ''),
(371, 48, '_height', ''),
(372, 48, '_upsell_ids', 'a:0:{}'),
(373, 48, '_crosssell_ids', 'a:0:{}'),
(374, 48, '_purchase_note', ''),
(375, 48, '_default_attributes', 'a:0:{}'),
(376, 48, '_virtual', 'no'),
(377, 48, '_downloadable', 'no'),
(378, 48, '_product_image_gallery', ''),
(379, 48, '_download_limit', '-1'),
(380, 48, '_download_expiry', '-1'),
(381, 48, '_thumbnail_id', '11'),
(382, 48, '_stock', NULL),
(383, 48, '_stock_status', 'instock'),
(384, 48, '_wc_average_rating', '0'),
(385, 48, '_wc_rating_count', 'a:0:{}'),
(386, 48, '_wc_review_count', '0'),
(387, 48, '_downloadable_files', 'a:0:{}'),
(388, 48, '_product_attributes', 'a:0:{}'),
(389, 48, '_product_version', '3.4.5'),
(390, 48, '_price', '500000'),
(391, 48, '_edit_lock', '1536745158:1'),
(392, 48, '_edit_last', '1'),
(393, 49, '_sku', ''),
(394, 49, '_regular_price', '500000'),
(395, 49, '_sale_price', ''),
(396, 49, '_sale_price_dates_from', ''),
(397, 49, '_sale_price_dates_to', ''),
(398, 49, 'total_sales', '0'),
(399, 49, '_tax_status', 'taxable'),
(400, 49, '_tax_class', ''),
(401, 49, '_manage_stock', 'no'),
(402, 49, '_backorders', 'no'),
(403, 49, '_sold_individually', 'no'),
(404, 49, '_weight', ''),
(405, 49, '_length', ''),
(406, 49, '_width', ''),
(407, 49, '_height', ''),
(408, 49, '_upsell_ids', 'a:0:{}'),
(409, 49, '_crosssell_ids', 'a:0:{}'),
(410, 49, '_purchase_note', ''),
(411, 49, '_default_attributes', 'a:0:{}'),
(412, 49, '_virtual', 'no'),
(413, 49, '_downloadable', 'no'),
(414, 49, '_product_image_gallery', ''),
(415, 49, '_download_limit', '-1'),
(416, 49, '_download_expiry', '-1'),
(417, 49, '_thumbnail_id', '11'),
(418, 49, '_stock', NULL),
(419, 49, '_stock_status', 'instock'),
(420, 49, '_wc_average_rating', '0'),
(421, 49, '_wc_rating_count', 'a:0:{}'),
(422, 49, '_wc_review_count', '0'),
(423, 49, '_downloadable_files', 'a:0:{}'),
(424, 49, '_product_attributes', 'a:0:{}'),
(425, 49, '_product_version', '3.4.5'),
(426, 49, '_price', '500000'),
(427, 49, '_edit_lock', '1536746306:1'),
(428, 49, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wpl_posts`
--

CREATE TABLE `wpl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_posts`
--

INSERT INTO `wpl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-10 04:25:19', '2018-09-10 04:25:19', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2018-09-10 04:25:19', '2018-09-10 04:25:19', '', 0, 'http://localhost/tienlixi/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-10 04:25:19', '2018-09-10 04:25:19', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://localhost/tienlixi/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-09-10 04:25:19', '2018-09-10 04:25:19', '', 0, 'http://localhost/tienlixi/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-10 04:25:19', '2018-09-10 04:25:19', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://localhost/tienlixi.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2018-09-10 04:25:19', '2018-09-10 04:25:19', '', 0, 'http://localhost/tienlixi/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-10 04:25:36', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-10 04:25:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/tienlixi/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-10 07:44:12', '2018-09-10 07:44:12', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-09-10 07:44:12', '2018-09-10 07:44:12', '', 0, 'http://localhost/tienlixi/shop/', 0, 'page', '', 0),
(6, 1, '2018-09-10 07:44:12', '2018-09-10 07:44:12', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-09-10 07:44:12', '2018-09-10 07:44:12', '', 0, 'http://localhost/tienlixi/cart/', 0, 'page', '', 0),
(7, 1, '2018-09-10 07:44:12', '2018-09-10 07:44:12', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-09-10 07:44:12', '2018-09-10 07:44:12', '', 0, 'http://localhost/tienlixi/checkout/', 0, 'page', '', 0),
(8, 1, '2018-09-10 07:44:12', '2018-09-10 07:44:12', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-09-10 07:44:12', '2018-09-10 07:44:12', '', 0, 'http://localhost/tienlixi/my-account/', 0, 'page', '', 0),
(9, 1, '2018-09-10 07:52:20', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-10 07:52:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/tienlixi/?post_type=product&p=9', 0, 'product', '', 0),
(10, 1, '2018-09-10 08:04:20', '2018-09-10 08:04:20', '<strong>2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $2 BILL – $2 Lucky Money with Blue Folio</strong>\r\n\r\nThis product uses <strong>Exclusive Security Imaging</strong> in an alternating pattern, using a <strong><em>C-Thru Vision</em> Hologram</strong> embedded in multiple locations, giving the 2018 Year of the Dog Currency its Official Genuine Distinction.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $2 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Blue Folio</strong></li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li style="text-align: center;">We Ship Internationally.</li>\r\n</ul>', '2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL with Blue Folio', '', 'publish', 'closed', 'closed', '', '2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-blue-folio', '', '', '2018-09-12 08:33:58', '2018-09-12 08:33:58', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=10', 0, 'product', '', 0),
(11, 1, '2018-09-10 08:03:02', '2018-09-10 08:03:02', '', 'YearDOG_Folio_1bill', '', 'inherit', 'open', 'closed', '', 'yeardog_folio_1bill', '', '', '2018-09-10 08:03:02', '2018-09-10 08:03:02', '', 10, 'http://localhost/tienlixi/wp-content/uploads/2018/09/YearDOG_Folio_1bill.jpeg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2018-09-10 08:09:45', '2018-09-10 08:09:45', '<strong>2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL – $1 Lucky Money with Blue Folio.</strong>\r\n\r\nThis product uses <strong>Exclusive Security Imaging</strong> in an alternating pattern, using a <strong><em>C-Thru Vision</em> Hologram</strong> embedded in multiple locations, giving the 2018 Year of the Dog Currency its Official Genuine Distinction.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $1 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Blue Folio</strong>.</li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li>We Ship Internationally.</li>\r\n</ul>', '2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $2 BILL with Blue Folio', '', 'publish', 'open', 'closed', '', '2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-2-bill-with-blue-folio', '', '', '2018-09-10 08:09:49', '2018-09-10 08:09:49', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2018-09-10 08:08:17', '2018-09-10 08:08:17', '', 'Year_of_dog_10_Gold_Hologram_serial_number_1_of_88', '', 'inherit', 'open', 'closed', '', 'year_of_dog_10_gold_hologram_serial_number_1_of_88', '', '', '2018-09-10 08:08:17', '2018-09-10 08:08:17', '', 12, 'http://localhost/tienlixi/wp-content/uploads/2018/09/Year_of_dog_10_Gold_Hologram_serial_number_1_of_88.jpeg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-09-10 08:10:51', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-10 08:10:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/tienlixi/?post_type=product&p=14', 0, 'product', '', 0),
(15, 1, '2018-09-10 08:13:31', '2018-09-10 08:13:31', '<strong>2018 YEAR OF THE DOG $1 &amp; $2 Chinese New Year Lucky Money Set – DUAL 8’s GOLD MATCHING DOG’s in Premium RED LUNAR ENVELOPE – Limited &amp; Numbered of 8,888 Sets Worldwide</strong>\r\n\r\nLimited Release, Special Issue – The Dog is one of 12 zodiac symbols associated with the Chinese Lunar Calendar. Some people believe their fate is closely tied to the zodiac symbols in the year in which they were born. This Lucky Money Note Set contains a Genuine Legal Tender Federal Reserve uncirculated $1 note and uncirculated $2 note…both magnificently featuring 8 Gold Matching Dog''s in Holographic Gold. This product is limited and NUMBERED to 8,888 sets worldwide. To further enrich this product, the Set of 2 U.S. “Year of the Dog” Gold Matching Dual 8’s Legal Tender Bills come packaged together in an exclusive Red Envelope with beautiful Gold Leaf stamping which is a symbol of energy, happiness, and good luck. This New Year, give a gift of good fortune to family and friends with the Dual 8’s Lucky Money Note Set, which is enclosed in an attractive Red folder festively adorned with Chinese symbolism, capturing the significance of the New Year. May the “Year of the Dog” note set bring you the ultimate luck. This is the most limited set ever produced and the luck it will bring will be of great fortune and success. Place your order now and do not wait before the limited issue is sold out. We also ship internationally.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic Set of U.S. $2 Bill and $1 Bill.</li>\r\n 	<li>Limited Edition &amp; Numbered of 8,888 Sets Worldwide.</li>\r\n 	<li><strong>Each Set is Individually Numbered.</strong></li>\r\n 	<li>Exclusive foil stamped Lunar RED Envelope</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>True-Definition Gilded GOLD Leaf Process Featuring 8 MATCHING DOG’s on Both Banknotes.</li>\r\n 	<li>Highest Quality Colorization and Hologram in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity Built-in to the Red Envelope.</li>\r\n 	<li>Both bills are Handsomely Showcased in Premium Red Lunar Exclusive Envelope.</li>\r\n 	<li>Both Bills are in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>Both Bills also come with removable Deluxe Currency Holders for added protection.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n</ul>', '2018 YEAR OF THE DOG $1/$2 Lunar New Year Set – DUAL 8’s GOLD DOG’s in Red Envelope Ltd. 8,888 Sets', '', 'publish', 'open', 'closed', '', '2018-year-of-the-dog-1-2-lunar-new-year-set-dual-8s-gold-dogs-in-red-envelope-ltd-8888-sets', '', '', '2018-09-10 08:13:34', '2018-09-10 08:13:34', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=15', 0, 'product', '', 0),
(16, 1, '2018-09-10 08:13:01', '2018-09-10 08:13:01', '', 'CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11', '', 'inherit', 'open', 'closed', '', 'chinesedogsbills_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11', '', '', '2018-09-10 08:13:01', '2018-09-10 08:13:01', '', 15, 'http://localhost/tienlixi/wp-content/uploads/2018/09/CHINESEdogsBILLS_700x420_0968cf23-1f8a-4a86-9d9e-0aa45c4caa11.jpeg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-09-10 08:16:27', '2018-09-10 08:16:27', '<strong>2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL – $1 Lucky Money with Red Envelope.</strong>\r\n\r\nThis product uses <strong>Exclusive Security Imaging</strong> in an alternating pattern, using a <strong><em>C-Thru Vision</em> Hologram</strong> embedded in multiple locations, giving the 2018 Year of the Dog Currency its Official Genuine Distinction.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $1 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Red Envelope</strong> that is hand made with a special Lunar Red and Gold Leaf.</li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li>We Ship Internationally.</li>\r\n</ul>', '2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL with Red Envelope', '', 'publish', 'open', 'closed', '', '2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-red-envelope', '', '', '2018-09-10 08:16:32', '2018-09-10 08:16:32', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2018-09-12 07:59:40', '2018-09-12 07:59:40', '', '', '<p><br data-mce-bogus="1"></p>', 'trash', 'open', 'closed', '', '__trashed', '', '', '2018-09-12 07:59:40', '2018-09-12 07:59:40', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2018-09-10 08:22:02', '2018-09-10 08:22:02', '<ul class="list-style">\r\n 	<li>Authentic Colorization Process by the Merrick Mint.</li>\r\n 	<li>New &amp; Brilliant Uncirculated Condition.</li>\r\n 	<li>Authentic Royal Canadian Mint Medallion.</li>\r\n 	<li>Deluxe Black Felt Display Box Included.</li>\r\n 	<li>Comes in air-tight acrylic coin holder and Premium Box.</li>\r\n 	<li>Full Color Certificate of Authenticity included.</li>\r\n 	<li>Limited Edition.</li>\r\n</ul>', '2018 Chinese New Year * YEAR OF THE DOG * Royal Canadian Mint Medallion Coin with DELUXE BOX', '', 'publish', 'open', 'closed', '', '2018-chinese-new-year-year-of-the-dog-royal-canadian-mint-medallion-coin-with-deluxe-box', '', '', '2018-09-10 08:22:06', '2018-09-10 08:22:06', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2018-09-10 08:21:42', '2018-09-10 08:21:42', '', 'DOG_CANADA_Box', '', 'inherit', 'open', 'closed', '', 'dog_canada_box', '', '', '2018-09-10 08:21:42', '2018-09-10 08:21:42', '', 19, 'http://localhost/tienlixi/wp-content/uploads/2018/09/DOG_CANADA_Box.jpeg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-09-10 08:25:28', '2018-09-10 08:25:28', '<strong>2018 Chinese Lunar New Year YEAR of the DOG Lucky Money S/N 88 U.S. 1976 $2 Bill w/ Red Folder</strong>\r\n\r\nIn celebration of the 2018 Year of the Dog Chinese Lunar New Year, we have announced the newest addition to its Lucky Money Collection…<strong>2018 Year of the Dog Lucky 8’s Serial Number Banknotes.</strong>  The Year of the Dog 2018 product is designed with Decorative Chinese Symbolism and packaged in a Symbolic Red Folder adorned in Full-Color. Each folder contains an uncirculated Genuine Legal Tender United States Banknote.\r\n\r\n<strong><em>This features an uncirculated $2 Federal Reserve note with serial numbers containing the numbers “88.” </em></strong>', '2018 Chinese YEAR of the DOG Lucky Money S/N 88 U.S. 1976 $2 Bill w/ Red Folder', '', 'publish', 'open', 'closed', '', '2018-chinese-year-of-the-dog-lucky-money-s-n-88-u-s-1976-2-bill-w-red-folder', '', '', '2018-09-10 08:25:32', '2018-09-10 08:25:32', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2018-09-10 08:24:43', '2018-09-10 08:24:43', '', 'YearDOG_mockENV_1bill', '', 'inherit', 'open', 'closed', '', 'yeardog_mockenv_1bill', '', '', '2018-09-10 08:24:43', '2018-09-10 08:24:43', '', 21, 'http://localhost/tienlixi/wp-content/uploads/2018/09/YearDOG_mockENV_1bill.jpeg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-09-10 08:27:56', '0000-00-00 00:00:00', '', 'Chinese Zodiac YEAR OF THE PIG Genuine U.S. Legal Tender $2 Bill Currency', '', 'draft', 'open', 'open', '', '', '', '', '2018-09-10 08:27:56', '2018-09-10 08:27:56', '', 0, 'http://localhost/tienlixi/?p=23', 0, 'post', '', 0),
(24, 1, '2018-09-10 08:30:06', '2018-09-10 08:30:06', '<strong>Chinese Zodiac YEAR OF THE PIG Genuine U.S. Legal Tender $2 Bill Currency</strong>\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $2 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Blue Folio.\r\n</strong></li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li>We Ship Internationally.</li>\r\n</ul>', 'Chinese Zodiac YEAR OF THE PIG Genuine U.S. Legal Tender $2 Bill Currency', '', 'publish', 'open', 'closed', '', 'chinese-zodiac-year-of-the-pig-genuine-u-s-legal-tender-2-bill-currency', '', '', '2018-09-10 08:30:10', '2018-09-10 08:30:10', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=24', 0, 'product', '', 0),
(25, 1, '2018-09-10 08:29:57', '2018-09-10 08:29:57', '', 'ChinZodiacMOCK_Pig_grande', '', 'inherit', 'open', 'closed', '', 'chinzodiacmock_pig_grande', '', '', '2018-09-10 08:29:57', '2018-09-10 08:29:57', '', 24, 'http://localhost/tienlixi/wp-content/uploads/2018/09/ChinZodiacMOCK_Pig_grande.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-09-10 09:48:31', '2018-09-10 09:48:31', '{\n    "nav_menu[-649433127]": {\n        "value": {\n            "name": "center-menu",\n            "description": "",\n            "parent": 0,\n            "auto_add": true\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 09:47:10"\n    },\n    "nav_menu_item[-3665564]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost/tienlixi",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -649433127,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 09:48:10"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6f591641-afaf-40e6-b744-553909ece5a6', '', '', '2018-09-10 09:48:31', '2018-09-10 09:48:31', '', 0, 'http://localhost/tienlixi/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2018-09-10 09:48:32', '2018-09-10 09:48:32', '', 'Trang Chủ', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-11 15:19:44', '2018-09-11 15:19:44', '', 0, 'http://localhost/tienlixi/2018/09/10/home/', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-09-10 09:49:44', '2018-09-10 09:49:44', 'đây là trang giới thiệu', 'Giới Thiệu', '', 'publish', 'open', 'open', '', 'gioi-thieu', '', '', '2018-09-10 09:49:44', '2018-09-10 09:49:44', '', 0, 'http://localhost/tienlixi/?p=28', 0, 'post', '', 0),
(29, 1, '2018-09-10 09:49:44', '2018-09-10 09:49:44', 'đây là trang giới thiệu', 'Giới Thiệu', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-09-10 09:49:44', '2018-09-10 09:49:44', '', 28, 'http://localhost/tienlixi/2018/09/10/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-10 09:50:33', '2018-09-10 09:50:33', '{\n    "nav_menu_item[-1460099183]": {\n        "value": {\n            "object_id": 28,\n            "object": "post",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Gi\\u1edbi Thi\\u1ec7u",\n            "url": "http://localhost/tienlixi/2018/09/10/gioi-thieu/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Gi\\u1edbi Thi\\u1ec7u",\n            "nav_menu_term_id": 21,\n            "_invalid": false,\n            "type_label": "Post"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 09:50:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e5763ff6-39af-4200-a087-8d1392f5be34', '', '', '2018-09-10 09:50:33', '2018-09-10 09:50:33', '', 0, 'http://localhost/tienlixi/2018/09/10/e5763ff6-39af-4200-a087-8d1392f5be34/', 0, 'customize_changeset', '', 0),
(31, 1, '2018-09-10 09:50:33', '2018-09-10 09:50:33', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-09-11 15:19:44', '2018-09-11 15:19:44', '', 0, 'http://localhost/tienlixi/2018/09/10/31/', 2, 'nav_menu_item', '', 0),
(32, 1, '2018-09-10 10:01:33', '2018-09-10 10:01:33', '{\n    "luckymoney::nav_menu_locations[center-menu]": {\n        "value": 21,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:01:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7feee266-a4a1-407c-8ee1-e5a20189020a', '', '', '2018-09-10 10:01:33', '2018-09-10 10:01:33', '', 0, 'http://localhost/tienlixi/2018/09/10/7feee266-a4a1-407c-8ee1-e5a20189020a/', 0, 'customize_changeset', '', 0),
(33, 1, '2018-09-10 10:10:08', '2018-09-10 10:10:08', '{\n    "nav_menu_item[27]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 27,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "Custom Link",\n            "title": "Trang Ch\\u1ee7",\n            "url": "http://localhost/tienlixi",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 21,\n            "position": 1,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:10:07"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'baf9ddf7-8893-40ec-abd4-c29e689531ef', '', '', '2018-09-10 10:10:08', '2018-09-10 10:10:08', '', 0, 'http://localhost/tienlixi/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2018-09-10 10:12:11', '2018-09-10 10:12:11', '{\n    "nav_menu_item[-547777418]": {\n        "value": {\n            "object_id": 16,\n            "object": "product_cat",\n            "menu_item_parent": 0,\n            "position": 3,\n            "type": "taxonomy",\n            "title": "2 USD Con Heo",\n            "url": "http://localhost/tienlixi/product-category/2-usd-con-heo/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "2 USD Con Heo",\n            "nav_menu_term_id": 21,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:12:04"\n    },\n    "nav_menu_item[-1762894540]": {\n        "value": {\n            "object_id": 18,\n            "object": "product_cat",\n            "menu_item_parent": 0,\n            "position": 4,\n            "type": "taxonomy",\n            "title": "Coins",\n            "url": "http://localhost/tienlixi/product-category/coins/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Coins",\n            "nav_menu_term_id": 21,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:12:04"\n    },\n    "nav_menu_item[-1875476426]": {\n        "value": {\n            "object_id": 19,\n            "object": "product_cat",\n            "menu_item_parent": 0,\n            "position": 5,\n            "type": "taxonomy",\n            "title": "Lucky Money Federal Reserve Banknotes (Red Folders)",\n            "url": "http://localhost/tienlixi/product-category/lucky-money-federal-reserve-banknotes-red-folders/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Lucky Money Federal Reserve Banknotes (Red Folders)",\n            "nav_menu_term_id": 21,\n            "_invalid": false,\n            "type_label": "Category"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:12:04"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1106d0a2-6660-4363-85e7-6283fb3152ee', '', '', '2018-09-10 10:12:11', '2018-09-10 10:12:11', '', 0, 'http://localhost/tienlixi/?p=34', 0, 'customize_changeset', '', 0),
(35, 1, '2018-09-10 10:12:11', '2018-09-10 10:12:11', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-09-11 15:19:45', '2018-09-11 15:19:45', '', 0, 'http://localhost/tienlixi/2018/09/10/35/', 3, 'nav_menu_item', '', 0),
(36, 1, '2018-09-10 10:12:12', '2018-09-10 10:12:12', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-09-11 15:19:45', '2018-09-11 15:19:45', '', 0, 'http://localhost/tienlixi/2018/09/10/36/', 4, 'nav_menu_item', '', 0),
(37, 1, '2018-09-10 10:12:13', '2018-09-10 10:12:13', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-09-11 15:19:45', '2018-09-11 15:19:45', '', 0, 'http://localhost/tienlixi/2018/09/10/37/', 5, 'nav_menu_item', '', 0),
(38, 1, '2018-09-10 10:15:05', '2018-09-10 10:15:05', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nTiền Lì Xì 2018 "[your-subject]"\n[your-name] <trancong.joomla@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Tiền Lì Xì 2018 (http://localhost/tienlixi)\ntrancong.joomla@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nTiền Lì Xì 2018 "[your-subject]"\nTiền Lì Xì 2018 <trancong.joomla@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Tiền Lì Xì 2018 (http://localhost/tienlixi)\n[your-email]\nReply-To: trancong.joomla@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-10 10:15:05', '2018-09-10 10:15:05', '', 0, 'http://localhost/tienlixi/?post_type=wpcf7_contact_form&p=38', 0, 'wpcf7_contact_form', '', 0),
(39, 1, '2018-09-10 10:16:23', '2018-09-10 10:16:23', 'đây là trang liên hệ', 'Liên Hệ', '', 'publish', 'open', 'open', '', 'lien-he', '', '', '2018-09-10 10:16:23', '2018-09-10 10:16:23', '', 0, 'http://localhost/tienlixi/?p=39', 0, 'post', '', 0),
(40, 1, '2018-09-10 10:16:23', '2018-09-10 10:16:23', 'đây là trang liên hệ', 'Liên Hệ', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2018-09-10 10:16:23', '2018-09-10 10:16:23', '', 39, 'http://localhost/tienlixi/2018/09/10/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-09-10 10:16:55', '2018-09-10 10:16:55', '{\n    "nav_menu_item[-1600406205]": {\n        "value": {\n            "object_id": 39,\n            "object": "post",\n            "menu_item_parent": 0,\n            "position": 6,\n            "type": "post_type",\n            "title": "Li\\u00ean H\\u1ec7",\n            "url": "http://localhost/tienlixi/2018/09/10/lien-he/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Li\\u00ean H\\u1ec7",\n            "nav_menu_term_id": 21,\n            "_invalid": false,\n            "type_label": "Post"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-10 10:16:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11494b79-c786-42b0-a237-1e13a8ad9dbb', '', '', '2018-09-10 10:16:55', '2018-09-10 10:16:55', '', 0, 'http://localhost/tienlixi/2018/09/10/11494b79-c786-42b0-a237-1e13a8ad9dbb/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-09-10 10:16:56', '2018-09-10 10:16:56', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-09-11 15:19:45', '2018-09-11 15:19:45', '', 0, 'http://localhost/tienlixi/2018/09/10/42/', 6, 'nav_menu_item', '', 0),
(43, 1, '2018-09-11 06:55:26', '2018-09-11 06:55:26', '{\n    "woocommerce_catalog_columns": {\n        "value": "3",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 06:55:26"\n    },\n    "woocommerce_catalog_rows": {\n        "value": "9",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 06:55:26"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '72beab68-ceff-45e5-82df-b861aa9d4a15', '', '', '2018-09-11 06:55:26', '2018-09-11 06:55:26', '', 0, 'http://localhost/tienlixi/2018/09/11/72beab68-ceff-45e5-82df-b861aa9d4a15/', 0, 'customize_changeset', '', 0),
(44, 1, '2018-09-11 07:23:44', '2018-09-11 07:23:44', '{\n    "woocommerce_catalog_rows": {\n        "value": "4",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:23:44"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a40c7c7-26c1-4757-80c3-27887add9d3b', '', '', '2018-09-11 07:23:44', '2018-09-11 07:23:44', '', 0, 'http://localhost/tienlixi/2018/09/11/1a40c7c7-26c1-4757-80c3-27887add9d3b/', 0, 'customize_changeset', '', 0),
(45, 1, '2018-09-11 07:48:55', '2018-09-11 07:48:55', '{\n    "woocommerce_catalog_rows": {\n        "value": "1",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 07:48:55"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2242518-398e-415f-84b0-c46d333843dc', '', '', '2018-09-11 07:48:55', '2018-09-11 07:48:55', '', 0, 'http://localhost/tienlixi/2018/09/11/b2242518-398e-415f-84b0-c46d333843dc/', 0, 'customize_changeset', '', 0),
(46, 1, '2018-09-11 08:46:20', '2018-09-11 08:46:20', '{\n    "woocommerce_catalog_rows": {\n        "value": "4",\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2018-09-11 08:46:20"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '31d8eda1-6bb6-4a2f-9861-83d78ef07710', '', '', '2018-09-11 08:46:20', '2018-09-11 08:46:20', '', 0, 'http://localhost/tienlixi/2018/09/11/31d8eda1-6bb6-4a2f-9861-83d78ef07710/', 0, 'customize_changeset', '', 0),
(47, 1, '2018-09-11 09:49:39', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-11 09:49:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/tienlixi/?post_type=product&p=47', 0, 'product', '', 0),
(48, 1, '2018-09-12 09:41:08', '2018-09-12 09:41:08', '<strong>2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL – $1 Lucky Money with Red Envelope.</strong>\r\n\r\nThis product uses <strong>Exclusive Security Imaging</strong> in an alternating pattern, using a <strong><em>C-Thru Vision</em> Hologram</strong> embedded in multiple locations, giving the 2018 Year of the Dog Currency its Official Genuine Distinction.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $1 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Red Envelope</strong> that is hand made with a special Lunar Red and Gold Leaf.</li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li>We Ship Internationally.</li>\r\n</ul>', '2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL with Red Envelope 2', '', 'publish', 'closed', 'closed', '', '2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-red-envelope-2', '', '', '2018-09-12 09:41:30', '2018-09-12 09:41:30', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2018-09-12 09:41:50', '2018-09-12 09:41:50', '<strong>2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL – $1 Lucky Money with Red Envelope.</strong>\r\n\r\nThis product uses <strong>Exclusive Security Imaging</strong> in an alternating pattern, using a <strong><em>C-Thru Vision</em> Hologram</strong> embedded in multiple locations, giving the 2018 Year of the Dog Currency its Official Genuine Distinction.\r\n<ul class="list-style">\r\n 	<li>Genuine U.S. Legal Tender.</li>\r\n 	<li>Authentic U.S. $1 Bill.</li>\r\n 	<li>High-Definition Colorization Process.</li>\r\n 	<li>Highest Quality Colorization in the World, Accomplished Through a Revolutionary Technique.</li>\r\n 	<li>Full-Color Certificate of Authenticity is Included with Each Bill.</li>\r\n 	<li>Each Bill is enclosed in a <strong>Premium Red Envelope</strong> that is hand made with a special Lunar Red and Gold Leaf.</li>\r\n 	<li>Each Bill is in Fresh, Crisp, Uncirculated Condition.</li>\r\n 	<li>*** We Ship SAME DAY as Payment *** In-Stock &amp; Shipping Immediately!</li>\r\n 	<li>We Ship Internationally.</li>\r\n</ul>', '2018 Chinese New Year – YEAR OF THE DOG – Gold Hologram Legal Tender U.S. $1 BILL with Red Envelope 3', '', 'publish', 'closed', 'closed', '', '2018-chinese-new-year-year-of-the-dog-gold-hologram-legal-tender-u-s-1-bill-with-red-envelope-3', '', '', '2018-09-12 09:42:04', '2018-09-12 09:42:04', '', 0, 'http://localhost/tienlixi/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2018-09-12 10:08:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 10:08:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/tienlixi/?page_id=50', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_termmeta`
--

CREATE TABLE `wpl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_termmeta`
--

INSERT INTO `wpl_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '0'),
(4, 16, 'product_count_product_cat', '6'),
(5, 17, 'order', '0'),
(6, 17, 'display_type', ''),
(7, 17, 'thumbnail_id', '0'),
(8, 17, 'product_count_product_cat', '5'),
(9, 18, 'order', '0'),
(10, 18, 'display_type', ''),
(11, 18, 'thumbnail_id', '0'),
(12, 18, 'product_count_product_cat', '1'),
(13, 19, 'order', '0'),
(14, 19, 'display_type', ''),
(15, 19, 'thumbnail_id', '0'),
(16, 19, 'product_count_product_cat', '1'),
(17, 20, 'order', '0'),
(18, 20, 'display_type', ''),
(19, 20, 'thumbnail_id', '0'),
(20, 20, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wpl_terms`
--

CREATE TABLE `wpl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_terms`
--

INSERT INTO `wpl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, '2 USD Con Heo', '2-usd-con-heo', 0),
(17, 'Limited Edition Banknotes', 'limited-edition-banknotes', 0),
(18, 'Coins', 'coins', 0),
(19, 'Lucky Money Federal Reserve Banknotes (Red Folders)', 'lucky-money-federal-reserve-banknotes-red-folders', 0),
(20, 'Orginal Zodiac Banknotes', 'orginal-zodiac-banknotes', 0),
(21, 'center-menu', 'center-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_term_relationships`
--

CREATE TABLE `wpl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_term_relationships`
--

INSERT INTO `wpl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(10, 16, 0),
(12, 2, 0),
(12, 16, 0),
(15, 2, 0),
(15, 16, 0),
(15, 17, 0),
(17, 2, 0),
(17, 16, 0),
(17, 17, 0),
(19, 2, 0),
(19, 17, 0),
(19, 18, 0),
(21, 2, 0),
(21, 19, 0),
(23, 1, 0),
(24, 2, 0),
(24, 20, 0),
(27, 21, 0),
(28, 1, 0),
(31, 21, 0),
(35, 21, 0),
(36, 21, 0),
(37, 21, 0),
(39, 1, 0),
(42, 21, 0),
(48, 2, 0),
(48, 16, 0),
(48, 17, 0),
(49, 2, 0),
(49, 16, 0),
(49, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_term_taxonomy`
--

CREATE TABLE `wpl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_term_taxonomy`
--

INSERT INTO `wpl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 9),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 6),
(17, 17, 'product_cat', '', 0, 5),
(18, 18, 'product_cat', '', 0, 1),
(19, 19, 'product_cat', '', 0, 1),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_usermeta`
--

CREATE TABLE `wpl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_usermeta`
--

INSERT INTO `wpl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wpl_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wpl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"61f88cafe2347e96e604524087efd5aef6dea595744c4cbb0795df2bef25a55c";a:4:{s:10:"expiration";i:1537763134;s:2:"ip";s:3:"::1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0";s:5:"login";i:1536553534;}}'),
(17, 1, 'wpl_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:3:{s:32:"1ff1de774005f8da13f42943881c655f";a:11:{s:3:"key";s:32:"1ff1de774005f8da13f42943881c655f";s:10:"product_id";i:24;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:300000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:300000;s:8:"line_tax";i:0;}s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:900000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:900000;s:8:"line_tax";i:0;}s:32:"c20ad4d76fe97759aa27a0c99bff6710";a:11:{s:3:"key";s:32:"c20ad4d76fe97759aa27a0c99bff6710";s:10:"product_id";i:12;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:400000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:400000;s:8:"line_tax";i:0;}}}'),
(19, 1, 'wc_last_active', '1536710400'),
(20, 1, 'wpl_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o'),
(21, 1, 'wpl_user-settings-time', '1536572777'),
(22, 1, 'nav_menu_recently_edited', '21'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `wpl_users`
--

CREATE TABLE `wpl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_users`
--

INSERT INTO `wpl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$By9ioQovepAe81wV1C3hVOhzkejsqW1', 'admin', 'trancong.joomla@gmail.com', '', '2018-09-10 04:25:18', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wpl_wc_download_log`
--

CREATE TABLE `wpl_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_wc_webhooks`
--

CREATE TABLE `wpl_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_api_keys`
--

CREATE TABLE `wpl_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wpl_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wpl_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_log`
--

CREATE TABLE `wpl_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_order_itemmeta`
--

CREATE TABLE `wpl_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_order_items`
--

CREATE TABLE `wpl_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wpl_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_payment_tokens`
--

CREATE TABLE `wpl_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_sessions`
--

CREATE TABLE `wpl_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpl_woocommerce_sessions`
--

INSERT INTO `wpl_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(8, '1', 'a:8:{s:4:"cart";s:1242:"a:3:{s:32:"1ff1de774005f8da13f42943881c655f";a:11:{s:3:"key";s:32:"1ff1de774005f8da13f42943881c655f";s:10:"product_id";i:24;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:300000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:300000;s:8:"line_tax";i:0;}s:32:"d3d9446802a44259755d38e6d163e820";a:11:{s:3:"key";s:32:"d3d9446802a44259755d38e6d163e820";s:10:"product_id";i:10;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:3;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:900000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:900000;s:8:"line_tax";i:0;}s:32:"c20ad4d76fe97759aa27a0c99bff6710";a:11:{s:3:"key";s:32:"c20ad4d76fe97759aa27a0c99bff6710";s:10:"product_id";i:12;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:400000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:400000;s:8:"line_tax";i:0;}}";s:11:"cart_totals";s:405:"a:15:{s:8:"subtotal";s:7:"1600000";s:12:"subtotal_tax";d:0;s:14:"shipping_total";s:1:"0";s:12:"shipping_tax";d:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";d:0;s:12:"discount_tax";d:0;s:19:"cart_contents_total";s:7:"1600000";s:17:"cart_contents_tax";d:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";s:1:"0";s:7:"fee_tax";d:0;s:9:"fee_taxes";a:0:{}s:5:"total";s:7:"1600000";s:9:"total_tax";d:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:713:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:25:"trancong.joomla@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";s:10:"wc_notices";N;}', 1536773738);

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_shipping_zones`
--

CREATE TABLE `wpl_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wpl_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wpl_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_tax_rates`
--

CREATE TABLE `wpl_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpl_woocommerce_tax_rate_locations`
--

CREATE TABLE `wpl_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpl_commentmeta`
--
ALTER TABLE `wpl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpl_comments`
--
ALTER TABLE `wpl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wpl_links`
--
ALTER TABLE `wpl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpl_options`
--
ALTER TABLE `wpl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpl_postmeta`
--
ALTER TABLE `wpl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpl_posts`
--
ALTER TABLE `wpl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpl_termmeta`
--
ALTER TABLE `wpl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpl_terms`
--
ALTER TABLE `wpl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpl_term_relationships`
--
ALTER TABLE `wpl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpl_term_taxonomy`
--
ALTER TABLE `wpl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpl_usermeta`
--
ALTER TABLE `wpl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpl_users`
--
ALTER TABLE `wpl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wpl_wc_download_log`
--
ALTER TABLE `wpl_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wpl_wc_webhooks`
--
ALTER TABLE `wpl_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wpl_woocommerce_api_keys`
--
ALTER TABLE `wpl_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wpl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpl_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wpl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpl_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wpl_woocommerce_log`
--
ALTER TABLE `wpl_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wpl_woocommerce_order_itemmeta`
--
ALTER TABLE `wpl_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpl_woocommerce_order_items`
--
ALTER TABLE `wpl_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wpl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpl_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wpl_woocommerce_payment_tokens`
--
ALTER TABLE `wpl_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wpl_woocommerce_sessions`
--
ALTER TABLE `wpl_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wpl_woocommerce_shipping_zones`
--
ALTER TABLE `wpl_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wpl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpl_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wpl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpl_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wpl_woocommerce_tax_rates`
--
ALTER TABLE `wpl_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wpl_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpl_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpl_commentmeta`
--
ALTER TABLE `wpl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_comments`
--
ALTER TABLE `wpl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpl_links`
--
ALTER TABLE `wpl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_options`
--
ALTER TABLE `wpl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=671;
--
-- AUTO_INCREMENT for table `wpl_postmeta`
--
ALTER TABLE `wpl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=429;
--
-- AUTO_INCREMENT for table `wpl_posts`
--
ALTER TABLE `wpl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wpl_termmeta`
--
ALTER TABLE `wpl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wpl_terms`
--
ALTER TABLE `wpl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wpl_term_taxonomy`
--
ALTER TABLE `wpl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wpl_usermeta`
--
ALTER TABLE `wpl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wpl_users`
--
ALTER TABLE `wpl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wpl_wc_download_log`
--
ALTER TABLE `wpl_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_wc_webhooks`
--
ALTER TABLE `wpl_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_api_keys`
--
ALTER TABLE `wpl_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wpl_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wpl_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_log`
--
ALTER TABLE `wpl_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_order_itemmeta`
--
ALTER TABLE `wpl_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_order_items`
--
ALTER TABLE `wpl_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wpl_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_payment_tokens`
--
ALTER TABLE `wpl_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_sessions`
--
ALTER TABLE `wpl_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_shipping_zones`
--
ALTER TABLE `wpl_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wpl_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wpl_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_tax_rates`
--
ALTER TABLE `wpl_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wpl_woocommerce_tax_rate_locations`
--
ALTER TABLE `wpl_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wpl_wc_download_log`
--
ALTER TABLE `wpl_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wpl_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
