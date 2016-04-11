-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 12:55 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `education`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity`
--

CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) NOT NULL,
  `type` varchar(75) NOT NULL,
  `action` text NOT NULL,
  `content` longtext NOT NULL,
  `primary_link` text NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2016-04-09 10:49:49', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity_meta`
--

CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications`
--

CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) NOT NULL,
  `component_action` varchar(75) NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications_meta`
--

CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_data`
--

CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 1, 'gstladmin', '2016-04-09 10:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_fields`
--

CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_groups`
--

CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` mediumtext NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_meta`
--

CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-04-09 08:31:40', '2016-04-09 08:31:40', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 1933, 'Kart', 'madison@gmail.com', '', '115.248.134.2', '2014-01-29 06:50:11', '2014-01-29 06:50:11', 'This is a sample comment', 0, '1', '', '', 0, 0),
(3, 1933, 'ram', 'somemail@somedomain.com', '', '122.178.176.29', '2014-05-15 18:19:58', '2014-05-15 12:49:58', 'fdsfsdf', 0, '1', '', '', 0, 0),
(4, 1933, 'ram', 'somemail@somedomain.com', '', '122.178.176.29', '2014-05-15 18:20:09', '2014-05-15 12:50:09', 'dsfdsf sdfsd fds', 0, '1', '', '', 2, 0),
(5, 2728, 'ram', 'ram@iamdesigning.com', '', '127.0.0.1', '2013-07-09 11:05:12', '2013-07-09 11:05:12', 'WordPress 1.5 our Theme system made it possible for WordPress users to quickly change their site’s design: there was huge resistance to the theme system from the wider community at the time, but can you imagine WordPress without it', 0, '1', '', '', 0, 0),
(6, 2728, 'ram', 'ram@iamdesigning.com', '', '127.0.0.1', '2013-07-09 11:05:30', '2013-07-09 11:05:30', 'WordPress users to quickly change their site’s design: there was huge resistance to the theme system from the wider community at the time, but can you imagine.', 0, '1', '', '', 0, 0),
(7, 2728, 'Naga', 'naga@kdfjgh.com', 'http://iamdesigning.com', '127.0.0.1', '2013-07-10 07:24:51', '2013-07-10 07:24:51', 'Resistance to the theme system from the wider community at the time, but can you imagine WordPress without it libero facilisis auctor. ', 0, '1', '', '', 5, 0),
(8, 2728, 'Test', 'sdryhdsfh@dfklhg.com', 'http://iamdesigning.com', '127.0.0.1', '2013-07-10 07:36:34', '2013-07-10 07:36:34', 'Phasellus molestie urna non metus fringilla, non hendrerit ipsum volutpat. <a href="#" rel="nofollow">hac habitasse platea</a> Maecenas varius interdum tempus.', 0, '1', '', '', 7, 0),
(9, 2728, 'Gopal', 'ksdgjh@aslgkjh.com', '', '127.0.0.1', '2013-07-10 07:42:02', '2013-07-10 07:42:02', 'Integer vulputate risus vel vestibulum', 0, '1', '', '', 8, 0),
(10, 2728, 'Karthick', 'asdg@sdfh.com', '', '127.0.0.1', '2013-07-10 07:43:55', '2013-07-10 07:43:55', 'licitudin sapien. Integer cursus eros eu ullamcorper faucibus.', 0, '1', '', '', 9, 0),
(11, 2730, 'ram', 'ram@iamdesigning.com', '', '127.0.0.1', '2013-07-09 11:05:50', '2013-07-09 11:05:50', 'It’s been wonderful to see all of the people who have used WordPress to build their home on the internet. Early on we got excited by switchers.', 0, '1', '', '', 0, 0),
(12, 2730, 'Karthick', 'naga@iamdesigning.com', 'http://iamdesigning.com', '122.178.148.6', '2013-07-19 12:13:41', '2013-07-19 12:13:41', 'Proin quis ligula aliquam, viverra dolor sed, cursus nisl. Phasellus metus ante, vulputate et scelerisque vel, molestie id elit. Vestibulum vel mollis odio. ', 0, '1', '', '', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider`
--

CREATE TABLE `wp_layerslider` (
  `id` int(10) NOT NULL,
  `author` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `data` mediumtext NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/education', 'yes'),
(2, 'home', 'http://localhost/education', 'yes'),
(3, 'blogname', 'Education', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ashraful@gstlbd.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:16:{i:0;s:27:"LayerSlider/layerslider.php";i:1;s:19:"bbpress/bbpress.php";i:2;s:24:"buddypress/bp-loader.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:57:"designthemes-core-features/designthemes-core-features.php";i:5;s:41:"envato-wordpress-toolkit-master/index.php";i:6;s:38:"menu-items-visibility-control/init.php";i:7;s:56:"responsive-maps-plugin/responsive-styled-google-maps.php";i:8;s:23:"revslider/revslider.php";i:9;s:29:"shortcode-ui/shortcode-ui.php";i:10;s:43:"the-events-calendar/the-events-calendar.php";i:11;s:29:"weekly-class-schedule/wcs.php";i:12;s:27:"woocommerce/woocommerce.php";i:13;s:33:"wp-postratings/wp-postratings.php";i:14;s:34:"yith-woocommerce-wishlist/init.php";i:15;s:40:"yith-woocommerce-zoom-magnifier/init.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'guru', 'yes'),
(40, 'stylesheet', 'guru', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '0', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:1:{i:0;i:2728;}', 'yes'),
(77, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:0:{}', 'yes'),
(79, 'widget_rss', 'a:0:{}', 'yes'),
(80, 'uninstall_plugins', 'a:1:{s:27:"LayerSlider/layerslider.php";s:29:"layerslider_uninstall_scripts";}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:10:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:163:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_theme";b:1;s:14:"manage_ratings";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:64:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:25:"read_private_tribe_events";b:1;s:17:"edit_tribe_events";b:1;s:24:"edit_others_tribe_events";b:1;s:25:"edit_private_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:26:"delete_others_tribe_events";b:1;s:27:"delete_private_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:25:"read_private_tribe_venues";b:1;s:17:"edit_tribe_venues";b:1;s:24:"edit_others_tribe_venues";b:1;s:25:"edit_private_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:26:"delete_others_tribe_venues";b:1;s:27:"delete_private_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:29:"read_private_tribe_organizers";b:1;s:21:"edit_tribe_organizers";b:1;s:28:"edit_others_tribe_organizers";b:1;s:29:"edit_private_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:30:"delete_others_tribe_organizers";b:1;s:31:"delete_private_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:25:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;s:17:"edit_tribe_events";b:1;s:27:"edit_published_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:29:"delete_published_tribe_events";b:1;s:20:"publish_tribe_events";b:1;s:17:"edit_tribe_venues";b:1;s:27:"edit_published_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:29:"delete_published_tribe_venues";b:1;s:20:"publish_tribe_venues";b:1;s:21:"edit_tribe_organizers";b:1;s:31:"edit_published_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;s:33:"delete_published_tribe_organizers";b:1;s:24:"publish_tribe_organizers";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:11:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:17:"edit_tribe_events";b:1;s:19:"delete_tribe_events";b:1;s:17:"edit_tribe_venues";b:1;s:19:"delete_tribe_venues";b:1;s:21:"edit_tribe_organizers";b:1;s:23:"delete_tribe_organizers";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"bbp_keymaster";a:2:{s:4:"name";s:9:"Keymaster";s:12:"capabilities";a:0:{}}s:13:"bbp_spectator";a:2:{s:4:"name";s:9:"Spectator";s:12:"capabilities";a:0:{}}s:11:"bbp_blocked";a:2:{s:4:"name";s:7:"Blocked";s:12:"capabilities";a:0:{}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:26:"display-everywhere-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:8:{i:1460200127;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1460233901;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1460239727;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1460246400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460281476;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1460282927;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1462233600;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(108, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.4.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.4.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.2";s:7:"version";s:5:"4.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1460190713;s:15:"version_checked";s:5:"4.4.2";s:12:"translations";a:0:{}}', 'yes'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1460195079;s:7:"checked";a:4:{s:4:"guru";s:3:"1.6";s:13:"twentyfifteen";s:3:"1.4";s:14:"twentyfourteen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(115, '_site_transient_timeout_browser_a03822759b9f89c6b315fdcb839d03f3', '1460795521', 'yes'),
(116, '_site_transient_browser_a03822759b9f89c6b315fdcb839d03f3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"49.0.2623.110";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(117, 'can_compress_scripts', '1', 'yes'),
(119, '_transient_twentysixteen_categories', '1', 'yes'),
(120, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1460233946', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 09 Apr 2016 08:19:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"The Wordfence WordPress security plugin provides free enterprise-class WordPress security, protecting your website from hacks and malware.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Tim Moore";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"Google Analytics by Yoast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:124:"Track your WordPress site easily with the latest tracking codes and lots added data for search result pages and error pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 14 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"The most downloaded plugin for WordPress (almost 30 million downloads). Use All in One SEO Pack to automatically optimize your site for Search Engines";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Enables the advanced features of TinyMCE, the WordPress WYSIWYG editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:132:"Easy Web Performance Optimization (WPO) using caching: browser, page, object, database, minify and content delivery network support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Protect your WordPress site by hiding vital areas of your site, protecting access to important files, preventing brute-force login attempts, detecting";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical user experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"UpdraftPlus Backup and Restoration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:145:"Easy to use WordPress slider plugin. Create SEO optimised responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Sat, 09 Apr 2016 08:32:23 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Mon, 09 Mar 2009 02:17:35 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20130910220210";}', 'no'),
(122, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1460233946', 'no'),
(123, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1460190746', 'no'),
(124, '_transient_timeout_plugin_slugs', '1460283296', 'no'),
(125, '_transient_plugin_slugs', 'a:18:{i:0;s:19:"akismet/akismet.php";i:1;s:19:"bbpress/bbpress.php";i:2;s:24:"buddypress/bp-loader.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:57:"designthemes-core-features/designthemes-core-features.php";i:5;s:41:"envato-wordpress-toolkit-master/index.php";i:6;s:9:"hello.php";i:7;s:27:"LayerSlider/layerslider.php";i:8;s:38:"menu-items-visibility-control/init.php";i:9;s:56:"responsive-maps-plugin/responsive-styled-google-maps.php";i:10;s:23:"revslider/revslider.php";i:11;s:29:"shortcode-ui/shortcode-ui.php";i:12;s:43:"the-events-calendar/the-events-calendar.php";i:13;s:29:"weekly-class-schedule/wcs.php";i:14;s:27:"woocommerce/woocommerce.php";i:15;s:33:"wp-postratings/wp-postratings.php";i:16;s:34:"yith-woocommerce-wishlist/init.php";i:17;s:40:"yith-woocommerce-zoom-magnifier/init.php";}', 'no'),
(126, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1460233946', 'no'),
(127, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 16026 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 10000 milliseconds with 0 bytes received</p></div><div class="rss-widget"><ul><li class=''dashboard-news-plugin''><span>Popular Plugin:</span> <a href=''https://wordpress.org/plugins/ml-slider/'' class=''dashboard-news-plugin-link''>Meta Slider</a>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=ml-slider&amp;_wpnonce=7845f825e3&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Meta Slider''>Install</a>)</span></li></ul></div>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(128, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1460196877;s:7:"checked";a:18:{s:19:"akismet/akismet.php";s:5:"3.1.7";s:19:"bbpress/bbpress.php";s:5:"2.5.8";s:24:"buddypress/bp-loader.php";s:5:"2.5.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.4.1";s:57:"designthemes-core-features/designthemes-core-features.php";s:3:"1.0";s:41:"envato-wordpress-toolkit-master/index.php";s:3:"1.5";s:9:"hello.php";s:3:"1.6";s:27:"LayerSlider/layerslider.php";s:5:"5.1.1";s:38:"menu-items-visibility-control/init.php";s:5:"0.3.2";s:56:"responsive-maps-plugin/responsive-styled-google-maps.php";s:4:"2.22";s:23:"revslider/revslider.php";s:5:"4.6.0";s:29:"shortcode-ui/shortcode-ui.php";s:5:"0.6.2";s:43:"the-events-calendar/the-events-calendar.php";s:7:"4.1.1.1";s:29:"weekly-class-schedule/wcs.php";s:4:"3.18";s:27:"woocommerce/woocommerce.php";s:5:"2.5.5";s:33:"wp-postratings/wp-postratings.php";s:6:"1.83.2";s:34:"yith-woocommerce-wishlist/init.php";s:6:"2.0.15";s:40:"yith-woocommerce-zoom-magnifier/init.php";s:6:"1.2.17";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.10";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.10.zip";s:6:"tested";s:3:"4.5";s:13:"compatibility";b:0;}}s:12:"translations";a:0:{}s:9:"no_update";a:12:{s:19:"bbpress/bbpress.php";O:8:"stdClass":6:{s:2:"id";s:5:"11780";s:4:"slug";s:7:"bbpress";s:6:"plugin";s:19:"bbpress/bbpress.php";s:11:"new_version";s:5:"2.5.8";s:3:"url";s:38:"https://wordpress.org/plugins/bbpress/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/bbpress.2.5.8.zip";}s:24:"buddypress/bp-loader.php";O:8:"stdClass":7:{s:2:"id";s:4:"7756";s:4:"slug";s:10:"buddypress";s:6:"plugin";s:24:"buddypress/bp-loader.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:41:"https://wordpress.org/plugins/buddypress/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/buddypress.2.5.2.zip";s:14:"upgrade_notice";s:57:"See: https://codex.buddypress.org/releases/version-2-5-2/";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.4.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.4.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:38:"menu-items-visibility-control/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"24397";s:4:"slug";s:29:"menu-items-visibility-control";s:6:"plugin";s:38:"menu-items-visibility-control/init.php";s:11:"new_version";s:5:"0.3.2";s:3:"url";s:60:"https://wordpress.org/plugins/menu-items-visibility-control/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/menu-items-visibility-control.zip";}s:29:"shortcode-ui/shortcode-ui.php";O:8:"stdClass":6:{s:2:"id";s:5:"56050";s:4:"slug";s:12:"shortcode-ui";s:6:"plugin";s:29:"shortcode-ui/shortcode-ui.php";s:11:"new_version";s:5:"0.6.2";s:3:"url";s:43:"https://wordpress.org/plugins/shortcode-ui/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/shortcode-ui.0.6.2.zip";}s:43:"the-events-calendar/the-events-calendar.php";O:8:"stdClass":6:{s:2:"id";s:5:"11861";s:4:"slug";s:19:"the-events-calendar";s:6:"plugin";s:43:"the-events-calendar/the-events-calendar.php";s:11:"new_version";s:7:"4.1.1.1";s:3:"url";s:50:"https://wordpress.org/plugins/the-events-calendar/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/the-events-calendar.4.1.1.1.zip";}s:29:"weekly-class-schedule/wcs.php";O:8:"stdClass":6:{s:2:"id";s:5:"25522";s:4:"slug";s:21:"weekly-class-schedule";s:6:"plugin";s:29:"weekly-class-schedule/wcs.php";s:11:"new_version";s:4:"3.18";s:3:"url";s:52:"https://wordpress.org/plugins/weekly-class-schedule/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/weekly-class-schedule.3.18.zip";}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":6:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"2.5.5";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.2.5.5.zip";}s:33:"wp-postratings/wp-postratings.php";O:8:"stdClass":6:{s:2:"id";s:3:"369";s:4:"slug";s:14:"wp-postratings";s:6:"plugin";s:33:"wp-postratings/wp-postratings.php";s:11:"new_version";s:6:"1.83.2";s:3:"url";s:45:"https://wordpress.org/plugins/wp-postratings/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/wp-postratings.1.83.2.zip";}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"41084";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:6:"2.0.15";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.0.15.zip";}s:40:"yith-woocommerce-zoom-magnifier/init.php";O:8:"stdClass":6:{s:2:"id";s:5:"40997";s:4:"slug";s:31:"yith-woocommerce-zoom-magnifier";s:6:"plugin";s:40:"yith-woocommerce-zoom-magnifier/init.php";s:11:"new_version";s:6:"1.2.17";s:3:"url";s:62:"https://wordpress.org/plugins/yith-woocommerce-zoom-magnifier/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/yith-woocommerce-zoom-magnifier.1.2.17.zip";}}}', 'yes'),
(132, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1460195088;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(133, 'current_theme', 'Guru', 'yes'),
(134, 'theme_mods_guru', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:22:"another-secondary-menu";i:36;s:14:"secondary-menu";i:38;s:12:"primary-menu";i:35;}}', 'yes'),
(135, 'theme_switched', '', 'yes'),
(136, 'widget_my_socialwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_my_twitter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_my_mailchimp', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_my_flickr', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_my_recent_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_my_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'mytheme', 'a:12:{s:7:"general";a:17:{s:4:"logo";s:4:"true";s:8:"logo-url";s:0:"";s:14:"enable-favicon";s:4:"true";s:11:"favicon-url";s:0:"";s:20:"disable-page-comment";s:4:"true";s:20:"breadcrumb-delimiter";s:7:"default";s:21:"disable-custom-scroll";s:2:"on";s:20:"disable-style-picker";s:2:"on";s:18:"google-font-subset";s:0:"";s:13:"mailchimp-key";s:0:"";s:20:"top-bar-left-content";s:79:"Create you own custom course. <a href=\\"#\\" title=\\"Learn How?\\">Learn How?</a>";s:17:"newsletter-listid";s:0:"";s:14:"show-sociables";s:2:"on";s:11:"show-footer";s:2:"on";s:14:"footer-columns";s:1:"4";s:18:"show-copyrighttext";s:2:"on";s:14:"copyright-text";s:105:"&copy; 2014 - Guru - by <a href=\\"http://themeforest.net/user/designthemes\\" title=\\"\\">Design Themes</a>";}s:6:"social";a:4:{s:8:"social-1";a:2:{s:4:"icon";s:11:"fa-facebook";s:4:"link";s:1:"#";}s:8:"social-2";a:2:{s:4:"icon";s:10:"fa-twitter";s:4:"link";s:1:"#";}s:8:"social-3";a:2:{s:4:"icon";s:9:"fa-flickr";s:4:"link";s:1:"#";}s:8:"social-4";a:2:{s:4:"icon";s:10:"fa-youtube";s:4:"link";s:1:"#";}}s:10:"appearance";a:81:{s:11:"header_type";s:7:"header1";s:18:"menu-standard-font";s:0:"";s:24:"menu-standard-font-style";s:0:"";s:9:"menu-font";s:0:"";s:14:"menu-font-size";s:0:"";s:18:"menu-primary-color";s:1:"#";s:20:"menu-secondary-color";s:1:"#";s:18:"body-standard-font";s:0:"";s:24:"body-standard-font-style";s:0:"";s:9:"body-font";s:0:"";s:15:"body-font-color";s:1:"#";s:14:"body-font-size";s:0:"";s:18:"body-primary-color";s:1:"#";s:20:"body-secondary-color";s:1:"#";s:26:"footer-title-standard-font";s:0:"";s:32:"footer-title-standard-font-style";s:0:"";s:17:"footer-title-font";s:0:"";s:23:"footer-title-font-color";s:1:"#";s:16:"footer-font-size";s:0:"";s:28:"footer-content-standard-font";s:0:"";s:34:"footer-content-standard-font-style";s:0:"";s:19:"footer-content-font";s:0:"";s:25:"footer-content-font-color";s:1:"#";s:24:"footer-content-font-size";s:0:"";s:20:"footer-primary-color";s:1:"#";s:22:"footer-secondary-color";s:1:"#";s:15:"footer-bg-color";s:1:"#";s:18:"copyright-bg-color";s:1:"#";s:16:"H1-standard-font";s:0:"";s:22:"H1-standard-font-style";s:0:"";s:7:"H1-font";s:0:"";s:13:"H1-font-color";s:1:"#";s:7:"H1-size";s:0:"";s:16:"H2-standard-font";s:0:"";s:22:"H2-standard-font-style";s:0:"";s:7:"H2-font";s:0:"";s:13:"H2-font-color";s:1:"#";s:7:"H2-size";s:0:"";s:16:"H3-standard-font";s:0:"";s:22:"H3-standard-font-style";s:0:"";s:7:"H3-font";s:0:"";s:13:"H3-font-color";s:1:"#";s:7:"H3-size";s:0:"";s:16:"H4-standard-font";s:0:"";s:22:"H4-standard-font-style";s:0:"";s:7:"H4-font";s:0:"";s:13:"H4-font-color";s:1:"#";s:7:"H4-size";s:0:"";s:16:"H5-standard-font";s:0:"";s:22:"H5-standard-font-style";s:0:"";s:7:"H5-font";s:0:"";s:13:"H5-font-color";s:1:"#";s:7:"H5-size";s:0:"";s:16:"H6-standard-font";s:0:"";s:22:"H6-standard-font-style";s:0:"";s:7:"H6-font";s:0:"";s:13:"H6-font-color";s:1:"#";s:7:"H6-size";s:0:"";s:6:"layout";s:4:"wide";s:7:"bg-type";s:7:"bg-none";s:20:"boxed-layout-pattern";s:13:"pattern11.png";s:27:"boxed-layout-pattern-repeat";s:6:"repeat";s:26:"boxed-layout-pattern-color";s:1:"#";s:28:"boxed-layout-pattern-opacity";s:0:"";s:15:"boxed-layout-bg";s:0:"";s:22:"boxed-layout-bg-repeat";s:0:"";s:24:"boxed-layout-bg-position";s:0:"";s:21:"boxed-layout-bg-color";s:1:"#";s:23:"boxed-layout-bg-opacity";s:0:"";s:23:"styling-topbar-bg-color";s:1:"#";s:25:"styling-topbar-text-color";s:1:"#";s:23:"styling-header-bg-color";s:1:"#";s:34:"styling-header-active-menubg-color";s:1:"#";s:22:"styling-bread-bg-color";s:1:"#";s:24:"styling-bread-text-color";s:1:"#";s:21:"styling-body-bg-color";s:1:"#";s:23:"styling-footer-bg-color";s:1:"#";s:25:"styling-footer-text-color";s:1:"#";s:27:"styling-sub-footer-bg-color";s:1:"#";s:29:"styling-sub-footer-text-color";s:1:"#";s:4:"skin";s:9:"dark-blue";}s:11:"integration";a:31:{s:11:"header-code";s:0:"";s:9:"body-code";s:0:"";s:10:"custom-css";s:0:"";s:20:"single-post-top-code";s:0:"";s:23:"single-post-bottom-code";s:0:"";s:22:"post-googleplus-layout";s:5:"small";s:20:"post-googleplus-lang";s:5:"en_GB";s:19:"post-fb_like-layout";s:9:"box_count";s:25:"post-fb_like-color-scheme";s:5:"light";s:16:"post-digg-layout";s:8:"DiggWide";s:23:"post-stumbleupon-layout";s:1:"5";s:20:"post-linkedin-layout";s:1:"2";s:20:"post-pintrest-layout";s:4:"none";s:19:"post-delicious-text";s:0:"";s:21:"post-twitter-username";s:0:"";s:19:"post-twitter-layout";s:8:"vertical";s:17:"post-twitter-lang";s:0:"";s:20:"single-page-top-code";s:0:"";s:23:"single-page-bottom-code";s:0:"";s:22:"page-googleplus-layout";s:5:"small";s:20:"page-googleplus-lang";s:5:"en_GB";s:19:"page-fb_like-layout";s:9:"box_count";s:25:"page-fb_like-color-scheme";s:5:"light";s:16:"page-digg-layout";s:8:"DiggWide";s:23:"page-stumbleupon-layout";s:1:"5";s:20:"page-linkedin-layout";s:1:"2";s:20:"page-pintrest-layout";s:4:"none";s:19:"page-delicious-text";s:0:"";s:21:"page-twitter-username";s:0:"";s:19:"page-twitter-layout";s:8:"vertical";s:17:"page-twitter-lang";s:0:"";}s:9:"specialty";a:10:{s:15:"archives-layout";s:17:"with-left-sidebar";s:20:"archives-post-layout";s:0:"";s:23:"archives-gallery-design";s:7:"default";s:13:"search-layout";s:17:"with-left-sidebar";s:18:"search-post-layout";s:0:"";s:10:"404-layout";s:18:"content-full-width";s:11:"404-message";s:146:"<h2>The page you are looking for is not here!</h2><p>Sorry, the post you are looking for is not available. Maybe you want to perform a search?</p>";s:12:"message-font";s:0:"";s:18:"message-font-color";s:1:"#";s:17:"message-font-size";s:0:"";}s:10:"widgetarea";a:6:{s:5:"pages";a:1:{i:0;s:0:"";}s:5:"posts";a:1:{i:0;s:0:"";}s:4:"cats";a:1:{i:0;s:0:"";}s:8:"products";a:1:{i:0;s:0:"";}s:16:"product-category";a:1:{i:0;s:0:"";}s:11:"product-tag";a:1:{i:0;s:0:"";}}s:3:"woo";a:5:{s:21:"shop-product-per-page";s:0:"";s:24:"shop-page-product-layout";s:15:"one-half-column";s:14:"product-layout";s:18:"content-full-width";s:23:"product-category-layout";s:18:"content-full-width";s:18:"product-tag-layout";s:18:"content-full-width";}s:11:"pagebuilder";a:1:{s:4:"page";s:4:"page";}s:6:"events";a:3:{s:20:"event-archive-layout";s:18:"content-full-width";s:19:"event-detail-layout";s:18:"content-full-width";s:21:"event-category-layout";s:18:"content-full-width";}s:6:"mobile";a:1:{s:19:"is-theme-responsive";s:4:"true";}s:7:"advance";a:1:{s:20:"buddhapanel-logo-url";s:0:"";}s:3:"seo";a:8:{s:15:"title-delimiter";s:1:"|";s:17:"post-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:10:"post_title";}s:17:"page-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:10:"post_title";}s:26:"category-page-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:14:"category_title";}s:25:"archive-page-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:4:"date";}s:21:"tag-page-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:3:"tag";}s:24:"search-page-title-format";a:2:{i:0;s:10:"blog_title";i:1;s:6:"search";}s:21:"404-page-title-format";a:1:{i:0;s:10:"blog_title";}}}', 'yes'),
(146, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(147, 'bb-config-location', 'C:\\xampp\\htdocs\\education/bb-config.php', 'yes'),
(148, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(149, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(150, 'bp-blogs-first-install', '', 'yes'),
(151, 'bp-disable-profile-sync', '', 'yes'),
(152, 'hide-loggedout-adminbar', '', 'yes'),
(153, 'bp-disable-avatar-uploads', '', 'yes'),
(154, 'bp-disable-cover-image-uploads', '', 'yes'),
(155, 'bp-disable-group-avatar-uploads', '', 'yes'),
(156, 'bp-disable-group-cover-image-uploads', '', 'yes'),
(157, 'bp-disable-account-deletion', '', 'yes'),
(158, 'bp-disable-blogforum-comments', '1', 'yes'),
(159, '_bp_theme_package_id', 'legacy', 'yes'),
(160, 'bp_restrict_group_creation', '', 'yes'),
(161, '_bp_enable_akismet', '1', 'yes'),
(162, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(163, '_bp_force_buddybar', '', 'yes'),
(164, '_bp_retain_bp_default', '', 'yes'),
(165, 'widget_bp_core_login_widget', '', 'yes'),
(166, 'widget_bp_core_members_widget', '', 'yes'),
(167, 'widget_bp_core_whos_online_widget', '', 'yes'),
(168, 'widget_bp_core_recently_active_widget', '', 'yes'),
(169, 'widget_bp_groups_widget', '', 'yes'),
(170, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(171, '_transient_timeout__bp_is_new_install', '1460196533', 'no'),
(172, '_transient__bp_is_new_install', '1', 'no'),
(175, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.4.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1460196504;s:7:"version";s:5:"4.4.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(176, 'ls-plugin-version', '5.1.1', 'yes'),
(177, 'ls-db-version', '5.0.0', 'yes'),
(178, 'ls-installed', '1', 'yes'),
(179, 'ls-google-fonts', 'a:4:{i:0;a:2:{s:5:"param";s:28:"Lato:100,300,regular,700,900";s:5:"admin";b:0;}i:1;a:2:{s:5:"param";s:13:"Open+Sans:300";s:5:"admin";b:0;}i:2;a:2:{s:5:"param";s:20:"Indie+Flower:regular";s:5:"admin";b:0;}i:3;a:2:{s:5:"param";s:22:"Oswald:300,regular,700";s:5:"admin";b:0;}}', 'yes'),
(180, 'revslider_checktables', '1', 'yes'),
(181, 'revslider-static-css', '.tp-caption a {\ncolor:#ff7302;\ntext-shadow:none;\n-webkit-transition:all 0.2s ease-out;\n-moz-transition:all 0.2s ease-out;\n-o-transition:all 0.2s ease-out;\n-ms-transition:all 0.2s ease-out;\n}\n\n.tp-caption a:hover {\ncolor:#ffa902;\n}', 'yes'),
(182, 'revslider-update-check-short', '1460196508', 'yes'),
(185, 'postratings_image', 'stars', 'yes'),
(186, 'postratings_max', '5', 'yes'),
(187, 'postratings_template_vote', '%RATINGS_IMAGES_VOTE% (<strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%)<br />%RATINGS_TEXT%', 'yes'),
(188, 'postratings_template_text', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%, <strong>rated</strong></em>)', 'yes'),
(189, 'postratings_template_none', '%RATINGS_IMAGES_VOTE% (No Ratings Yet)<br />%RATINGS_TEXT%', 'yes'),
(190, 'postratings_logging_method', '3', 'yes'),
(191, 'postratings_allowtorate', '2', 'yes'),
(192, 'postratings_ratingstext', 'a:5:{i:0;s:6:"1 Star";i:1;s:7:"2 Stars";i:2;s:7:"3 Stars";i:3;s:7:"4 Stars";i:4;s:7:"5 Stars";}', 'yes'),
(193, 'postratings_template_highestrated', '<li><a href="%POST_URL%" title="%POST_TITLE%">%POST_TITLE%</a> %RATINGS_IMAGES% (%RATINGS_AVERAGE% out of %RATINGS_MAX%)</li>', 'yes'),
(194, 'postratings_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(195, 'postratings_ratingsvalue', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', 'yes'),
(196, 'postratings_customrating', '0', 'yes'),
(197, 'postratings_template_permission', '%RATINGS_IMAGES% (<em><strong>%RATINGS_USERS%</strong> votes, average: <strong>%RATINGS_AVERAGE%</strong> out of %RATINGS_MAX%</em>)<br /><em>You need to be a registered member to rate this post.</em>', 'yes'),
(198, 'postratings_template_mostrated', '<li><a href="%POST_URL%"  title="%POST_TITLE%">%POST_TITLE%</a> - %RATINGS_USERS% votes</li>', 'yes'),
(199, 'woocommerce_default_country', 'GB', 'yes'),
(200, 'woocommerce_allowed_countries', 'all', 'yes'),
(201, 'woocommerce_specific_allowed_countries', '', 'yes'),
(202, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(203, 'woocommerce_demo_store', 'no', 'yes'),
(204, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(205, 'woocommerce_currency', 'GBP', 'yes'),
(206, 'woocommerce_currency_pos', 'left', 'yes'),
(207, 'woocommerce_price_thousand_sep', ',', 'yes'),
(208, 'woocommerce_price_decimal_sep', '.', 'yes'),
(209, 'woocommerce_price_num_decimals', '2', 'yes'),
(210, 'woocommerce_weight_unit', 'kg', 'yes'),
(211, 'woocommerce_dimension_unit', 'cm', 'yes'),
(212, 'woocommerce_enable_review_rating', 'yes', 'no'),
(213, 'woocommerce_review_rating_required', 'yes', 'no'),
(214, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(215, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(216, 'woocommerce_shop_page_id', '', 'yes'),
(217, 'woocommerce_shop_page_display', '', 'yes'),
(218, 'woocommerce_category_archive_display', '', 'yes'),
(219, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(220, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(221, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(222, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(223, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(224, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(225, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(226, 'woocommerce_manage_stock', 'yes', 'yes'),
(227, 'woocommerce_hold_stock_minutes', '60', 'no'),
(228, 'woocommerce_notify_low_stock', 'yes', 'no'),
(229, 'woocommerce_notify_no_stock', 'yes', 'no'),
(230, 'woocommerce_stock_email_recipient', 'ashraful@gstlbd.com', 'no'),
(231, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(232, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(233, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(234, 'woocommerce_stock_format', '', 'yes'),
(235, 'woocommerce_file_download_method', 'force', 'no'),
(236, 'woocommerce_downloads_require_login', 'no', 'no'),
(237, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(238, 'woocommerce_calc_taxes', 'no', 'yes'),
(239, 'woocommerce_prices_include_tax', 'no', 'yes'),
(240, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(241, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(242, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(243, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(244, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(245, 'woocommerce_tax_display_cart', 'excl', 'no'),
(246, 'woocommerce_price_display_suffix', '', 'yes'),
(247, 'woocommerce_tax_total_display', 'itemized', 'no'),
(248, 'woocommerce_enable_coupons', 'yes', 'no'),
(249, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(250, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(251, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(252, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(253, 'woocommerce_cart_page_id', '', 'yes'),
(254, 'woocommerce_checkout_page_id', '', 'yes'),
(255, 'woocommerce_terms_page_id', '', 'no'),
(256, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(257, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(258, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(259, 'woocommerce_calc_shipping', 'no', 'yes'),
(260, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(261, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(262, 'woocommerce_ship_to_destination', 'billing', 'no'),
(263, 'woocommerce_ship_to_countries', '', 'yes'),
(264, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(265, 'woocommerce_myaccount_page_id', '', 'yes'),
(266, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(267, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(268, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(269, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(270, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(271, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(272, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(273, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(274, 'woocommerce_registration_generate_username', 'yes', 'no'),
(275, 'woocommerce_registration_generate_password', 'no', 'no'),
(276, 'woocommerce_email_from_name', 'Education', 'no'),
(277, 'woocommerce_email_from_address', 'ashraful@gstlbd.com', 'no'),
(278, 'woocommerce_email_header_image', '', 'no'),
(279, 'woocommerce_email_footer_text', 'Education - Powered by WooCommerce', 'no'),
(280, 'woocommerce_email_base_color', '#557da1', 'no'),
(281, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(282, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(283, 'woocommerce_email_text_color', '#505050', 'no'),
(284, 'woocommerce_api_enabled', 'yes', 'yes'),
(286, 'woocommerce_admin_notices', 'a:1:{i:0;s:7:"install";}', 'yes'),
(289, 'woocommerce_db_version', '2.5.5', 'yes'),
(290, 'woocommerce_version', '2.5.5', 'yes'),
(292, 'yit_recently_activated', 'a:0:{}', 'yes'),
(293, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1460357357', 'no'),
(294, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(295, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1460357358', 'no'),
(296, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(297, 'recently_activated', 'a:0:{}', 'yes'),
(299, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(300, 'yith_wcmg_slider_direction', 'left', 'yes'),
(301, '_transient_woocommerce_cache_excluded_uris', 'a:0:{}', 'yes'),
(302, '_transient_timeout_geoip_::1', '1460801411', 'no'),
(303, '_transient_geoip_::1', '', 'no'),
(304, '_transient_timeout_external_ip_address_::1', '1460801412', 'no'),
(305, '_transient_external_ip_address_::1', '45.114.182.108', 'no'),
(306, '_transient_timeout_geoip_45.114.182.108', '1460801434', 'no'),
(307, '_transient_geoip_45.114.182.108', '', 'no'),
(308, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(309, 'tribe_events_calendar_options', 'a:4:{s:14:"schema-version";s:7:"4.1.1.1";s:27:"recurring_events_are_hidden";s:6:"hidden";s:21:"previous_ecp_versions";a:1:{i:0;s:1:"0";}s:18:"latest_ecp_version";s:7:"4.1.1.1";}', 'yes'),
(310, 'widget_layerslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(311, 'widget_bbp_login_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(312, 'widget_bbp_views_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(313, 'widget_bbp_search_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(314, 'widget_bbp_forums_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'widget_bbp_topics_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(316, 'widget_bbp_replies_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(317, 'widget_bbp_stats_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(318, 'widget_rev-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(319, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(320, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(321, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(322, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(323, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(324, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(325, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(326, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(327, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(329, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(330, 'widget_ratings-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(331, 'widget_tribe-events-list-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(332, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(334, 'registration', '0', 'yes'),
(335, 'tribe_last_save_post', '1460199243', 'yes'),
(337, '_bbp_private_forums', 'a:0:{}', 'yes'),
(338, '_bbp_hidden_forums', 'a:0:{}', 'yes'),
(339, '_bbp_db_version', '250', 'yes'),
(340, 'bp-active-components', 'a:5:{s:8:"activity";i:1;s:7:"members";i:1;s:8:"settings";i:1;s:8:"xprofile";i:1;s:13:"notifications";i:1;}', 'yes'),
(341, 'bp-pages', 'a:2:{s:8:"activity";i:5;s:7:"members";i:6;}', 'yes'),
(343, '_bp_db_version', '10469', 'yes'),
(344, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(346, 'yith_wcwl_enabled', 'yes', 'yes'),
(347, 'yith_wcwl_wishlist_title', 'My wishlist on Education', 'yes'),
(348, 'yith_wcwl_wishlist_page_id', '39', 'yes'),
(349, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(350, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(351, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(352, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(353, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(354, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(355, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(356, 'yith_wcwl_price_show', 'yes', 'yes'),
(357, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(358, 'yith_wcwl_stock_show', 'yes', 'yes'),
(359, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(360, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(361, 'yith_wcwl_use_button', 'no', 'yes'),
(362, 'yith_wcwl_custom_css', '', 'yes'),
(363, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(364, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(365, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(366, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(367, 'yith_wcwl_share_fb', 'yes', 'yes'),
(368, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(369, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(370, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(371, 'yith_wcwl_share_email', 'yes', 'yes'),
(372, 'yith_wcwl_socials_title', 'My wishlist on Education', 'yes'),
(373, 'yith_wcwl_socials_text', '', 'yes'),
(374, 'yith_wcwl_socials_image_url', '', 'yes'),
(375, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(376, 'yith-wcwl-page-id', '39', 'yes'),
(377, 'yith_wcwl_version', '2.0.15', 'yes'),
(378, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(379, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:102:"http://localhost/education/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(380, 'yith_wcas_general_videobox', 'a:7:{s:11:"plugin_name";s:31:"YITH WooCommerce Zoom Magnifier";s:18:"title_first_column";s:30:"Discover The Advanced Features";s:24:"description_first_column";s:95:"Upgrade to the PREMIUM VERSION of YITH WOOCOMMERCE ZOOM MAGNIFIER to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"122436840";s:15:"video_image_url";s:133:"http://localhost/education/wp-content/plugins/yith-woocommerce-zoom-magnifier/assets/images/yith-woocommerce-zoom-magnifier-video.jpg";s:17:"video_description";s:79:"See YITH WooCommerce Zoom Magnifier plugin with full premium features in action";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:203:"Purchasing the premium version of the plugin, you will take advantage of the advanced features of the product, and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:84:"http://yithemes.com/themes/plugins/yith-woocommerce-zoom-magnifier/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(381, 'yith_wcmg_enable_plugin', 'yes', 'yes'),
(382, 'yith_wcmg_enable_mobile', 'yes', 'yes'),
(383, 'yith_wcmg_force_sizes', 'yes', 'yes'),
(384, 'yith_wcmg_zoom_width', 'auto', 'yes'),
(385, 'yith_wcmg_zoom_height', 'auto', 'yes'),
(386, 'woocommerce_magnifier_image', 'a:3:{s:5:"width";i:600;s:6:"height";i:600;s:4:"crop";b:1;}', 'yes'),
(387, 'yith_wcmg_zoom_position', 'right', 'yes'),
(388, 'yith_wcmg_zoom_mobile_position', 'inside', 'yes'),
(389, 'yith_wcmg_loading_label', 'Loading...', 'yes'),
(390, 'yith_wcmg_lens_opacity', '0.5', 'yes'),
(391, 'yith_wcmg_softfocus', 'no', 'yes'),
(392, 'yith_wcmg_enableslider', 'yes', 'yes'),
(393, 'yith_wcmg_slider_responsive', 'yes', 'yes'),
(394, 'yith_wcmg_slider_items', '3', 'yes'),
(395, 'yith_wcmg_slider_circular', 'yes', 'yes'),
(396, 'yith_wcmg_slider_infinite', 'yes', 'yes'),
(397, '_transient_timeout_feed_0d102f2a1f4d6bc90eb8c6ffe18e56ed', '1460239972', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(398, '_transient_feed_0d102f2a1f4d6bc90eb8c6ffe18e56ed', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"The Events Calendar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:29:"https://theeventscalendar.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress event plugins for people who kick ass";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 09 Apr 2016 09:23:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Release: The Events Calendar 4.1.1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://theeventscalendar.com/release-the-events-calendar-4-1-1-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 07 Apr 2016 19:38:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1099777";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:589:"<p>Hey folks, we want to interrupt our normal broadcasting to let you know that The Events Calendar 4.1.1.1 is now available and we strongly recommend you update. This release includes two patches that make the plugin much more secure. There was no immediate danger in previous versions, but a couple of spots that were found and&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-1-1/">Release: The Events Calendar 4.1.1.1</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Geoff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1761:"<p>Hey folks, we want to interrupt our normal broadcasting to let you know that <strong>The Events Calendar 4.1.1.1</strong> is now available and we strongly recommend you update.</p>\n<p>This release includes two patches that make the plugin much more secure. There was no immediate danger in previous versions, but a couple of spots that were found and we wanted to err on the safe side of things and get those out to you as soon as possible, rather than waiting for our next maintenance release.</p>\n<p>This will be a smooth and simple update for those of you who are already running The Events Calendar 4.1 or greater. If you&#8217;re on anything below, please do <a href="https://theeventscalendar.com/category/products/release-notes/">review our past release notes</a> and use caution when updating. Yes, that means testing in a development environment and <a href="https://codex.wordpress.org/WordPress_Backups">backing up</a>!</p>\n<p>Here&#8217;s what&#8217;s new:</p>\n<ul>\n<li><strong>Security:</strong> Tightened up security with post type link filtering</li>\n<li><strong>Security:</strong> Tightened up security around tribe bar submissions</li>\n</ul>\n<p>Serious high fives are in order for Nadal Soler and Paul Mynarsky for not only bringing these to our attention but for helping us pen the solutions as well. You guys rock!</p>\n<p><img class="alignnone size-full wp-image-1099783" src="https://theeventscalendar.com/content/uploads/2016/04/colbert.gif" alt="colbert" width="700" height="393" /></p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-1-1/">Release: The Events Calendar 4.1.1.1</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"3 Critical Attendee Emails You Should Send for Every Event";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://theeventscalendar.com/critical-attendee-emails-for-every-event/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 04 Apr 2016 21:16:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:8:"Articles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"communication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:5:"email";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:15:"event marketing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1098000";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:646:"<p>Attendee emails are a critical component of event marketing. Long before guests arrive and check in for your event, they&#8217;ve already formed an impression of you based on your email communications. There&#8217;s certainly an art to figuring out the &#8220;right&#8221; number of emails to send to your attendees. A conference that sells tickets nearly a&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/critical-attendee-emails-for-every-event/">3 Critical Attendee Emails You Should Send for Every Event</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jen Jamar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6138:"<p>Attendee emails are a critical component of event marketing. Long before guests arrive and check in for your event, they&#8217;ve already formed an impression of you based on your email communications.</p>\n<p>There&#8217;s certainly an art to figuring out the &#8220;right&#8221; number of emails to send to your attendees. A conference that sells tickets nearly a year in advance will likely send more emails to ticket holders than a local workshop happening in one week. Though the frequency and type of messages will vary based on your particular event, you can count on these three making up the core of your email communications.</p>\n<h2>3 Must-Send Attendee Emails</h2>\n<h3>#1: Registration Confirmation Email</h3>\n<p>When you&#8217;re selling online tickets to your event, it&#8217;s important to provide an email confirmation that serves as an easy reference where attendees can find all of the necessary information they need. Key elements to include:</p>\n<ul>\n<li>Event name</li>\n<li>Event date</li>\n<li>Event time</li>\n<li>Event location (map links are very helpful)</li>\n<li>Ticket details</li>\n<li>Any special information</li>\n<li>Contact for questions</li>\n</ul>\n<p>This email is arguably the most important email you&#8217;ll send to your attendees. Even if they do not read it right away, it&#8217;s the email least likely to be deleted because of the importance of the information it contains.</p>\n<p><em>Tip: With our <a href="https://theeventscalendar.com/product/wordpress-event-tickets-plus/">Event Tickets Plus</a> plugin, you can customize the ticket email using our <a href="https://theeventscalendar.com/knowledgebase/themers-guide/">Themer&#8217;s Guide</a> to edit your <strong>tickets/email.php</strong> template. </em></p>\n<h3>#2: Reminder Email</h3>\n<p>A friendly reminder email helps prepare attendees for your upcoming event. Besides reminding them of date and time, you can also use this email to answer last-minute questions. Helpful details to include:</p>\n<ul>\n<li>Directions</li>\n<li>Parking information</li>\n<li>Dress code</li>\n<li>What to bring</li>\n<li>Event hashtag and/or social media information</li>\n<li>Links to relevant blog posts about the event</li>\n</ul>\n<p>In general, your event reminder email should be sent 24-48 hours in advance of events that do not require travel, and 10-14 days in advance of events where travel is involved.</p>\n<p><em>Tip: You can <a href="https://theeventscalendar.com/knowledgebase/managing-your-orders-and-attendees/">export attendee data to a CSV file</a> with Event Tickets Plus, making it easy to contact attendees through your existing email service provider.  </em></p>\n<h3>#3: Attendee Thank You Email (Post-Event Wrapup)</h3>\n<p>One of the most under-utilized event emails is the attendee thank you message. This touchpoint provides a valuable opportunity to promote other upcoming events, collect attendee feedback, and guide attendees towards the next step you want them to take.</p>\n<p>Here&#8217;s a sample thank you email you can modify to suit your particular event:</p>\n<p style="padding-left: 30px;">(First Name),</p>\n<p style="padding-left: 30px;">Thank you so much for attending (event name) this past (day of the week)! We are proud to have brought together such an amazing group of (audience and/or speaker type) to (describe event topic).</p>\n<p style="padding-left: 30px;">Please take a moment to help us improve future (event types) by taking a brief (survey length) survey. Your feedback is extremely valuable to our ongoing effort to offer (event goal).</p>\n<p style="padding-left: 30px;">(Event materials) can be found/will be posted (location or timeframe).</p>\n<p style="padding-left: 30px;">Be sure to mark your calendars for (next event) on (date). Registration information is/will be available on our website.</p>\n<p style="padding-left: 30px;">Thank you again for being part of such a wonderful (event type) experience. (I/we) look forward to (future action) again soon!</p>\n<p style="padding-left: 30px;">(Salutation)<br />\n(Name or event team)</p>\n<p>This is how it might look for a real estate agent that just hosted a workshop for first-time home buyers:</p>\n<p style="padding-left: 30px;">Jill,</p>\n<p style="padding-left: 30px;">Thank you so much for attending our first-time homebuyer&#8217;s workshop this past Tuesday! We are proud to have brought together such an amazing group of local experts to help new home buyers like yourself sort through the different options for financing your first home.</p>\n<p style="padding-left: 30px;">Please take a moment to help us improve future workshops by taking a brief 5 question survey. Your feedback is extremely valuable to our ongoing effort to offer free educational resources to other home buyers like yourself.</p>\n<p style="padding-left: 30px;">The finance worksheets and loan calculators used during the workshop can be found on our resource page: awesomemadeuprealtor.com/resources.</p>\n<p style="padding-left: 30px;">Be sure to mark your calendar for our Minneapolis home tour on Sunday, May 13th. Registration information is available on our website: awesomemadeuprealtor.com/hometour</p>\n<p style="padding-left: 30px;">Thank you again for being part of such a wonderful workshop group. I look forward to working with you soon!</p>\n<p style="padding-left: 30px;">Thanks,<br />\nKatie HomeSeller</p>\n<h3>Final Thoughts Before You Press Send</h3>\n<p>Before you press send on any of the emails we&#8217;ve outlined above, be sure you proofread them carefully. Pay attention to grammar, punctuation, and spelling, as well as your use of headings for scannability.</p>\n<p>When possible, segment your email list and customize your messages for each group of recipients. The better you communicate with your attendees, the more likely they&#8217;ll be to return for your next event.</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/critical-attendee-emails-for-every-event/">3 Critical Attendee Emails You Should Send for Every Event</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Release: The Events Calendar 4.1.1 + premium add-ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://theeventscalendar.com/release-the-events-calendar-4-1-1-premium-add-ons/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 30 Mar 2016 22:21:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1095995";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:604:"<p>We&#8217;re stoked to let you know that The Events Calendar 4.1.1 is officially on the shelf and ready for your enjoyment. Our last release went out two weeks ago, and we were able to pack in a whopping twenty-seven tweaks and bug fixes since then that will help make your calendars and events management systems&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-1-premium-add-ons/">Release: The Events Calendar 4.1.1 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Geoff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8108:"<p>We&#8217;re stoked to let you know that The Events Calendar 4.1.1 is officially on the shelf and ready for your enjoyment. Our <a href="https://theeventscalendar.com/release-the-events-calendar-4-1-premium-add-ons/">last release</a> went out two weeks ago, and we were able to pack in a whopping <strong>twenty-seven tweaks and bug fixes</strong> since then that will help make your calendars and events management systems that much better.</p>\n<p>As always, we encourage you to <a href="https://codex.wordpress.org/WordPress_Backups">safely backup</a> your WordPress files and database before updating. We expect a smooth update for those of you already running 4.1 or higher, but it&#8217;s a good practice to backup anyway. And for those of you running earlier versions of the plugins, please review <a href="https://theeventscalendar.com/category/products/release-notes/">our release notes</a> because breaking changes were introduced in both 4.0 and 4.1. You will certainly want to review the changes in these versions before updating to them on a live site.</p>\n<p>Now, on to what&#8217;s new:</p>\n<ul>\n<li><a href="#tec">The Events Calendar 4.1.1</a></li>\n<li><a href="#pro">Events Calendar PRO 4.1.1</a></li>\n<li><a href="#comm">Community Events 4.1.1</a></li>\n<li><a href="#ical">iCal Importer 4.1.1</a></li>\n<li><a href="#eventbrite">Eventbrite Tickets 4.1.1</a></li>\n<li><a href="#et">Event Tickets 4.1.1</a></li>\n<li><a href="#etp">Event Tickets Plus 4.1.1</a></li>\n</ul>\n<hr />\n<h3 id="tec">The Events Calendar 4.1.1</h3>\n<ul>\n<li><strong>Fix &#8211;</strong> Resolved bug where array notices were output on single event pages when venues were not set (<a href="https://theeventscalendar.com/support/forums/topic/venue-displaying-as-array-on-upcoming-events-list-view/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the Month View in mobile sizes retained the long day-of-week names when the abbreviations should have been used (<a href="https://theeventscalendar.com/support/forums/topic/mobile-view-3-letters-for-day-of-week/">Forum Report</a>)</li>\n<li><strong>Fix &#8211;</strong> Fixed bug where a &#8220;0&#8221; was added to the default venue name when creating a new event</li>\n<li><strong>Fix &#8211;</strong> Fixed notice that caused AJAX requests to fail (<a href="https://theeventscalendar.com/support/forums/topic/previousnext-feature-not-working-how-do-i-figure-this-out/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Removed quotes from around TZID-specified timezones in iCal feeds which causes problems with some parsers</li>\n<li><strong>Fix &#8211;</strong> Resolved various capitalization issues with German translations (<a href="https://theeventscalendar.com/support/forums/topic/translations-issues-with-events-community-v4-0-5/">Forum report</a>)</li>\n</ul>\n<hr />\n<h3 id="pro">Events Calendar PRO 4.1.1</h3>\n<ul>\n<li><strong>Tweak &#8211;</strong> Changed the <em>This Week</em> widget query filter to a unique name</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the Week View was always using UTC rather than the configured timezone when determining the start of the week (<a href="https://theeventscalendar.com/support/forums/topic/timezone-issue/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Fixed bug where the first event in a recurring series would not render the start or end times (<a href="https://theeventscalendar.com/support/forums/topic/still-not-fixed-with-new-update/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved various capitalization issues with German translations (<a href="https://theeventscalendar.com/support/forums/topic/translations-issues-with-events-community-v4-0-5/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where some Theme Customizer headings were not translatable</li>\n</ul>\n<hr />\n<h3 id="comm">Community Events 4.1.1</h3>\n<ul>\n<li><strong>Fix &#8211;</strong> Allow the organizer metabox on the community add form to be overridden by themers via the new template: <em>community/modules/organizer-multiple.php</em> (<a href="https://theeventscalendar.com/support/forums/topic/add-required-label-to-organizer-fields/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the &#8220;Before HTML&#8221; content was sometimes duplicated on community pages (<a href="https://theeventscalendar.com/support/forums/topic/submission-form-duplicating-content-for-top-of-the-page/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Removed whitespace to fix translation of submitted events (<a href="https://theeventscalendar.com/support/forums/topic/translations-issues-with-events-community-v4-0-5/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved various capitalization issues with German translations (<a href="https://theeventscalendar.com/support/forums/topic/translations-issues-with-events-community-v4-0-5/">Forum report</a>)</li>\n</ul>\n<hr />\n<h3 id="ical">iCal Importer 4.1.1</h3>\n<ul>\n<li><strong>Fix &#8211; </strong>Resolved issue where timezones specified within iCal feeds were not being respected during import (<a href="https://theeventscalendar.com/support/forums/topic/timezones-not-working/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where imported organizer names were sometimes wrapped in double quotes</li>\n<li><strong>Fix &#8211;</strong> Add support for importing organizer email addresses along with organizer names</li>\n</ul>\n<hr />\n<h3 id="eventbrite">Eventbrite Tickets 4.1.1</h3>\n<ul>\n<li><strong>Fix &#8211;</strong> Resolved issue where HTML entities were double-escaped when publishing the title and other non-wysiwyg fields</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where the Eventbrite-specified country failed to import properly (<a href="https://theeventscalendar.com/support/forums/topic/eventbrite-import-removes-country-from-event-address/">Forum report</a>)</li>\n</ul>\n<hr />\n<h3 id="et">Event Tickets 4.1.1</h3>\n<ul>\n<li><strong>Tweak &#8211;</strong> Add filters for generated attendee and order data: tribe_tickets_attendee_data and tribe_tickets_order_data, respectively</li>\n<li><strong>Tweak &#8211;</strong> Relocated the generation of tickets to the template_redirect action because init was too early for proper permalink fetching</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where purchasing tickets was impossible if ticket stock was set to unlimited (<a href="https://theeventscalendar.com/support/forums/topic/critical-bug-woocommerce-ticket-quantity-input-resets-to-zero-in-4-1/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where the customer name and customer email address had been removed from the attendee export CSV (<a href="https://theeventscalendar.com/support/forums/topic/attendees-list-is-missing-purchaser-name-since-4-1-update/">Forum report</a>)</li>\n</ul>\n<hr />\n<h3 id="etp">Events Tickets Plus 4.1.1</h3>\n<ul>\n<li><strong>Tweak &#8211;</strong> Add filters for generated attendee and order data; tribe_tickets_attendee_data and tribe_tickets_order_data, respectively (<a href="https://theeventscalendar.com/support/forums/topic/strange-behaviour-of-stock-management/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where QR check-ins were falsely reporting that attendees were already checked in (<a href="http://theeventscalendar.com/support/forums/topic/qr-code-notice-the-ticket-id-xxx-was-checked-in/">Forum report</a>)</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where canceled and refunded orders were still being used in the WooCommerce order report revenue calculations (<a href="https://theeventscalendar.com/support/forums/topic/order-sales-report-cancelled-and-refunded-orders-still-counted/">Forum report</a>)</li>\n</ul>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-1-premium-add-ons/">Release: The Events Calendar 4.1.1 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"4 Killer Ways to Use Facebook for Event Marketing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://theeventscalendar.com/4-killer-ways-to-use-facebook-for-event-marketing/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 28 Mar 2016 19:42:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:4:{i:0;a:5:{s:4:"data";s:8:"Articles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:15:"event marketing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:15:"event promotion";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:8:"facebook";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1094732";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:631:"<p>Using Facebook for event marketing is an excellent way to increase registrations and ticket sales for your events. The best part? All of the methods we&#8217;ve shared below won&#8217;t cost you a penny. Free Ways to Use Facebook for Event Marketing Beyond adding share buttons to your calendar listings, there are some easy ways to leverage&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/4-killer-ways-to-use-facebook-for-event-marketing/">4 Killer Ways to Use Facebook for Event Marketing</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jen Jamar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:10861:"<p>Using Facebook for event marketing is an excellent way to increase registrations and ticket sales for your events. The best part? All of the methods we&#8217;ve shared below won&#8217;t cost you a penny.</p>\n<h2>Free Ways to Use Facebook for Event Marketing</h2>\n<p>Beyond <a href="https://theeventscalendar.com/knowledgebase/adding-social-media-sharing-to-events/">adding share buttons to your calendar listings</a>, there are some easy ways to leverage native Facebook features to get the word out about your events. To help illustrate the tips in this post, I&#8217;ve pulled examples from <a href="https://www.facebook.com/smexaminer" target="_blank">Social Media Examiner</a> around their upcoming Social Media Marketing World conference.</p>\n<h3>#1: Create a Facebook Event Page</h3>\n<p>Facebook event pages are a fantastic tool for event marketing. Besides containing all of your pertinent event information, they also have a few additional features worth noting:</p>\n<p><img class="aligncenter size-large wp-image-1094778" src="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-665x263.jpg" alt="Facebook event marketing: Event Example from Social Media Examiner" width="665" height="263" srcset="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-300x119.jpg 300w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-768x304.jpg 768w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-665x263.jpg 665w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-430x170.jpg 430w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example-645x255.jpg 645w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Event_Example.jpg 1566w" sizes="(max-width: 665px) 100vw, 665px" /></p>\n<p><strong>Event Type &amp; Host:</strong> When you create your event page, you can choose the type of event that is displayed. Events created using your business fan page will link to your business page as the host. Additional hosts can be selected if you are co-hosting the event with another organization.</p>\n<p style="padding-left: 30px;"><em>Tip: If you are co-hosting an event with another group, avoid duplicate event listings &amp; promotion efforts by listing both organizations as hosts on a single event page.</em></p>\n<p><strong>Ticket Link:</strong> Since Facebook does not yet support ticket sales directly through their platform, you can specify an external site, <a href="https://theeventscalendar.com/product/wordpress-event-tickets-plus/">such as your WordPress website</a>, where attendees can purchase tickets.</p>\n<p style="padding-left: 30px;"><em>Tip: Add Google UTM tracking codes to your ticket link to better track analytics on your Facebook event marketing.</em></p>\n<p><strong>Encourage Invites:</strong> The Invite button is one of the most powerful features of a Facebook event page. Users can invite friends to attend, share the event on their personal timeline, or share on their own business/fan page to help promote your event.</p>\n<p style="padding-left: 30px;"><em>Tip: Enlist your employees or friends to help promote your event by asking them to invite people from their personal networks. A word of caution against being spammy &#8211; you don&#8217;t need to invite everyone on your list &#8211; just those you believe would genuinely be interested in attending.</em></p>\n<p><b>Bonus Tip: </b>Our <a href="https://theeventscalendar.com/product/facebook-events/">Facebook Events importer plugin</a> makes it easy to import event listings from Facebook to your WordPress website calendar. Extra awesome &#8211; you can also use it to import events from other pages besides your own.</p>\n<h3>#2: Encourage Fans to Subscribe to Your Events</h3>\n<p>When created under your business/fan page, an Events tab is automatically added to your page. In addition to showcasing your page&#8217;s current and past events, this tab also offers the option for fans to subscribe to receive notifications when you update your events.</p>\n<p><img class="aligncenter size-large wp-image-1094770" src="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-665x439.jpg" alt="Event marketing using Facebook events - Social Media Examiner example" width="665" height="439" srcset="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-129x85.jpg 129w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-300x198.jpg 300w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-768x507.jpg 768w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-665x439.jpg 665w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-430x284.jpg 430w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Events_Tab-645x426.jpg 645w" sizes="(max-width: 665px) 100vw, 665px" /></p>\n<p>This tab is particularly valuable for those hosting multiple events. At a glance, fans can see all of your upcoming events in one place and tap a button to quickly express interest or purchase tickets.</p>\n<h3>#3: Update Your Facebook Cover Photo</h3>\n<p>The cover photo image on your business or fan page is prime real estate for event marketing. You can see this in action on the <a href="https://www.facebook.com/smexaminer" target="_blank">Social Media Examiner</a> Facebook page &#8211; as soon as you land on their page, you immediately see information about the conference they&#8217;re promoting.</p>\n<p><img class="aligncenter size-large wp-image-1094736" src="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-665x281.jpg" alt="Using Facebook for Event Marketing: Social Media Examiner Example" width="665" height="281" srcset="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-140x59.jpg 140w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-300x127.jpg 300w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-768x325.jpg 768w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-665x281.jpg 665w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-430x182.jpg 430w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Cover_Photo-645x273.jpg 645w" sizes="(max-width: 665px) 100vw, 665px" /></p>\n<p>When using your Facebook cover photo to promote an event, make sure you provide enough information so visitors understand what your event is all about. The goal here is awareness, which means you&#8217;ll want to provide ways for your fans to learn more about the event.</p>\n<p>Key elements to consider:</p>\n<ul>\n<li>Event Name</li>\n<li>Event Date</li>\n<li>Event Location</li>\n<li>Relevance to Your Fans</li>\n<li>Call To Action/Learn More</li>\n</ul>\n<p>Facebook cover photo promotion doesn&#8217;t have to be limited to large conferences or annual events. You can also use this space to promote recurring events, including meetups, workshops, classes, and more.</p>\n<h3>#4: Create Engaging Status Updates</h3>\n<p>Status updates are an easy way to market your event to potential attendees. The key to success is to make sure your updates are engaging and targeted to the right audience.</p>\n<p>Sometimes people get a bit confused about the difference between sharing updates on their Facebook fan page vs sharing updates in their Facebook event. Here&#8217;s an easy way to distinguish the difference:</p>\n<p style="padding-left: 30px;"><strong>Facebook FAN Page</strong> = All the people that have &#8220;liked&#8221; your fan page. Unless you are paying for ads, posts via your Facebook page are shown in the newsfeed of those who have already liked the page. Fan page updates are attributed to your company or organization.</p>\n<p style="padding-left: 30px;"><strong>Facebook EVENT Page</strong> = All the people that have expressed interest in attending your specific event. The people that are interested in attending your event may or may not already &#8220;like&#8221; your fan page. Event page updates can be posted using your personal profile OR attributed to your fan page.</p>\n<p>Posts published on your fan page are <span style="text-decoration: underline;">not</span> automatically posted to your event page, and vice versa. You&#8217;ll want to pick the post appropriate place to publish your post based on the desired audience (everyone that likes your page vs only those interested in your event).</p>\n<p>Status update ideas for events:</p>\n<ul>\n<li>Speaker announcements or session information</li>\n<li>Video teasers for the event</li>\n<li>Event announcements (schedule, sessions, parking, etc&#8230;)</li>\n<li>Media coverage</li>\n<li>Thought-provoking articles</li>\n<li>Questions or surveys</li>\n<li>Ticket deadlines or promotions</li>\n<li>Sponsor offers or incentives</li>\n</ul>\n<p>Event updates don&#8217;t have to be boring! You can include links, branded images, and custom text to make your updates stand out in the newsfeed.</p>\n<p><img class="aligncenter size-large wp-image-1094852" src="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example-665x913.jpg" alt="Facebook event marketing example: Status update featuring event speaker" width="665" height="913" srcset="https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example-62x85.jpg 62w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example-665x913.jpg 665w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example-430x590.jpg 430w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example-645x885.jpg 645w, https://theeventscalendar.com/content/uploads/2016/03/Social_Media_Examiner_Post_Example.jpg 736w" sizes="(max-width: 665px) 100vw, 665px" /></p>\n<p><em>Tip: Posts shared on your fan page can be re-shared in your event by clicking the timestamp and copy/pasting the URL of the status update. </em></p>\n<h2>The Sky Is The Limit</h2>\n<p>These are just a few ideas to get you started marketing your events for free using Facebook. If you have your own tips to share, please let us know in the comment below!</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/4-killer-ways-to-use-facebook-for-event-marketing/">4 Killer Ways to Use Facebook for Event Marketing</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"GigPress with The Events Calendar and Event Tickets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://theeventscalendar.com/gigpress-with-the-events-calendar-and-event-tickets/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 Mar 2016 15:00:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Articles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Products";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1092846";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:668:"<p>As part of our continued efforts to provide the best events management solutions for WordPress, Modern Tribe has purchased GigPress, a popular and established events plugin aimed at musicians, comedians, and other performers. GigPress joins our illustrious lineup of events plugins including The Events Calendar, Events Calendar PRO, and Event Tickets. Our events plugins get&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/gigpress-with-the-events-calendar-and-event-tickets/">GigPress with The Events Calendar and Event Tickets</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Leah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5366:"<p>As part of our continued efforts to provide the best events management solutions for WordPress, <a href="http://tri.be/blog/welcoming-gigpress-to-modern-tribe/">Modern Tribe has purchased GigPress</a>, a popular and established events plugin aimed at musicians, comedians, and other performers.</p>\n<p><a href="http://gigpress.com">GigPress</a> joins our illustrious lineup of events plugins including <a href="https://theeventscalendar.com/product/wordpress-events-calendar/">The Events Calendar</a>, <a href="https://theeventscalendar.com/product/wordpress-events-calendar-pro/">Events Calendar PRO</a>, and <a href="https://theeventscalendar.com/product/wordpress-event-tickets/">Event Tickets</a>. Our events plugins get along nicely with GigPress, and can be combined with existing show listings for a more full-service showcase of your performances.</p>\n<h3>GigPress + The Events Calendar = Awesome</h3>\n<p>If you&#8217;re looking to extend your show listings or want to showcase events other than performances, we&#8217;ve got you covered. GigPress and The Events Calendar go together like chocolate and peanut butter. Here&#8217;s a few ways that TEC can expand your GigPress listings:</p>\n<ul>\n<li>Add your show listings to a master calendar by importing a .csv file from GigPress. If you have our <a href="/product/ical-importer/">iCal Importer</a> plugin you could also do .ics file imports.</li>\n<li>List individual performers at a festival by dropping a GigPress shortcode into a single event page.</li>\n<li>Link to an emebellished event page in the GigPress External URL field to give your fans access to show flyers, audio clips, and other content.</li>\n</ul>\n<h3>Feature your shows in a full events calendar</h3>\n<p>GigPress is great for show listings, but sometimes you want to be able to feature other types of events. We&#8217;ve written a <a href="https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-month-view.zip">handy little mini plugin</a> that allows you to show off your GigPress shows right on The Event&#8217;s Calendar&#8217;s Month View. Sweet diggity!</p>\n<p><a href="https://theeventscalendar.com/gigpress-with-the-events-calendar-and-event-tickets/tec-gigpress/" rel="attachment wp-att-1093768"><img class="aligncenter size-large wp-image-1093768" src="https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-665x489.png" alt="tec-gigpress" width="665" height="489" srcset="https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-768x564.png 768w, https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-665x489.png 665w, https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-430x316.png 430w, https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress-645x474.png 645w, https://theeventscalendar.com/content/uploads/2016/03/tec-gigpress.png 1022w" sizes="(max-width: 665px) 100vw, 665px" /></a></p>\n<h3>Sell tickets directly from your site</h3>\n<p>Tired of sending fans off your site to buy their tickets? With our premium <a href="https://theeventscalendar.com/product/wordpress-event-tickets-plus/">Event Tickets Plus</a> plugin, you can sell tickets or collect RSVPs from any WordPress page or post, and keep users on your site from start to finish. Event Tickets Plus works with your favorite ecommerce plugin and has tons of great features for managing your own ticket sales. If all you need is RSVPs, check out our free <a href="/product/wordpress-event-tickets/">Event Tickets</a> plugin.</p>\n<p><a href="https://theeventscalendar.com/gigpress-with-the-events-calendar-and-event-tickets/new-concert-for-the-ryan-urban-band-copy/" rel="attachment wp-att-1093661"><img class="aligncenter size-full wp-image-1093661" src="https://theeventscalendar.com/content/uploads/2016/03/New-concert-for-The-Ryan-Urban-Band-–-copy.png" alt="GigPress with ETP" width="450" height="497" srcset="https://theeventscalendar.com/content/uploads/2016/03/New-concert-for-The-Ryan-Urban-Band-–-copy-77x85.png 77w, https://theeventscalendar.com/content/uploads/2016/03/New-concert-for-The-Ryan-Urban-Band-–-copy-272x300.png 272w, https://theeventscalendar.com/content/uploads/2016/03/New-concert-for-The-Ryan-Urban-Band-–-copy-430x475.png 430w, https://theeventscalendar.com/content/uploads/2016/03/New-concert-for-The-Ryan-Urban-Band-–-copy.png 450w" sizes="(max-width: 450px) 100vw, 450px" /></a></p>\n<h3>What&#8217;s next</h3>\n<p>We’re stoked to welcome <a href="https://wordpress.org/plugins/gigpress/">GigPress</a> into the Modern Tribe stable of plugins. GigPress will remain a free and open-source plugin alongside our core <a href="https://wordpress.org/plugins/the-events-calendar/">The Events Calendar</a> and <a href="https://wordpress.org/plugins/event-tickets/">Event Tickets</a>, with the same commitment to support. As for what the future holds, we&#8217;re eager to find out &#8211; and you can stay up to date by <a href="https://confirmsubscription.com/h/r/F35BA2B75B521339">joining our newsletter</a>. Keep on rockin&#8217;&#8230; we&#8217;ll be in touch!</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/gigpress-with-the-events-calendar-and-event-tickets/">GigPress with The Events Calendar and Event Tickets</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"Release: The Events Calendar 4.1.0.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://theeventscalendar.com/release-the-events-calendar-4-1-0-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2016 22:19:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1090614";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:578:"<p>As you may already know, we shipped The Events Calendar 4.1 yesterday. What you may not know is that it contained an errant issue that affected many of you with translated and multi-lingual sites. We noticed this almost immediately and appreciate all the reports we also received in the forums to confirm our need to&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-0-1/">Release: The Events Calendar 4.1.0.1</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Neill";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2180:"<p>As you may already know, we shipped The Events Calendar 4.1 yesterday. What you may not know is that it contained an errant issue that affected many of you with translated and multi-lingual sites. We noticed this almost immediately and appreciate all the reports we also received in the forums to confirm our need to fix it fast.</p>\n<p>Our support, development and QA teams have been working diligently these past 24 hours to get to the bottom of it and as such we are able to release an update that will fix that issue.</p>\n<p><strong><a href="https://wordpress.org/plugins/the-events-calendar/">The Events Calendar 4.1.0.1</a></strong> is a minor update to address the issue that was a caused by a language file in the 4.1 release. This meant that malformed URLs and incorrect (or sometimes missing) strings rendered German-translated sites navigationally unusable. This release fixes that and includes a functional German translation file along with updated translation files for other languages.</p>\n<p>If you&#8217;ve already running The Events Calendar 4.1, then this will be a quick and easy update . If you&#8217;re updating from anything earlier or have made significant customizations to the plugins, then we advise a review of the <a href="https://theeventscalendar.com/release-the-events-calendar-4-1-premium-add-ons/">4.1 release notes </a>and update in a test environment before updating directly on a site thats live.</p>\n<p>Here&#8217;s the changelog for what&#8217;s new in The Events Calendar 4.1.0.1:</p>\n<ul>\n<li><strong>Fix</strong> &#8211; Resolved multiple issues with the German `de_DE` language file that caused a number of site-breaking issues</li>\n</ul>\n<p>Thanks again to everyone for your patience and for keeping us honest so that we could get a fix out to you as quick as possible. As always, please do hit us up in the forums if you hit any other questions and we&#8217;d be happy to help.</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-0-1/">Release: The Events Calendar 4.1.0.1</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Release: The Events Calendar 4.1 + premium add-ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://theeventscalendar.com/release-the-events-calendar-4-1-premium-add-ons/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Mar 2016 22:38:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1088802";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:603:"<p>Happy New Music Tuesday! However, we don&#8217;t release music, so instead we&#8217;re happy to let you know that The Events Calendar 4.1 is fresh out of the oven and available right this very second. This is our first major release of 2016 and we couldn&#8217;t be more thrilled with how it turned out. In addition&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-premium-add-ons/">Release: The Events Calendar 4.1 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Geoff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:13175:"<p>Happy New Music Tuesday! However, we don&#8217;t release music, so instead we&#8217;re happy to let you know that The Events Calendar 4.1 is fresh out of the oven and available right this very second.</p>\n<p>This is our first major release of 2016 and we couldn&#8217;t be more thrilled with how it turned out. In addition to a few tweaks and bug fixes, we&#8217;ve packed in a slew of new features you&#8217;re sure to enjoy, two of which have been huge requests from many you:</p>\n<ul>\n<li><strong>Global ticket stock:</strong> This gives you the ability to set the total number of tickets for a particular event in Event Tickets Plus and have each sold ticket draw from that pool. In the past, each ticket received its own stock, so this dramatically improves your ability to set a maximum number of tickets for an event while having many types of tickets per event. For example, let&#8217;s say you have 100 available seats and two types of tickets, one for adults and one for kids. Instead of setting each ticket type to 50 tickets, you can now set a total amount of tickets for the event and allow each ticket sale to pull from the pool of 100 tickets. <a href="https://theeventscalendar.com/knowledgebase/making-tickets/#global-stock">Read more about the new global stock feature</a>!</li>\n<li><strong>Attendee ticket meta:</strong> One of the pain points of Event Tickets Plus has been the inability to assign names to tickets. For example, if someone visits your site and purchases 10 tickets in a single transaction, all of those tickets would be assigned to the person making the purchase. Now, your visitors can add a name to each ticket being purchased in addition to a bunch of other custom fields you can define right from the WordPress admin. This is a huge plus for those of you managing events, especially where having additional information on attendees would be helpful, like meal allergies, t-shirt sizes, and whatever other preferences you can imagine. Event planners rejoice! <a href="https://theeventscalendar.com/knowledgebase/collecting-attendee-information/">Read more about the new attendee information feature</a>!</li>\n</ul>\n<p>These are just the high points of 4.1 and many other new features are included in this release, which we&#8217;ll detail below. As always, we do want to urge caution when updating. This is a major release with lots of new features. As such, it can introduce breaking changes, particularly for those who have made customizations to the calendar. We strongly suggest testing all updates in a safe development environment before rolling them into a live site and backing up your files and database before you do. Better safe than sorry!</p>\n<p>Now on to what&#8217;s new:</p>\n<ul>\n<li><a href="#tec">The Events Calendar 4.1</a></li>\n<li><a href="#pro">Events Calendar PRO 4.1</a></li>\n<li><a href="#comm">Community Events 4.1</a></li>\n<li><a href="#comm-tix">Community Tickets 4.1</a></li>\n<li><a href="#filter">Filter Bar 4.1</a></li>\n<li><a href="#ical">iCal Importer 4.1</a></li>\n<li><a href="#facebook">Facebook Events 4.1</a></li>\n<li><a href="#eventbrite">Eventbrite Tickets 4.1</a></li>\n<li><a href="#et">Event Tickets 4.1</a></li>\n<li><a href="#etp">Event Tickets Plus 4.1</a></li>\n<li><a href="#apm">Advanced Post Manager 4.1</a></li>\n</ul>\n<hr />\n<h3 id="tec">The Events Calendar 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Added a tribe_get_venue_website_url() function for fetching Venue website URLs (props to fervorcreative in our forums for this request!)</li>\n<li><strong>Performance &#8211;</strong> Lazy-load venue and organizer selector data</li>\n<li><strong>Tweak &#8211;</strong> Allow iCal filenames to be filtered via a new filter: tribe_events_ical_feed_filename</li>\n<li><strong>Tweak &#8211;</strong> Added a hook to allow single day queries in month view to be filtered: tribe_events_month_daily_events_query_args</li>\n<li><strong>Tweak &#8211;</strong> Improved the logic around rebuilding known date ranges</li>\n<li><strong>Tweak &#8211;</strong> Always show the &#8220;Merge Duplicates&#8221; button for venues and organizers in the Events General Settings page</li>\n<li><strong>Tweak &#8211;</strong> Allow the &#8220;same slug&#8221; notice to be dismissed and fix some text in that message</li>\n<li><strong>Tweak &#8211;</strong> Ignore alpha/beta/rc suffixes on version numbers when checking template versions</li>\n<li><strong>Tweak &#8211;</strong> Add a filter for month view daily events query: tribe_events_month_daily_events_query_args</li>\n<li><strong>Tweak &#8211;</strong> Added a more flexible cost range parsing function</li>\n<li><strong>Tweak &#8211;</strong> Obfuscate license keys Events &gt; Help &gt; System Information</li>\n<li><strong>Fix &#8211;</strong> Fixed a fatal that sometimes occurred when refreshing the import CSV page</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where some characters were not escaped appropriately for month and year formats</li>\n<li><strong>Fix &#8211;</strong> Added missing tribe-loading@2x.gif</li>\n<li><strong>Fix &#8211;</strong> Fixed a warning produced by passing a DateTime() object into start_date or end_date args of tribe_get_events (props to iamhexcoder for the pull request!)</li>\n<li><strong>Fix &#8211;</strong> Fixed bug where events in month view were not always sorted in chronological order</li>\n<li><strong>Fix &#8211;</strong> Fixed the System Info URL in Events &gt; Help</li>\n</ul>\n<hr />\n<h3 id="pro">Events Calendar PRO 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Added a new &#8220;Date&#8221; recurrence rule that allows you to set an event to recur on a single (or any number of) individually specified dates (hat-tip to @tonydemarco for the idea!)</li>\n<li><strong>Tweak &#8211;</strong> Added support for manual timezone offsets in recurrence exclusion rules</li>\n<li><strong>Tweak &#8211;</strong> Improved the support of selected query fields when the &#8220;Recurring event instances&#8221; checkbox in Events &gt; Settings is checked</li>\n<li><strong>Tweak &#8211;</strong> Show an error message when the Google Maps API query limit has been reached</li>\n<li><strong>Tweak &#8211;</strong> Improved the handling of addresses in JSON-LD</li>\n<li><strong>Tweak &#8211;</strong> Removed deprecated sensor get var for Google Maps API endpoint</li>\n<li><strong>Tweak &#8211;</strong> Changed the distance unit label in Settings to be less-specific to maps as it is used elsewhere</li>\n<li><strong>Tweak &#8211;</strong> Improved the structure of hierarchical taxonomy terms in List Widget queries (props to Harvard Law for this pull request!)</li>\n<li><strong>Tweak &#8211;</strong> Simplified the APM Venue and Organizer filters when the Events list is loaded (props to Jake Kantzer for the pull request!)</li>\n<li><strong>Fix &#8211;</strong> Fixed invalid class name when throwing Tribe notices in the Map template</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the Map View slug was not translatable (three cheers for @oheinrich giving us a heads up on this!)</li>\n<li><strong>Fix &#8211;</strong> Fixed bug where the wrong class was referenced when setting notices in Map View</li>\n<li><strong>Fix &#8211;</strong> Improved compatibility with ACF on the Edit Event page</li>\n</ul>\n<hr />\n<h3 id="comm">Community Events 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Added filter for changing the number of categories to display on the event add form: tribe_events_community_category_dropdown_shown_item_count</li>\n<li><strong>Feature &#8211;</strong> Added a checkbox to remove the country, state/province, and timezone selectors from the event add form</li>\n<li><strong>Fix &#8211;</strong> Fixed bug that prevented logged in users from submitting new venues and organizers when anonymous submissions were enabled</li>\n</ul>\n<hr />\n<h3 id="comm-tix">Community Tickets 4.1</h3>\n<ul>\n<li><strong>Fix &#8211;</strong> Resolved issue where the &#8220;Email Attendees&#8221; modal box didn&#8217;t open in a modal box (mad fist bump to @xlr8r for the heads up!)</li>\n</ul>\n<hr />\n<h3 id="filter">Filter Bar 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Allow users to change the limit of Venues and Organizers on front-end filters (our sincere gratitude to @mauitime for this and so many other countless contributions!)</li>\n<li><strong>Tweak &#8211;</strong> Allow default Title for Filter Bar sections to be translated</li>\n<li><strong>Fix &#8211;</strong> Fixed an issue where filters were overriding set query arguments rather than combining them</li>\n</ul>\n<hr />\n<h3 id="ical">iCal Importer 4.1</h3>\n<ul>\n<li><strong>Tweak &#8211;</strong> Cleaned up a potential fatal error from Tribe__Events__Ical_Importer__Feed_Parser::get_geo_coordinates() that would block an import</li>\n<li><strong>Tweak &#8211;</strong> The importer now uses the same distance label according the type of measurement set in Events &gt; Settings</li>\n<li><strong>Fix &#8211;</strong> Prevent an issue preventing events with an end date that is before the start date (cheers to @colshaw for reporting this in the forums!)</li>\n</ul>\n<hr />\n<h3 id="facebook">Facebook Events 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> When auto-import is enabled, the time of last import and the possible time of the next import is now displayed</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where some imported events would be duplicated during automated imports (Thanks to all who reported this in the forums and for bearing with us while we figured it out!)</li>\n</ul>\n<hr />\n<h3 id="eventbrite">Eventbrite Tickets 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Search your Account Events when importing from Eventbrite to WordPress (Thanks to @leadreadlivellc for the idea and for sharing it in our forums!)</li>\n<li><strong>Feature &#8211;</strong> WordPress images now will be uploaded to Eventbrite</li>\n<li><strong>Tweak &#8211;</strong> Eventbrite imported events won&#8217;t lose all HTML from the titles (Thanks to the Eventbrite team for working with us on this one!)</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where Eventbrite costs sometimes overrode costs when running alongside other ticketing add-ons and vice versa</li>\n<li><strong>Fix &#8211;</strong> Fixed an issue where errors during event submission caused Eventbrite fields to show as empty</li>\n<li><strong>Fix &#8211;</strong> Fixed a bug that caused event synchronization with Eventbrite to fail</li>\n</ul>\n<hr />\n<h3 id="et">Event Tickets 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Implemented global stock per event allowing multiple tickets to pull from the same pool of available tickets on an event (Heck yeah to all those who voted on this feature!)</li>\n<li><strong>Feature &#8211;</strong> Added filters for RSVP ticket generation: event_tickets_rsvp_tickets_created, event_tickets_rsvp_tickets_generated_for_product, and event_tickets_rsvp_tickets_generated (props to 75ninteen for this pull request!)</li>\n<li><strong>Tweak &#8211;</strong> Conditionally show attendees link on Event listing in the WordPress administration</li>\n<li><strong>Tweak &#8211;</strong> Obfuscated license keys Events &gt; Help &gt; System Information</li>\n<li><strong>Tweak &#8211;</strong> Allowed the &#8220;same slug&#8221; notice to be dismissed and fixed some text in that message</li>\n<li><strong>Fix &#8211;</strong> Fixed issue where some characters were not escaped appropriately for month and year formats</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the RSVP confirmation error message displayed when it shouldn&#8217;t</li>\n</ul>\n<hr />\n<h3 id="etp">Events Tickets Plus 4.1</h3>\n<ul>\n<li><strong>Feature &#8211;</strong> Added the ability to collect custom attendee data with ticket reservation/purchases</li>\n<li><strong>Feature &#8211;</strong> Pending attendees can now be displayed on the Attendees report for WooCommerce-driven ticket purchases</li>\n<li><strong>Feature &#8211;</strong> Added ticket sales and ticket stock field support for Advanced Post Manager</li>\n<li><strong>Feature &#8211;</strong> Added the ability to display the list of attendees on the event page (complete with attendee opt-out support)</li>\n<li><strong>Tweak &#8211;</strong> Adjusted text on some ticket setting fields</li>\n<li><strong>Fix &#8211;</strong> Resolved issue where the &#8220;Email&#8221; link on the Attendees Report would sometimes error out rather than send an email of the attendees</li>\n<li><strong>Fix &#8211;</strong> Fixed an incorrect image URL on the Attendees Report</li>\n</ul>\n<hr />\n<h3 id="apm">Advanced Post Manager 4.1</h3>\n<ul>\n<li><strong>Tweak &#8211;</strong> Improve the documentation files to make sure it&#8217;s clear on how to use templates with Custom Post Types</li>\n<li><strong>Fix &#8211;</strong> Removed stray characters that were hanging around for no reason</li>\n</ul>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-1-premium-add-ons/">Release: The Events Calendar 4.1 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"Things to be aware of in version 4.1 of The Events Calendar, Event Tickets, and premium add-ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:124:"https://theeventscalendar.com/things-to-be-aware-of-in-version-4-1-of-the-events-calendar-event-tickets-and-premium-add-ons/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Mar 2016 21:06:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Products";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1089113";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:704:"<p>We&#8217;re putting the finishing touches on version 4.1 of The Events Calendar, Event Tickets, and all our premium and are stoked to get everything in your hands here shortly. In the meantime, we thought you&#8217;d like a high level overview of what&#8217;s coming so that you know what to expect and can start planning for&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/things-to-be-aware-of-in-version-4-1-of-the-events-calendar-event-tickets-and-premium-add-ons/">Things to be aware of in version 4.1 of The Events Calendar, Event Tickets, and premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Zach";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8122:"<p>We&#8217;re putting the finishing touches on version 4.1 of The Events Calendar, Event Tickets, and all our premium and are stoked to get everything in your hands here shortly. In the meantime, we thought you&#8217;d like a high level overview of what&#8217;s coming so that you know what to expect and can start planning for the update.</p>\n<p>These are the new features and changes we&#8217;re rolling out in 4.1:</p>\n<h3>1. Custom attendee data</h3>\n<p>This feature has been in development (and a <a href="https://tribe.uservoice.com/forums/195723-feature-ideas/suggestions/3738379-collect-all-attendee-information-for-multiple-tick">popular feature request</a>) for a very long time, so it should go without saying that we are extremely pleased to deliver it.</p>\n<p>So what is it? In previous versions of <a href="/product/wordpress-event-tickets-plus/">Event Tickets Plus</a>, it was impossible to assign details about attendees on a per-ticket basis. In fact, the only information you had about a sold ticket was who purchased it, and that was not always helpful since a transaction with multiple tickets all contained the same name, not to mention billing address and such.</p>\n<p>This new feature changes that. You can now add custom fields to collect any additional data you need when customers purchase tickets or RSVP. We also make this data available in the attendee export so you can easily get access to the data you collect. If you are an event planner, then you know what a big deal this will be for making sure your event runs smoothly.</p>\n<h3>2. Global ticket stock</h3>\n<p>This has been <a href="https://tribe.uservoice.com/forums/195723-feature-ideas/suggestions/3802295-set-overall-number-of-tickets-remaining-for-all-ti">another long-running feature request</a> that we&#8217;re excited to ship.</p>\n<p>Do you have events with a fixed number of tickets, but you want to sell different types of tickets? Now you can set a total inventory of tickets available for sale and the purchase of each ticket type will pull from that global stock. No more guessing how many tickets you need to sell of each ticket type!</p>\n<h3>3. Public attendee list</h3>\n<p>Let&#8217;s say 15 people have RSVP&#8217;d for your event and you&#8217;d like to show that off so others know who else will be attending? With <a href="/product/wordpress-event-tickets/">Event Tickets</a> you can enable a public attendee list for people who RSVP or buy tickets (via Event Tickets Plus) to your event.</p>\n<h3>4. Event recurrence on a specific date</h3>\n<p>Our free-form recurring event recurrence patterns are getting even more flexible. This feature will enable <a href="https://theeventscalendar.com/product/wordpress-events-calendar-pro/">Events Calendar PRO</a> users to specify a single day or a bunch of specific days that your event will recur. Adding your own instances independent of pattern is truly as flexible as it gets, so enjoy!</p>\n<h3>5. Performance improvements with lots of organizers / venues</h3>\n<p>We&#8217;ve some reports where sites with lots of events were experiencing slowness when those events contain many organizers and venues. Version 4.1 wisely uses a lazy loading technique to make the speed and performance of these events much more pleasant for everyone.</p>\n<h3>6. Eventbrite image sync and import search</h3>\n<p>Those of you running <a href="product/wordpress-eventbrite-tickets/">Eventbrite Tickets</a> may have noticed that assigning images to an event can be a bit hairy. It used to take setting up the event in Eventbrite first, then importing the event into WordPress, but that changes with 4.1. You can now add your event image in WordPress or in Eventbrite and have that carry over to the other.</p>\n<p>Bonus: You can now search your existing Eventbrite events and select which events to import directly from the WordPress admin—no more fumbling around with Eventbrite IDs or event URLs.</p>\n<h3>7. Advanced Post Manager compatibility with tickets</h3>\n<p>For anyone running Events Calendar PRO and Event Tickets Plus, you can take advantage of <a href="https://wordpress.org/plugins/advanced-post-manager/">Advanced Post Manager</a> to see things like event cost and ticket stock in your list of events. You can also setup predefined filters on ticket stock as well.</p>\n<h3>8. A bunch of bug fixes and tweaks</h3>\n<p>There are a bunch of critical bug fixes in this release. When building global stock, we took a long hard look at stock management in our plugin and have worked hard to make this much more consistent going forward. Beyond that, there are small, but important adjustments throughout the suite of plugins.</p>\n<h3>9. New action</h3>\n<p>Only one new action in this release:</p>\n<h4>The Events Calendar</h4>\n<ul>\n<li><samp>tribe_events_month_daily_events_query_args</samp></li>\n</ul>\n<h3>10. New filters</h3>\n<h4>The Events Calendar</h4>\n<ul>\n<li><samp>tribe_events_ical_feed_filename</samp></li>\n<li><samp>tribe_events_month_daily_events_query_args</samp></li>\n</ul>\n<h4>Event Tickets</h4>\n<ul>\n<li><samp>event_tickets_rsvp_tickets_created</samp></li>\n<li><samp>event_tickets_rsvp_tickets_generated_for_product</samp></li>\n<li><samp>event_tickets_rsvp_tickets_generated</samp></li>\n</ul>\n<h4>Community Events</h4>\n<ul>\n<li><samp>tribe_events_community_category_dropdown_shown_item_count</samp></li>\n</ul>\n<h3>11. Newly deprecated code</h3>\n<p>We have one deprecated action with 4.1 in Event Tickets Plus:</p>\n<p><samp>wootickets_generate_ticket_attendee</samp> has been deprecated in favor of <samp>event_tickets_woocommerce_ticket_created</samp>. The action parameters have changed to the following:</p>\n<pre class="brush: plain; title: ; notranslate">\r\n/**\r\n* Action fired when an attendee ticket is generated\r\n*\r\n* @var $attendee_id ID of attendee ticket\r\n* @var $order_id WooCommerce order ID\r\n* @var $product_id Product ID attendee is &quot;purchasing&quot;\r\n* @var $order_attendee_id Attendee # for order\r\n*/\r\ndo_action( ''event_tickets_woocommerce_ticket_created'', $attendee_id, $order_id, $product_id, $order_attendee_id );\r\n</pre>\n<h3>12. Updated Views</h3>\n<p>We definitely want you to be aware of updated views, particularly those of you who have used <a href="https://theeventscalendar.com/knowledgebase/themers-guide/">template overrides</a> in the past. We&#8217;ve updated markup in the following templates, so please do be sure to check your custom work against what&#8217;s new in 4.1 and test things out in a safe development environment to avoid any critical breakages.</p>\n<h4>The Events Calendar</h4>\n<ul>\n<li><samp>src/views/list/nav.php </samp></li>\n</ul>\n<h4>Events Calendar PRO</h4>\n<ul>\n<li><samp>src/views/pro/widgets/mini-calendar-widget.php</samp></li>\n</ul>\n<h4>Community Events</h4>\n<ul>\n<li><samp>src/views/community/modules/recurrence.php</samp></li>\n</ul>\n<h4>Community Tickets</h4>\n<ul>\n<li><samp>src/views/community-tickets/modules/tickets.php</samp></li>\n</ul>\n<h4>Eventbrite Tickets</h4>\n<ul>\n<li><samp>src/views/eventbrite/eventbrite-meta-box-extension.php</samp></li>\n<li><samp>src/views/eventbrite/import-eventbrite-events.php</samp></li>\n</ul>\n<h4>Event Tickets</h4>\n<ul>\n<li><samp>src/views/tickets/rsvp.php</samp></li>\n</ul>\n<h4>Event Tickets Plus</h4>\n<ul>\n<li><samp>src/views/attendees-list.php</samp></li>\n<li><samp>src/views/eddtickets/tickets.php</samp></li>\n<li><samp>src/views/shopptickets/tickets.php</samp></li>\n<li><samp>src/views/wootickets/tickets.php</samp></li>\n<li><samp>src/views/wpectickets/tickets.php</samp></li>\n</ul>\n<p>Thanks for reading and for supporting us to get here! We couldn&#8217;t be more thrilled with how things turned out and we hope everything in 4.1 makes your sites much better and your jobs way easier.</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/things-to-be-aware-of-in-version-4-1-of-the-events-calendar-event-tickets-and-premium-add-ons/">Things to be aware of in version 4.1 of The Events Calendar, Event Tickets, and premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"Release: The Events Calendar 4.0.7 + premium add-ons";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://theeventscalendar.com/release-the-events-calendar-4-0-7-premium-add-ons/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 02 Mar 2016 15:00:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:13:"Release Notes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1083949";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:622:"<p>Happy March everyone! We&#8217;re going to start things off by shipping a fresh version of The Events Calendar to you. The Events Calendar 4.0.7 is a minor update with a handful of squashed bugs for your calendaring enjoyment, which we&#8217;ll dig into below. We are also releasing updates to several of our premium add-ons. This&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-0-7-premium-add-ons/">Release: The Events Calendar 4.0.7 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Geoff";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:5321:"<p>Happy March everyone! We&#8217;re going to start things off by shipping a fresh version of The Events Calendar to you. The Events Calendar 4.0.7 is a minor update with a handful of squashed bugs for your calendaring enjoyment, which we&#8217;ll dig into below.</p>\n<p>We are also releasing updates to several of our premium add-ons. This brings our full suite to the following versions:</p>\n<ul>\n<li><a href="#tec">The Events Calendar 4.0.7</a></li>\n<li><a href="#pro">Events Calendar PRO 4.0.7</a></li>\n<li><a href="#comm">Community Events 4.0.6</a></li>\n<li><a href="#comm-tix">Community Tickets 4.0.4</a></li>\n<li><a href="#filter">Filter Bar 4.0.4</a></li>\n<li><a href="#ical">iCal Importer 4.0.4</a></li>\n<li><a href="#et"><del datetime="2016-03-02T17:42:33+00:00">Event Tickets 4.0.6</del></a></li>\n<li><a href="#etp"><del datetime="2016-03-02T17:42:33+00:00">Event Tickets Plus 4.0.6</del></a></li>\n</ul>\n<p><strong>Update:</strong> do to a critical bug when updating Event Tickets <em>before</em> Event Tickets Plus, we have pulled the 4.0.6 releases of these plugins from distribution.  If you already upgraded both, you are fine continuing to run them.</p>\n<p>The following plugins were not updated and stay at the same version number:</p>\n<ul>\n<li>Eventbrite Tickets 4.0.1</li>\n<li>Facebook Events 4.0</li>\n</ul>\n<p>As always, please exercise care and caution when installing these updates. We expect no issues for those upgrading from 4.0 and greater, but it&#8217;s still a good idea to <a href="https://codex.wordpress.org/WordPress_Backups">backup your database and site files</a> as you would with any other WordPress update.</p>\n<p>We&#8217;d also like to give a shout out to all the fine folks who reported the issues that are patched in this release. Thanks for speaking up in the forums and helping us make the calendar better! This list shows we have an awesome community and we appreciate you:</p>\n<ul>\n<li>@gustavo-gomez</li>\n<li>@josvdbroek01 (on WordPress.org)</li>\n<li>@tlauben</li>\n<li>@sciotomile</li>\n<li>@retrocarclub</li>\n<li>@goldnuggets24</li>\n<li>@mailboyfresh</li>\n<li>@krusesolutions</li>\n<li>@organichild</li>\n<li>@jodyshockley</li>\n<li>@myrunningresource</li>\n<li>@buwebtech</li>\n<li>@shemken</li>\n<li>@bozzmedia</li>\n<li>@rustysam</li>\n<li>@drewpoland</li>\n<li>@commapps</li>\n<li>@laurab</li>\n<li>@danfeeley</li>\n<li>@christopherw</li>\n<li>@therailwayinn</li>\n<li>@wheretogokiddo</li>\n<li>@bennyhudson</li>\n<li>@jadecreative</li>\n<li>@flyingman</li>\n<li>@reds2001</li>\n<li>@eic2010</li>\n<li>@wiredimpact</li>\n<li>@andreaolson</li>\n</ul>\n<p>Now, let&#8217;s dive into what&#8217;s new!</p>\n<hr />\n<h3 id="tec">The Events Calendar 4.0.7</h3>\n<ul>\n<li>Fix &#8211; Resolve display issues on templates with Jetpack and a few themes</li>\n<li>Fix &#8211; Mobile breakpoints on month view working with custom breakpoints</li>\n<li>Fix &#8211; Reordering Venue and Organizer metadata no longer breaks titles</li>\n<li>Fix &#8211; Prevented notices from happening when using <em>the_title</em> filter</li>\n<li>Fix &#8211; iCal links now will respect categories on the first page</li>\n<li>Fix &#8211; Prevent third-party bugs with SEO plugins when inserting events programmatically</li>\n<li>Fix &#8211; Organizer Information is showing up again correctly</li>\n<li>Fix &#8211; Modified the Add-on License validation method to better explain what is happening</li>\n<li>Fix &#8211; Description on mobile views now has the correct class attribute on HTML</li>\n<li>Fix &#8211; Added missing semi colon on the list navigation for <em>&amp;laquo</em></li>\n</ul>\n<hr />\n<h3 id="pro">Events Calendar PRO 4.0.7</h3>\n<ul>\n<li>Fix &#8211; Load venue shortcode when there are no Events on that venue</li>\n<li>Fix &#8211; Default value for <em>tribe_get_event_website_link_target</em> is corrected to <em>_self</em></li>\n<li>Fix &#8211; Default values for Venue and Organizers are now fully respected across the add-ons</li>\n</ul>\n<hr />\n<h3 id="comm">Community Events 4.0.6</h3>\n<ul>\n<li>Fix &#8211; Category is now inserted when uploading a featured image</li>\n<li>Fix &#8211; Errors on the public submission no longer reset the event date</li>\n</ul>\n<hr />\n<h3 id="comm-tix">Community Tickets 4.0.4</h3>\n<ul>\n<li>Fix &#8211; PayPal payments are fully working again with split payments checkout (HTTP 1.1)</li>\n</ul>\n<hr />\n<h3 id="filter">Filter Bar 4.0.4</h3>\n<ul>\n<li>Fix &#8211; Filters are kept when changing calendar views</li>\n</ul>\n<hr />\n<h3 id="ical">iCal Importer 4.0.4</h3>\n<ul>\n<li>Tweak &#8211; Users have an administration field to control recurring events update workflow</li>\n</ul>\n<hr />\n<h3 id="et">Event Tickets 4.0.6</h3>\n<ul>\n<li>Fix &#8211; Prevent notices to enqueue method when moving form hooks</li>\n</ul>\n<hr />\n<h3 id="etp">Events Tickets Plus 4.0.6</h3>\n<ul>\n<li>Fix &#8211; Prevent multiple check-ins by QR codes for RSVP and ecommerce tickets</li>\n<li>Fix &#8211; Add missing &lt;table&gt; tag on the QR code HTML</li>\n<li>Fix &#8211; Improve front-end notices for recurring event</li>\n</ul>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/release-the-events-calendar-4-0-7-premium-add-ons/">Release: The Events Calendar 4.0.7 + premium add-ons</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"Compatible Themes for The Events Calendar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://theeventscalendar.com/compatible-themes-the-events-calendar/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 22 Feb 2016 19:03:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Articles";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:5:"theme";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:40:"https://theeventscalendar.com/?p=1079488";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:621:"<p>With all of the thousands of WordPress themes out there, it would be difficult to test the compatibility of our calendar plugins against every single one of them. Instead of focusing on compatibility with a particular theme, we have built The Events Calendar, Events Calendar PRO, and our other premium add-ons using default WordPress as the baseline&#8230;</p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/compatible-themes-the-events-calendar/">Compatible Themes for The Events Calendar</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Jen Jamar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:8667:"<p>With all of the thousands of WordPress themes out there, it would be difficult to test the compatibility of our calendar plugins against every single one of them.</p>\n<p>Instead of focusing on compatibility with a particular theme, we have built <a href="https://theeventscalendar.com/product/wordpress-events-calendar/">The Events Calendar</a>, <a href="https://theeventscalendar.com/product/wordpress-events-calendar-pro/">Events Calendar PRO</a>, and our <a href="https://theeventscalendar.com/products/">other premium add-ons</a> using default WordPress as the baseline for our standards. This allows us to <strong>confidently state that we are compatible with <em>most </em>themes that also follow WordPress best practices</strong>.</p>\n<h2>Defining Theme Compatibility</h2>\n<p>Some people assume that compatibility means everything works together without any problems. That&#8217;s not a bad interpretation for simple cases, such as whether a phone charger is compatible with the outlet on your cell phone &#8211; it either works or it doesn&#8217;t, right?</p>\n<p>Theme compatibility is much more complex. There&#8217;s a huge amount of diversity in the way both free and premium WordPress themes are built. The Events Calendar might work functionally with a given theme, but not look perfect out of the box. Or it might look fantastic, but need a workaround to make sure it plays nicely with the theme functions.</p>\n<p>For the purpose of this post, <strong>we&#8217;re going to define compatibility as &#8220;<span class="oneClick-link">capable</span> <span class="oneClick-link">of</span> <span class="oneClick-link oneClick-available">existing</span> <span class="oneClick-link">or</span> <span class="oneClick-link oneClick-available">performing together</span> <span class="oneClick-link">in</span> </strong><span class="oneClick-link oneClick-available"><strong>harmony.&#8221;</strong> We realize that you may still need to make tweaks, which is why we&#8217;ve included information for customization and troubleshooting later in this post. </span></p>\n<h2>Compatible Themes for The Events Calendar</h2>\n<p>Because of the complexity of this topic, our list comes with a bit of a disclaimer: All of the themes listed as compatible in this post are based on information provided by the theme author and/or user feedback we have received.</p>\n<p>The <a href="http://my.studiopress.com/themes/genesis/" target="_blank"><strong>Genesis Framework</strong> from StudioPress</a> is one of the most popular WordPress frameworks out there. We&#8217;ve seen The Events Calendar used frequently with Genesis child themes, though you <a href="https://theeventscalendar.com/knowledgebase/genesis-theme-framework-integration/">may need a bit of customization</a> to make everything play nicely together.</p>\n<p><a href="http://theme-fusion.com/avada/" target="_blank"><strong>Avada</strong> from Theme Fusion</a> is another popular theme compatible with our plugins. They even have a handy article on their site that explains <a href="https://theme-fusion.com/avada-doc/special-features/how-to-use-the-events-calendar-with-avada/" target="_blank">how to use The Events Calendar with Avada</a>. Of particular note &#8211; their popular <a href="http://theme-fusion.com/avada/church/the-events-calendar/" target="_blank"><strong>Avada Church Theme</strong> has full design integration with The Events Calendar</a> by including custom calendar templates with the theme.</p>\n<p><strong><a href="http://themeforest.net/" target="_blank">Themeforest</a></strong> lists plugin compatibility for all of their themes, which makes it <a href="http://themeforest.net/attributes/compatible-with/events%20calendar%20pro" target="_blank">easy to sort through themes compatible with The Events Calendar and Events Calendar PRO</a>.</p>\n<p>The <strong><a href="http://www.kriesi.at/themes/incarnation/events/month/" target="_blank">Incarnation theme</a></strong> from Kriesi showcases The Events Calendar on their demo page. Their popular <strong><a href="http://www.kriesi.at/themedemo/?theme=enfold-overview" target="_blank">Enfold theme</a></strong> is also listed as compatible with our plugins.</p>\n<p>Although <strong>Cyberchimps</strong> does not specifically list our plugins on their theme pages, <a href="http://cyberchimps.com/recommendations/#plugins" target="_blank">they have given us their stamp of approval</a> on their recommended plugins list.</p>\n<p><strong>Elegant Themes</strong> has <a href="https://www.elegantthemes.com/blog/tips-tricks/spread-the-word-8-of-the-best-wordpress-events-plugins" target="_blank">recognized The Events Calendar as one of the best WordPress event plugins</a> on their blog in the past, but they do not specifically outline the compatibility of our plugins with <a href="http://www.elegantthemes.com/gallery/divi/" target="_blank">their popular <strong>Divi theme</strong></a>. Despite that, we&#8217;ve had many users report successful integrations. We also have a knowledgebase article that helps with a <a href="https://theeventscalendar.com/knowledgebase/divi-pagination-problems/">common issue that comes up with pagination in Divi</a>.</p>\n<p><strong><a href="http://theme.co/x/" target="_blank">X Theme</a></strong> from Themeco is one of the themes that doesn&#8217;t specifically support The Events Calendar, but we&#8217;ve had several users share that they&#8217;ve successfully integrated our plugin with their theme. To be fair, we&#8217;ve also had users report theme conflicts, so we highly recommend testing before assuming compatibility with this theme.</p>\n<h2>Checking Compatibility</h2>\n<p>Many themes do not list specific plugin compatibility, so you have to do a bit of work yourself to check if a plugin will play nicely with the theme you&#8217;ve selected for your site.</p>\n<p>To test compatibility with our plugins, we recommend starting with the <a href="https://wordpress.org/plugins/the-events-calendar/" target="_blank">free version of The Events Calendar found on WordPress.org</a>. If it works, it&#8217;s very likely that <a href="https://theeventscalendar.com/product/wordpress-events-calendar-pro/">Events Calendar PRO</a> and our other premium add-ons will also work, too.</p>\n<p>If you do run into issues, you can <a href="https://theeventscalendar.com/knowledgebase/">search our knowledgebase for information</a> or try some of our tips for customization and troubleshooting.</p>\n<h2>Customizing &amp; Troubleshooting</h2>\n<p>Sometimes, all you need is a bit of customization for your <a href="https://theeventscalendar.com/knowledgebase/stylesheets-and-page-templates/">stylesheets and page templates</a> to get the look you&#8217;re going for. Other times, you may want to <a href="https://theeventscalendar.com/knowledgebase/testing-for-conflicts/">test for conflicts</a> to determine the root of your problem before digging too far into the code.</p>\n<p>It&#8217;s always been our goal to make The Events Calendar and our premium plugins easy to customize. Our <a href="https://theeventscalendar.com/knowledgebase/themers-guide/">Themer&#8217;s Guide</a> is a great resource to read before you jump into making changes to ensure compatibility with your theme.</p>\n<h2>A Word About Support</h2>\n<p>Our reputation for offering great support is something we&#8217;re really proud to stand behind. In the event of a theme conflict, our support forums are the best route for getting help with your issue. For free users, we offer light support via the <a href="https://wordpress.org/support/plugin/the-events-calendar" target="_blank">WordPress.org support forum</a>. Users running our paid plugins (such as Events Calendar PRO and other add-ons) can access the <a href="https://theeventscalendar.com/support/forums/">premium support forums here on our site</a>.</p>\n<p>There are usually few things we can do to help with theme conflicts and we always try our best to get our users started on the right track to resolution. And while help with custom code falls outside of the scope of our support forum, if it turns out a theme is not compatible after all, we do offer <a href="https://theeventscalendar.com/knowledgebase/refund-policy/">a 30-day refund period</a> for all of our premium plugins.</p>\n<p><em>Know of other compatible themes for The Events Calendar? Let us know in the comments below.</em></p>\n<p>The post <a rel="nofollow" href="https://theeventscalendar.com/compatible-themes-the-events-calendar/">Compatible Themes for The Events Calendar</a> appeared first on <a rel="nofollow" href="https://theeventscalendar.com">The Events Calendar</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:35:"https://theeventscalendar.com/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:11:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Sat, 09 Apr 2016 10:12:47 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:12:"x-powered-by";s:21:"PHP/5.4.33-1~dotdeb.1";s:4:"vary";s:6:"Cookie";s:4:"etag";s:34:""81c347594c004cab75f7f9034910fec6"";s:12:"x-robots-tag";s:15:"noindex, follow";s:4:"link";s:66:"<https://theeventscalendar.com/wp-json/>; rel="https://api.w.org/"";s:13:"last-modified";s:29:"Sat, 09 Apr 2016 09:27:35 GMT";s:13:"cache-control";s:29:"max-age=3600, must-revalidate";}s:5:"build";s:14:"20130910220210";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(399, '_transient_timeout_feed_mod_0d102f2a1f4d6bc90eb8c6ffe18e56ed', '1460239972', 'no'),
(400, '_transient_feed_mod_0d102f2a1f4d6bc90eb8c6ffe18e56ed', '1460196772', 'no'),
(401, '_transient_timeout_wc_low_stock_count', '1462788772', 'no'),
(402, '_transient_wc_low_stock_count', '0', 'no'),
(403, '_transient_timeout_wc_outofstock_count', '1462788772', 'no'),
(404, '_transient_wc_outofstock_count', '0', 'no'),
(405, '_transient_timeout_wc_admin_report', '1460283173', 'no'),
(406, '_transient_wc_admin_report', 'a:1:{s:32:"ca5a02b65ed26518db22c05230233add";a:0:{}}', 'no'),
(407, 'wcs3_db_version', '1.0', 'yes'),
(408, 'wcs3_version', '3.18', 'yes'),
(409, 'widget_wcs3_today_classes_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(412, 'category_children', 'a:0:{}', 'yes'),
(413, 'product_cat_children', 'a:0:{}', 'yes'),
(414, 'product_shipping_class_children', 'a:0:{}', 'yes'),
(415, 'gallery_entries_children', 'a:0:{}', 'yes'),
(416, 'tribe_events_cat_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(417, 'rewrite_rules', 'a:525:{s:40:"(?:event)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:56:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]";s:28:"(?:event)/([^/]+)/(?:all)/?$";s:74:"index.php?tribe_events=$matches[1]&post_type=tribe_events&eventDisplay=all";s:45:"(?:event)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:63:"index.php?tribe_events=$matches[1]&eventDate=$matches[2]&ical=1";s:25:"(?:event)/([^/]+)/ical/?$";s:56:"index.php?ical=1&name=$matches[1]&post_type=tribe_events";s:28:"(?:events)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:38:"(?:events)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?post_type=tribe_events&eventDisplay=list&feed=$matches[1]";s:23:"(?:events)/(?:month)/?$";s:51:"index.php?post_type=tribe_events&eventDisplay=month";s:37:"(?:events)/(?:list)/(?:page)/(\\d+)/?$";s:68:"index.php?post_type=tribe_events&eventDisplay=list&paged=$matches[1]";s:22:"(?:events)/(?:list)/?$";s:50:"index.php?post_type=tribe_events&eventDisplay=list";s:23:"(?:events)/(?:today)/?$";s:49:"index.php?post_type=tribe_events&eventDisplay=day";s:27:"(?:events)/(\\d{4}-\\d{2})/?$";s:73:"index.php?post_type=tribe_events&eventDisplay=month&eventDate=$matches[1]";s:33:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/?$";s:71:"index.php?post_type=tribe_events&eventDisplay=day&eventDate=$matches[1]";s:13:"(?:events)/?$";s:53:"index.php?post_type=tribe_events&eventDisplay=default";s:18:"(?:events)/ical/?$";s:39:"index.php?post_type=tribe_events&ical=1";s:38:"(?:events)/(\\d{4}-\\d{2}-\\d{2})/ical/?$";s:78:"index.php?post_type=tribe_events&ical=1&eventDisplay=day&eventDate=$matches[1]";s:60:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:55:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:month)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:69:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:97:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&paged=$matches[2]";s:54:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:list)/?$";s:79:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list";s:55:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:today)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day";s:73:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:59:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2})/?$";s:102:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:65:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:100:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:50:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/?$";s:89:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=list&feed=rss2";s:50:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/ical/?$";s:68:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&ical=1";s:75:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:78:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&feed=$matches[2]";s:45:"(?:events)/(?:category)/(?:[^/]+/)*([^/]+)/?$";s:80:"index.php?post_type=tribe_events&tribe_events_cat=$matches[1]&eventDisplay=month";s:44:"(?:events)/(?:tag)/([^/]+)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:39:"(?:events)/(?:tag)/([^/]+)/(?:month)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:53:"(?:events)/(?:tag)/([^/]+)/(?:list)/(?:page)/(\\d+)/?$";s:84:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&paged=$matches[2]";s:38:"(?:events)/(?:tag)/([^/]+)/(?:list)/?$";s:66:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list";s:39:"(?:events)/(?:tag)/([^/]+)/(?:today)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day";s:57:"(?:events)/(?:tag)/([^/]+)/(?:day)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:43:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2})/?$";s:89:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month&eventDate=$matches[2]";s:49:"(?:events)/(?:tag)/([^/]+)/(\\d{4}-\\d{2}-\\d{2})/?$";s:87:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=day&eventDate=$matches[2]";s:34:"(?:events)/(?:tag)/([^/]+)/feed/?$";s:76:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=list&feed=rss2";s:34:"(?:events)/(?:tag)/([^/]+)/ical/?$";s:55:"index.php?post_type=tribe_events&tag=$matches[1]&ical=1";s:59:"(?:events)/(?:tag)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:65:"index.php?post_type=tribe_events&tag=$matches[1]&feed=$matches[2]";s:29:"(?:events)/(?:tag)/([^/]+)/?$";s:67:"index.php?post_type=tribe_events&tag=$matches[1]&eventDisplay=month";s:9:"forums/?$";s:25:"index.php?post_type=forum";s:39:"forums/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=forum&feed=$matches[1]";s:34:"forums/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=forum&feed=$matches[1]";s:26:"forums/page/([0-9]{1,})/?$";s:43:"index.php?post_type=forum&paged=$matches[1]";s:9:"topics/?$";s:25:"index.php?post_type=topic";s:39:"topics/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=topic&feed=$matches[1]";s:34:"topics/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=topic&feed=$matches[1]";s:26:"topics/page/([0-9]{1,})/?$";s:43:"index.php?post_type=topic&paged=$matches[1]";s:28:"forums/forum/([^/]+)/edit/?$";s:34:"index.php?forum=$matches[1]&edit=1";s:28:"forums/topic/([^/]+)/edit/?$";s:34:"index.php?topic=$matches[1]&edit=1";s:28:"forums/reply/([^/]+)/edit/?$";s:34:"index.php?reply=$matches[1]&edit=1";s:32:"forums/topic-tag/([^/]+)/edit/?$";s:38:"index.php?topic-tag=$matches[1]&edit=1";s:47:"forums/user/([^/]+)/topics/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_tops=1&paged=$matches[2]";s:48:"forums/user/([^/]+)/replies/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_reps=1&paged=$matches[2]";s:50:"forums/user/([^/]+)/favorites/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_favs=1&paged=$matches[2]";s:54:"forums/user/([^/]+)/subscriptions/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_subs=1&paged=$matches[2]";s:29:"forums/user/([^/]+)/topics/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_tops=1";s:30:"forums/user/([^/]+)/replies/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_reps=1";s:32:"forums/user/([^/]+)/favorites/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_favs=1";s:36:"forums/user/([^/]+)/subscriptions/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_subs=1";s:27:"forums/user/([^/]+)/edit/?$";s:37:"index.php?bbp_user=$matches[1]&edit=1";s:22:"forums/user/([^/]+)/?$";s:30:"index.php?bbp_user=$matches[1]";s:40:"forums/view/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?bbp_view=$matches[1]&paged=$matches[2]";s:27:"forums/view/([^/]+)/feed/?$";s:47:"index.php?bbp_view=$matches[1]&feed=$matches[2]";s:22:"forums/view/([^/]+)/?$";s:30:"index.php?bbp_view=$matches[1]";s:34:"forums/search/page/?([0-9]{1,})/?$";s:27:"index.php?paged=$matches[1]";s:16:"forums/search/?$";s:20:"index.php?bbp_search";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:47:"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$";s:76:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]";s:30:"(([^/]+/)*wishlist)(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:15:"dt_galleries/?$";s:32:"index.php?post_type=dt_galleries";s:45:"dt_galleries/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=dt_galleries&feed=$matches[1]";s:40:"dt_galleries/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=dt_galleries&feed=$matches[1]";s:32:"dt_galleries/page/([0-9]{1,})/?$";s:50:"index.php?post_type=dt_galleries&paged=$matches[1]";s:14:"dt_teachers/?$";s:31:"index.php?post_type=dt_teachers";s:44:"dt_teachers/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=dt_teachers&feed=$matches[1]";s:39:"dt_teachers/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?post_type=dt_teachers&feed=$matches[1]";s:31:"dt_teachers/page/([0-9]{1,})/?$";s:49:"index.php?post_type=dt_teachers&paged=$matches[1]";s:13:"wcs3_class/?$";s:30:"index.php?post_type=wcs3_class";s:43:"wcs3_class/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=wcs3_class&feed=$matches[1]";s:38:"wcs3_class/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=wcs3_class&feed=$matches[1]";s:30:"wcs3_class/page/([0-9]{1,})/?$";s:48:"index.php?post_type=wcs3_class&paged=$matches[1]";s:18:"wcs3_instructor/?$";s:35:"index.php?post_type=wcs3_instructor";s:48:"wcs3_instructor/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=wcs3_instructor&feed=$matches[1]";s:43:"wcs3_instructor/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?post_type=wcs3_instructor&feed=$matches[1]";s:35:"wcs3_instructor/page/([0-9]{1,})/?$";s:53:"index.php?post_type=wcs3_instructor&paged=$matches[1]";s:16:"wcs3_location/?$";s:33:"index.php?post_type=wcs3_location";s:46:"wcs3_location/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=wcs3_location&feed=$matches[1]";s:41:"wcs3_location/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_type=wcs3_location&feed=$matches[1]";s:33:"wcs3_location/page/([0-9]{1,})/?$";s:51:"index.php?post_type=wcs3_location&paged=$matches[1]";s:8:"event/?$";s:32:"index.php?post_type=tribe_events";s:38:"event/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:33:"event/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=tribe_events&feed=$matches[1]";s:25:"event/page/([0-9]{1,})/?$";s:50:"index.php?post_type=tribe_events&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"forums/forum/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"forums/forum/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"forums/forum/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"forums/forum/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"forums/forum/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"forums/forum/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"forums/forum/(.+?)/embed/?$";s:38:"index.php?forum=$matches[1]&embed=true";s:31:"forums/forum/(.+?)/trackback/?$";s:32:"index.php?forum=$matches[1]&tb=1";s:51:"forums/forum/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?forum=$matches[1]&feed=$matches[2]";s:46:"forums/forum/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?forum=$matches[1]&feed=$matches[2]";s:39:"forums/forum/(.+?)/page/?([0-9]{1,})/?$";s:45:"index.php?forum=$matches[1]&paged=$matches[2]";s:46:"forums/forum/(.+?)/comment-page-([0-9]{1,})/?$";s:45:"index.php?forum=$matches[1]&cpage=$matches[2]";s:36:"forums/forum/(.+?)/wc-api(/(.*))?/?$";s:46:"index.php?forum=$matches[1]&wc-api=$matches[3]";s:42:"forums/forum/.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"forums/forum/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:35:"forums/forum/(.+?)(?:/([0-9]+))?/?$";s:44:"index.php?forum=$matches[1]&page=$matches[2]";s:40:"forums/topic/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"forums/topic/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"forums/topic/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/topic/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/topic/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"forums/topic/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"forums/topic/([^/]+)/embed/?$";s:38:"index.php?topic=$matches[1]&embed=true";s:33:"forums/topic/([^/]+)/trackback/?$";s:32:"index.php?topic=$matches[1]&tb=1";s:53:"forums/topic/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?topic=$matches[1]&feed=$matches[2]";s:48:"forums/topic/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?topic=$matches[1]&feed=$matches[2]";s:41:"forums/topic/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?topic=$matches[1]&paged=$matches[2]";s:48:"forums/topic/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?topic=$matches[1]&cpage=$matches[2]";s:38:"forums/topic/([^/]+)/wc-api(/(.*))?/?$";s:46:"index.php?topic=$matches[1]&wc-api=$matches[3]";s:44:"forums/topic/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"forums/topic/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:37:"forums/topic/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?topic=$matches[1]&page=$matches[2]";s:29:"forums/topic/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"forums/topic/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"forums/topic/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/topic/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/topic/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"forums/topic/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"forums/reply/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"forums/reply/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"forums/reply/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/reply/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/reply/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"forums/reply/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"forums/reply/([^/]+)/embed/?$";s:38:"index.php?reply=$matches[1]&embed=true";s:33:"forums/reply/([^/]+)/trackback/?$";s:32:"index.php?reply=$matches[1]&tb=1";s:41:"forums/reply/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?reply=$matches[1]&paged=$matches[2]";s:48:"forums/reply/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?reply=$matches[1]&cpage=$matches[2]";s:38:"forums/reply/([^/]+)/wc-api(/(.*))?/?$";s:46:"index.php?reply=$matches[1]&wc-api=$matches[3]";s:44:"forums/reply/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"forums/reply/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:37:"forums/reply/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?reply=$matches[1]&page=$matches[2]";s:29:"forums/reply/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"forums/reply/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"forums/reply/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/reply/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/reply/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"forums/reply/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"forums/topic-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?topic-tag=$matches[1]&feed=$matches[2]";s:52:"forums/topic-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?topic-tag=$matches[1]&feed=$matches[2]";s:45:"forums/topic-tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?topic-tag=$matches[1]&paged=$matches[2]";s:27:"forums/topic-tag/([^/]+)/?$";s:31:"index.php?topic-tag=$matches[1]";s:42:"forums/search/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?bbp_search=$matches[1]&paged=$matches[2]";s:24:"forums/search/([^/]+)/?$";s:32:"index.php?bbp_search=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"bp_member_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?taxonomy=bp_member_type&term=$matches[1]&feed=$matches[2]";s:50:"bp_member_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:67:"index.php?taxonomy=bp_member_type&term=$matches[1]&feed=$matches[2]";s:43:"bp_member_type/([^/]+)/page/?([0-9]{1,})/?$";s:68:"index.php?taxonomy=bp_member_type&term=$matches[1]&paged=$matches[2]";s:25:"bp_member_type/([^/]+)/?$";s:50:"index.php?taxonomy=bp_member_type&term=$matches[1]";s:40:"dt_galleries/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"dt_galleries/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"dt_galleries/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"dt_galleries/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"dt_galleries/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"dt_galleries/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"dt_galleries/([^/]+)/embed/?$";s:45:"index.php?dt_galleries=$matches[1]&embed=true";s:33:"dt_galleries/([^/]+)/trackback/?$";s:39:"index.php?dt_galleries=$matches[1]&tb=1";s:53:"dt_galleries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?dt_galleries=$matches[1]&feed=$matches[2]";s:48:"dt_galleries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?dt_galleries=$matches[1]&feed=$matches[2]";s:41:"dt_galleries/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?dt_galleries=$matches[1]&paged=$matches[2]";s:48:"dt_galleries/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?dt_galleries=$matches[1]&cpage=$matches[2]";s:38:"dt_galleries/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?dt_galleries=$matches[1]&wc-api=$matches[3]";s:44:"dt_galleries/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:55:"dt_galleries/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:37:"dt_galleries/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?dt_galleries=$matches[1]&page=$matches[2]";s:29:"dt_galleries/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"dt_galleries/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"dt_galleries/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"dt_galleries/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"dt_galleries/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"dt_galleries/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:56:"gallery_entries/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?gallery_entries=$matches[1]&feed=$matches[2]";s:51:"gallery_entries/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?gallery_entries=$matches[1]&feed=$matches[2]";s:44:"gallery_entries/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?gallery_entries=$matches[1]&paged=$matches[2]";s:26:"gallery_entries/([^/]+)/?$";s:37:"index.php?gallery_entries=$matches[1]";s:39:"dt_teachers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"dt_teachers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"dt_teachers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"dt_teachers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"dt_teachers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"dt_teachers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"dt_teachers/([^/]+)/embed/?$";s:44:"index.php?dt_teachers=$matches[1]&embed=true";s:32:"dt_teachers/([^/]+)/trackback/?$";s:38:"index.php?dt_teachers=$matches[1]&tb=1";s:52:"dt_teachers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?dt_teachers=$matches[1]&feed=$matches[2]";s:47:"dt_teachers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?dt_teachers=$matches[1]&feed=$matches[2]";s:40:"dt_teachers/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?dt_teachers=$matches[1]&paged=$matches[2]";s:47:"dt_teachers/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?dt_teachers=$matches[1]&cpage=$matches[2]";s:37:"dt_teachers/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?dt_teachers=$matches[1]&wc-api=$matches[3]";s:43:"dt_teachers/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:54:"dt_teachers/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:36:"dt_teachers/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?dt_teachers=$matches[1]&page=$matches[2]";s:28:"dt_teachers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"dt_teachers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"dt_teachers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"dt_teachers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"dt_teachers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"dt_teachers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"wcs3_class/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"wcs3_class/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"wcs3_class/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"wcs3_class/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"wcs3_class/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"wcs3_class/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"wcs3_class/([^/]+)/embed/?$";s:43:"index.php?wcs3_class=$matches[1]&embed=true";s:31:"wcs3_class/([^/]+)/trackback/?$";s:37:"index.php?wcs3_class=$matches[1]&tb=1";s:51:"wcs3_class/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?wcs3_class=$matches[1]&feed=$matches[2]";s:46:"wcs3_class/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?wcs3_class=$matches[1]&feed=$matches[2]";s:39:"wcs3_class/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?wcs3_class=$matches[1]&paged=$matches[2]";s:46:"wcs3_class/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?wcs3_class=$matches[1]&cpage=$matches[2]";s:36:"wcs3_class/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?wcs3_class=$matches[1]&wc-api=$matches[3]";s:42:"wcs3_class/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:53:"wcs3_class/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:35:"wcs3_class/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?wcs3_class=$matches[1]&page=$matches[2]";s:27:"wcs3_class/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"wcs3_class/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"wcs3_class/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"wcs3_class/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"wcs3_class/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"wcs3_class/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:43:"wcs3_instructor/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:53:"wcs3_instructor/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:73:"wcs3_instructor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"wcs3_instructor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:68:"wcs3_instructor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:49:"wcs3_instructor/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"wcs3_instructor/([^/]+)/embed/?$";s:48:"index.php?wcs3_instructor=$matches[1]&embed=true";s:36:"wcs3_instructor/([^/]+)/trackback/?$";s:42:"index.php?wcs3_instructor=$matches[1]&tb=1";s:56:"wcs3_instructor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?wcs3_instructor=$matches[1]&feed=$matches[2]";s:51:"wcs3_instructor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?wcs3_instructor=$matches[1]&feed=$matches[2]";s:44:"wcs3_instructor/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?wcs3_instructor=$matches[1]&paged=$matches[2]";s:51:"wcs3_instructor/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?wcs3_instructor=$matches[1]&cpage=$matches[2]";s:41:"wcs3_instructor/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?wcs3_instructor=$matches[1]&wc-api=$matches[3]";s:47:"wcs3_instructor/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:58:"wcs3_instructor/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:40:"wcs3_instructor/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?wcs3_instructor=$matches[1]&page=$matches[2]";s:32:"wcs3_instructor/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"wcs3_instructor/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"wcs3_instructor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"wcs3_instructor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"wcs3_instructor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"wcs3_instructor/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:41:"wcs3_location/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:51:"wcs3_location/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:71:"wcs3_location/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"wcs3_location/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:66:"wcs3_location/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:47:"wcs3_location/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:30:"wcs3_location/([^/]+)/embed/?$";s:46:"index.php?wcs3_location=$matches[1]&embed=true";s:34:"wcs3_location/([^/]+)/trackback/?$";s:40:"index.php?wcs3_location=$matches[1]&tb=1";s:54:"wcs3_location/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wcs3_location=$matches[1]&feed=$matches[2]";s:49:"wcs3_location/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?wcs3_location=$matches[1]&feed=$matches[2]";s:42:"wcs3_location/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?wcs3_location=$matches[1]&paged=$matches[2]";s:49:"wcs3_location/([^/]+)/comment-page-([0-9]{1,})/?$";s:53:"index.php?wcs3_location=$matches[1]&cpage=$matches[2]";s:39:"wcs3_location/([^/]+)/wc-api(/(.*))?/?$";s:54:"index.php?wcs3_location=$matches[1]&wc-api=$matches[3]";s:45:"wcs3_location/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:56:"wcs3_location/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:38:"wcs3_location/([^/]+)(?:/([0-9]+))?/?$";s:52:"index.php?wcs3_location=$matches[1]&page=$matches[2]";s:30:"wcs3_location/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"wcs3_location/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"wcs3_location/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"wcs3_location/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"wcs3_location/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"wcs3_location/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"event/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"event/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"event/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"event/([^/]+)/embed/?$";s:45:"index.php?tribe_events=$matches[1]&embed=true";s:26:"event/([^/]+)/trackback/?$";s:39:"index.php?tribe_events=$matches[1]&tb=1";s:46:"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:41:"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?tribe_events=$matches[1]&feed=$matches[2]";s:34:"event/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&paged=$matches[2]";s:41:"event/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?tribe_events=$matches[1]&cpage=$matches[2]";s:31:"event/([^/]+)/wc-api(/(.*))?/?$";s:53:"index.php?tribe_events=$matches[1]&wc-api=$matches[3]";s:37:"event/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"event/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"event/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?tribe_events=$matches[1]&page=$matches[2]";s:22:"event/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"event/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"event/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"venue/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"venue/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"venue/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"venue/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"venue/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"venue/([^/]+)/embed/?$";s:44:"index.php?tribe_venue=$matches[1]&embed=true";s:26:"venue/([^/]+)/trackback/?$";s:38:"index.php?tribe_venue=$matches[1]&tb=1";s:34:"venue/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&paged=$matches[2]";s:41:"venue/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?tribe_venue=$matches[1]&cpage=$matches[2]";s:31:"venue/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?tribe_venue=$matches[1]&wc-api=$matches[3]";s:37:"venue/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"venue/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"venue/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?tribe_venue=$matches[1]&page=$matches[2]";s:22:"venue/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"venue/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"venue/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"venue/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"venue/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"organizer/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"organizer/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"organizer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"organizer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"organizer/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"organizer/([^/]+)/embed/?$";s:48:"index.php?tribe_organizer=$matches[1]&embed=true";s:30:"organizer/([^/]+)/trackback/?$";s:42:"index.php?tribe_organizer=$matches[1]&tb=1";s:38:"organizer/([^/]+)/page/?([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&paged=$matches[2]";s:45:"organizer/([^/]+)/comment-page-([0-9]{1,})/?$";s:55:"index.php?tribe_organizer=$matches[1]&cpage=$matches[2]";s:35:"organizer/([^/]+)/wc-api(/(.*))?/?$";s:56:"index.php?tribe_organizer=$matches[1]&wc-api=$matches[3]";s:41:"organizer/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:52:"organizer/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:34:"organizer/([^/]+)(?:/([0-9]+))?/?$";s:54:"index.php?tribe_organizer=$matches[1]&page=$matches[2]";s:26:"organizer/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"organizer/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"organizer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"organizer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"organizer/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:54:"events/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:49:"events/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?tribe_events_cat=$matches[1]&feed=$matches[2]";s:42:"events/category/(.+?)/page/?([0-9]{1,})/?$";s:56:"index.php?tribe_events_cat=$matches[1]&paged=$matches[2]";s:24:"events/category/(.+?)/?$";s:38:"index.php?tribe_events_cat=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:20:"order-pay(/(.*))?/?$";s:32:"index.php?&order-pay=$matches[2]";s:25:"order-received(/(.*))?/?$";s:37:"index.php?&order-received=$matches[2]";s:21:"view-order(/(.*))?/?$";s:33:"index.php?&view-order=$matches[2]";s:23:"edit-account(/(.*))?/?$";s:35:"index.php?&edit-account=$matches[2]";s:23:"edit-address(/(.*))?/?$";s:35:"index.php?&edit-address=$matches[2]";s:24:"lost-password(/(.*))?/?$";s:36:"index.php?&lost-password=$matches[2]";s:26:"customer-logout(/(.*))?/?$";s:38:"index.php?&customer-logout=$matches[2]";s:29:"add-payment-method(/(.*))?/?$";s:41:"index.php?&add-payment-method=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(418, 'wcs3_settings', 's:645:"a:16:{s:17:"first_day_of_week";i:0;s:12:"24_hour_mode";s:2:"no";s:18:"location_collision";s:3:"yes";s:20:"instructor_collision";s:3:"yes";s:30:"open_template_links_in_new_tab";s:3:"yes";s:16:"details_template";s:60:"[class] with [instructor] [start hour] to [end hour] [notes]";s:19:"allow_html_in_notes";s:2:"no";s:10:"color_base";s:6:"DDFFDD";s:17:"color_details_box";s:6:"FFDDDD";s:10:"color_text";s:6:"373737";s:12:"color_border";s:6:"DDDDDD";s:19:"color_headings_text";s:6:"666666";s:25:"color_headings_background";s:6:"EEEEEE";s:16:"color_background";s:6:"FFFFFF";s:21:"color_qtip_background";s:6:"FFFFFF";s:11:"color_links";s:6:"1982D1";}";', 'yes'),
(419, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:26:"Education "[your-subject]"";s:6:"sender";s:33:"[your-name] <ashraful@gstlbd.com>";s:4:"body";s:173:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Education (http://localhost/education)";s:9:"recipient";s:19:"ashraful@gstlbd.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"Education "[your-subject]"";s:6:"sender";s:31:"Education <ashraful@gstlbd.com>";s:4:"body";s:115:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Education (http://localhost/education)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: ashraful@gstlbd.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'en_US'),
(8, 5, 'ratings_users', '0'),
(9, 5, 'ratings_score', '0'),
(10, 5, 'ratings_average', '0'),
(11, 6, 'ratings_users', '0'),
(12, 6, 'ratings_score', '0'),
(13, 6, 'ratings_average', '0'),
(14, 39, 'ratings_users', '0'),
(15, 39, 'ratings_score', '0'),
(16, 39, 'ratings_average', '0'),
(17, 2645, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:25:"http://vimeo.com/18439821";i:2;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:25:"http://vimeo.com/18439821";i:2;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:5:"video";i:2;s:9:"gallery-2";i:3;s:9:"gallery-2";}}'),
(18, 2645, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(19, 2645, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(20, 2645, '_seo_title', ''),
(21, 2645, '_seo_description', ''),
(22, 2645, '_seo_keywords', ''),
(23, 2645, '_wp_old_slug', 'aenean-congue-nibh'),
(24, 2645, 'slide_template', ''),
(25, 2645, '_wp_old_slug', 'activities-in-colors'),
(26, 2645, '_wp_old_slug', 'infantile-disease'),
(27, 2645, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";}'),
(28, 2645, '_thumbnail_id', '4744'),
(29, 2647, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:5:"video";i:3;s:9:"gallery-2";}}'),
(30, 2647, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(31, 2647, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(32, 2647, '_seo_title', ''),
(33, 2647, '_seo_description', ''),
(34, 2647, '_seo_keywords', ''),
(35, 2647, '_wp_old_slug', 'praesent-aliquet-convallis'),
(36, 2647, '_wp_old_slug', 'praesent-aliquet-con'),
(37, 2647, 'slide_template', ''),
(38, 2647, '_wp_old_slug', 'birthday-celebration'),
(39, 2647, '_wp_old_slug', 'clean-water-for-india'),
(40, 2647, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";}'),
(41, 2647, '_thumbnail_id', '4744'),
(42, 2716, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:5:"video";i:3;s:9:"gallery-2";}}'),
(43, 2716, '_dt_post_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(44, 2716, '_tpl_default_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(45, 2716, '_seo_title', ''),
(46, 2716, '_seo_description', ''),
(47, 2716, '_seo_keywords', ''),
(48, 2716, '_wp_old_slug', 'suspendisse-sagittis'),
(49, 2716, '_likes', '0'),
(50, 2716, 'slide_template', ''),
(51, 2716, '_wp_old_slug', 'a-cute-child'),
(52, 2716, '_wp_old_slug', 'rainforest-org'),
(53, 2716, '_wp_old_slug', 'green-construction'),
(54, 2716, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";}'),
(55, 2716, '_thumbnail_id', '4744'),
(56, 2648, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:3;s:25:"http://vimeo.com/18439821";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:3;s:25:"http://vimeo.com/18439821";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:9:"gallery-2";i:3;s:5:"video";}}'),
(57, 2648, '_dt_post_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(58, 2648, '_tpl_default_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(59, 2648, '_seo_title', ''),
(60, 2648, '_seo_description', ''),
(61, 2648, '_seo_keywords', ''),
(62, 2648, '_wp_old_slug', 'quisque-non-lobortis-odio'),
(63, 2648, '_wp_old_slug', 'quisque-non-lob'),
(64, 2648, 'slide_template', ''),
(65, 2648, '_wp_old_slug', 'tour-tim-tim'),
(66, 2648, '_wp_old_slug', 'help-children'),
(67, 2648, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";}'),
(68, 2648, '_thumbnail_id', '4744'),
(69, 2649, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:5:"video";i:3;s:9:"gallery-2";}}'),
(70, 2649, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(71, 2649, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(72, 2649, '_seo_title', ''),
(73, 2649, '_seo_description', ''),
(74, 2649, '_seo_keywords', ''),
(75, 2649, '_wp_old_slug', 'volutpat-non-tincidunt-quis'),
(76, 2649, '_wp_old_slug', 'volutpat-non-tin'),
(77, 2649, '_wp_old_slug', 'volutpat-non-tinyu'),
(78, 2649, 'slide_template', ''),
(79, 2649, '_wp_old_slug', 'a-day-at-school'),
(80, 2649, '_wp_old_slug', 'need-hospitality'),
(81, 2649, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";}'),
(82, 2649, '_thumbnail_id', '4744'),
(83, 2650, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:25:"http://vimeo.com/18439821";i:2;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:25:"http://vimeo.com/18439821";i:2;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:5:"video";i:2;s:9:"gallery-2";i:3;s:9:"gallery-2";}}'),
(84, 2650, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(85, 2650, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(86, 2650, '_seo_title', ''),
(87, 2650, '_seo_description', ''),
(88, 2650, '_seo_keywords', ''),
(89, 2650, '_wp_old_slug', 'aliquam-placerat-tempor'),
(90, 2650, '_wp_old_slug', 'aliquam-placerat'),
(91, 2650, '_likes', '0'),
(92, 2650, 'slide_template', ''),
(93, 2650, '_wp_old_slug', 'school-days'),
(94, 2650, '_wp_old_slug', 'child-protection'),
(95, 2650, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";}'),
(96, 2650, '_thumbnail_id', '4744'),
(97, 2651, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:4:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:4:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:25:"http://vimeo.com/18439821";i:3;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:4:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:5:"video";i:3;s:9:"gallery-2";}}'),
(98, 2651, '_dt_post_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(99, 2651, '_tpl_default_settings', 'a:1:{s:6:"layout";s:27:"single-gallery-layout-three";}'),
(100, 2651, '_seo_title', ''),
(101, 2651, '_seo_description', ''),
(102, 2651, '_seo_keywords', ''),
(103, 2651, '_wp_old_slug', 'integer-faucibus-orci'),
(104, 2651, '_wp_old_slug', 'integer-faucibus'),
(105, 2651, '_likes', '0'),
(106, 2651, 'slide_template', ''),
(107, 2651, '_wp_old_slug', 'tour-time'),
(108, 2651, '_wp_old_slug', 'kind-hearts-campaign'),
(109, 2651, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:27:"single-gallery-layout-three";s:17:"show-social-share";s:4:"true";}'),
(110, 2651, '_thumbnail_id', '4744'),
(111, 2652, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:3:{i:0;s:25:"http://vimeo.com/18439821";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";}s:15:"items_thumbnail";a:3:{i:0;s:25:"http://vimeo.com/18439821";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";}s:10:"items_name";a:3:{i:0;s:5:"video";i:1;s:9:"gallery-2";i:2;s:9:"gallery-2";}}'),
(112, 2652, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(113, 2652, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-one";}'),
(114, 2652, '_seo_title', ''),
(115, 2652, '_seo_description', ''),
(116, 2652, '_seo_keywords', ''),
(117, 2652, '_wp_old_slug', 'cras-nisl-lorem-molestie'),
(118, 2652, '_wp_old_slug', 'cras-nisl-molestie'),
(119, 2652, 'slide_template', ''),
(120, 2652, '_wp_old_slug', 'gifts-at-large'),
(121, 2652, '_wp_old_slug', 'help-africa'),
(122, 2652, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-one";s:17:"show-social-share";s:4:"true";}'),
(123, 2652, '_thumbnail_id', '4744'),
(124, 2653, '_gallery_settings', 'a:9:{s:6:"client";s:3:"Ram";s:8:"location";s:10:"Coimbatore";s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";s:18:"show-related-items";s:4:"true";s:5:"items";a:3:{i:0;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:1;s:82:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery.gif";i:2;s:25:"http://vimeo.com/18439821";}s:15:"items_thumbnail";a:3:{i:0;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:1;s:90:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/gallery-150x150.gif";i:2;s:25:"http://vimeo.com/18439821";}s:10:"items_name";a:3:{i:0;s:9:"gallery-2";i:1;s:9:"gallery-2";i:2;s:5:"video";}}'),
(125, 2653, '_dt_post_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(126, 2653, '_tpl_default_settings', 'a:1:{s:6:"layout";s:25:"single-gallery-layout-two";}'),
(127, 2653, '_seo_title', ''),
(128, 2653, '_seo_description', ''),
(129, 2653, '_seo_keywords', ''),
(130, 2653, '_wp_old_slug', 'praesent-volutpat-auctor'),
(131, 2653, '_wp_old_slug', 'praesent-volutpat'),
(132, 2653, '_likes', '0'),
(133, 2653, 'slide_template', ''),
(134, 2653, '_wp_old_slug', 'school-time'),
(135, 2653, '_wp_old_slug', 'kids-against-hunger'),
(136, 2653, '_teacher_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:25:"single-gallery-layout-two";s:17:"show-social-share";s:4:"true";}'),
(137, 2653, '_thumbnail_id', '4744'),
(138, 4277, 'slide_template', ''),
(139, 4277, '_gallery_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:18:"content-full-width";s:17:"show-social-share";s:4:"true";}'),
(140, 4277, '_teacher_settings', 'a:10:{s:4:"role";s:12:"Art Director";s:3:"url";s:23:"http://iamdesigning.com";s:3:"exp";s:5:"2 yrs";s:6:"course";s:5:"8 Nos";s:7:"special";s:19:"Musical Instruments";s:6:"layout";s:18:"content-full-width";s:17:"show-social-share";s:4:"true";s:7:"comment";s:4:"true";s:11:"social-icon";a:4:{i:0;s:9:"fa-flickr";i:1;s:11:"fa-facebook";i:2;s:10:"fa-twitter";i:3;s:11:"fa-dribbble";}s:11:"social-link";a:3:{i:0;s:17:"http://flickr.com";i:1;s:13:"http://fb.com";i:2;s:1:"#";}}'),
(141, 4277, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(142, 4277, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(143, 4277, '_seo_title', ''),
(144, 4277, '_seo_description', ''),
(145, 4277, '_seo_keywords', ''),
(146, 4277, 'votes', '2'),
(147, 4277, '_thumbnail_id', '4745'),
(148, 4278, 'slide_template', ''),
(149, 4278, '_gallery_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:18:"with-right-sidebar";s:17:"show-social-share";s:4:"true";}'),
(150, 4278, '_teacher_settings', 'a:10:{s:4:"role";s:18:"Marketing Director";s:3:"url";s:23:"http://iamdesigning.com";s:3:"exp";s:6:"10 yrs";s:6:"course";s:6:"25 Nos";s:7:"special";s:25:"Digital Media Programming";s:6:"layout";s:18:"with-right-sidebar";s:17:"show-social-share";s:4:"true";s:7:"comment";s:4:"true";s:11:"social-icon";a:4:{i:0;s:11:"fa-dribbble";i:1;s:12:"fa-instagram";i:2;s:8:"fa-apple";i:3;s:11:"fa-dribbble";}s:11:"social-link";a:3:{i:0;s:1:"#";i:1;s:1:"#";i:2;s:1:"#";}}'),
(151, 4278, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(152, 4278, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(153, 4278, '_seo_title', ''),
(154, 4278, '_seo_description', ''),
(155, 4278, '_seo_keywords', ''),
(156, 4278, 'votes', '3'),
(157, 4278, '_thumbnail_id', '4745'),
(158, 4279, 'slide_template', ''),
(159, 4279, '_gallery_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:18:"content-full-width";s:17:"show-social-share";s:4:"true";}'),
(160, 4279, '_teacher_settings', 'a:10:{s:4:"role";s:11:"Co-Director";s:3:"url";s:23:"http://iamdesigning.com";s:3:"exp";s:5:"3 yrs";s:6:"course";s:6:"15 Nos";s:7:"special";s:17:"Fashion Designing";s:6:"layout";s:18:"content-full-width";s:17:"show-social-share";s:4:"true";s:7:"comment";s:4:"true";s:11:"social-icon";a:4:{i:0;s:14:"fa-google-plus";i:1;s:10:"fa-dropbox";i:2;s:15:"fa-vimeo-square";i:3;s:11:"fa-dribbble";}s:11:"social-link";a:3:{i:0;s:1:"#";i:1;s:1:"#";i:2;s:1:"#";}}'),
(161, 4279, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(162, 4279, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(163, 4279, '_seo_title', ''),
(164, 4279, '_seo_description', ''),
(165, 4279, '_seo_keywords', ''),
(166, 4279, 'votes', '8'),
(167, 4279, '_thumbnail_id', '4745'),
(168, 4280, 'slide_template', ''),
(169, 4280, '_gallery_settings', 'a:3:{s:3:"url";s:23:"http://iamdesigning.com";s:6:"layout";s:18:"with-right-sidebar";s:17:"show-social-share";s:4:"true";}'),
(170, 4280, '_teacher_settings', 'a:10:{s:4:"role";s:7:"Founder";s:3:"url";s:23:"http://iamdesigning.com";s:3:"exp";s:5:"5 yrs";s:6:"course";s:6:"12 Nos";s:7:"special";s:11:"Open Source";s:6:"layout";s:18:"with-right-sidebar";s:17:"show-social-share";s:4:"true";s:7:"comment";s:4:"true";s:11:"social-icon";a:4:{i:0;s:8:"fa-apple";i:1;s:10:"fa-twitter";i:2;s:11:"fa-linkedin";i:3;s:11:"fa-dribbble";}s:11:"social-link";a:3:{i:0;s:1:"#";i:1;s:1:"#";i:2;s:1:"#";}}'),
(171, 4280, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(172, 4280, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(173, 4280, '_seo_title', ''),
(174, 4280, '_seo_description', ''),
(175, 4280, '_seo_keywords', ''),
(176, 4280, 'votes', '35'),
(177, 4280, 'ratings_users', '1'),
(178, 4280, 'ratings_score', '4'),
(179, 4280, 'ratings_average', '4'),
(180, 4280, '_thumbnail_id', '4745'),
(181, 4281, '_menu_item_type', 'custom'),
(182, 4281, '_menu_item_menu_item_parent', '4290'),
(183, 4281, '_menu_item_object_id', '4281'),
(184, 4281, '_menu_item_object', 'custom'),
(185, 4281, '_menu_item_target', ''),
(186, 4281, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 4281, '_menu_item_xfn', ''),
(188, 4281, '_menu_item_url', '#'),
(189, 4281, '_dt-use-as-megamenu', ''),
(190, 4281, '_dt-disable-link', ''),
(191, 4281, '_dt-fullwidth', ''),
(192, 4281, '_dt-iconclass', ''),
(193, 4281, '_dt-disable-text', ''),
(194, 4281, '_dt-columns', '2'),
(195, 4281, '_dt-custom-content', ''),
(196, 4282, '_menu_item_type', 'custom'),
(197, 4282, '_menu_item_menu_item_parent', '4290'),
(198, 4282, '_menu_item_object_id', '4282'),
(199, 4282, '_menu_item_object', 'custom'),
(200, 4282, '_menu_item_target', ''),
(201, 4282, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 4282, '_menu_item_xfn', ''),
(203, 4282, '_menu_item_url', '#'),
(204, 4282, '_dt-use-as-megamenu', ''),
(205, 4282, '_dt-disable-link', ''),
(206, 4282, '_dt-fullwidth', ''),
(207, 4282, '_dt-iconclass', ''),
(208, 4282, '_dt-disable-text', ''),
(209, 4282, '_dt-columns', '2'),
(210, 4282, '_dt-custom-content', ''),
(211, 4283, '_menu_item_type', 'custom'),
(212, 4283, '_menu_item_menu_item_parent', '4282'),
(213, 4283, '_menu_item_object_id', '4283'),
(214, 4283, '_menu_item_object', 'custom'),
(215, 4283, '_menu_item_target', ''),
(216, 4283, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(217, 4283, '_menu_item_xfn', ''),
(218, 4283, '_menu_item_url', '#'),
(219, 4283, '_dt-use-as-megamenu', ''),
(220, 4283, '_dt-disable-link', ''),
(221, 4283, '_dt-fullwidth', ''),
(222, 4283, '_dt-iconclass', ''),
(223, 4283, '_dt-disable-text', ''),
(224, 4283, '_dt-columns', '2'),
(225, 4283, '_dt-custom-content', ''),
(226, 4284, '_menu_item_type', 'custom'),
(227, 4284, '_menu_item_menu_item_parent', '4282'),
(228, 4284, '_menu_item_object_id', '4284'),
(229, 4284, '_menu_item_object', 'custom'),
(230, 4284, '_menu_item_target', ''),
(231, 4284, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(232, 4284, '_menu_item_xfn', ''),
(233, 4284, '_menu_item_url', '#'),
(234, 4284, '_dt-use-as-megamenu', ''),
(235, 4284, '_dt-disable-link', ''),
(236, 4284, '_dt-fullwidth', ''),
(237, 4284, '_dt-iconclass', ''),
(238, 4284, '_dt-disable-text', ''),
(239, 4284, '_dt-columns', '2'),
(240, 4284, '_dt-custom-content', ''),
(301, 4289, '_menu_item_type', 'custom'),
(302, 4289, '_menu_item_menu_item_parent', '4783'),
(303, 4289, '_menu_item_object_id', '4289'),
(304, 4289, '_menu_item_object', 'custom'),
(305, 4289, '_menu_item_target', ''),
(306, 4289, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(307, 4289, '_menu_item_xfn', ''),
(308, 4289, '_menu_item_url', 'http://wedesignthemes.com/themes/dummy-guru/404'),
(309, 4289, '_dt-use-as-megamenu', ''),
(310, 4289, '_dt-disable-link', ''),
(311, 4289, '_dt-fullwidth', ''),
(312, 4289, '_dt-iconclass', ''),
(313, 4289, '_dt-disable-text', ''),
(314, 4289, '_dt-columns', '2'),
(315, 4289, '_dt-custom-content', ''),
(316, 4290, '_menu_item_type', 'custom'),
(317, 4290, '_menu_item_menu_item_parent', '4852'),
(318, 4290, '_menu_item_object_id', '4290'),
(319, 4290, '_menu_item_object', 'custom'),
(320, 4290, '_menu_item_target', ''),
(321, 4290, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(322, 4290, '_menu_item_xfn', ''),
(323, 4290, '_menu_item_url', '#'),
(324, 4290, '_dt-use-as-megamenu', ''),
(325, 4290, '_dt-disable-link', ''),
(326, 4290, '_dt-fullwidth', ''),
(327, 4290, '_dt-iconclass', ''),
(328, 4290, '_dt-disable-text', ''),
(329, 4290, '_dt-columns', '2'),
(330, 4290, '_dt-custom-content', ''),
(331, 4291, '_menu_item_type', 'custom'),
(332, 4291, '_menu_item_menu_item_parent', '4789'),
(333, 4291, '_menu_item_object_id', '4291'),
(334, 4291, '_menu_item_object', 'custom'),
(335, 4291, '_menu_item_target', ''),
(336, 4291, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(337, 4291, '_menu_item_xfn', ''),
(338, 4291, '_menu_item_url', '#'),
(339, 4291, '_dt-use-as-megamenu', ''),
(340, 4291, '_dt-disable-link', ''),
(341, 4291, '_dt-fullwidth', ''),
(342, 4291, '_dt-iconclass', ''),
(343, 4291, '_dt-disable-text', ''),
(344, 4291, '_dt-columns', '2'),
(345, 4291, '_dt-custom-content', ''),
(346, 133, 'ratings_users', '0'),
(347, 133, 'ratings_score', '0'),
(348, 133, 'ratings_average', '0'),
(349, 133, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(350, 133, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(351, 133, '_seo_title', ''),
(352, 133, '_seo_description', ''),
(353, 133, '_seo_keywords', ''),
(354, 133, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(355, 133, '_wp_page_template', 'default'),
(356, 133, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(357, 133, 'slide_template', ''),
(358, 138, 'ratings_users', '0'),
(359, 138, 'ratings_score', '0'),
(360, 138, 'ratings_average', '0'),
(361, 138, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(362, 138, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(363, 138, '_seo_title', ''),
(364, 138, '_seo_description', ''),
(365, 138, '_seo_keywords', ''),
(366, 138, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(367, 138, '_wp_page_template', 'default'),
(368, 138, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(369, 138, 'slide_template', ''),
(370, 151, 'ratings_users', '0'),
(371, 151, 'ratings_score', '0'),
(372, 151, 'ratings_average', '0'),
(373, 151, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(374, 151, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(375, 151, '_seo_title', ''),
(376, 151, '_seo_description', ''),
(377, 151, '_seo_keywords', ''),
(378, 151, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(379, 151, '_wp_page_template', 'default'),
(380, 151, '_catalog_settings', 'a:0:{}'),
(381, 151, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(382, 151, 'slide_template', ''),
(383, 165, 'ratings_users', '0'),
(384, 165, 'ratings_score', '0'),
(385, 165, 'ratings_average', '0'),
(386, 165, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(387, 165, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(388, 165, '_seo_title', ''),
(389, 165, '_seo_description', ''),
(390, 165, '_seo_keywords', ''),
(391, 165, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(392, 165, '_wp_page_template', 'default'),
(393, 165, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(394, 165, 'slide_template', ''),
(395, 167, 'ratings_users', '0'),
(396, 167, 'ratings_score', '0'),
(397, 167, 'ratings_average', '0'),
(398, 167, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(399, 167, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(400, 167, '_seo_title', ''),
(401, 167, '_seo_description', ''),
(402, 167, '_seo_keywords', ''),
(403, 167, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(404, 167, '_wp_page_template', 'default'),
(405, 167, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(406, 167, 'slide_template', ''),
(407, 176, 'ratings_users', '0'),
(408, 176, 'ratings_score', '0'),
(409, 176, 'ratings_average', '0'),
(410, 176, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(411, 176, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(412, 176, '_seo_title', ''),
(413, 176, '_seo_description', ''),
(414, 176, '_seo_keywords', ''),
(415, 176, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(416, 176, '_wp_page_template', 'default'),
(417, 176, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(418, 176, 'slide_template', ''),
(419, 184, 'ratings_users', '0'),
(420, 184, 'ratings_score', '0'),
(421, 184, 'ratings_average', '0'),
(422, 184, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(423, 184, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(424, 184, '_seo_title', ''),
(425, 184, '_seo_description', ''),
(426, 184, '_seo_keywords', ''),
(427, 184, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(428, 184, '_wp_page_template', 'default'),
(429, 184, '_catalog_settings', 'a:0:{}'),
(430, 184, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(431, 184, 'slide_template', ''),
(432, 189, 'ratings_users', '0'),
(433, 189, 'ratings_score', '0'),
(434, 189, 'ratings_average', '0'),
(435, 189, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(436, 189, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:1:"3";}'),
(437, 189, '_seo_title', ''),
(438, 189, '_seo_description', ''),
(439, 189, '_seo_keywords', ''),
(440, 189, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(441, 189, '_wp_page_template', 'default'),
(442, 189, '_catalog_settings', 'a:0:{}'),
(443, 189, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(444, 189, 'slide_template', ''),
(445, 189, 'ratings_users', '0'),
(446, 189, 'ratings_score', '0'),
(447, 189, 'ratings_average', '0'),
(448, 189, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(449, 191, 'ratings_users', '0'),
(450, 191, 'ratings_score', '0'),
(451, 191, 'ratings_average', '0'),
(452, 191, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(453, 191, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(454, 191, '_seo_title', ''),
(455, 191, '_seo_description', ''),
(456, 191, '_seo_keywords', ''),
(457, 191, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(458, 191, '_wp_page_template', 'default'),
(459, 191, '_catalog_settings', 'a:0:{}'),
(460, 191, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(461, 191, 'slide_template', ''),
(462, 191, 'ratings_users', '0'),
(463, 191, 'ratings_score', '0'),
(464, 191, 'ratings_average', '0'),
(465, 191, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(466, 252, 'ratings_users', '0'),
(467, 252, 'ratings_score', '0'),
(468, 252, 'ratings_average', '0'),
(469, 252, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(470, 252, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(471, 252, '_seo_title', ''),
(472, 252, '_seo_description', ''),
(473, 252, '_seo_keywords', ''),
(474, 252, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(475, 252, '_wp_page_template', 'default'),
(476, 252, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(477, 252, 'slide_template', ''),
(478, 252, 'ratings_users', '0'),
(479, 252, 'ratings_score', '0'),
(480, 252, 'ratings_average', '0'),
(481, 252, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(482, 256, 'ratings_users', '0'),
(483, 256, 'ratings_score', '0'),
(484, 256, 'ratings_average', '0'),
(485, 256, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(486, 256, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(487, 256, '_seo_title', ''),
(488, 256, '_seo_description', ''),
(489, 256, '_seo_keywords', ''),
(490, 256, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(491, 256, '_wp_page_template', 'default'),
(492, 256, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(493, 256, 'slide_template', ''),
(494, 1484, 'ratings_users', '0'),
(495, 1484, 'ratings_score', '0'),
(496, 1484, 'ratings_average', '0'),
(497, 1484, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(498, 1484, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:16:"blog-post-layout";s:15:"one-half-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"26";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(499, 1484, '_seo_title', ''),
(500, 1484, '_seo_description', ''),
(501, 1484, '_seo_keywords', ''),
(502, 1484, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(503, 1484, '_wp_page_template', 'tpl-blog.php'),
(504, 1484, '_catalog_settings', 'a:0:{}'),
(505, 1484, 'slide_template', ''),
(506, 1484, 'ratings_users', '0'),
(507, 1484, 'ratings_score', '0'),
(508, 1484, 'ratings_average', '0'),
(509, 1484, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(510, 1484, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(511, 1486, 'ratings_users', '0'),
(512, 1486, 'ratings_score', '0'),
(513, 1486, 'ratings_average', '0'),
(514, 1486, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(515, 1486, '_tpl_default_settings', 'a:6:{s:6:"layout";s:17:"with-left-sidebar";s:16:"blog-post-layout";s:15:"one-half-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"20";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(516, 1486, '_seo_title', ''),
(517, 1486, '_seo_description', ''),
(518, 1486, '_seo_keywords', ''),
(519, 1486, '_portfolio_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(520, 1486, '_wp_page_template', 'tpl-blog.php'),
(521, 1486, 'slide_template', ''),
(522, 1486, 'ratings_users', '0'),
(523, 1486, 'ratings_score', '0'),
(524, 1486, 'ratings_average', '0'),
(525, 1486, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(526, 1486, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(527, 1488, 'ratings_users', '0'),
(528, 1488, 'ratings_score', '0'),
(529, 1488, 'ratings_average', '0'),
(530, 1488, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(531, 1488, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"with-right-sidebar";s:16:"blog-post-layout";s:15:"one-half-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"25";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(532, 1488, '_seo_title', ''),
(533, 1488, '_seo_description', ''),
(534, 1488, '_seo_keywords', ''),
(535, 1488, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(536, 1488, '_wp_page_template', 'tpl-blog.php'),
(537, 1488, 'slide_template', ''),
(538, 1488, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(539, 1488, 'ratings_users', '0'),
(540, 1488, 'ratings_score', '0'),
(541, 1488, 'ratings_average', '0'),
(542, 1488, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(543, 1490, 'ratings_users', '0'),
(544, 1490, 'ratings_score', '0'),
(545, 1490, 'ratings_average', '0'),
(546, 1490, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(547, 1490, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:16:"blog-post-layout";s:10:"one-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"45";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(548, 1490, '_seo_title', ''),
(549, 1490, '_seo_description', ''),
(550, 1490, '_seo_keywords', ''),
(551, 1490, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(552, 1490, '_wp_page_template', 'tpl-blog.php'),
(553, 1490, 'slide_template', ''),
(554, 1490, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(555, 1492, 'ratings_users', '0'),
(556, 1492, 'ratings_score', '0'),
(557, 1492, 'ratings_average', '0'),
(558, 1492, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(559, 1492, '_tpl_default_settings', 'a:6:{s:6:"layout";s:17:"with-left-sidebar";s:16:"blog-post-layout";s:10:"one-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"27";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(560, 1492, '_seo_title', ''),
(561, 1492, '_seo_description', ''),
(562, 1492, '_seo_keywords', ''),
(563, 1492, '_portfolio_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(564, 1492, '_wp_page_template', 'tpl-blog.php'),
(565, 1492, 'slide_template', ''),
(566, 1492, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(567, 1494, 'ratings_users', '0'),
(568, 1494, 'ratings_score', '0'),
(569, 1494, 'ratings_average', '0'),
(570, 1494, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(571, 1494, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"with-right-sidebar";s:16:"blog-post-layout";s:10:"one-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"30";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(572, 1494, '_seo_title', ''),
(573, 1494, '_seo_description', ''),
(574, 1494, '_seo_keywords', ''),
(575, 1494, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(576, 1494, '_wp_page_template', 'tpl-blog.php'),
(577, 1494, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(578, 1494, 'slide_template', ''),
(579, 2382, 'ratings_users', '0'),
(580, 2382, 'ratings_score', '0'),
(581, 2382, 'ratings_average', '0'),
(582, 2382, '_wp_page_template', 'default'),
(583, 2382, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(584, 2382, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(585, 2382, '_seo_title', ''),
(586, 2382, '_seo_description', ''),
(587, 2382, '_seo_keywords', ''),
(588, 2385, 'ratings_users', '0'),
(589, 2385, 'ratings_score', '0'),
(590, 2385, 'ratings_average', '0'),
(591, 2385, '_wp_page_template', 'default'),
(592, 2385, '_dt_post_settings', 'a:2:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(593, 2385, '_tpl_default_settings', 'a:3:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";s:12:"onepage_menu";s:3:"101";}'),
(594, 2385, '_seo_title', ''),
(595, 2385, '_seo_description', ''),
(596, 2385, '_seo_keywords', ''),
(597, 2385, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(598, 2385, 'ratings_users', '0'),
(599, 2385, 'ratings_score', '0'),
(600, 2385, 'ratings_average', '0'),
(601, 2385, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(602, 4292, 'ratings_users', '0'),
(603, 4292, 'ratings_score', '0'),
(604, 4292, 'ratings_average', '0'),
(605, 4292, '_wp_page_template', 'tpl-fullwidth.php'),
(606, 4292, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(607, 4292, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(608, 4292, '_tpl_default_settings', 'a:4:{s:6:"layout";s:18:"content-full-width";s:11:"show_slider";s:4:"true";s:11:"slider_type";s:11:"layerslider";s:12:"onepage_menu";s:2:"16";}'),
(609, 4292, '_seo_title', ''),
(610, 4292, '_seo_description', ''),
(611, 4292, '_seo_keywords', ''),
(612, 4292, 'slide_template', ''),
(613, 4292, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(614, 4292, 'ratings_users', '0'),
(615, 4292, 'ratings_score', '0'),
(616, 4292, 'ratings_average', '0'),
(617, 4293, 'ratings_users', '0'),
(618, 4293, 'ratings_score', '0'),
(619, 4293, 'ratings_average', '0'),
(620, 4293, '_wp_page_template', 'tpl-fullwidth.php'),
(621, 4293, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(622, 4293, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(623, 4293, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(624, 4293, '_seo_title', ''),
(625, 4293, '_seo_description', ''),
(626, 4293, '_seo_keywords', ''),
(627, 4293, 'slide_template', ''),
(628, 4293, 'ratings_users', '0'),
(629, 4293, 'ratings_score', '0'),
(630, 4293, 'ratings_average', '0'),
(631, 4293, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(632, 4294, 'ratings_users', '0'),
(633, 4294, 'ratings_score', '0'),
(634, 4294, 'ratings_average', '0'),
(635, 4294, '_wp_page_template', 'tpl-feature.php'),
(636, 4294, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(637, 4294, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(638, 4294, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(639, 4294, '_seo_title', ''),
(640, 4294, '_seo_description', ''),
(641, 4294, '_seo_keywords', ''),
(642, 4294, 'slide_template', ''),
(643, 4294, 'ratings_users', '0'),
(644, 4294, 'ratings_score', '0'),
(645, 4294, 'ratings_average', '0'),
(646, 4294, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(647, 4295, 'ratings_users', '0'),
(648, 4295, 'ratings_score', '0'),
(649, 4295, 'ratings_average', '0'),
(650, 4295, '_wp_page_template', 'tpl-blog.php'),
(651, 4295, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(652, 4295, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(653, 4295, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:16:"blog-post-layout";s:10:"one-column";s:18:"blog-post-per-page";s:1:"6";s:17:"blog-post-excerpt";s:4:"true";s:24:"blog-post-excerpt-length";s:2:"45";s:28:"blog-post-exclude-categories";a:1:{i:0;s:0:"";}}'),
(654, 4295, '_seo_title', ''),
(655, 4295, '_seo_description', ''),
(656, 4295, '_seo_keywords', ''),
(657, 4295, 'slide_template', ''),
(658, 2387, 'ratings_users', '0'),
(659, 2387, 'ratings_score', '0'),
(660, 2387, 'ratings_average', '0'),
(661, 2387, '_wp_page_template', 'default'),
(662, 2387, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(663, 2387, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(664, 2387, '_seo_title', ''),
(665, 2387, '_seo_description', ''),
(666, 2387, '_seo_keywords', ''),
(667, 2387, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(668, 2389, 'ratings_users', '0'),
(669, 2389, 'ratings_score', '0'),
(670, 2389, 'ratings_average', '0'),
(671, 2389, '_wp_page_template', 'default'),
(672, 2389, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(673, 2389, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(674, 2389, '_seo_title', ''),
(675, 2389, '_seo_description', ''),
(676, 2389, '_seo_keywords', ''),
(677, 2391, 'ratings_users', '0'),
(678, 2391, 'ratings_score', '0'),
(679, 2391, 'ratings_average', '0'),
(680, 2391, '_wp_page_template', 'default'),
(681, 2391, '_dt_post_settings', 'a:2:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(682, 2391, '_tpl_default_settings', 'a:2:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(683, 2391, '_seo_title', ''),
(684, 2391, '_seo_description', ''),
(685, 2391, '_seo_keywords', ''),
(686, 2391, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(687, 2393, 'ratings_users', '0'),
(688, 2393, 'ratings_score', '0'),
(689, 2393, 'ratings_average', '0'),
(690, 2393, '_wp_page_template', 'default'),
(691, 2393, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(692, 2393, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(693, 2393, '_seo_title', ''),
(694, 2393, '_seo_description', ''),
(695, 2393, '_seo_keywords', ''),
(696, 2393, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(697, 2395, 'ratings_users', '0'),
(698, 2395, 'ratings_score', '0'),
(699, 2395, 'ratings_average', '0'),
(700, 2395, '_wp_page_template', 'default'),
(701, 2395, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(702, 2395, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(703, 2395, '_seo_title', ''),
(704, 2395, '_seo_description', ''),
(705, 2395, '_seo_keywords', ''),
(706, 2395, 'slide_template', ''),
(707, 2395, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(708, 2397, 'ratings_users', '0'),
(709, 2397, 'ratings_score', '0'),
(710, 2397, 'ratings_average', '0'),
(711, 2397, '_wp_page_template', 'default'),
(712, 2397, '_dt_post_settings', 'a:2:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(713, 2397, '_tpl_default_settings', 'a:2:{s:6:"layout";s:17:"with-left-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(714, 2397, '_seo_title', ''),
(715, 2397, '_seo_description', ''),
(716, 2397, '_seo_keywords', ''),
(717, 2397, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(718, 2399, 'ratings_users', '0'),
(719, 2399, 'ratings_score', '0'),
(720, 2399, 'ratings_average', '0'),
(721, 2399, '_wp_page_template', 'default'),
(722, 2399, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(723, 2399, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(724, 2399, '_seo_title', ''),
(725, 2399, '_seo_description', ''),
(726, 2399, '_seo_keywords', ''),
(727, 2399, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(728, 2656, 'ratings_users', '0'),
(729, 2656, 'ratings_score', '0'),
(730, 2656, 'ratings_average', '0'),
(731, 2656, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(732, 2656, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(733, 2656, '_wp_page_template', 'tpl-gallery.php'),
(734, 2656, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:19:"gallery-post-layout";s:17:"one-fourth-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(735, 2656, '_seo_title', ''),
(736, 2656, '_seo_description', ''),
(737, 2656, '_seo_keywords', ''),
(738, 2656, 'slide_template', ''),
(739, 2656, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(740, 2658, 'ratings_users', '0'),
(741, 2658, 'ratings_score', '0'),
(742, 2658, 'ratings_average', '0'),
(743, 2658, '_wp_page_template', 'tpl-gallery.php'),
(744, 2658, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(745, 2658, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(746, 2658, '_tpl_default_settings', 'a:6:{s:6:"layout";s:17:"with-left-sidebar";s:19:"gallery-post-layout";s:17:"one-fourth-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(747, 2658, '_seo_title', ''),
(748, 2658, '_seo_description', ''),
(749, 2658, '_seo_keywords', ''),
(750, 2658, 'slide_template', ''),
(751, 2658, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(752, 2660, 'ratings_users', '0'),
(753, 2660, 'ratings_score', '0'),
(754, 2660, 'ratings_average', '0'),
(755, 2660, '_wp_page_template', 'tpl-gallery.php'),
(756, 2660, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(757, 2660, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(758, 2660, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"with-right-sidebar";s:19:"gallery-post-layout";s:17:"one-fourth-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(759, 2660, '_seo_title', ''),
(760, 2660, '_seo_description', ''),
(761, 2660, '_seo_keywords', ''),
(762, 2660, 'slide_template', ''),
(763, 2660, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(764, 2662, 'ratings_users', '0'),
(765, 2662, 'ratings_score', '0'),
(766, 2662, 'ratings_average', '0'),
(767, 2662, '_wp_page_template', 'tpl-gallery.php'),
(768, 2662, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(769, 2662, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(770, 2662, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:19:"gallery-post-layout";s:16:"one-third-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(771, 2662, '_seo_title', ''),
(772, 2662, '_seo_description', ''),
(773, 2662, '_seo_keywords', ''),
(774, 2662, 'slide_template', ''),
(775, 2662, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(776, 2664, 'ratings_users', '0'),
(777, 2664, 'ratings_score', '0'),
(778, 2664, 'ratings_average', '0'),
(779, 2664, '_wp_page_template', 'tpl-gallery.php'),
(780, 2664, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(781, 2664, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(782, 2664, '_tpl_default_settings', 'a:6:{s:6:"layout";s:17:"with-left-sidebar";s:19:"gallery-post-layout";s:16:"one-third-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(783, 2664, '_seo_title', ''),
(784, 2664, '_seo_description', ''),
(785, 2664, '_seo_keywords', ''),
(786, 2664, 'slide_template', ''),
(787, 2664, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(788, 2666, 'ratings_users', '0'),
(789, 2666, 'ratings_score', '0'),
(790, 2666, 'ratings_average', '0'),
(791, 2666, '_wp_page_template', 'tpl-gallery.php'),
(792, 2666, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(793, 2666, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(794, 2666, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"with-right-sidebar";s:19:"gallery-post-layout";s:16:"one-third-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:5:{i:0;s:2:"28";i:1;s:2:"25";i:2;s:2:"26";i:3;s:2:"27";i:4;s:0:"";}}'),
(795, 2666, '_seo_title', ''),
(796, 2666, '_seo_description', ''),
(797, 2666, '_seo_keywords', ''),
(798, 2666, 'slide_template', ''),
(799, 2668, 'ratings_users', '0'),
(800, 2668, 'ratings_score', '0'),
(801, 2668, 'ratings_average', '0'),
(802, 2668, '_wp_page_template', 'tpl-gallery.php'),
(803, 2668, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(804, 2668, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(805, 2668, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:19:"gallery-post-layout";s:15:"one-half-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(806, 2668, '_seo_title', ''),
(807, 2668, '_seo_description', ''),
(808, 2668, '_seo_keywords', ''),
(809, 2668, 'slide_template', ''),
(810, 2668, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(811, 2670, 'ratings_users', '0'),
(812, 2670, 'ratings_score', '0'),
(813, 2670, 'ratings_average', '0'),
(814, 2670, '_wp_page_template', 'tpl-gallery.php'),
(815, 2670, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(816, 2670, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(817, 2670, '_tpl_default_settings', 'a:6:{s:6:"layout";s:17:"with-left-sidebar";s:19:"gallery-post-layout";s:15:"one-half-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(818, 2670, '_seo_title', ''),
(819, 2670, '_seo_description', ''),
(820, 2670, '_seo_keywords', ''),
(821, 2670, 'slide_template', ''),
(822, 2670, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(823, 2672, 'ratings_users', '0'),
(824, 2672, 'ratings_score', '0'),
(825, 2672, 'ratings_average', '0'),
(826, 2672, '_wp_page_template', 'tpl-gallery.php'),
(827, 2672, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(828, 2672, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(829, 2672, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"with-right-sidebar";s:19:"gallery-post-layout";s:15:"one-half-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:2:"-1";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:10:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}}'),
(830, 2672, '_seo_title', ''),
(831, 2672, '_seo_description', ''),
(832, 2672, '_seo_keywords', ''),
(833, 2672, 'slide_template', ''),
(834, 2672, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(835, 4296, 'ratings_users', '0'),
(836, 4296, 'ratings_score', '0'),
(837, 4296, 'ratings_average', '0'),
(838, 4296, '_wp_page_template', 'default'),
(839, 4296, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(840, 4296, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(841, 4296, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(842, 4296, '_seo_title', ''),
(843, 4296, '_seo_description', ''),
(844, 4296, '_seo_keywords', ''),
(845, 4297, 'ratings_users', '0'),
(846, 4297, 'ratings_score', '0'),
(847, 4297, 'ratings_average', '0'),
(848, 4297, '_wp_page_template', 'tpl-fullwidth.php'),
(849, 4297, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(850, 4297, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(851, 4297, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";s:12:"onepage_menu";s:3:"101";}'),
(852, 4297, '_seo_title', ''),
(853, 4297, '_seo_description', ''),
(854, 4297, '_seo_keywords', ''),
(855, 4297, 'slide_template', ''),
(856, 4297, 'ratings_users', '0'),
(857, 4297, 'ratings_score', '0'),
(858, 4297, 'ratings_average', '0'),
(859, 4297, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(860, 4298, 'ratings_users', '0'),
(861, 4298, 'ratings_score', '0'),
(862, 4298, 'ratings_average', '0'),
(863, 4298, '_wp_page_template', 'tpl-gallery.php'),
(864, 4298, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(865, 4298, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(866, 4298, '_tpl_default_settings', 'a:6:{s:6:"layout";s:18:"content-full-width";s:19:"gallery-post-layout";s:17:"one-fourth-column";s:24:"gallery-post-design-type";s:7:"default";s:21:"gallery-post-per-page";s:1:"8";s:6:"filter";s:4:"true";s:18:"gallery-categories";a:6:{i:0;s:1:"9";i:1;s:2:"10";i:2;s:2:"11";i:3;s:2:"12";i:4;s:1:"5";i:5;s:0:"";}}'),
(867, 4298, '_seo_title', ''),
(868, 4298, '_seo_description', ''),
(869, 4298, '_seo_keywords', ''),
(870, 4298, 'slide_template', ''),
(871, 4298, 'ratings_users', '0'),
(872, 4298, 'ratings_score', '0'),
(873, 4298, 'ratings_average', '0'),
(874, 4298, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(875, 44, 'ratings_users', '0'),
(876, 44, 'ratings_score', '0'),
(877, 44, 'ratings_average', '0'),
(878, 45, 'ratings_users', '0'),
(879, 45, 'ratings_score', '0'),
(880, 45, 'ratings_average', '0'),
(881, 45, '_wp_page_template', 'default'),
(882, 45, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(883, 45, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(884, 45, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:26:"disable-everywhere-sidebar";s:4:"true";s:12:"onepage_menu";s:3:"101";}'),
(885, 45, '_seo_title', ''),
(886, 45, '_seo_description', ''),
(887, 45, '_seo_keywords', ''),
(888, 45, 'slide_template', ''),
(889, 45, 'ratings_users', '0'),
(890, 45, 'ratings_score', '0'),
(891, 45, 'ratings_average', '0'),
(892, 45, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(893, 2774, 'ratings_users', '0'),
(894, 2774, 'ratings_score', '0'),
(895, 2774, 'ratings_average', '0'),
(896, 2774, '_wp_page_template', 'tpl-fullwidth.php'),
(897, 2774, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(898, 2774, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(899, 2774, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"with-right-sidebar";s:26:"disable-everywhere-sidebar";s:4:"true";}'),
(900, 2774, '_seo_title', ''),
(901, 2774, '_seo_description', ''),
(902, 2774, '_seo_keywords', ''),
(903, 2774, 'slide_template', ''),
(904, 2777, 'ratings_users', '0'),
(905, 2777, 'ratings_score', '0'),
(906, 2777, 'ratings_average', '0'),
(907, 2777, '_wp_page_template', 'tpl-feature.php'),
(908, 2777, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(909, 2777, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(910, 2777, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:10:"fa-desktop";s:12:"onepage_menu";s:2:"16";}'),
(911, 2777, '_seo_title', ''),
(912, 2777, '_seo_description', ''),
(913, 2777, '_seo_keywords', ''),
(914, 2777, 'slide_template', ''),
(915, 2777, 'ratings_users', '0'),
(916, 2777, 'ratings_score', '0'),
(917, 2777, 'ratings_average', '0'),
(918, 2777, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(919, 2779, 'ratings_users', '0'),
(920, 2779, 'ratings_score', '0'),
(921, 2779, 'ratings_average', '0'),
(922, 2779, '_wp_page_template', 'tpl-feature.php'),
(923, 2779, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(924, 2779, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(925, 2779, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:9:"fa-pencil";s:12:"onepage_menu";s:2:"16";}'),
(926, 2779, '_seo_title', ''),
(927, 2779, '_seo_description', ''),
(928, 2779, '_seo_keywords', ''),
(929, 2779, 'slide_template', ''),
(930, 2779, 'ratings_users', '0'),
(931, 2779, 'ratings_score', '0'),
(932, 2779, 'ratings_average', '0'),
(933, 2779, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(934, 2783, 'ratings_users', '0'),
(935, 2783, 'ratings_score', '0'),
(936, 2783, 'ratings_average', '0'),
(937, 2783, '_wp_page_template', 'tpl-feature.php'),
(938, 2783, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(939, 2783, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(940, 2783, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:12:"fa-picture-o";s:12:"onepage_menu";s:2:"16";}'),
(941, 2783, '_seo_title', ''),
(942, 2783, '_seo_description', ''),
(943, 2783, '_seo_keywords', ''),
(944, 2783, 'slide_template', ''),
(945, 2783, 'ratings_users', '0'),
(946, 2783, 'ratings_score', '0'),
(947, 2783, 'ratings_average', '0'),
(948, 2783, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(949, 2785, 'ratings_users', '0'),
(950, 2785, 'ratings_score', '0'),
(951, 2785, 'ratings_average', '0'),
(952, 2785, '_wp_page_template', 'tpl-feature.php'),
(953, 2785, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(954, 2785, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(955, 2785, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:16:"fa-shopping-cart";s:12:"onepage_menu";s:2:"16";}'),
(956, 2785, '_seo_title', ''),
(957, 2785, '_seo_description', ''),
(958, 2785, '_seo_keywords', ''),
(959, 2785, 'slide_template', ''),
(960, 2785, 'ratings_users', '0'),
(961, 2785, 'ratings_score', '0'),
(962, 2785, 'ratings_average', '0'),
(963, 2785, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(964, 2789, 'ratings_users', '0'),
(965, 2789, 'ratings_score', '0'),
(966, 2789, 'ratings_average', '0'),
(967, 2789, '_wp_page_template', 'tpl-feature.php'),
(968, 2789, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(969, 2789, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(970, 2789, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:8:"fa-tasks";s:12:"onepage_menu";s:2:"16";}'),
(971, 2789, '_seo_title', ''),
(972, 2789, '_seo_description', ''),
(973, 2789, '_seo_keywords', ''),
(974, 2789, 'slide_template', ''),
(975, 2789, 'ratings_users', '0'),
(976, 2789, 'ratings_score', '0'),
(977, 2789, 'ratings_average', '0'),
(978, 2789, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(979, 2791, 'ratings_users', '0'),
(980, 2791, 'ratings_score', '0'),
(981, 2791, 'ratings_average', '0'),
(982, 2791, '_wp_page_template', 'tpl-feature.php'),
(983, 2791, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(984, 2791, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(985, 2791, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:5:"fa-th";s:12:"onepage_menu";s:2:"16";}'),
(986, 2791, '_seo_title', ''),
(987, 2791, '_seo_description', ''),
(988, 2791, '_seo_keywords', ''),
(989, 2791, 'slide_template', ''),
(990, 2791, 'ratings_users', '0'),
(991, 2791, 'ratings_score', '0'),
(992, 2791, 'ratings_average', '0'),
(993, 2791, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(994, 2793, 'ratings_users', '0'),
(995, 2793, 'ratings_score', '0'),
(996, 2793, 'ratings_average', '0'),
(997, 2793, '_wp_page_template', 'tpl-feature.php'),
(998, 2793, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(999, 2793, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1000, 2793, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:8:"fa-globe";s:12:"onepage_menu";s:2:"16";}'),
(1001, 2793, '_seo_title', ''),
(1002, 2793, '_seo_description', ''),
(1003, 2793, '_seo_keywords', ''),
(1004, 2793, 'slide_template', ''),
(1005, 2793, 'ratings_users', '0'),
(1006, 2793, 'ratings_score', '0'),
(1007, 2793, 'ratings_average', '0'),
(1008, 2793, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1009, 2826, 'ratings_users', '0'),
(1010, 2826, 'ratings_score', '0'),
(1011, 2826, 'ratings_average', '0'),
(1012, 2826, '_wp_page_template', 'default'),
(1013, 2826, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1014, 2826, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1015, 2826, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1016, 2826, '_seo_title', ''),
(1017, 2826, '_seo_description', ''),
(1018, 2826, '_seo_keywords', ''),
(1019, 3084, 'ratings_users', '0'),
(1020, 3084, 'ratings_score', '0'),
(1021, 3084, 'ratings_average', '0'),
(1022, 3084, '_wp_page_template', 'tpl-fullwidth.php'),
(1023, 3084, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1024, 3084, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1025, 3084, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(1026, 3084, '_seo_title', ''),
(1027, 3084, '_seo_description', ''),
(1028, 3084, '_seo_keywords', ''),
(1029, 3084, 'slide_template', ''),
(1030, 3084, 'ratings_users', '0'),
(1031, 3084, 'ratings_score', '0'),
(1032, 3084, 'ratings_average', '0'),
(1033, 3084, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1034, 3087, 'ratings_users', '0'),
(1035, 3087, 'ratings_score', '0'),
(1036, 3087, 'ratings_average', '0'),
(1037, 3087, '_wp_page_template', 'tpl-header2.php'),
(1038, 3087, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1039, 3087, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1040, 3087, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1041, 3087, '_seo_title', ''),
(1042, 3087, '_seo_description', ''),
(1043, 3087, '_seo_keywords', ''),
(1044, 3087, 'slide_template', ''),
(1045, 3087, 'ratings_users', '0'),
(1046, 3087, 'ratings_score', '0'),
(1047, 3087, 'ratings_average', '0'),
(1048, 3087, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1049, 3089, 'ratings_users', '0'),
(1050, 3089, 'ratings_score', '0'),
(1051, 3089, 'ratings_average', '0'),
(1052, 3089, '_wp_page_template', 'tpl-header3.php'),
(1053, 3089, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1054, 3089, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1055, 3089, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1056, 3089, '_seo_title', ''),
(1057, 3089, '_seo_description', ''),
(1058, 3089, '_seo_keywords', ''),
(1059, 3089, 'slide_template', ''),
(1060, 3089, 'ratings_users', '0'),
(1061, 3089, 'ratings_score', '0'),
(1062, 3089, 'ratings_average', '0'),
(1063, 3089, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1064, 3592, 'ratings_users', '0'),
(1065, 3592, 'ratings_score', '0'),
(1066, 3592, 'ratings_average', '0'),
(1067, 3592, '_wp_page_template', 'default'),
(1068, 3592, 'slide_template', ''),
(1069, 3592, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1070, 3592, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1071, 3592, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:3:"101";}'),
(1072, 3592, '_seo_title', ''),
(1073, 3592, '_seo_description', ''),
(1074, 3592, '_seo_keywords', ''),
(1075, 3592, 'ratings_users', '0'),
(1076, 3592, 'ratings_score', '0'),
(1077, 3592, 'ratings_average', '0'),
(1078, 3592, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1079, 4012, 'ratings_users', '0'),
(1080, 4012, 'ratings_score', '0'),
(1081, 4012, 'ratings_average', '0'),
(1082, 4012, '_wp_page_template', 'tpl-feature.php'),
(1083, 4012, 'slide_template', ''),
(1084, 4012, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1085, 4012, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1086, 4012, '_tpl_default_settings', 'a:3:{s:6:"layout";s:18:"content-full-width";s:15:"menu-icon-class";s:9:"fa-trophy";s:12:"onepage_menu";s:2:"16";}'),
(1087, 4012, '_seo_title', ''),
(1088, 4012, '_seo_description', ''),
(1089, 4012, '_seo_keywords', ''),
(1090, 4012, 'ratings_users', '0'),
(1091, 4012, 'ratings_score', '0'),
(1092, 4012, 'ratings_average', '0'),
(1093, 4012, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1094, 4299, 'ratings_users', '0'),
(1095, 4299, 'ratings_score', '0'),
(1096, 4299, 'ratings_average', '0'),
(1097, 4299, '_wp_page_template', 'tpl-onepage.php'),
(1098, 4299, 'contempo_map_check', '0'),
(1099, 4299, 'contempo_review_check', '0'),
(1100, 4299, 'contempo_phone_check', '0'),
(1101, 4299, 'contempo_city_check', '0'),
(1102, 4299, 'contempo_state_check', '0'),
(1103, 4299, 'contempo_country_check', '0'),
(1104, 4299, 'contempo_zip_check', '0'),
(1105, 4299, 'contempo_recommend_check', '0'),
(1106, 4299, 'contempo_title_check', '0'),
(1107, 4299, 'testimonial_value', '0'),
(1108, 4299, 'testimonial_excerpt_check', '0'),
(1109, 4299, 'services_stored_1', ''),
(1110, 4299, 'ratings_stored_1', ''),
(1111, 4299, 'ratings_images_1', ''),
(1112, 4299, 'hidden_value', '1'),
(1113, 4299, 'hidden_value_2', '1'),
(1114, 4299, 'contempo_map_center', ''),
(1115, 4299, 'contempo_map_zoom', '1'),
(1116, 4299, 'testimonial_city', ''),
(1117, 4299, 'testimonial_service', ''),
(1118, 4299, 'testimonial_image', ''),
(1119, 4299, 'testimonial_pages', '600'),
(1120, 4299, 'company_type', 'LocalBusiness'),
(1121, 4299, 'company_name', ''),
(1122, 4299, 'company_url', ''),
(1123, 4299, 'contempo_review_title', ''),
(1124, 4299, 'contempo_review_description', ''),
(1125, 4299, 'slide_template', ''),
(1126, 4299, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1127, 4299, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1128, 4299, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1129, 4299, '_tpl_default_settings', 'a:5:{s:6:"layout";s:18:"content-full-width";s:11:"show_slider";s:4:"true";s:11:"slider_type";s:11:"layerslider";s:14:"layerslider_id";s:1:"1";s:12:"onepage_menu";s:3:"100";}'),
(1130, 4299, '_seo_title', ''),
(1131, 4299, '_seo_description', ''),
(1132, 4299, '_seo_keywords', ''),
(1133, 4299, 'ratings_users', '0'),
(1134, 4299, 'ratings_score', '0'),
(1135, 4299, 'ratings_average', '0'),
(1137, 1765, 'ratings_users', '0'),
(1138, 1765, 'ratings_score', '0'),
(1139, 1765, 'ratings_average', '0'),
(1140, 1765, '_likes', '0'),
(1141, 1765, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1142, 1765, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1143, 1765, '_seo_title', ''),
(1144, 1765, '_seo_description', ''),
(1145, 1765, '_seo_keywords', ''),
(1146, 1765, '_portfolio_settings', 'a:0:{}'),
(1147, 1765, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1148, 1765, '_wp_old_slug', 'quisque-eu-pretium'),
(1149, 1765, 'slide_template', 'default'),
(1150, 1765, '_wp_old_slug', 'a-day-through-school'),
(1151, 1765, '_wp_old_slug', 'we-still-need-your-help'),
(1152, 1765, 'ratings_users', '0'),
(1153, 1765, 'ratings_score', '0'),
(1154, 1765, 'ratings_average', '0'),
(1155, 1765, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1156, 1765, '_thumbnail_id', '4743'),
(1158, 1933, 'ratings_users', '0'),
(1159, 1933, 'ratings_score', '0'),
(1160, 1933, 'ratings_average', '0'),
(1161, 1933, '_likes', '0'),
(1162, 1933, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1163, 1933, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1164, 1933, '_seo_title', ''),
(1165, 1933, '_seo_description', ''),
(1166, 1933, '_seo_keywords', ''),
(1167, 1933, '_portfolio_settings', 'a:0:{}'),
(1168, 1933, '_catalog_settings', 'a:0:{}'),
(1169, 1933, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1170, 1933, '_wp_old_slug', 'dapibus-lnibh-bnec'),
(1171, 1933, 'slide_template', 'default'),
(1172, 1933, '_wp_old_slug', 'activities-improves-mind'),
(1173, 1933, '_wp_old_slug', 'help-in-the-philippines'),
(1174, 1933, 'ratings_users', '0'),
(1175, 1933, 'ratings_score', '0'),
(1176, 1933, 'ratings_average', '0'),
(1177, 1933, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1178, 1933, '_thumbnail_id', '4743'),
(1180, 2727, 'ratings_users', '0'),
(1181, 2727, 'ratings_score', '0'),
(1182, 2727, 'ratings_average', '0'),
(1183, 2727, '_likes', '0'),
(1184, 2727, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1185, 2727, '_tpl_default_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1186, 2727, '_seo_title', ''),
(1187, 2727, '_seo_description', ''),
(1188, 2727, '_seo_keywords', ''),
(1189, 2727, '_portfolio_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1190, 2727, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1191, 2727, 'slide_template', 'default'),
(1192, 2727, '_wp_old_slug', 'hello-world'),
(1193, 2727, '_wp_old_slug', 'thank-you-for-an-amazing-2013'),
(1194, 2727, 'ratings_users', '0'),
(1195, 2727, 'ratings_score', '0'),
(1196, 2727, 'ratings_average', '0'),
(1197, 2727, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1198, 2727, '_thumbnail_id', '4743'),
(1200, 2728, 'ratings_users', '0'),
(1201, 2728, 'ratings_score', '0'),
(1202, 2728, 'ratings_average', '0'),
(1203, 2728, '_likes', '0'),
(1204, 2728, '_dt_post_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1205, 2728, '_tpl_default_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1206, 2728, '_seo_title', ''),
(1207, 2728, '_seo_description', ''),
(1208, 2728, '_seo_keywords', ''),
(1209, 2728, '_portfolio_settings', 'a:0:{}'),
(1210, 2728, '_wp_old_slug', 'phasellus-molestie-urna'),
(1211, 2728, '_gallery_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1212, 2728, '_wp_old_slug', 'phasellus-molestie'),
(1213, 2728, 'slide_template', 'default'),
(1214, 2728, '_wp_old_slug', 'time-for-kids'),
(1215, 2728, '_wp_old_slug', 'free-your-love'),
(1216, 2728, '_wp_old_slug', 'our-trip-to-cambodia'),
(1217, 2728, 'ratings_users', '0'),
(1218, 2728, 'ratings_score', '0'),
(1219, 2728, 'ratings_average', '0'),
(1220, 2728, '_teacher_settings', 'a:1:{s:6:"layout";s:17:"with-left-sidebar";}'),
(1221, 2728, '_thumbnail_id', '4743'),
(1223, 2729, 'ratings_users', '0'),
(1224, 2729, 'ratings_score', '0'),
(1225, 2729, 'ratings_average', '0'),
(1226, 2729, '_likes', '0'),
(1227, 2729, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1228, 2729, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1229, 2729, '_seo_title', ''),
(1230, 2729, '_seo_description', ''),
(1231, 2729, '_seo_keywords', ''),
(1232, 2729, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1233, 2729, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1234, 2729, '_wp_old_slug', 'nam-laoreet-dictum-adipiscing'),
(1235, 2729, 'slide_template', 'default'),
(1236, 2729, '_wp_old_slug', 'national-geographic-kids-news'),
(1237, 2729, '_wp_old_slug', 'national-geographic-kids'),
(1238, 2729, '_wp_old_slug', 'national-geog-kids'),
(1239, 2729, '_wp_old_slug', 'a-look-back-at-2013'),
(1240, 2729, 'ratings_users', '0'),
(1241, 2729, 'ratings_score', '0'),
(1242, 2729, 'ratings_average', '0'),
(1243, 2729, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"with-right-sidebar";}'),
(1244, 2729, '_thumbnail_id', '4743'),
(1246, 2730, 'ratings_users', '0'),
(1247, 2730, 'ratings_score', '0'),
(1248, 2730, 'ratings_average', '0'),
(1249, 2730, '_likes', '0'),
(1250, 2730, '_dt_post_settings', 'a:4:{s:6:"layout";s:18:"content-full-width";s:5:"items";a:4:{i:0;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:1;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:2;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:3;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";}s:15:"items_thumbnail";a:4:{i:0;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:1;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:2;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:3;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";}s:10:"items_name";a:4:{i:0;s:6:"news-2";i:1;s:6:"news-2";i:2;s:6:"news-2";i:3;s:6:"news-2";}}'),
(1251, 2730, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1252, 2730, '_seo_title', ''),
(1253, 2730, '_seo_description', ''),
(1254, 2730, '_seo_keywords', ''),
(1255, 2730, '_portfolio_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1256, 2730, '_gallery_settings', 'a:4:{s:6:"layout";s:18:"content-full-width";s:5:"items";a:4:{i:0;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:1;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:2;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";i:3;s:79:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news.gif";}s:15:"items_thumbnail";a:4:{i:0;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:1;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:2;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";i:3;s:87:"http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/news-150x150.gif";}s:10:"items_name";a:4:{i:0;s:6:"news-2";i:1;s:6:"news-2";i:2;s:6:"news-2";i:3;s:6:"news-2";}}'),
(1257, 2730, '_wp_old_slug', 'post-for-testing'),
(1258, 2730, 'slide_template', ''),
(1259, 2730, '_wp_old_slug', 'weekly-reader-feature-zone'),
(1260, 2730, '_wp_old_slug', 'weekly-reader-zone'),
(1261, 2730, '_wp_old_slug', 'moms-around-the-world'),
(1262, 2730, 'ratings_users', '0'),
(1263, 2730, 'ratings_score', '0'),
(1264, 2730, 'ratings_average', '0'),
(1265, 2730, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1266, 2730, '_thumbnail_id', '4743'),
(1268, 3149, 'ratings_users', '0'),
(1269, 3149, 'ratings_score', '0'),
(1270, 3149, 'ratings_average', '0'),
(1271, 3149, '_likes', '0'),
(1272, 3149, 'slide_template', 'default'),
(1273, 3149, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1274, 3149, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:10:"oembed-url";s:25:"http://vimeo.com/58022280";}'),
(1275, 3149, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1276, 3149, '_seo_title', ''),
(1277, 3149, '_seo_description', ''),
(1278, 3149, '_seo_keywords', ''),
(1279, 3149, '_wp_old_slug', 'vimeo-nam-malesuada-augue'),
(1280, 3149, '_wp_old_slug', 'vimeo-malesuada'),
(1281, 3149, 'ratings_users', '0'),
(1282, 3149, 'ratings_score', '0'),
(1283, 3149, 'ratings_average', '0'),
(1284, 3149, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1286, 3151, 'ratings_users', '0'),
(1287, 3151, 'ratings_score', '0'),
(1288, 3151, 'ratings_average', '0'),
(1289, 3151, '_likes', '0'),
(1290, 3151, 'slide_template', 'default'),
(1291, 3151, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1292, 3151, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:10:"oembed-url";s:42:"http://www.youtube.com/watch?v=NhutLj3SVzQ";}'),
(1293, 3151, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1294, 3151, '_seo_title', ''),
(1295, 3151, '_seo_description', ''),
(1296, 3151, '_seo_keywords', ''),
(1297, 3151, '_wp_old_slug', 'youtube-lorem-ipsum-dolor-sit'),
(1298, 3151, '_wp_old_slug', 'youtube-lorem'),
(1300, 3153, 'ratings_users', '0'),
(1301, 3153, 'ratings_score', '0'),
(1302, 3153, 'ratings_average', '0'),
(1303, 3153, '_likes', '0'),
(1304, 3153, 'slide_template', 'default'),
(1305, 3153, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1306, 3153, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:15:"self-hosted-url";s:93:"http://wedesignthemes.com/themes/dt-super/wp-content/uploads/2014/01/funny-animated-movie.mp4";}'),
(1307, 3153, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1308, 3153, '_seo_title', ''),
(1309, 3153, '_seo_description', ''),
(1310, 3153, '_seo_keywords', ''),
(1311, 3153, '_wp_old_slug', 'self-hosted-video'),
(1312, 3153, 'ratings_users', '0'),
(1313, 3153, 'ratings_score', '0'),
(1314, 3153, 'ratings_average', '0'),
(1315, 3153, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1317, 3155, 'ratings_users', '0'),
(1318, 3155, 'ratings_score', '0'),
(1319, 3155, 'ratings_average', '0'),
(1320, 3155, '_likes', '0'),
(1321, 3155, 'slide_template', 'default'),
(1322, 3155, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1323, 3155, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:10:"oembed-url";s:57:"https://soundcloud.com/defjam/frank-ocean-super-rich-kids";}'),
(1324, 3155, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1325, 3155, '_seo_title', ''),
(1326, 3155, '_seo_description', ''),
(1327, 3155, '_seo_keywords', ''),
(1328, 3155, '_wp_old_slug', 'audio-nam-libero-tempore'),
(1330, 3157, 'ratings_users', '0'),
(1331, 3157, 'ratings_score', '0'),
(1332, 3157, 'ratings_average', '0'),
(1333, 3157, '_likes', '0'),
(1334, 3157, 'slide_template', 'default'),
(1335, 3157, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1336, 3157, '_dt_post_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:15:"self-hosted-url";s:93:"http://wedesignthemes.com/themes/dt-super/wp-content/uploads/2014/01/funny-animated-movie.mp3";}'),
(1337, 3157, '_tpl_default_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1338, 3157, '_seo_title', ''),
(1339, 3157, '_seo_description', ''),
(1340, 3157, '_seo_keywords', ''),
(1341, 3157, '_wp_old_slug', 'self-hosted-audio'),
(1342, 4780, 'ratings_users', '0'),
(1343, 4780, 'ratings_score', '0'),
(1344, 4780, 'ratings_average', '0'),
(1345, 4780, '_wp_page_template', 'default'),
(1346, 4780, '_gallery_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1347, 4780, '_teacher_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1348, 4780, '_dt_post_settings', 'a:1:{s:6:"layout";s:18:"content-full-width";}'),
(1349, 4780, '_tpl_default_settings', 'a:2:{s:6:"layout";s:18:"content-full-width";s:12:"onepage_menu";s:2:"16";}'),
(1350, 4780, '_seo_title', ''),
(1351, 4780, '_seo_description', ''),
(1352, 4780, '_seo_keywords', ''),
(1353, 4781, '_menu_item_type', 'post_type'),
(1354, 4781, '_menu_item_menu_item_parent', '0'),
(1355, 4781, '_menu_item_object_id', '4298'),
(1356, 4781, '_menu_item_object', 'page'),
(1357, 4781, '_menu_item_target', ''),
(1358, 4781, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1359, 4781, '_menu_item_xfn', ''),
(1360, 4781, '_menu_item_url', ''),
(1361, 4781, '_dt-use-as-megamenu', ''),
(1362, 4781, '_dt-disable-link', ''),
(1363, 4781, '_dt-fullwidth', ''),
(1364, 4781, '_dt-iconclass', ''),
(1365, 4781, '_dt-disable-text', ''),
(1366, 4781, '_dt-columns', '2'),
(1367, 4781, '_dt-custom-content', ''),
(1368, 4782, '_menu_item_type', 'post_type'),
(1369, 4782, '_menu_item_menu_item_parent', '0'),
(1370, 4782, '_menu_item_object_id', '4295'),
(1371, 4782, '_menu_item_object', 'page'),
(1372, 4782, '_menu_item_target', ''),
(1373, 4782, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1374, 4782, '_menu_item_xfn', ''),
(1375, 4782, '_menu_item_url', ''),
(1376, 4782, '_dt-use-as-megamenu', ''),
(1377, 4782, '_dt-disable-link', ''),
(1378, 4782, '_dt-fullwidth', ''),
(1379, 4782, '_dt-iconclass', ''),
(1380, 4782, '_dt-disable-text', ''),
(1381, 4782, '_dt-columns', '2'),
(1382, 4782, '_dt-custom-content', ''),
(1383, 4783, '_menu_item_type', 'post_type'),
(1384, 4783, '_menu_item_menu_item_parent', '4853'),
(1385, 4783, '_menu_item_object_id', '4293'),
(1386, 4783, '_menu_item_object', 'page'),
(1387, 4783, '_menu_item_target', ''),
(1388, 4783, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1389, 4783, '_menu_item_xfn', ''),
(1390, 4783, '_menu_item_url', ''),
(1391, 4783, '_dt-use-as-megamenu', ''),
(1392, 4783, '_dt-disable-link', ''),
(1393, 4783, '_dt-fullwidth', ''),
(1394, 4783, '_dt-iconclass', ''),
(1395, 4783, '_dt-disable-text', ''),
(1396, 4783, '_dt-columns', '2'),
(1397, 4783, '_dt-custom-content', ''),
(1398, 4784, '_menu_item_type', 'post_type'),
(1399, 4784, '_menu_item_menu_item_parent', '0'),
(1400, 4784, '_menu_item_object_id', '4292'),
(1401, 4784, '_menu_item_object', 'page'),
(1402, 4784, '_menu_item_target', ''),
(1403, 4784, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1404, 4784, '_menu_item_xfn', ''),
(1405, 4784, '_menu_item_url', ''),
(1406, 4784, '_dt-use-as-megamenu', ''),
(1407, 4784, '_dt-disable-link', ''),
(1408, 4784, '_dt-fullwidth', ''),
(1409, 4784, '_dt-iconclass', ''),
(1410, 4784, '_dt-disable-text', ''),
(1411, 4784, '_dt-columns', '2'),
(1412, 4784, '_dt-custom-content', ''),
(1428, 4786, '_menu_item_type', 'post_type'),
(1429, 4786, '_menu_item_menu_item_parent', '0'),
(1430, 4786, '_menu_item_object_id', '4298'),
(1431, 4786, '_menu_item_object', 'page'),
(1432, 4786, '_menu_item_target', ''),
(1433, 4786, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1434, 4786, '_menu_item_xfn', ''),
(1435, 4786, '_menu_item_url', ''),
(1436, 4786, '_dt-use-as-megamenu', ''),
(1437, 4786, '_dt-disable-link', ''),
(1438, 4786, '_dt-fullwidth', ''),
(1439, 4786, '_dt-iconclass', ''),
(1440, 4786, '_dt-disable-text', ''),
(1441, 4786, '_dt-columns', '2'),
(1442, 4786, '_dt-custom-content', ''),
(1443, 4787, '_menu_item_type', 'post_type'),
(1444, 4787, '_menu_item_menu_item_parent', '0'),
(1445, 4787, '_menu_item_object_id', '4297'),
(1446, 4787, '_menu_item_object', 'page'),
(1447, 4787, '_menu_item_target', ''),
(1448, 4787, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1449, 4787, '_menu_item_xfn', ''),
(1450, 4787, '_menu_item_url', ''),
(1451, 4787, '_dt-use-as-megamenu', ''),
(1452, 4787, '_dt-disable-link', ''),
(1453, 4787, '_dt-fullwidth', ''),
(1454, 4787, '_dt-iconclass', ''),
(1455, 4787, '_dt-disable-text', ''),
(1456, 4787, '_dt-columns', '2'),
(1457, 4787, '_dt-custom-content', ''),
(1458, 4788, '_menu_item_type', 'post_type'),
(1459, 4788, '_menu_item_menu_item_parent', '0'),
(1460, 4788, '_menu_item_object_id', '4295'),
(1461, 4788, '_menu_item_object', 'page'),
(1462, 4788, '_menu_item_target', ''),
(1463, 4788, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1464, 4788, '_menu_item_xfn', ''),
(1465, 4788, '_menu_item_url', ''),
(1466, 4788, '_dt-use-as-megamenu', ''),
(1467, 4788, '_dt-disable-link', ''),
(1468, 4788, '_dt-fullwidth', ''),
(1469, 4788, '_dt-iconclass', ''),
(1470, 4788, '_dt-disable-text', ''),
(1471, 4788, '_dt-columns', '2'),
(1472, 4788, '_dt-custom-content', ''),
(1473, 4789, '_menu_item_type', 'post_type'),
(1474, 4789, '_menu_item_menu_item_parent', '0'),
(1475, 4789, '_menu_item_object_id', '45'),
(1476, 4789, '_menu_item_object', 'page'),
(1477, 4789, '_menu_item_target', ''),
(1478, 4789, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1479, 4789, '_menu_item_xfn', ''),
(1480, 4789, '_menu_item_url', ''),
(1481, 4789, '_dt-use-as-megamenu', ''),
(1482, 4789, '_dt-disable-link', ''),
(1483, 4789, '_dt-fullwidth', ''),
(1484, 4789, '_dt-iconclass', ''),
(1485, 4789, '_dt-disable-text', ''),
(1486, 4789, '_dt-columns', '2'),
(1487, 4789, '_dt-custom-content', ''),
(1488, 4790, '_menu_item_type', 'post_type'),
(1489, 4790, '_menu_item_menu_item_parent', '4801'),
(1490, 4790, '_menu_item_object_id', '133'),
(1491, 4790, '_menu_item_object', 'page'),
(1492, 4790, '_menu_item_target', ''),
(1493, 4790, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1494, 4790, '_menu_item_xfn', ''),
(1495, 4790, '_menu_item_url', ''),
(1496, 4790, '_dt-use-as-megamenu', ''),
(1497, 4790, '_dt-disable-link', ''),
(1498, 4790, '_dt-fullwidth', ''),
(1499, 4790, '_dt-iconclass', ''),
(1500, 4790, '_dt-disable-text', ''),
(1501, 4790, '_dt-columns', '2'),
(1502, 4790, '_dt-custom-content', ''),
(1503, 4791, '_menu_item_type', 'post_type'),
(1504, 4791, '_menu_item_menu_item_parent', '4801'),
(1505, 4791, '_menu_item_object_id', '165'),
(1506, 4791, '_menu_item_object', 'page'),
(1507, 4791, '_menu_item_target', ''),
(1508, 4791, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1509, 4791, '_menu_item_xfn', ''),
(1510, 4791, '_menu_item_url', ''),
(1511, 4791, '_dt-use-as-megamenu', ''),
(1512, 4791, '_dt-disable-link', ''),
(1513, 4791, '_dt-fullwidth', ''),
(1514, 4791, '_dt-iconclass', ''),
(1515, 4791, '_dt-disable-text', ''),
(1516, 4791, '_dt-columns', '2'),
(1517, 4791, '_dt-custom-content', ''),
(1518, 4792, '_menu_item_type', 'post_type'),
(1519, 4792, '_menu_item_menu_item_parent', '4801'),
(1520, 4792, '_menu_item_object_id', '151'),
(1521, 4792, '_menu_item_object', 'page'),
(1522, 4792, '_menu_item_target', ''),
(1523, 4792, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1524, 4792, '_menu_item_xfn', ''),
(1525, 4792, '_menu_item_url', ''),
(1526, 4792, '_dt-use-as-megamenu', ''),
(1527, 4792, '_dt-disable-link', ''),
(1528, 4792, '_dt-fullwidth', ''),
(1529, 4792, '_dt-iconclass', ''),
(1530, 4792, '_dt-disable-text', ''),
(1531, 4792, '_dt-columns', '2'),
(1532, 4792, '_dt-custom-content', ''),
(1533, 4793, '_menu_item_type', 'post_type'),
(1534, 4793, '_menu_item_menu_item_parent', '4801'),
(1535, 4793, '_menu_item_object_id', '191'),
(1536, 4793, '_menu_item_object', 'page'),
(1537, 4793, '_menu_item_target', ''),
(1538, 4793, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1539, 4793, '_menu_item_xfn', ''),
(1540, 4793, '_menu_item_url', ''),
(1541, 4793, '_dt-use-as-megamenu', ''),
(1542, 4793, '_dt-disable-link', ''),
(1543, 4793, '_dt-fullwidth', ''),
(1544, 4793, '_dt-iconclass', ''),
(1545, 4793, '_dt-disable-text', ''),
(1546, 4793, '_dt-columns', '2'),
(1547, 4793, '_dt-custom-content', ''),
(1548, 4794, '_menu_item_type', 'post_type'),
(1549, 4794, '_menu_item_menu_item_parent', '4801'),
(1550, 4794, '_menu_item_object_id', '167'),
(1551, 4794, '_menu_item_object', 'page'),
(1552, 4794, '_menu_item_target', ''),
(1553, 4794, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1554, 4794, '_menu_item_xfn', ''),
(1555, 4794, '_menu_item_url', ''),
(1556, 4794, '_dt-use-as-megamenu', ''),
(1557, 4794, '_dt-disable-link', ''),
(1558, 4794, '_dt-fullwidth', ''),
(1559, 4794, '_dt-iconclass', ''),
(1560, 4794, '_dt-disable-text', ''),
(1561, 4794, '_dt-columns', '2'),
(1562, 4794, '_dt-custom-content', ''),
(1563, 4795, '_menu_item_type', 'post_type'),
(1564, 4795, '_menu_item_menu_item_parent', '4801'),
(1565, 4795, '_menu_item_object_id', '252'),
(1566, 4795, '_menu_item_object', 'page'),
(1567, 4795, '_menu_item_target', ''),
(1568, 4795, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1569, 4795, '_menu_item_xfn', ''),
(1570, 4795, '_menu_item_url', ''),
(1571, 4795, '_dt-use-as-megamenu', ''),
(1572, 4795, '_dt-disable-link', ''),
(1573, 4795, '_dt-fullwidth', ''),
(1574, 4795, '_dt-iconclass', ''),
(1575, 4795, '_dt-disable-text', ''),
(1576, 4795, '_dt-columns', '2'),
(1577, 4795, '_dt-custom-content', ''),
(1578, 4796, '_menu_item_type', 'post_type'),
(1579, 4796, '_menu_item_menu_item_parent', '4801'),
(1580, 4796, '_menu_item_object_id', '189'),
(1581, 4796, '_menu_item_object', 'page'),
(1582, 4796, '_menu_item_target', ''),
(1583, 4796, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1584, 4796, '_menu_item_xfn', ''),
(1585, 4796, '_menu_item_url', ''),
(1586, 4796, '_dt-use-as-megamenu', ''),
(1587, 4796, '_dt-disable-link', ''),
(1588, 4796, '_dt-fullwidth', ''),
(1589, 4796, '_dt-iconclass', ''),
(1590, 4796, '_dt-disable-text', ''),
(1591, 4796, '_dt-columns', '2'),
(1592, 4796, '_dt-custom-content', ''),
(1593, 4797, '_menu_item_type', 'post_type'),
(1594, 4797, '_menu_item_menu_item_parent', '4801'),
(1595, 4797, '_menu_item_object_id', '138'),
(1596, 4797, '_menu_item_object', 'page'),
(1597, 4797, '_menu_item_target', ''),
(1598, 4797, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1599, 4797, '_menu_item_xfn', ''),
(1600, 4797, '_menu_item_url', ''),
(1601, 4797, '_dt-use-as-megamenu', ''),
(1602, 4797, '_dt-disable-link', ''),
(1603, 4797, '_dt-fullwidth', ''),
(1604, 4797, '_dt-iconclass', ''),
(1605, 4797, '_dt-disable-text', ''),
(1606, 4797, '_dt-columns', '2'),
(1607, 4797, '_dt-custom-content', ''),
(1608, 4798, '_menu_item_type', 'post_type'),
(1609, 4798, '_menu_item_menu_item_parent', '4801'),
(1610, 4798, '_menu_item_object_id', '184'),
(1611, 4798, '_menu_item_object', 'page'),
(1612, 4798, '_menu_item_target', ''),
(1613, 4798, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1614, 4798, '_menu_item_xfn', ''),
(1615, 4798, '_menu_item_url', ''),
(1616, 4798, '_dt-use-as-megamenu', ''),
(1617, 4798, '_dt-disable-link', ''),
(1618, 4798, '_dt-fullwidth', ''),
(1619, 4798, '_dt-iconclass', ''),
(1620, 4798, '_dt-disable-text', ''),
(1621, 4798, '_dt-columns', '2'),
(1622, 4798, '_dt-custom-content', ''),
(1623, 4799, '_menu_item_type', 'post_type'),
(1624, 4799, '_menu_item_menu_item_parent', '4801'),
(1625, 4799, '_menu_item_object_id', '256'),
(1626, 4799, '_menu_item_object', 'page'),
(1627, 4799, '_menu_item_target', ''),
(1628, 4799, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1629, 4799, '_menu_item_xfn', ''),
(1630, 4799, '_menu_item_url', ''),
(1631, 4799, '_dt-use-as-megamenu', ''),
(1632, 4799, '_dt-disable-link', ''),
(1633, 4799, '_dt-fullwidth', ''),
(1634, 4799, '_dt-iconclass', ''),
(1635, 4799, '_dt-disable-text', ''),
(1636, 4799, '_dt-columns', '2'),
(1637, 4799, '_dt-custom-content', ''),
(1638, 4800, '_menu_item_type', 'post_type'),
(1639, 4800, '_menu_item_menu_item_parent', '4801'),
(1640, 4800, '_menu_item_object_id', '176'),
(1641, 4800, '_menu_item_object', 'page'),
(1642, 4800, '_menu_item_target', ''),
(1643, 4800, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1644, 4800, '_menu_item_xfn', ''),
(1645, 4800, '_menu_item_url', ''),
(1646, 4800, '_dt-use-as-megamenu', ''),
(1647, 4800, '_dt-disable-link', ''),
(1648, 4800, '_dt-fullwidth', ''),
(1649, 4800, '_dt-iconclass', ''),
(1650, 4800, '_dt-disable-text', ''),
(1651, 4800, '_dt-columns', '2'),
(1652, 4800, '_dt-custom-content', ''),
(1653, 4801, '_menu_item_type', 'post_type'),
(1654, 4801, '_menu_item_menu_item_parent', '4853'),
(1655, 4801, '_menu_item_object_id', '256'),
(1656, 4801, '_menu_item_object', 'page'),
(1657, 4801, '_menu_item_target', ''),
(1658, 4801, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1659, 4801, '_menu_item_xfn', ''),
(1660, 4801, '_menu_item_url', ''),
(1661, 4801, '_dt-use-as-megamenu', ''),
(1662, 4801, '_dt-disable-link', ''),
(1663, 4801, '_dt-fullwidth', ''),
(1664, 4801, '_dt-iconclass', ''),
(1665, 4801, '_dt-disable-text', ''),
(1666, 4801, '_dt-columns', '2'),
(1667, 4801, '_dt-custom-content', ''),
(1668, 4802, '_menu_item_type', 'post_type'),
(1669, 4802, '_menu_item_menu_item_parent', '4789'),
(1670, 4802, '_menu_item_object_id', '2382'),
(1671, 4802, '_menu_item_object', 'page'),
(1672, 4802, '_menu_item_target', ''),
(1673, 4802, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1674, 4802, '_menu_item_xfn', ''),
(1675, 4802, '_menu_item_url', ''),
(1676, 4802, '_dt-use-as-megamenu', ''),
(1677, 4802, '_dt-disable-link', ''),
(1678, 4802, '_dt-fullwidth', ''),
(1679, 4802, '_dt-iconclass', ''),
(1680, 4802, '_dt-disable-text', ''),
(1681, 4802, '_dt-columns', '2'),
(1682, 4802, '_dt-custom-content', ''),
(1683, 4803, '_menu_item_type', 'post_type'),
(1684, 4803, '_menu_item_menu_item_parent', '4802'),
(1685, 4803, '_menu_item_object_id', '2385'),
(1686, 4803, '_menu_item_object', 'page'),
(1687, 4803, '_menu_item_target', ''),
(1688, 4803, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1689, 4803, '_menu_item_xfn', ''),
(1690, 4803, '_menu_item_url', ''),
(1691, 4803, '_dt-use-as-megamenu', ''),
(1692, 4803, '_dt-disable-link', ''),
(1693, 4803, '_dt-fullwidth', ''),
(1694, 4803, '_dt-iconclass', ''),
(1695, 4803, '_dt-disable-text', ''),
(1696, 4803, '_dt-columns', '2'),
(1697, 4803, '_dt-custom-content', ''),
(1698, 4804, '_menu_item_type', 'post_type'),
(1699, 4804, '_menu_item_menu_item_parent', '4802'),
(1700, 4804, '_menu_item_object_id', '2387'),
(1701, 4804, '_menu_item_object', 'page'),
(1702, 4804, '_menu_item_target', ''),
(1703, 4804, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1704, 4804, '_menu_item_xfn', ''),
(1705, 4804, '_menu_item_url', ''),
(1706, 4804, '_dt-use-as-megamenu', ''),
(1707, 4804, '_dt-disable-link', ''),
(1708, 4804, '_dt-fullwidth', ''),
(1709, 4804, '_dt-iconclass', ''),
(1710, 4804, '_dt-disable-text', ''),
(1711, 4804, '_dt-columns', '2'),
(1712, 4804, '_dt-custom-content', ''),
(1713, 4805, '_menu_item_type', 'post_type'),
(1714, 4805, '_menu_item_menu_item_parent', '4789'),
(1715, 4805, '_menu_item_object_id', '2389'),
(1716, 4805, '_menu_item_object', 'page'),
(1717, 4805, '_menu_item_target', ''),
(1718, 4805, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1719, 4805, '_menu_item_xfn', ''),
(1720, 4805, '_menu_item_url', ''),
(1721, 4805, '_dt-use-as-megamenu', ''),
(1722, 4805, '_dt-disable-link', ''),
(1723, 4805, '_dt-fullwidth', ''),
(1724, 4805, '_dt-iconclass', ''),
(1725, 4805, '_dt-disable-text', ''),
(1726, 4805, '_dt-columns', '2'),
(1727, 4805, '_dt-custom-content', ''),
(1728, 4806, '_menu_item_type', 'post_type'),
(1729, 4806, '_menu_item_menu_item_parent', '4805'),
(1730, 4806, '_menu_item_object_id', '2391'),
(1731, 4806, '_menu_item_object', 'page'),
(1732, 4806, '_menu_item_target', ''),
(1733, 4806, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1734, 4806, '_menu_item_xfn', ''),
(1735, 4806, '_menu_item_url', ''),
(1736, 4806, '_dt-use-as-megamenu', ''),
(1737, 4806, '_dt-disable-link', ''),
(1738, 4806, '_dt-fullwidth', ''),
(1739, 4806, '_dt-iconclass', ''),
(1740, 4806, '_dt-disable-text', ''),
(1741, 4806, '_dt-columns', '2'),
(1742, 4806, '_dt-custom-content', ''),
(1743, 4807, '_menu_item_type', 'post_type'),
(1744, 4807, '_menu_item_menu_item_parent', '4805'),
(1745, 4807, '_menu_item_object_id', '2393'),
(1746, 4807, '_menu_item_object', 'page'),
(1747, 4807, '_menu_item_target', ''),
(1748, 4807, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1749, 4807, '_menu_item_xfn', ''),
(1750, 4807, '_menu_item_url', ''),
(1751, 4807, '_dt-use-as-megamenu', ''),
(1752, 4807, '_dt-disable-link', ''),
(1753, 4807, '_dt-fullwidth', ''),
(1754, 4807, '_dt-iconclass', ''),
(1755, 4807, '_dt-disable-text', ''),
(1756, 4807, '_dt-columns', '2'),
(1757, 4807, '_dt-custom-content', ''),
(1758, 4808, '_menu_item_type', 'post_type'),
(1759, 4808, '_menu_item_menu_item_parent', '4789'),
(1760, 4808, '_menu_item_object_id', '2395'),
(1761, 4808, '_menu_item_object', 'page'),
(1762, 4808, '_menu_item_target', ''),
(1763, 4808, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1764, 4808, '_menu_item_xfn', ''),
(1765, 4808, '_menu_item_url', ''),
(1766, 4808, '_dt-use-as-megamenu', ''),
(1767, 4808, '_dt-disable-link', ''),
(1768, 4808, '_dt-fullwidth', ''),
(1769, 4808, '_dt-iconclass', ''),
(1770, 4808, '_dt-disable-text', ''),
(1771, 4808, '_dt-columns', '2'),
(1772, 4808, '_dt-custom-content', ''),
(1773, 4809, '_menu_item_type', 'post_type'),
(1774, 4809, '_menu_item_menu_item_parent', '4808'),
(1775, 4809, '_menu_item_object_id', '2397'),
(1776, 4809, '_menu_item_object', 'page'),
(1777, 4809, '_menu_item_target', ''),
(1778, 4809, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1779, 4809, '_menu_item_xfn', ''),
(1780, 4809, '_menu_item_url', ''),
(1781, 4809, '_dt-use-as-megamenu', ''),
(1782, 4809, '_dt-disable-link', ''),
(1783, 4809, '_dt-fullwidth', ''),
(1784, 4809, '_dt-iconclass', ''),
(1785, 4809, '_dt-disable-text', ''),
(1786, 4809, '_dt-columns', '2'),
(1787, 4809, '_dt-custom-content', ''),
(1788, 4810, '_menu_item_type', 'post_type'),
(1789, 4810, '_menu_item_menu_item_parent', '4808'),
(1790, 4810, '_menu_item_object_id', '2399'),
(1791, 4810, '_menu_item_object', 'page'),
(1792, 4810, '_menu_item_target', ''),
(1793, 4810, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1794, 4810, '_menu_item_xfn', ''),
(1795, 4810, '_menu_item_url', ''),
(1796, 4810, '_dt-use-as-megamenu', ''),
(1797, 4810, '_dt-disable-link', ''),
(1798, 4810, '_dt-fullwidth', ''),
(1799, 4810, '_dt-iconclass', ''),
(1800, 4810, '_dt-disable-text', ''),
(1801, 4810, '_dt-columns', '2'),
(1802, 4810, '_dt-custom-content', ''),
(1803, 4811, '_menu_item_type', 'post_type'),
(1804, 4811, '_menu_item_menu_item_parent', '4802'),
(1805, 4811, '_menu_item_object_id', '2382'),
(1806, 4811, '_menu_item_object', 'page'),
(1807, 4811, '_menu_item_target', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1808, 4811, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1809, 4811, '_menu_item_xfn', ''),
(1810, 4811, '_menu_item_url', ''),
(1811, 4811, '_dt-use-as-megamenu', ''),
(1812, 4811, '_dt-disable-link', ''),
(1813, 4811, '_dt-fullwidth', ''),
(1814, 4811, '_dt-iconclass', ''),
(1815, 4811, '_dt-disable-text', ''),
(1816, 4811, '_dt-columns', '2'),
(1817, 4811, '_dt-custom-content', ''),
(1818, 4812, '_menu_item_type', 'post_type'),
(1819, 4812, '_menu_item_menu_item_parent', '4805'),
(1820, 4812, '_menu_item_object_id', '2389'),
(1821, 4812, '_menu_item_object', 'page'),
(1822, 4812, '_menu_item_target', ''),
(1823, 4812, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1824, 4812, '_menu_item_xfn', ''),
(1825, 4812, '_menu_item_url', ''),
(1826, 4812, '_dt-use-as-megamenu', ''),
(1827, 4812, '_dt-disable-link', ''),
(1828, 4812, '_dt-fullwidth', ''),
(1829, 4812, '_dt-iconclass', ''),
(1830, 4812, '_dt-disable-text', ''),
(1831, 4812, '_dt-columns', '2'),
(1832, 4812, '_dt-custom-content', ''),
(1833, 4813, '_menu_item_type', 'post_type'),
(1834, 4813, '_menu_item_menu_item_parent', '4808'),
(1835, 4813, '_menu_item_object_id', '2395'),
(1836, 4813, '_menu_item_object', 'page'),
(1837, 4813, '_menu_item_target', ''),
(1838, 4813, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1839, 4813, '_menu_item_xfn', ''),
(1840, 4813, '_menu_item_url', ''),
(1841, 4813, '_dt-use-as-megamenu', ''),
(1842, 4813, '_dt-disable-link', ''),
(1843, 4813, '_dt-fullwidth', ''),
(1844, 4813, '_dt-iconclass', ''),
(1845, 4813, '_dt-disable-text', ''),
(1846, 4813, '_dt-columns', '2'),
(1847, 4813, '_dt-custom-content', ''),
(1893, 4817, '_menu_item_type', 'post_type'),
(1894, 4817, '_menu_item_menu_item_parent', '4781'),
(1895, 4817, '_menu_item_object_id', '2662'),
(1896, 4817, '_menu_item_object', 'page'),
(1897, 4817, '_menu_item_target', ''),
(1898, 4817, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1899, 4817, '_menu_item_xfn', ''),
(1900, 4817, '_menu_item_url', ''),
(1901, 4817, '_dt-use-as-megamenu', ''),
(1902, 4817, '_dt-disable-link', ''),
(1903, 4817, '_dt-fullwidth', ''),
(1904, 4817, '_dt-iconclass', ''),
(1905, 4817, '_dt-disable-text', ''),
(1906, 4817, '_dt-columns', '2'),
(1907, 4817, '_dt-custom-content', ''),
(1908, 4818, '_menu_item_type', 'post_type'),
(1909, 4818, '_menu_item_menu_item_parent', '4817'),
(1910, 4818, '_menu_item_object_id', '2664'),
(1911, 4818, '_menu_item_object', 'page'),
(1912, 4818, '_menu_item_target', ''),
(1913, 4818, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1914, 4818, '_menu_item_xfn', ''),
(1915, 4818, '_menu_item_url', ''),
(1916, 4818, '_dt-use-as-megamenu', ''),
(1917, 4818, '_dt-disable-link', ''),
(1918, 4818, '_dt-fullwidth', ''),
(1919, 4818, '_dt-iconclass', ''),
(1920, 4818, '_dt-disable-text', ''),
(1921, 4818, '_dt-columns', '2'),
(1922, 4818, '_dt-custom-content', ''),
(1923, 4819, '_menu_item_type', 'post_type'),
(1924, 4819, '_menu_item_menu_item_parent', '4817'),
(1925, 4819, '_menu_item_object_id', '2666'),
(1926, 4819, '_menu_item_object', 'page'),
(1927, 4819, '_menu_item_target', ''),
(1928, 4819, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1929, 4819, '_menu_item_xfn', ''),
(1930, 4819, '_menu_item_url', ''),
(1931, 4819, '_dt-use-as-megamenu', ''),
(1932, 4819, '_dt-disable-link', ''),
(1933, 4819, '_dt-fullwidth', ''),
(1934, 4819, '_dt-iconclass', ''),
(1935, 4819, '_dt-disable-text', ''),
(1936, 4819, '_dt-columns', '2'),
(1937, 4819, '_dt-custom-content', ''),
(1953, 4821, '_menu_item_type', 'post_type'),
(1954, 4821, '_menu_item_menu_item_parent', '4817'),
(1955, 4821, '_menu_item_object_id', '2662'),
(1956, 4821, '_menu_item_object', 'page'),
(1957, 4821, '_menu_item_target', ''),
(1958, 4821, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1959, 4821, '_menu_item_xfn', ''),
(1960, 4821, '_menu_item_url', ''),
(1961, 4821, '_dt-use-as-megamenu', ''),
(1962, 4821, '_dt-disable-link', ''),
(1963, 4821, '_dt-fullwidth', ''),
(1964, 4821, '_dt-iconclass', ''),
(1965, 4821, '_dt-disable-text', ''),
(1966, 4821, '_dt-columns', '2'),
(1967, 4821, '_dt-custom-content', ''),
(1968, 4822, '_menu_item_type', 'post_type'),
(1969, 4822, '_menu_item_menu_item_parent', '4781'),
(1970, 4822, '_menu_item_object_id', '2668'),
(1971, 4822, '_menu_item_object', 'page'),
(1972, 4822, '_menu_item_target', ''),
(1973, 4822, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1974, 4822, '_menu_item_xfn', ''),
(1975, 4822, '_menu_item_url', ''),
(1976, 4822, '_dt-use-as-megamenu', ''),
(1977, 4822, '_dt-disable-link', ''),
(1978, 4822, '_dt-fullwidth', ''),
(1979, 4822, '_dt-iconclass', ''),
(1980, 4822, '_dt-disable-text', ''),
(1981, 4822, '_dt-columns', '2'),
(1982, 4822, '_dt-custom-content', ''),
(1983, 4823, '_menu_item_type', 'post_type'),
(1984, 4823, '_menu_item_menu_item_parent', '4822'),
(1985, 4823, '_menu_item_object_id', '2670'),
(1986, 4823, '_menu_item_object', 'page'),
(1987, 4823, '_menu_item_target', ''),
(1988, 4823, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1989, 4823, '_menu_item_xfn', ''),
(1990, 4823, '_menu_item_url', ''),
(1991, 4823, '_dt-use-as-megamenu', ''),
(1992, 4823, '_dt-disable-link', ''),
(1993, 4823, '_dt-fullwidth', ''),
(1994, 4823, '_dt-iconclass', ''),
(1995, 4823, '_dt-disable-text', ''),
(1996, 4823, '_dt-columns', '2'),
(1997, 4823, '_dt-custom-content', ''),
(1998, 4824, '_menu_item_type', 'post_type'),
(1999, 4824, '_menu_item_menu_item_parent', '4822'),
(2000, 4824, '_menu_item_object_id', '2672'),
(2001, 4824, '_menu_item_object', 'page'),
(2002, 4824, '_menu_item_target', ''),
(2003, 4824, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2004, 4824, '_menu_item_xfn', ''),
(2005, 4824, '_menu_item_url', ''),
(2006, 4824, '_dt-use-as-megamenu', ''),
(2007, 4824, '_dt-disable-link', ''),
(2008, 4824, '_dt-fullwidth', ''),
(2009, 4824, '_dt-iconclass', ''),
(2010, 4824, '_dt-disable-text', ''),
(2011, 4824, '_dt-columns', '2'),
(2012, 4824, '_dt-custom-content', ''),
(2013, 4825, '_menu_item_type', 'post_type'),
(2014, 4825, '_menu_item_menu_item_parent', '4822'),
(2015, 4825, '_menu_item_object_id', '2668'),
(2016, 4825, '_menu_item_object', 'page'),
(2017, 4825, '_menu_item_target', ''),
(2018, 4825, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2019, 4825, '_menu_item_xfn', ''),
(2020, 4825, '_menu_item_url', ''),
(2021, 4825, '_dt-use-as-megamenu', ''),
(2022, 4825, '_dt-disable-link', ''),
(2023, 4825, '_dt-fullwidth', ''),
(2024, 4825, '_dt-iconclass', ''),
(2025, 4825, '_dt-disable-text', ''),
(2026, 4825, '_dt-columns', '2'),
(2027, 4825, '_dt-custom-content', ''),
(2028, 4826, '_menu_item_type', 'post_type'),
(2029, 4826, '_menu_item_menu_item_parent', '4782'),
(2030, 4826, '_menu_item_object_id', '1490'),
(2031, 4826, '_menu_item_object', 'page'),
(2032, 4826, '_menu_item_target', ''),
(2033, 4826, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2034, 4826, '_menu_item_xfn', ''),
(2035, 4826, '_menu_item_url', ''),
(2036, 4826, '_dt-use-as-megamenu', ''),
(2037, 4826, '_dt-disable-link', ''),
(2038, 4826, '_dt-fullwidth', ''),
(2039, 4826, '_dt-iconclass', ''),
(2040, 4826, '_dt-disable-text', ''),
(2041, 4826, '_dt-columns', '2'),
(2042, 4826, '_dt-custom-content', ''),
(2043, 4827, '_menu_item_type', 'post_type'),
(2044, 4827, '_menu_item_menu_item_parent', '4826'),
(2045, 4827, '_menu_item_object_id', '1492'),
(2046, 4827, '_menu_item_object', 'page'),
(2047, 4827, '_menu_item_target', ''),
(2048, 4827, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2049, 4827, '_menu_item_xfn', ''),
(2050, 4827, '_menu_item_url', ''),
(2051, 4827, '_dt-use-as-megamenu', ''),
(2052, 4827, '_dt-disable-link', ''),
(2053, 4827, '_dt-fullwidth', ''),
(2054, 4827, '_dt-iconclass', ''),
(2055, 4827, '_dt-disable-text', ''),
(2056, 4827, '_dt-columns', '2'),
(2057, 4827, '_dt-custom-content', ''),
(2058, 4828, '_menu_item_type', 'post_type'),
(2059, 4828, '_menu_item_menu_item_parent', '4826'),
(2060, 4828, '_menu_item_object_id', '1494'),
(2061, 4828, '_menu_item_object', 'page'),
(2062, 4828, '_menu_item_target', ''),
(2063, 4828, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2064, 4828, '_menu_item_xfn', ''),
(2065, 4828, '_menu_item_url', ''),
(2066, 4828, '_dt-use-as-megamenu', ''),
(2067, 4828, '_dt-disable-link', ''),
(2068, 4828, '_dt-fullwidth', ''),
(2069, 4828, '_dt-iconclass', ''),
(2070, 4828, '_dt-disable-text', ''),
(2071, 4828, '_dt-columns', '2'),
(2072, 4828, '_dt-custom-content', ''),
(2073, 4829, '_menu_item_type', 'post_type'),
(2074, 4829, '_menu_item_menu_item_parent', '4782'),
(2075, 4829, '_menu_item_object_id', '1484'),
(2076, 4829, '_menu_item_object', 'page'),
(2077, 4829, '_menu_item_target', ''),
(2078, 4829, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2079, 4829, '_menu_item_xfn', ''),
(2080, 4829, '_menu_item_url', ''),
(2081, 4829, '_dt-use-as-megamenu', ''),
(2082, 4829, '_dt-disable-link', ''),
(2083, 4829, '_dt-fullwidth', ''),
(2084, 4829, '_dt-iconclass', ''),
(2085, 4829, '_dt-disable-text', ''),
(2086, 4829, '_dt-columns', '2'),
(2087, 4829, '_dt-custom-content', ''),
(2088, 4830, '_menu_item_type', 'post_type'),
(2089, 4830, '_menu_item_menu_item_parent', '4829'),
(2090, 4830, '_menu_item_object_id', '1486'),
(2091, 4830, '_menu_item_object', 'page'),
(2092, 4830, '_menu_item_target', ''),
(2093, 4830, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2094, 4830, '_menu_item_xfn', ''),
(2095, 4830, '_menu_item_url', ''),
(2096, 4830, '_dt-use-as-megamenu', ''),
(2097, 4830, '_dt-disable-link', ''),
(2098, 4830, '_dt-fullwidth', ''),
(2099, 4830, '_dt-iconclass', ''),
(2100, 4830, '_dt-disable-text', ''),
(2101, 4830, '_dt-columns', '2'),
(2102, 4830, '_dt-custom-content', ''),
(2103, 4831, '_menu_item_type', 'post_type'),
(2104, 4831, '_menu_item_menu_item_parent', '4829'),
(2105, 4831, '_menu_item_object_id', '1488'),
(2106, 4831, '_menu_item_object', 'page'),
(2107, 4831, '_menu_item_target', ''),
(2108, 4831, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2109, 4831, '_menu_item_xfn', ''),
(2110, 4831, '_menu_item_url', ''),
(2111, 4831, '_dt-use-as-megamenu', ''),
(2112, 4831, '_dt-disable-link', ''),
(2113, 4831, '_dt-fullwidth', ''),
(2114, 4831, '_dt-iconclass', ''),
(2115, 4831, '_dt-disable-text', ''),
(2116, 4831, '_dt-columns', '2'),
(2117, 4831, '_dt-custom-content', ''),
(2118, 4832, '_menu_item_type', 'post_type'),
(2119, 4832, '_menu_item_menu_item_parent', '4826'),
(2120, 4832, '_menu_item_object_id', '1490'),
(2121, 4832, '_menu_item_object', 'page'),
(2122, 4832, '_menu_item_target', ''),
(2123, 4832, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2124, 4832, '_menu_item_xfn', ''),
(2125, 4832, '_menu_item_url', ''),
(2126, 4832, '_dt-use-as-megamenu', ''),
(2127, 4832, '_dt-disable-link', ''),
(2128, 4832, '_dt-fullwidth', ''),
(2129, 4832, '_dt-iconclass', ''),
(2130, 4832, '_dt-disable-text', ''),
(2131, 4832, '_dt-columns', '2'),
(2132, 4832, '_dt-custom-content', ''),
(2133, 4833, '_menu_item_type', 'post_type'),
(2134, 4833, '_menu_item_menu_item_parent', '4829'),
(2135, 4833, '_menu_item_object_id', '1484'),
(2136, 4833, '_menu_item_object', 'page'),
(2137, 4833, '_menu_item_target', ''),
(2138, 4833, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2139, 4833, '_menu_item_xfn', ''),
(2140, 4833, '_menu_item_url', ''),
(2141, 4833, '_dt-use-as-megamenu', ''),
(2142, 4833, '_dt-disable-link', ''),
(2143, 4833, '_dt-fullwidth', ''),
(2144, 4833, '_dt-iconclass', ''),
(2145, 4833, '_dt-disable-text', ''),
(2146, 4833, '_dt-columns', '2'),
(2147, 4833, '_dt-custom-content', ''),
(2178, 4836, '_menu_item_type', 'post_type'),
(2179, 4836, '_menu_item_menu_item_parent', '4852'),
(2180, 4836, '_menu_item_object_id', '2789'),
(2181, 4836, '_menu_item_object', 'page'),
(2182, 4836, '_menu_item_target', ''),
(2183, 4836, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2184, 4836, '_menu_item_xfn', ''),
(2185, 4836, '_menu_item_url', ''),
(2186, 4836, '_dt-use-as-megamenu', ''),
(2187, 4836, '_dt-disable-link', ''),
(2188, 4836, '_dt-fullwidth', ''),
(2189, 4836, '_dt-iconclass', ''),
(2190, 4836, '_dt-disable-text', ''),
(2191, 4836, '_dt-columns', '2'),
(2192, 4836, '_dt-custom-content', ''),
(2193, 4837, '_menu_item_type', 'post_type'),
(2194, 4837, '_menu_item_menu_item_parent', '4852'),
(2195, 4837, '_menu_item_object_id', '2777'),
(2196, 4837, '_menu_item_object', 'page'),
(2197, 4837, '_menu_item_target', ''),
(2198, 4837, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2199, 4837, '_menu_item_xfn', ''),
(2200, 4837, '_menu_item_url', ''),
(2201, 4837, '_dt-use-as-megamenu', ''),
(2202, 4837, '_dt-disable-link', ''),
(2203, 4837, '_dt-fullwidth', ''),
(2204, 4837, '_dt-iconclass', ''),
(2205, 4837, '_dt-disable-text', ''),
(2206, 4837, '_dt-columns', '2'),
(2207, 4837, '_dt-custom-content', ''),
(2208, 4838, '_menu_item_type', 'post_type'),
(2209, 4838, '_menu_item_menu_item_parent', '4852'),
(2210, 4838, '_menu_item_object_id', '2779'),
(2211, 4838, '_menu_item_object', 'page'),
(2212, 4838, '_menu_item_target', ''),
(2213, 4838, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2214, 4838, '_menu_item_xfn', ''),
(2215, 4838, '_menu_item_url', ''),
(2216, 4838, '_dt-use-as-megamenu', ''),
(2217, 4838, '_dt-disable-link', ''),
(2218, 4838, '_dt-fullwidth', ''),
(2219, 4838, '_dt-iconclass', ''),
(2220, 4838, '_dt-disable-text', ''),
(2221, 4838, '_dt-columns', '2'),
(2222, 4838, '_dt-custom-content', ''),
(2223, 4839, '_menu_item_type', 'post_type'),
(2224, 4839, '_menu_item_menu_item_parent', '4852'),
(2225, 4839, '_menu_item_object_id', '2783'),
(2226, 4839, '_menu_item_object', 'page'),
(2227, 4839, '_menu_item_target', ''),
(2228, 4839, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2229, 4839, '_menu_item_xfn', ''),
(2230, 4839, '_menu_item_url', ''),
(2231, 4839, '_dt-use-as-megamenu', ''),
(2232, 4839, '_dt-disable-link', ''),
(2233, 4839, '_dt-fullwidth', ''),
(2234, 4839, '_dt-iconclass', ''),
(2235, 4839, '_dt-disable-text', ''),
(2236, 4839, '_dt-columns', '2'),
(2237, 4839, '_dt-custom-content', ''),
(2238, 4840, '_menu_item_type', 'post_type'),
(2239, 4840, '_menu_item_menu_item_parent', '4852'),
(2240, 4840, '_menu_item_object_id', '2785'),
(2241, 4840, '_menu_item_object', 'page'),
(2242, 4840, '_menu_item_target', ''),
(2243, 4840, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2244, 4840, '_menu_item_xfn', ''),
(2245, 4840, '_menu_item_url', ''),
(2246, 4840, '_dt-use-as-megamenu', ''),
(2247, 4840, '_dt-disable-link', ''),
(2248, 4840, '_dt-fullwidth', ''),
(2249, 4840, '_dt-iconclass', ''),
(2250, 4840, '_dt-disable-text', ''),
(2251, 4840, '_dt-columns', '2'),
(2252, 4840, '_dt-custom-content', ''),
(2253, 4841, '_menu_item_type', 'post_type'),
(2254, 4841, '_menu_item_menu_item_parent', '4852'),
(2255, 4841, '_menu_item_object_id', '2791'),
(2256, 4841, '_menu_item_object', 'page'),
(2257, 4841, '_menu_item_target', ''),
(2258, 4841, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2259, 4841, '_menu_item_xfn', ''),
(2260, 4841, '_menu_item_url', ''),
(2261, 4841, '_dt-use-as-megamenu', ''),
(2262, 4841, '_dt-disable-link', ''),
(2263, 4841, '_dt-fullwidth', ''),
(2264, 4841, '_dt-iconclass', ''),
(2265, 4841, '_dt-disable-text', ''),
(2266, 4841, '_dt-columns', '2'),
(2267, 4841, '_dt-custom-content', ''),
(2268, 4842, '_menu_item_type', 'post_type'),
(2269, 4842, '_menu_item_menu_item_parent', '4852'),
(2270, 4842, '_menu_item_object_id', '2793'),
(2271, 4842, '_menu_item_object', 'page'),
(2272, 4842, '_menu_item_target', ''),
(2273, 4842, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2274, 4842, '_menu_item_xfn', ''),
(2275, 4842, '_menu_item_url', ''),
(2276, 4842, '_dt-use-as-megamenu', ''),
(2277, 4842, '_dt-disable-link', ''),
(2278, 4842, '_dt-fullwidth', ''),
(2279, 4842, '_dt-iconclass', ''),
(2280, 4842, '_dt-disable-text', ''),
(2281, 4842, '_dt-columns', '2'),
(2282, 4842, '_dt-custom-content', ''),
(2283, 4843, '_menu_item_type', 'post_type'),
(2284, 4843, '_menu_item_menu_item_parent', '4836'),
(2285, 4843, '_menu_item_object_id', '3089'),
(2286, 4843, '_menu_item_object', 'page'),
(2287, 4843, '_menu_item_target', ''),
(2288, 4843, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2289, 4843, '_menu_item_xfn', ''),
(2290, 4843, '_menu_item_url', ''),
(2291, 4843, '_dt-use-as-megamenu', ''),
(2292, 4843, '_dt-disable-link', ''),
(2293, 4843, '_dt-fullwidth', ''),
(2294, 4843, '_dt-iconclass', ''),
(2295, 4843, '_dt-disable-text', ''),
(2296, 4843, '_dt-columns', '2'),
(2297, 4843, '_dt-custom-content', ''),
(2298, 4844, '_menu_item_type', 'post_type'),
(2299, 4844, '_menu_item_menu_item_parent', '4836'),
(2300, 4844, '_menu_item_object_id', '3087'),
(2301, 4844, '_menu_item_object', 'page'),
(2302, 4844, '_menu_item_target', ''),
(2303, 4844, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2304, 4844, '_menu_item_xfn', ''),
(2305, 4844, '_menu_item_url', ''),
(2306, 4844, '_dt-use-as-megamenu', ''),
(2307, 4844, '_dt-disable-link', ''),
(2308, 4844, '_dt-fullwidth', ''),
(2309, 4844, '_dt-iconclass', ''),
(2310, 4844, '_dt-disable-text', ''),
(2311, 4844, '_dt-columns', '2'),
(2312, 4844, '_dt-custom-content', ''),
(2313, 4845, '_menu_item_type', 'post_type'),
(2314, 4845, '_menu_item_menu_item_parent', '4836'),
(2315, 4845, '_menu_item_object_id', '3084'),
(2316, 4845, '_menu_item_object', 'page'),
(2317, 4845, '_menu_item_target', ''),
(2318, 4845, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2319, 4845, '_menu_item_xfn', ''),
(2320, 4845, '_menu_item_url', ''),
(2321, 4845, '_dt-use-as-megamenu', ''),
(2322, 4845, '_dt-disable-link', ''),
(2323, 4845, '_dt-fullwidth', ''),
(2324, 4845, '_dt-iconclass', ''),
(2325, 4845, '_dt-disable-text', ''),
(2326, 4845, '_dt-columns', '2'),
(2327, 4845, '_dt-custom-content', ''),
(2328, 4846, '_menu_item_type', 'post_type'),
(2329, 4846, '_menu_item_menu_item_parent', '4849'),
(2330, 4846, '_menu_item_object_id', '1933'),
(2331, 4846, '_menu_item_object', 'post'),
(2332, 4846, '_menu_item_target', ''),
(2333, 4846, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2334, 4846, '_menu_item_xfn', ''),
(2335, 4846, '_menu_item_url', ''),
(2336, 4846, '_dt-use-as-megamenu', ''),
(2337, 4846, '_dt-disable-link', ''),
(2338, 4846, '_dt-fullwidth', ''),
(2339, 4846, '_dt-iconclass', ''),
(2340, 4846, '_dt-disable-text', ''),
(2341, 4846, '_dt-columns', '2'),
(2342, 4846, '_dt-custom-content', ''),
(2343, 4847, '_menu_item_type', 'post_type'),
(2344, 4847, '_menu_item_menu_item_parent', '4849'),
(2345, 4847, '_menu_item_object_id', '2728'),
(2346, 4847, '_menu_item_object', 'post'),
(2347, 4847, '_menu_item_target', ''),
(2348, 4847, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2349, 4847, '_menu_item_xfn', ''),
(2350, 4847, '_menu_item_url', ''),
(2351, 4847, '_dt-use-as-megamenu', ''),
(2352, 4847, '_dt-disable-link', ''),
(2353, 4847, '_dt-fullwidth', ''),
(2354, 4847, '_dt-iconclass', ''),
(2355, 4847, '_dt-disable-text', ''),
(2356, 4847, '_dt-columns', '2'),
(2357, 4847, '_dt-custom-content', ''),
(2358, 4848, '_menu_item_type', 'post_type'),
(2359, 4848, '_menu_item_menu_item_parent', '4849'),
(2360, 4848, '_menu_item_object_id', '2730'),
(2361, 4848, '_menu_item_object', 'post'),
(2362, 4848, '_menu_item_target', ''),
(2363, 4848, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2364, 4848, '_menu_item_xfn', ''),
(2365, 4848, '_menu_item_url', ''),
(2366, 4848, '_dt-use-as-megamenu', ''),
(2367, 4848, '_dt-disable-link', ''),
(2368, 4848, '_dt-fullwidth', ''),
(2369, 4848, '_dt-iconclass', ''),
(2370, 4848, '_dt-disable-text', ''),
(2371, 4848, '_dt-columns', '2'),
(2372, 4848, '_dt-custom-content', ''),
(2373, 4849, '_menu_item_type', 'post_type'),
(2374, 4849, '_menu_item_menu_item_parent', '4782'),
(2375, 4849, '_menu_item_object_id', '1933'),
(2376, 4849, '_menu_item_object', 'post'),
(2377, 4849, '_menu_item_target', ''),
(2378, 4849, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2379, 4849, '_menu_item_xfn', ''),
(2380, 4849, '_menu_item_url', ''),
(2381, 4849, '_dt-use-as-megamenu', ''),
(2382, 4849, '_dt-disable-link', ''),
(2383, 4849, '_dt-fullwidth', ''),
(2384, 4849, '_dt-iconclass', ''),
(2385, 4849, '_dt-disable-text', ''),
(2386, 4849, '_dt-columns', '2'),
(2387, 4849, '_dt-custom-content', ''),
(2388, 4850, '_menu_item_type', 'post_type'),
(2389, 4850, '_menu_item_menu_item_parent', '4801'),
(2390, 4850, '_menu_item_object_id', '3592'),
(2391, 4850, '_menu_item_object', 'page'),
(2392, 4850, '_menu_item_target', ''),
(2393, 4850, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2394, 4850, '_menu_item_xfn', ''),
(2395, 4850, '_menu_item_url', ''),
(2396, 4850, '_dt-use-as-megamenu', ''),
(2397, 4850, '_dt-disable-link', ''),
(2398, 4850, '_dt-fullwidth', ''),
(2399, 4850, '_dt-iconclass', ''),
(2400, 4850, '_dt-disable-text', ''),
(2401, 4850, '_dt-columns', '2'),
(2402, 4850, '_dt-custom-content', ''),
(2403, 4851, '_menu_item_type', 'post_type'),
(2404, 4851, '_menu_item_menu_item_parent', '4852'),
(2405, 4851, '_menu_item_object_id', '4012'),
(2406, 4851, '_menu_item_object', 'page'),
(2407, 4851, '_menu_item_target', ''),
(2408, 4851, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2409, 4851, '_menu_item_xfn', ''),
(2410, 4851, '_menu_item_url', ''),
(2411, 4851, '_dt-use-as-megamenu', ''),
(2412, 4851, '_dt-disable-link', ''),
(2413, 4851, '_dt-fullwidth', ''),
(2414, 4851, '_dt-iconclass', ''),
(2415, 4851, '_dt-disable-text', ''),
(2416, 4851, '_dt-columns', '2'),
(2417, 4851, '_dt-custom-content', ''),
(2418, 4852, '_menu_item_type', 'post_type'),
(2419, 4852, '_menu_item_menu_item_parent', '4853'),
(2420, 4852, '_menu_item_object_id', '2777'),
(2421, 4852, '_menu_item_object', 'page'),
(2422, 4852, '_menu_item_target', ''),
(2423, 4852, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2424, 4852, '_menu_item_xfn', ''),
(2425, 4852, '_menu_item_url', ''),
(2426, 4852, '_dt-use-as-megamenu', ''),
(2427, 4852, '_dt-disable-link', ''),
(2428, 4852, '_dt-fullwidth', ''),
(2429, 4852, '_dt-iconclass', ''),
(2430, 4852, '_dt-disable-text', ''),
(2431, 4852, '_dt-columns', '2'),
(2432, 4852, '_dt-custom-content', ''),
(2433, 4853, '_menu_item_type', 'post_type'),
(2434, 4853, '_menu_item_menu_item_parent', '0'),
(2435, 4853, '_menu_item_object_id', '4293'),
(2436, 4853, '_menu_item_object', 'page'),
(2437, 4853, '_menu_item_target', ''),
(2438, 4853, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2439, 4853, '_menu_item_xfn', ''),
(2440, 4853, '_menu_item_url', ''),
(2441, 4853, '_dt-use-as-megamenu', ''),
(2442, 4853, '_dt-disable-link', ''),
(2443, 4853, '_dt-fullwidth', ''),
(2444, 4853, '_dt-iconclass', ''),
(2445, 4853, '_dt-disable-text', ''),
(2446, 4853, '_dt-columns', '2'),
(2447, 4853, '_dt-custom-content', ''),
(2448, 4854, '_menu_item_type', 'post_type'),
(2449, 4854, '_menu_item_menu_item_parent', '0'),
(2450, 4854, '_menu_item_object_id', '4292'),
(2451, 4854, '_menu_item_object', 'page'),
(2452, 4854, '_menu_item_target', ''),
(2453, 4854, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2454, 4854, '_menu_item_xfn', ''),
(2455, 4854, '_menu_item_url', ''),
(2456, 4854, '_dt-use-as-megamenu', ''),
(2457, 4854, '_dt-disable-link', ''),
(2458, 4854, '_dt-fullwidth', ''),
(2459, 4854, '_dt-iconclass', ''),
(2460, 4854, '_dt-disable-text', ''),
(2461, 4854, '_dt-columns', '2'),
(2462, 4854, '_dt-custom-content', ''),
(2463, 4855, '_menu_item_type', 'post_type'),
(2464, 4855, '_menu_item_menu_item_parent', '0'),
(2465, 4855, '_menu_item_object_id', '4293'),
(2466, 4855, '_menu_item_object', 'page'),
(2467, 4855, '_menu_item_target', ''),
(2468, 4855, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2469, 4855, '_menu_item_xfn', ''),
(2470, 4855, '_menu_item_url', ''),
(2471, 4855, '_dt-use-as-megamenu', ''),
(2472, 4855, '_dt-disable-link', ''),
(2473, 4855, '_dt-fullwidth', ''),
(2474, 4855, '_dt-iconclass', ''),
(2475, 4855, '_dt-disable-text', ''),
(2476, 4855, '_dt-columns', '2'),
(2477, 4855, '_dt-custom-content', ''),
(2478, 4856, '_menu_item_type', 'post_type'),
(2479, 4856, '_menu_item_menu_item_parent', '0'),
(2480, 4856, '_menu_item_object_id', '4295'),
(2481, 4856, '_menu_item_object', 'page'),
(2482, 4856, '_menu_item_target', ''),
(2483, 4856, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2484, 4856, '_menu_item_xfn', ''),
(2485, 4856, '_menu_item_url', ''),
(2486, 4856, '_dt-use-as-megamenu', ''),
(2487, 4856, '_dt-disable-link', ''),
(2488, 4856, '_dt-fullwidth', ''),
(2489, 4856, '_dt-iconclass', ''),
(2490, 4856, '_dt-disable-text', ''),
(2491, 4856, '_dt-columns', '2'),
(2492, 4856, '_dt-custom-content', ''),
(2493, 4857, '_menu_item_type', 'post_type'),
(2494, 4857, '_menu_item_menu_item_parent', '0'),
(2495, 4857, '_menu_item_object_id', '45'),
(2496, 4857, '_menu_item_object', 'page'),
(2497, 4857, '_menu_item_target', ''),
(2498, 4857, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2499, 4857, '_menu_item_xfn', ''),
(2500, 4857, '_menu_item_url', ''),
(2501, 4857, '_dt-use-as-megamenu', ''),
(2502, 4857, '_dt-disable-link', ''),
(2503, 4857, '_dt-fullwidth', ''),
(2504, 4857, '_dt-iconclass', ''),
(2505, 4857, '_dt-disable-text', ''),
(2506, 4857, '_dt-columns', '2'),
(2507, 4857, '_dt-custom-content', ''),
(2508, 4858, '_menu_item_type', 'post_type'),
(2509, 4858, '_menu_item_menu_item_parent', '0'),
(2510, 4858, '_menu_item_object_id', '4297'),
(2511, 4858, '_menu_item_object', 'page'),
(2512, 4858, '_menu_item_target', ''),
(2513, 4858, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2514, 4858, '_menu_item_xfn', ''),
(2515, 4858, '_menu_item_url', ''),
(2516, 4858, '_dt-use-as-megamenu', ''),
(2517, 4858, '_dt-disable-link', ''),
(2518, 4858, '_dt-fullwidth', ''),
(2519, 4858, '_dt-iconclass', ''),
(2520, 4858, '_dt-disable-text', ''),
(2521, 4858, '_dt-columns', '2'),
(2522, 4858, '_dt-custom-content', ''),
(2523, 4859, '_menu_item_type', 'post_type'),
(2524, 4859, '_menu_item_menu_item_parent', '0'),
(2525, 4859, '_menu_item_object_id', '4293'),
(2526, 4859, '_menu_item_object', 'page'),
(2527, 4859, '_menu_item_target', ''),
(2528, 4859, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2529, 4859, '_menu_item_xfn', ''),
(2530, 4859, '_menu_item_url', ''),
(2531, 4859, '_dt-use-as-megamenu', ''),
(2532, 4859, '_dt-disable-link', ''),
(2533, 4859, '_dt-fullwidth', ''),
(2534, 4859, '_dt-iconclass', ''),
(2535, 4859, '_dt-disable-text', ''),
(2536, 4859, '_dt-columns', ''),
(2537, 4859, '_dt-custom-content', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
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
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-04-09 08:31:40', '2016-04-09 08:31:40', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-04-09 08:31:40', '2016-04-09 08:31:40', '', 0, 'http://localhost/education/?p=1', 0, 'post', '', 1),
(2, 1, '2016-04-09 08:31:40', '2016-04-09 08:31:40', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/education/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-04-09 08:31:40', '2016-04-09 08:31:40', '', 0, 'http://localhost/education/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-04-09 08:32:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-04-09 08:32:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/education/?p=3', 0, 'post', '', 0),
(4, 1, '2016-04-09 10:08:24', '2016-04-09 10:08:24', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>\nEducation "[your-subject]"\n[your-name] <ashraful@gstlbd.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Education (http://localhost/education)\nashraful@gstlbd.com\nReply-To: [your-email]\n\n0\n0\n\nEducation "[your-subject]"\nEducation <ashraful@gstlbd.com>\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Education (http://localhost/education)\n[your-email]\nReply-To: ashraful@gstlbd.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-04-09 10:08:24', '2016-04-09 10:08:24', '', 0, '', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2016-04-09 10:10:49', '2016-04-09 10:10:49', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2016-04-09 10:10:49', '2016-04-09 10:10:49', '', 0, 'http://localhost/education/activity/', 0, 'page', '', 0),
(6, 1, '2016-04-09 10:10:49', '2016-04-09 10:10:49', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2016-04-09 10:10:49', '2016-04-09 10:10:49', '', 0, 'http://localhost/education/members/', 0, 'page', '', 0),
(7, 1, '2016-04-09 10:10:50', '2016-04-09 10:10:50', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2016-04-09 10:10:50', '2016-04-09 10:10:50', '', 0, 'http://localhost/education/?post_type=bp-email&p=7', 0, 'bp-email', '', 0),
(8, 1, '2016-04-09 10:10:51', '2016-04-09 10:10:51', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2016-04-09 10:10:51', '2016-04-09 10:10:51', '', 0, 'http://localhost/education/?post_type=bp-email&p=8', 0, 'bp-email', '', 0),
(9, 1, '2016-04-09 10:10:51', '2016-04-09 10:10:51', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2016-04-09 10:10:51', '2016-04-09 10:10:51', '', 0, 'http://localhost/education/?post_type=bp-email&p=9', 0, 'bp-email', '', 0),
(10, 1, '2016-04-09 10:10:52', '2016-04-09 10:10:52', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2016-04-09 10:10:52', '2016-04-09 10:10:52', '', 0, 'http://localhost/education/?post_type=bp-email&p=10', 0, 'bp-email', '', 0),
(11, 1, '2016-04-09 10:10:53', '2016-04-09 10:10:53', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: <a href="{{{activate.url}}}">{{{activate.url}}}</a>', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: {{{activate.url}}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2016-04-09 10:10:53', '2016-04-09 10:10:53', '', 0, 'http://localhost/education/?post_type=bp-email&p=11', 0, 'bp-email', '', 0),
(12, 1, '2016-04-09 10:10:54', '2016-04-09 10:10:54', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: <a href="{{{activate-site.url}}}">{{{activate-site.url}}}</a>.\n\nAfter you activate, you can visit your site at <a href="{{{user-site.url}}}">{{{user-site.url}}}</a>.', '[{{{site.name}}}] Activate {{{user-site.url}}}', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: {{{activate-site.url}}}\n\nAfter you activate, you can visit your site at {{{user-site.url}}}.', 'publish', 'closed', 'closed', '', 'site-name-activate-user-site-url', '', '', '2016-04-09 10:10:54', '2016-04-09 10:10:54', '', 0, 'http://localhost/education/?post_type=bp-email&p=12', 0, 'bp-email', '', 0),
(13, 1, '2016-04-09 10:10:55', '2016-04-09 10:10:55', '<a href="{{{initiator.url}}}">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href="{{{friend-requests.url}}}">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}''s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2016-04-09 10:10:55', '2016-04-09 10:10:55', '', 0, 'http://localhost/education/?post_type=bp-email&p=13', 0, 'bp-email', '', 0),
(14, 1, '2016-04-09 10:10:55', '2016-04-09 10:10:55', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates-2', '', '', '2016-04-09 10:10:55', '2016-04-09 10:10:55', '', 0, 'http://localhost/education/?post_type=bp-email&p=14', 0, 'bp-email', '', 0),
(15, 1, '2016-04-09 10:10:56', '2016-04-09 10:10:56', '<a href="{{{friendship.url}}}">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2016-04-09 10:10:56', '2016-04-09 10:10:56', '', 0, 'http://localhost/education/?post_type=bp-email&p=15', 0, 'bp-email', '', 0),
(16, 1, '2016-04-09 10:10:56', '2016-04-09 10:10:56', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments-2', '', '', '2016-04-09 10:10:56', '2016-04-09 10:10:56', '', 0, 'http://localhost/education/?post_type=bp-email&p=16', 0, 'bp-email', '', 0),
(17, 1, '2016-04-09 10:10:56', '2016-04-09 10:10:56', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update-2', '', '', '2016-04-09 10:10:56', '2016-04-09 10:10:56', '', 0, 'http://localhost/education/?post_type=bp-email&p=17', 0, 'bp-email', '', 0),
(18, 1, '2016-04-09 10:10:57', '2016-04-09 10:10:57', 'Group details for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group &quot;{{group.name}}&quot; were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2016-04-09 10:10:57', '2016-04-09 10:10:57', '', 0, 'http://localhost/education/?post_type=bp-email&p=18', 0, 'bp-email', '', 0),
(19, 1, '2016-04-09 10:10:57', '2016-04-09 10:10:57', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update-2', '', '', '2016-04-09 10:10:57', '2016-04-09 10:10:57', '', 0, 'http://localhost/education/?post_type=bp-email&p=19', 0, 'bp-email', '', 0),
(20, 1, '2016-04-09 10:10:57', '2016-04-09 10:10:57', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n<a href="{{{invites.url}}}">Go here to accept your invitation</a> or <a href="{{{group.url}}}">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: "{{group.name}}"', '{{inviter.name}} has invited you to join the group: &quot;{{group.name}}&quot;.\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit {{{group.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2016-04-09 10:10:57', '2016-04-09 10:10:57', '', 0, 'http://localhost/education/?post_type=bp-email&p=20', 0, 'bp-email', '', 0),
(21, 1, '2016-04-09 10:10:57', '2016-04-09 10:10:57', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: <a href="{{{activate.url}}}">{{{activate.url}}}</a>', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: {{{activate.url}}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account-2', '', '', '2016-04-09 10:10:57', '2016-04-09 10:10:57', '', 0, 'http://localhost/education/?post_type=bp-email&p=21', 0, 'bp-email', '', 0),
(22, 1, '2016-04-09 10:10:58', '2016-04-09 10:10:58', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: "{{group.name}}"', 'You have been promoted to {{promoted_to}} in the group: &quot;{{group.name}}&quot;.\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2016-04-09 10:10:58', '2016-04-09 10:10:58', '', 0, 'http://localhost/education/?post_type=bp-email&p=22', 0, 'bp-email', '', 0),
(23, 1, '2016-04-09 10:10:58', '2016-04-09 10:10:58', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: <a href="{{{activate-site.url}}}">{{{activate-site.url}}}</a>.\n\nAfter you activate, you can visit your site at <a href="{{{user-site.url}}}">{{{user-site.url}}}</a>.', '[{{{site.name}}}] Activate {{{user-site.url}}}', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: {{{activate-site.url}}}\n\nAfter you activate, you can visit your site at {{{user-site.url}}}.', 'publish', 'closed', 'closed', '', 'site-name-activate-user-site-url-2', '', '', '2016-04-09 10:10:58', '2016-04-09 10:10:58', '', 0, 'http://localhost/education/?post_type=bp-email&p=23', 0, 'bp-email', '', 0),
(24, 1, '2016-04-09 10:10:59', '2016-04-09 10:10:59', '<a href="{{{initiator.url}}}">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href="{{{friend-requests.url}}}">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}''s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name-2', '', '', '2016-04-09 10:10:59', '2016-04-09 10:10:59', '', 0, 'http://localhost/education/?post_type=bp-email&p=24', 0, 'bp-email', '', 0),
(25, 1, '2016-04-09 10:10:59', '2016-04-09 10:10:59', '<a href="{{{profile.url}}}">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;. As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href="{{{group-requests.url}}}">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group &quot;{{group.name}}&quot;. As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}''s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2016-04-09 10:10:59', '2016-04-09 10:10:59', '', 0, 'http://localhost/education/?post_type=bp-email&p=25', 0, 'bp-email', '', 0),
(26, 1, '2016-04-09 10:10:59', '2016-04-09 10:10:59', '<a href="{{{friendship.url}}}">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request-2', '', '', '2016-04-09 10:10:59', '2016-04-09 10:10:59', '', 0, 'http://localhost/education/?post_type=bp-email&p=26', 0, 'bp-email', '', 0),
(27, 1, '2016-04-09 10:11:00', '2016-04-09 10:11:00', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{message.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n&quot;{{usermessage}}&quot;\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2016-04-09 10:11:00', '2016-04-09 10:11:00', '', 0, 'http://localhost/education/?post_type=bp-email&p=27', 0, 'bp-email', '', 0),
(28, 1, '2016-04-09 10:11:00', '2016-04-09 10:11:00', 'Group details for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group &quot;{{group.name}}&quot; were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated-2', '', '', '2016-04-09 10:11:00', '2016-04-09 10:11:00', '', 0, 'http://localhost/education/?post_type=bp-email&p=28', 0, 'bp-email', '', 0),
(29, 1, '2016-04-09 10:11:00', '2016-04-09 10:11:00', 'You recently changed the email address associated with your account on {{site.name}}. If this is correct, <a href="{{{verify.url}}}">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2016-04-09 10:11:00', '2016-04-09 10:11:00', '', 0, 'http://localhost/education/?post_type=bp-email&p=29', 0, 'bp-email', '', 0),
(30, 1, '2016-04-09 10:11:01', '2016-04-09 10:11:01', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n<a href="{{{invites.url}}}">Go here to accept your invitation</a> or <a href="{{{group.url}}}">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: "{{group.name}}"', '{{inviter.name}} has invited you to join the group: &quot;{{group.name}}&quot;.\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit {{{group.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name-2', '', '', '2016-04-09 10:11:01', '2016-04-09 10:11:01', '', 0, 'http://localhost/education/?post_type=bp-email&p=30', 0, 'bp-email', '', 0),
(31, 1, '2016-04-09 10:11:01', '2016-04-09 10:11:01', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: "{{group.name}}"', 'You have been promoted to {{promoted_to}} in the group: &quot;{{group.name}}&quot;.\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name-2', '', '', '2016-04-09 10:11:01', '2016-04-09 10:11:01', '', 0, 'http://localhost/education/?post_type=bp-email&p=31', 0, 'bp-email', '', 0),
(32, 1, '2016-04-09 10:11:02', '2016-04-09 10:11:02', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group "{{group.name}}" accepted', 'Your membership request for the group &quot;{{group.name}}&quot; has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2016-04-09 10:11:02', '2016-04-09 10:11:02', '', 0, 'http://localhost/education/?post_type=bp-email&p=32', 0, 'bp-email', '', 0),
(33, 1, '2016-04-09 10:11:02', '2016-04-09 10:11:02', '<a href="{{{profile.url}}}">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;. As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href="{{{group-requests.url}}}">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group &quot;{{group.name}}&quot;. As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}''s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-2', '', '', '2016-04-09 10:11:02', '2016-04-09 10:11:02', '', 0, 'http://localhost/education/?post_type=bp-email&p=33', 0, 'bp-email', '', 0),
(34, 1, '2016-04-09 10:11:02', '2016-04-09 10:11:02', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group "{{group.name}}" rejected', 'Your membership request for the group &quot;{{group.name}}&quot; has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2016-04-09 10:11:02', '2016-04-09 10:11:02', '', 0, 'http://localhost/education/?post_type=bp-email&p=34', 0, 'bp-email', '', 0),
(35, 1, '2016-04-09 10:11:03', '2016-04-09 10:11:03', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{message.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n&quot;{{usermessage}}&quot;\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name-2', '', '', '2016-04-09 10:11:03', '2016-04-09 10:11:03', '', 0, 'http://localhost/education/?post_type=bp-email&p=35', 0, 'bp-email', '', 0),
(36, 1, '2016-04-09 10:11:03', '2016-04-09 10:11:03', 'You recently changed the email address associated with your account on {{site.name}}. If this is correct, <a href="{{{verify.url}}}">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address-2', '', '', '2016-04-09 10:11:03', '2016-04-09 10:11:03', '', 0, 'http://localhost/education/?post_type=bp-email&p=36', 0, 'bp-email', '', 0),
(37, 1, '2016-04-09 10:11:04', '2016-04-09 10:11:04', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group "{{group.name}}" accepted', 'Your membership request for the group &quot;{{group.name}}&quot; has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted-2', '', '', '2016-04-09 10:11:04', '2016-04-09 10:11:04', '', 0, 'http://localhost/education/?post_type=bp-email&p=37', 0, 'bp-email', '', 0),
(38, 1, '2016-04-09 10:11:04', '2016-04-09 10:11:04', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group "{{group.name}}" rejected', 'Your membership request for the group &quot;{{group.name}}&quot; has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected-2', '', '', '2016-04-09 10:11:04', '2016-04-09 10:11:04', '', 0, 'http://localhost/education/?post_type=bp-email&p=38', 0, 'bp-email', '', 0),
(39, 1, '2016-04-09 10:12:45', '2016-04-09 10:12:45', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2016-04-09 10:12:45', '2016-04-09 10:12:45', '', 0, 'http://localhost/education/wishlist/', 0, 'page', '', 0),
(44, 1, '2013-12-31 07:59:46', '2013-12-31 07:59:46', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'open', '', 'wishlist-2', '', '', '2013-12-31 07:59:46', '2013-12-31 07:59:46', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=44', 0, 'page', '', 0),
(45, 1, '2013-12-31 08:00:27', '2013-12-31 08:00:27', '', 'Shop', '', 'publish', 'closed', 'open', '', 'shop', '', '', '2013-12-31 08:00:27', '2013-12-31 08:00:27', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=45', 0, 'page', '', 0),
(131, 1, '2013-12-31 08:17:05', '2013-12-31 08:17:05', '<h1>Checkout</h1>\n\n{{mj-checkout-form}}', 'Mijireh Secure Checkout', '', 'private', 'closed', 'closed', '', 'mijireh-secure-checkout', '', '', '2013-12-31 08:17:05', '2013-12-31 08:17:05', '', 0, 'http://wedesignthemes.com/themes/dt-guru/mijireh-secure-checkout/', 0, 'page', '', 0),
(133, 1, '2013-07-11 06:11:45', '2013-07-11 06:11:45', '[dt_hr_title tag="h2"]Buttons[/dt_hr_title]\n<div class="shortcode-btn">[dt_hr_title tag="h3"]Small Buttons[/dt_hr_title]\n[dt_sc_button link="#" size="small" variation="green" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="orange" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="blue" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="pink" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="red" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="purple" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="ocean" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="raspberry" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="slateblue" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="skyblue" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="coral" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="black" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="cyan" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="grey" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="gold" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="chocolate" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="ferngreen" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="electricblue" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="eggplant" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_button link="#" size="small" variation="palebrown" textcolor="#ffffff"]Small Button[/dt_sc_button]\n[dt_sc_clear]\n[dt_sc_hr_invisible_medium ]\n[dt_hr_title tag="h3"]Medium Buttons[/dt_hr_title]\n[dt_sc_button link="#" size="medium" variation="green" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="orange" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="blue" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="pink" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="red" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="purple" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="ocean" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="raspberry" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="slateblue" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="skyblue" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="coral" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="black" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="cyan" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="grey" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="gold" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="chocolate" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="ferngreen" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="electricblue" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="eggplant" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n[dt_sc_button link="#" size="medium" variation="palebrown" textcolor="#ffffff"]Medium Button[/dt_sc_button]\n<div class="clear"></div>\n[dt_sc_hr_invisible_medium]\n[dt_hr_title tag="h3"]Large Buttons[/dt_hr_title]\n[dt_sc_button link="#" size="large" variation="green" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="orange" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="blue" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="pink" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="red" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="purple" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="ocean" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="raspberry" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="slateblue" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="skyblue" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="coral" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="black" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="cyan" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="grey" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="gold" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="chocolate" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="ferngreen" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="electricblue" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="eggplant" textcolor="#ffffff"]Large Button[/dt_sc_button]\n[dt_sc_button link="#" size="large" variation="palebrown" textcolor="#ffffff"]Large Button[/dt_sc_button]\n\n</div>\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_button link="#" size="" variation=""]Large Button[/dt_sc_button]\n[/dt_sc_code]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_four_fifth first]\n<h5>Available Variations</h5>\n[dt_sc_one_fourth first]\n<ul>\n	<li>green</li>\n	<li>blue</li>\n	<li>ocean</li>\n	<li>pink</li>\n	<li>orange</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n	<li>purple</li>\n	<li>red</li>\n	<li>slateblue</li>\n	<li>skyblue</li>\n	<li>coral</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n	<li>khaki</li>\n	<li>cyan</li>\n	<li>grey</li>\n	<li>gold</li>\n	<li>chocolate</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n	<li>raspberry</li>\n	<li>electricblue</li>\n	<li>eggplant</li>\n	<li>ferngreen</li>\n	<li>palebrown</li>\n</ul>\n[/dt_sc_one_fourth]\n\n[/dt_sc_four_fifth]\n[dt_sc_one_fifth]\n<h5>Available Sizes</h5>\n<ul>\n	<li>small</li>\n	<li>medium</li>\n	<li>large</li>\n</ul>\n[/dt_sc_one_fifth]', 'Buttons', '', 'publish', 'open', 'closed', '', 'buttons', '', '', '2013-07-11 06:11:45', '2013-07-11 06:11:45', '', 4296, 'http://localhost/dt-sushi/?page_id=124', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(138, 1, '2013-07-11 06:40:27', '2013-07-11 06:40:27', '[dt_hr_title tag="h2"]Pullquotes[/dt_hr_title]\n<h3>Type1</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum. [dt_sc_pullquote type="pullquote1" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]  Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote1" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote1" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n[dt_margin value="20" /]\n<h3>Type2</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum.[dt_sc_pullquote type="pullquote2" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote2" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote2" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n[dt_margin value="20" /]\n<h3>Type3</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum.[dt_sc_pullquote type="pullquote3" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote3" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote3" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n[dt_margin value="20" /]\n<h3>Type4</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum.[dt_sc_pullquote type="pullquote4" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote4" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote4" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n[dt_margin value="20" /]\n<h3>Type5</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum.[dt_sc_pullquote type="pullquote5" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote5" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote5" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n[dt_margin value="20" /]\n<h3>Type6</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero. Nulla vestibulum sem a est tempus sed fringilla lorem sagittis. Phasellus mi orci, fermentum.[dt_sc_pullquote type="pullquote6" icon="yes" align="right"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.[dt_sc_pullquote type="pullquote6" icon="yes" align="left"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote] Aonsectetur adipiscing elit.\n\nNunc iaculis suscipit dui. Nam sit amet sem. Aliquam libero nisi, imperdiet at, tincidunt nec, gravida vehicula, nisl. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus.\n\nNam sit amet sem. Nullam dignissim convallis est. Quisque aliquam. Donec faucibus. Nunc iaculis suscipit dui. Nam sit amet sem. Praesent mattis, massa quis luctus fermentum, turpis mi volutpat justo, eu volutpat enim diam eget metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam id augue vitae odio accumsan condimentum id in urna. Integer sit amet felis sit amet magna dignissim pharetra ut eget orci. Etiam dictum, nunc id feugiat cursus, nulla orci pretium nisl, eget lacinia felis enim et libero.\n\n[dt_sc_pullquote type="pullquote6" icon="yes" align="center"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_pullquote]\n\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_pullquote type="" icon="yes" align="left"] Your content goes here... [/dt_sc_pullquote]\n[/dt_sc_code]\n\n<h5>Avilable Types</h5>\n<ul>\n	<li>pullquote1</li>\n	<li>pullquote2</li>\n        <li>pullquote3</li>\n	<li>pullquote4</li>\n        <li>pullquote5</li>\n	<li>pullquote6</li>\n</ul>\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Blockquotes[/dt_hr_title]\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="blue"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="chocolate"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="coral"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="cyan"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="eggplant"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="electricblue"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="ferngreen"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="gold"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="green"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="grey"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="khaki"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="skyblue"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="ocean"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="orange"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="palebrown"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="pink"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="purple"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="raspberry"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_blockquote align="center" variation="red"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_blockquote align="center" variation="slateblue"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac luctus ligula. Phasellus a ligula blandit[/dt_sc_blockquote] [/dt_sc_one_half][dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_blockquote align="center" variation=""] Your content goes here... [/dt_sc_blockquote]\n[/dt_sc_code]\n\n<h5>Available Variations</h5>\n[dt_sc_one_fourth first]\n<ul>\n<li>green</li>\n<li>blue</li>\n<li>ocean</li>\n<li>pink</li>\n<li>orange</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>purple</li>\n<li>red</li>\n<li>slateblue</li>\n<li>skyblue</li>\n<li>coral</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>khaki</li>\n<li>cyan</li>\n<li>grey</li>\n<li>gold</li>\n<li>chocolate</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>raspberry</li>\n<li>electricblue</li>\n<li>eggplant</li>\n<li>ferngreen</li>\n<li>palebrown</li>\n</ul>\n[/dt_sc_one_fourth]', 'Quotes', '', 'publish', 'open', 'closed', '', 'quotes', '', '', '2013-07-11 06:40:27', '2013-07-11 06:40:27', '', 4296, 'http://localhost/dt-sushi/?page_id=138', 0, 'page', '', 0),
(151, 1, '2013-07-11 07:13:36', '2013-07-11 07:13:36', '[dt_hr_title tag="h2"]Fancy Boxes[/dt_hr_title]\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="blue"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="chocolate"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="coral"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="cyan"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="eggplant"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="electricblue"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="ferngreen"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="gold"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="green"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="grey"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="khaki"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="ocean"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="orange"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="palebrown"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="pink"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="purple"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="raspberry"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="red"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="titled-box" title="Titled Box" variation="skyblue"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_one_half][dt_sc_box type="titled-box" title="Titled Box" variation="slateblue"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at.\n\n[/dt_sc_box] [/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_box type="titled-box" title="" variation=""] Put Content Here... [/dt_sc_box]\n[/dt_sc_code]\n<h5>Available Variations</h5>\n[dt_sc_one_fourth first]\n<ul>\n<li>green</li>\n<li>blue</li>\n<li>ocean</li>\n<li>pink</li>\n<li>orange</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>purple</li>\n<li>red</li>\n<li>slateblue</li>\n<li>skyblue</li>\n<li>coral</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>khaki</li>\n<li>cyan</li>\n<li>grey</li>\n<li>gold</li>\n<li>chocolate</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>raspberry</li>\n<li>electricblue</li>\n<li>eggplant</li>\n<li>ferngreen</li>\n<li>palebrown</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Alert Boxes[/dt_hr_title]\n[dt_sc_one_half first][dt_sc_box type="error-box" title="Your Text Goes Here"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box][/dt_sc_one_half]\n\n[dt_sc_one_half][dt_sc_box type="warning-box" title="Your Text Goes Here"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box][/dt_sc_one_half]\n\n[dt_sc_one_half first][dt_sc_box type="success-box" title="Your Text Goes Here"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box][/dt_sc_one_half]\n\n[dt_sc_one_half][dt_sc_box type="info-box" title="Your Text Goes Here"]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box][/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_box type="error-box" title=""]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box]\n[dt_sc_box type="warning-box" title=""]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box]\n[dt_sc_box type="success-box" title=""]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box]\n[dt_sc_box type="info-box" title=""]Lorem ipsum dolor sit amet, consectetur adipiscing elit.[/dt_sc_box]\n[/dt_sc_code]', 'Fancy Boxes', '', 'publish', 'open', 'closed', '', 'fancy-boxes', '', '', '2013-07-11 07:13:36', '2013-07-11 07:13:36', '', 4296, 'http://localhost/dt-sushi/?page_id=151', 0, 'page', '', 0),
(165, 1, '2013-07-11 07:34:21', '2013-07-11 07:34:21', '[dt_hr_title tag="h2"]Columns[/dt_hr_title]\n[dt_sc_one_half first]\n<h3>Column 1/2</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat. Quisque diam eros, rhoncus sit amet rutrum ut, sagittis a erat.</p>\n\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<h3>Column 1/2</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat. Quisque diam eros, rhoncus sit amet rutrum ut, sagittis a erat.</p>\n\n[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_half first]Content for 1/2 Column here[/dt_sc_one_half]\n[dt_sc_one_half]Content for 1/2 Column here[/dt_sc_one_half]\n[/dt_sc_code]\n\n[dt_sc_hr_invisible]\n[dt_sc_one_third first]\n<h3>Column 1/3</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat.</p>\n\n[/dt_sc_one_third]\n[dt_sc_one_third]\n<h3>Column 1/3</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat.</p>\n[/dt_sc_one_third]\n[dt_sc_one_third]\n<h3>Column 1/3</h3>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat.\n[/dt_sc_one_third]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_third first]Content for 1/3 Column here[/dt_sc_one_third]\n[dt_sc_one_third]Content for 1/3 Column here[/dt_sc_one_third]\n[dt_sc_one_third]Content for 1/3 Column here[/dt_sc_one_third][/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_third first]\n<h3>Column 1/3</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat.</p>\n\n[/dt_sc_one_third]\n[dt_sc_two_third]\n<h3>Column 2/3</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat. Quisque diam eros, rhoncus sit amet rutrum ut, sagittis a erat. Sed lobortis, arcu id rutrum dictum, tellus mauris hendrerit urna, sit amet commodo orci velit et urna.</p>\n[/dt_sc_two_third]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_third first]Content for 1/3 Column here[/dt_sc_one_third]\n[dt_sc_two_third]Content for 2/3 Column here[/dt_sc_two_third][/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fourth first]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fourth first]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_one_fourth]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_one_fourth]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_one_fourth]Content for 1/4 Column here[/dt_sc_one_fourth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fourth first]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_three_fourth]<h3>Column 3/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat. Quisque diam eros, rhoncus sit amet rutrum ut, sagittis a erat. Sed lobortis, arcu id rutrum dictum, tellus mauris hendrerit urna, sit amet commodo orci velit et urna. Quisque elementum, odio porttitor varius gravida, ante diam facilisis erat, in fermentum mi elit in magna.</p>[/dt_sc_three_fourth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fourth first]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_three_fourth]Content for 3/4 Column here[/dt_sc_three_fourth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fourth first]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<h3>Column 1/4</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fourth]\n[dt_sc_one_half]<h3>Column 1/2</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et. Sed sit amet est et turpis viverra consequat. Quisque diam eros, rhoncus sit amet rutrum ut, sagittis a erat.</p>[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fourth first]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_one_fourth]Content for 1/4 Column here[/dt_sc_one_fourth]\n[dt_sc_one_half]Content for 2/4 Column here[/dt_sc_one_half]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fifth first]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fifth first]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fifth first]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_two_fifth]<h3>Column 2/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non justo vitae odio fringilla dapibus id nec est. Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero fonsectetur adipiscing.</p>[/dt_sc_two_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fifth first]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_two_fifth]Content for 2/5 Column here[/dt_sc_two_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fifth first]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_three_fifth]<h3>Column 3/5</h3>\n<p>Lorem ipsum dolor sit amet, vehicula consectetur adipiscing elit. Etiam non justo vitae odio fringilla libero dapibus id nec est. facilisis Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero. Suspendisse auctor, mauris non condimentum iaculis, consectetur adipiscing nulla urna varius orci, in convallis adipiscing elit consectetur .</p>[/dt_sc_three_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fifth first]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_three_fifth]Content for 3/5 Column here[/dt_sc_three_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fifth first]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_two_fifth]<h3>Column 2/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non justo vitae odio fringilla dapibus id nec est. Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero fonsectetur adipiscing.</p>[/dt_sc_two_fifth]\n[dt_sc_two_fifth]<h3>Column 2/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non justo vitae odio fringilla dapibus id nec est. Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero fonsectetur adipiscing.</p>[/dt_sc_two_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fifth first]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_two_fifth]Content for 2/5 Column here[/dt_sc_two_fifth]\n[dt_sc_two_fifth]Content for 2/5 Column here[/dt_sc_two_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_two_fifth first]<h3>Column 2/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non justo vitae odio fringilla dapibus id nec est. Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero fonsectetur adipiscing.</p>[/dt_sc_two_fifth]\n[dt_sc_three_fifth]<h3>Column 3/5</h3>\n<p>Lorem ipsum dolor sit amet, vehicula consectetur adipiscing elit. Etiam non justo vitae odio fringilla libero dapibus id nec est. facilisis Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero. Suspendisse auctor, mauris non condimentum iaculis, consectetur adipiscing nulla urna condimentum  varius orci, in convallis sollicitudin .</p>[/dt_sc_three_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_two_fifth first]Content for 2/5 Column here[/dt_sc_two_fifth]\n[dt_sc_three_fifth]Content for 3/5 Column here[/dt_sc_three_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_fifth first]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_one_fifth]<h3>Column 1/5</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_fifth]\n[dt_sc_three_fifth]<h3>Column 3/5</h3>\n<p>Lorem ipsum dolor sit amet, vehicula consectetur adipiscing elit. Etiam non justo vitae odio fringilla libero dapibus id nec est. facilisis Integer eu felis lectus, quis sagittis nisl. Morbi elit mauris, sollicitudin ut facilisis eu, vehicula sit amet libero. Suspendisse auctor, mauris non condimentum iaculis, consectetur adipiscing nulla urna varius orci, in convallis adipiscing elit.</p>[/dt_sc_three_fifth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_fifth first]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_one_fifth]Content for 1/5 Column here[/dt_sc_one_fifth]\n[dt_sc_three_fifth]Content for 3/5 Column here[/dt_sc_three_fifth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_sixth first]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa aliquam et.</p>[/dt_sc_one_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_sixth first]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_sixth first]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_two_sixth]<h3>Column 2/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_two_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_sixth first]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_two_sixth]Content for 2/6 Column here[/dt_sc_two_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_sixth first]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_one_sixth]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_three_sixth]<h3>Column 3/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_three_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_sixth first]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_one_sixth]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_three_sixth]Content for 3/6 Column here[/dt_sc_three_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_sixth first]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_one_sixth]\n[dt_sc_five_sixth]<h3>Column 5/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_five_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_sixth first]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_five_sixth]Content for 5/6 Column here[/dt_sc_five_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_one_sixth first]<h3>Column 1/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur massa.</p>[/dt_sc_one_sixth]\n[dt_sc_two_sixth]<h3>Column 2/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_two_sixth]\n[dt_sc_three_sixth]<h3>Column 3/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_three_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_one_sixth first]Content for 1/6 Column here[/dt_sc_one_sixth]\n[dt_sc_two_sixth]Content for 2/6 Column here[/dt_sc_two_sixth]\n[dt_sc_three_sixth]Content for 3/6 Column here[/dt_sc_three_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_three_sixth first]<h3>Column 3/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_three_sixth]\n[dt_sc_three_sixth]<h3>Column 3/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_three_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_three_sixth first]Content for 3/6 Column here[/dt_sc_three_sixth]\n[dt_sc_three_sixth]Content for 3/6 Column here[/dt_sc_three_sixth]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_sc_two_sixth first]<h3>Column 2/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>[/dt_sc_two_sixth]\n[dt_sc_four_sixth]<h3>Column 4/6</h3>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sagittis elementum est, eu consectetur.</p>[/dt_sc_four_sixth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_two_sixth first]Content for 2/6 Column here[/dt_sc_two_sixth]\n[dt_sc_four_sixth]Content for 4/6 Column here[/dt_sc_four_sixth]\n[/dt_sc_code]', 'Columns', '', 'publish', 'open', 'closed', '', 'columns', '', '', '2013-07-11 07:34:21', '2013-07-11 07:34:21', '', 4296, 'http://localhost/dt-sushi/?page_id=165', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(167, 1, '2013-07-11 07:37:52', '2013-07-11 07:37:52', '[dt_hr_title tag="h2"]Ordered Lists[/dt_hr_title]\n<h3>Default</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="blue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="blue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="blue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Chocolate</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="chocolate"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="chocolate"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="chocolate"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Coral</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="coral"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="coral"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="coral"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Cyan</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="cyan"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="cyan"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="cyan"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Eggplant</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="eggplant"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="eggplant"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="eggplant"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Electricblue</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="electricblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="electricblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="electricblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Ferngreen</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="ferngreen"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="ferngreen"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="ferngreen"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Gold</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="gold"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="gold"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="gold"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Green</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="green"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="green"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="green"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Grey</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="grey"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="grey"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="grey"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Khaki</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="khaki"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="khaki"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="khaki"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Ocean</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="ocean"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="ocean"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="ocean"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Orange</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="orange"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="orange"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="orange"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Palebrown</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="palebrown"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="palebrown"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="palebrown"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Pink</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="pink"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="pink"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="pink"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Purple</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="purple"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="purple"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="purple"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Raspberry</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="raspberry"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="raspberry"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="raspberry"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Red</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="red"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="red"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="red"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Skyblue</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-roman" variation="skyblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal" variation="skyblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="decimal-leading-zero" variation="skyblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n<h3>Slateblue</h3>\n[dt_sc_one_third first][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-alpha" variation="slateblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="lower-roman" variation="slateblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_one_third][dt_sc_fancy_ol style="dec[dt_sc_fancy_ol style="upper-alpha" variation="slateblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n	<li>Suspendisse convallis turpis in lacus</li>\n	<li>Sed blandit turpis id dapibus volutpat.</li>\n</ol>\n[/dt_sc_fancy_ol][/dt_sc_one_third]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_fancy_ol style="upper-alpha" variation="slateblue"]\n<ol>\n	<li>Lorem ipsum dolor sit amet consectetur</li>\n	<li>Aliquam sed est libero Ut dignissim</li>\n</ol>\n[/dt_sc_fancy_ol]\n[/dt_sc_code]\n[dt_sc_four_fifth first]\n<h5>Available Variations</h5>\n[dt_sc_one_fourth first]\n<ul>\n<li>green</li>\n<li>blue</li>\n<li>ocean</li>\n<li>pink</li>\n<li>orange</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>purple</li>\n<li>red</li>\n<li>slateblue</li>\n<li>skyblue</li>\n<li>coral</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>khaki</li>\n<li>cyan</li>\n<li>grey</li>\n<li>gold</li>\n<li>chocolate</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>raspberry</li>\n<li>electricblue</li>\n<li>eggplant</li>\n<li>ferngreen</li>\n<li>palebrown</li>\n</ul>\n[/dt_sc_one_fourth]\n[/dt_sc_four_fifth]\n[dt_sc_one_fifth]\n<h5>Available Styles</h5>\n<ul>\n<li>decimal</li>\n<li>decimal-leading-zero</li>\n<li>lower-alpha</li>\n<li>lower-roman</li>\n<li>upper-alpha</li>\n<li>upper-roman</li>\n</ul>\n[/dt_sc_one_fifth]', 'Ordered Lists', '', 'publish', 'open', 'closed', '', 'ordered-lists', '', '', '2013-07-11 07:37:52', '2013-07-11 07:37:52', '', 4296, 'http://localhost/dt-sushi/?page_id=167', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 1, '2013-07-11 07:47:26', '2013-07-11 07:47:26', '[dt_hr_title tag="h2"]Unordered Lists[/dt_hr_title]\n<h3>Blue</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="blue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Chocolate</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="chocolate"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Coral</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="coral"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Cyan</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="cyan"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Eggplant</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="eggplant"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Electricblue</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="electricblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Ferngreen</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="ferngreen"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Gold</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="gold"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Green</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="green"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Grey</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Khaki</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="khaki"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Ocean</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="ocean"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Orange</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="orange"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Palebrown</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="palebrown"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Pink</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="pink"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n<h3>Purple</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="purple"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Raspberry</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="raspberry"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Red</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="red"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Skyblue</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="skyblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n<h3>Slateblue</h3>\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="arrow" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-arrow" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="double-arrow" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="heart" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="trash" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="star" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tick" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-tick" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="cross" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-cross" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="rounded-question" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-info" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="delete" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="warning" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="comment" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="edit" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="share" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="plus" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rounded-plus" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="minus" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="rounded-minus" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="asterisk" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="cart" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="folder" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="desktop" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tablet" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mobile" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="reply" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="quote" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth] [dt_sc_fancy_ul style="mail" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="external-link" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="adjust" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first] [dt_sc_fancy_ul style="pencil" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="print" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="tag" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="thumbs-up" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="thumbs-down" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="time" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="globe" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="pushpin" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="map-marker" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="link" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="paper-clip" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="download" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="key" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="search" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="rss" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="twitter" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first][dt_sc_fancy_ul style="facebook" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="linkedin" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="google-plus" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_fancy_ul style="folder-open" variation="slateblue"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul][/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_fancy_ul style="" variation=""]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_code]\n\n<h5>Available Variations</h5>\n[dt_sc_one_fourth first]\n<ul>\n<li>green</li>\n<li>blue</li>\n<li>ocean</li>\n<li>pink</li>\n<li>orange</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>purple</li>\n<li>red</li>\n<li>slateblue</li>\n<li>skyblue</li>\n<li>coral</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>khaki</li>\n<li>cyan</li>\n<li>grey</li>\n<li>gold</li>\n<li>chocolate</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>raspberry</li>\n<li>electricblue</li>\n<li>eggplant</li>\n<li>ferngreen</li>\n<li>palebrown</li>\n</ul>\n[/dt_sc_one_fourth]\n\n<h5>Available Styles</h5>\n[dt_sc_one_fourth first]\n<ul>\n<li>arrow</li>\n<li>rounded-arrow</li>\n<li>double-arrow</li>\n<li>heart</li>\n<li>trash</li>\n<li>star</li>\n<li>tick</li>\n<li>rounded-tick</li>\n<li>cross</li>\n<li>rounded-cross</li>\n<li>rounded-question</li>\n<li>rounded-info</li>\n<li>delete</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>warning</li>\n<li>comment</li>\n<li>edit</li>\n<li>share</li>\n<li>plus</li>\n<li>rounded-plus</li>\n<li>minus</li>\n<li>rounded-minus</li>\n<li>asterisk</li>\n<li>cart</li>\n<li>folder</li>\n<li>folder-open</li>\n<li>desktop</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>tablet</li>\n<li>mobile</li>\n<li>reply</li>\n<li>quote</li>\n<li>mail</li>\n<li>external-link</li>\n<li>adjust</li>\n<li>pencil</li>\n<li>print</li>\n<li>tag</li>\n<li>thumbs-up</li>\n<li>thumbs-down</li>\n<li>time</li>\n</ul>\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n<ul>\n<li>globe</li>\n<li>pushpin</li>\n<li>map-marker</li>\n<li>link</li>\n<li>paper-clip</li>\n<li>download</li>\n<li>key</li>\n<li>search</li>\n<li>rss</li>\n<li>twitter</li>\n<li>facebook</li>\n<li>linkedin</li>\n<li>google-plus</li>\n</ul>\n[/dt_sc_one_fourth]', 'Unordered Lists', '', 'publish', 'open', 'closed', '', 'unordered-lists', '', '', '2013-07-11 07:47:26', '2013-07-11 07:47:26', '', 4296, 'http://localhost/dt-sushi/?page_id=176', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(184, 1, '2013-07-11 08:02:27', '2013-07-11 08:02:27', '[dt_hr_title tag="h2"]Vertical Tabs[/dt_hr_title]\n[dt_sc_tabs_vertical]\n[dt_sc_tab title="Tab1"]\n<h2>This is the Title for Tab1</h2>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Words somwtimes somethings which don''t look even slightly believable.\n[dt_sc_fancy_ul style="tick"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n        <li>Lorem ipsum dolor sit</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_tab]\n[dt_sc_tab title="Tab2"]\n<h2>This is the Title for Tab2</h2>\nMorbi dignissim ipsum vel leo varius feugiat. Sed varius est vel purus rutrum semper. Aliquam laoreet augue sed elit elementum pulvinar. Maecenas rutrum placerat est ut lacinia. Curabitur sed tempor lectus. Vivamus bibendum nisi a tellus vehicula, at mollis tellus sagittis\n[dt_sc_fancy_ul style="tick"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n        <li>Lorem ipsum dolor sit</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_tab]\n[dt_sc_tab title="Tab3"]\n<h2>This is the Title for Tab3</h2>\nSed eget urna ac nibh consectetur porttitor a id lorem. In a congue turpis. In hac habitasse platea dictumst. Sed facilisis, eros sed pharetra hendrerit, urna ligula sodales lectus, ut dignissim justo ante quis orci. Donec imperdiet mauris ac massa ultrices, tristique hendrerit diam eleifend.\n[dt_sc_fancy_ul style="tick"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n        <li>Lorem ipsum dolor sit</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_tab]\n[dt_sc_tab title="Tab4"]\n<h2>This is the Title for Tab4</h2>\nMorbi dignissim ipsum vel leo varius feugiat. Sed varius est vel purus rutrum semper. Aliquam laoreet augue sed elit elementum pulvinar. Maecenas rutrum placerat est ut lacinia. Curabitur sed tempor lectus. Vivamus bibendum nisi a tellus vehicula, at mollis tellus sagittis\n[dt_sc_fancy_ul style="tick"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n        <li>Lorem ipsum dolor sit</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_tab]\n[dt_sc_tab title="Tab5"]\n<h2>This is the Title for Tab5</h2>\nSed eget urna ac nibh consectetur porttitor a id lorem. In a congue turpis. In hac habitasse platea dictumst. Sed facilisis, eros sed pharetra hendrerit, urna ligula sodales lectus, ut dignissim justo ante quis orci. Donec imperdiet mauris ac massa ultrices, tristique hendrerit diam eleifend.\n[dt_sc_fancy_ul style="tick"]\n<ul>\n	<li>Lorem ipsum dolor sit</li>\n	<li>Praesent convallis nibh</li>\n        <li>Lorem ipsum dolor sit</li>\n</ul>\n[/dt_sc_fancy_ul]\n[/dt_sc_tab]\n[/dt_sc_tabs_vertical]\n\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_tabs_vertical]\n[dt_sc_tab title="What is Lorem Ipsum?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Where does it come from?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Why do we use it?"] . . . [/dt_sc_tab]\n[/dt_sc_tabs_vertical]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n[dt_hr_title tag="h2"]Horizontal Tabs[/dt_hr_title]\n[dt_sc_tabs_horizontal]\n[dt_sc_tab title="Tab1"]\n<h2>This is the Title for Tab1</h2>\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit. Words somwtimes somethings can be made bigger do which don''t look even slightly believable.\n[/dt_sc_tab]\n[dt_sc_tab title="Tab2"]\n<h2>This is the Title for Tab2</h2>\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.\n[/dt_sc_tab]\n[dt_sc_tab title="Tab3"]\n<h2>This is the Title for Tab3</h2>\nAenean cursus euismod quam, id fermentum justo sagittis sit amet. Etiam eleifend nisi at erat aliquet scelerisque. Etiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus tempor sem vitae sagittis iaculis. Aliquam dapibus inon.\n[/dt_sc_tab]\n[dt_sc_tab title="Tab4"]\n<h2>This is the Title for Tab4</h2>\nUt volutpat consequat blandit. Aliquam auctor magna quis sapien commodo, eget elementum mi sollicitudin. Sed faucibus neque ut laoreet faucibus. Quisque aliquam lectus non libero lacinia, ut tincidunt velit tempus. Maecenas non luctus enim, varius varius eros. Donec vestibulum adipiscing nulla, eu consequat metus lacinia ut elementum sollicitudin.\n[/dt_sc_tab]\n[/dt_sc_tabs_horizontal][/dt_sc_one_half]\n[dt_sc_one_half]\n[dt_hr_title tag="h2"]Frameless Tabs[/dt_hr_title]\n[dt_sc_tabs_horizontal_frame_less]\n[dt_sc_tab title="Tab1"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\nVestibulum dapibus tempor velit, quis volutpat ipsum dignissim ac. Vestibulum dapibus augue at nibh viverra, ac imperdiet libero interdum. Proin aliquam faucibus est, ut hendrerit nulla fermentum ut. In eget lacinia leo. Donec fermentum lectus in metus rutrum, sed auctor lectus vehicula. Nullam scelerisque dolor sit amet tortor semper, at congue ligula aliquet. In at egestas libero.\n\n[/dt_sc_tab]\n[dt_sc_tab title="Tab2"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\nInteger eu vulputate velit. Maecenas ut lorem rutrum, gravida tortor vel, cursus mi. Duis non justo metus. Nam non neque erat. Curabitur facilisis viverra turpis, non tincidunt velit eleifend a. Morbi tempor rutrum fermentum. Sed mauris risus, dictum ut velit et, vulputate scelerisque lacus.\n\n[/dt_sc_tab]\n[dt_sc_tab title="Tab3"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed euismod massa non mi mattis, id cursus purus vulputate. Etiam eget mi vitae felis aliquet accumsan. Sed adipiscing a odio id pretium. Nulla imperdiet vel urna non tristique.\n\n[/dt_sc_tab]\n[/dt_sc_tabs_horizontal_frame_less][/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n[dt_sc_one_half first]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_tabs_horizontal]\n[dt_sc_tab title="What is Lorem Ipsum?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Where does it come from?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Why do we use it?"] . . . [/dt_sc_tab]\n[/dt_sc_tabs_horizontal]\n[/dt_sc_code]\n\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_tabs_horizontal_frame_less]\n[dt_sc_tab title="What is Lorem Ipsum?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Where does it come from?"] . . . [/dt_sc_tab]\n[dt_sc_tab title="Why do we use it?"] . . . [/dt_sc_tab]\n[/dt_sc_tabs_horizontal_frame_less]\n[/dt_sc_code]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n[dt_hr_title tag="h2"]Standard Toggle Style[/dt_hr_title]\n[dt_sc_toggle title="Toggle Title 1"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Toggle Title 2"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n\n[dt_sc_toggle title="Toggle Title 3"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle][/dt_sc_one_half]\n[dt_sc_one_half]\n[dt_hr_title tag="h2"]Framed Toggle Style[/dt_hr_title]\n[dt_sc_toggle_framed title="Toggle Title 1"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Toggle Title 2"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Toggle Title 3"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle_framed][/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n[dt_sc_one_half first]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_toggle title="What is Lorem Ipsum?"] . . . [/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"] . . . [/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"] . . . [/dt_sc_toggle]\n[/dt_sc_code]\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_toggle_framed title="What is Lorem Ipsum?"] . . . [/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Where does it come from?"] . . . [/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Why do we use it?"] . . . [/dt_sc_toggle_framed]\n[/dt_sc_code]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n[dt_hr_title tag="h2"]Standard Accordion Style[/dt_hr_title]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle]\n[/dt_sc_accordion_group][/dt_sc_one_half]\n[dt_sc_one_half]\n[dt_hr_title tag="h2"]Framed Accordion Style[/dt_hr_title]\n[dt_sc_accordion_group]\n[dt_sc_toggle_framed title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle_framed]\n[/dt_sc_accordion_group][/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_one_half first]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"] . . . [/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"] . . . [/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"] . . . [/dt_sc_toggle]\n[/dt_sc_accordion_group]\n[/dt_sc_code]\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_accordion_group]\n[dt_sc_toggle_framed title="What is Lorem Ipsum?"] . . . [/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Where does it come from?"] . . . [/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Why do we use it?"] . . . [/dt_sc_toggle_framed]\n[/dt_sc_accordion_group]\n[/dt_sc_code]\n[/dt_sc_one_half]', 'Tabs & Toggles', '', 'publish', 'open', 'closed', '', 'tabs-toggles', '', '', '2013-07-11 08:02:27', '2013-07-11 08:02:27', '', 4296, 'http://localhost/dt-sushi/?page_id=184', 0, 'page', '', 0),
(189, 1, '2013-07-11 09:58:33', '2013-07-11 09:58:33', '[dt_hr_title tag="h2"]Progress Bars[/dt_hr_title]\n[dt_sc_one_half first]\n\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Sports Achievement[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Visual Classes[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Listing Capability[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n\n[/dt_sc_one_half]\n[dt_sc_one_half]\n\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Sports Achievement[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Visual Classes[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Listing Capability[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n\n[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Content[/dt_sc_progressbar]\n[/dt_sc_code]\n\n<strong>Available Types</strong>\n<ul>\n	<li>standard</li>\n	<li>progress-striped</li>\n	<li>progress-striped-active</li>\n</ul>\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Progress Bars Type - II[/dt_hr_title]\n[dt_sc_one_fourth first]\n[dt_progress_chart percentage="80" percent_text="Save" fgcolor="#9C59B6" bgcolor="#E3E0D9" title="Platinum" subtitle="only for citizens" button_text="Join Now"]Donec viverra, arcu auctor tincidunt mattis, erat odio mattis felis, posuere placerat diam odio sollicitudin eros.[/dt_progress_chart]\n[/dt_sc_one_fourth]\n\n[dt_sc_one_fourth first]\n[dt_progress_chart percentage="60" percent_text="Save" fgcolor="#3498DB" bgcolor="#E3E0D9" title="Gold" subtitle="only for ladies" button_text="Join Now"]Donec viverra, arcu auctor tincidunt mattis, erat odio mattis felis, posuere placerat diam odio sollicitudin eros.[/dt_progress_chart]\n[/dt_sc_one_fourth]\n\n[dt_sc_one_fourth]\n[dt_progress_chart percentage="50" percent_text="Save" fgcolor="#1ABC9C" bgcolor="#E3E0D9" title="Silver" subtitle="only for childrens" button_text="Join Now"]Donec viverra, arcu auctor tincidunt mattis, erat odio mattis felis, posuere placerat diam odio sollicitudin eros.[/dt_progress_chart]\n[/dt_sc_one_fourth]\n\n[dt_sc_one_fourth]\n[dt_progress_chart percentage="40" percent_text="Save" fgcolor="#F39D12" bgcolor="#E3E0D9" title="Brown" subtitle="only for ladies" button_text="Join Now"]Donec viverra, arcu auctor tincidunt mattis, erat odio mattis felis, posuere placerat diam odio sollicitudin eros.[/dt_progress_chart]\n[/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_progress_cart percentage="50" percent_text="Save" fgcolor="" bgcolor="" title="" subtitle="" button_text="" button_link="" button_size="small" button_color="orange"]Your content goes here... [/dt_progress_chart]\n[/dt_sc_code]', 'Progress Bars', '', 'publish', 'open', 'closed', '', 'progress-bars', '', '', '2013-07-11 09:58:33', '2013-07-11 09:58:33', '', 4296, 'http://localhost/dt-sushi/?page_id=189', 0, 'page', '', 0),
(191, 1, '2013-07-11 10:07:09', '2013-07-11 10:07:09', '[dt_hr_title tag="h2"]Introtext[/dt_hr_title]\n[dt_intro_text type=''type1'']\n<h4>We are Helping the way we can. Appreciate some donation for these Children.</h4>\n<h5>Come Experience the real life situations of saving life</h5>\n[dt_join_button currency=''$'' link=''http://wedesignthemes.com/themes/dt-guru/shortcodes/pricing-table/'']Join Now[/dt_join_button]\n[/dt_intro_text]\n\n[dt_sc_hr_invisible]\n[dt_intro_text type="type1" class="with-bg"]\n<h4>We are Helping the way we can. Appreciate some donation for these Children.</h4>\n<h5>Come Experience the real life situations of saving life</h5>\n[dt_join_button currency=''$'' link=''http://wedesignthemes.com/themes/dt-guru/shortcodes/pricing-table/'']Join Now[/dt_join_button]\n[/dt_intro_text]\n[dt_sc_hr_invisible]\n[dt_intro_text type="type2"]\n<h2>GURU - A Learning Management WP Theme</h2>\n[dt_sc_four_fifth first]\n\nRoin a bibendum nibh. Nunc fermentum sit amet mi nec. Praesent porttitor nulla sit amet dui lobortis. Nunc fermentum sit amet mi nec consequat. Praesent porttitor nulla sit amet dui lobortis, id venenatis nibh.\n\n[/dt_sc_four_fifth]\n[dt_sc_one_fifth][dt_sc_button size="small" link="http://themeforest.net/item/kids-zone-responsive-children-theme/6787343?ref=designthemes"]Purchase Theme[/dt_sc_button][/dt_sc_one_fifth]\n[/dt_intro_text]\n\n[dt_sc_hr_invisible]\n[dt_intro_text type=''type3'']\n<h2>Looking to Join Now - "Just $10"</h2>\n[dt_sc_four_fifth first]\n\nQuisque tincidunt id nunc nec commodo. Nulla eu cursus libero. Vivamus porttitor vehicula sem, sed tincidunt augue euismod in. Phasellus lorem augue, vulputate vel orci id, ultricies aliquet risus. Sed cursus ipsum vitae justo scelerisque, ac viverra tellus eleifend.\n\n[/dt_sc_four_fifth]\n[dt_sc_one_fifth]\n[dt_sc_button link="#" size="medium" align="center" target="_blank"]Join Now[/dt_sc_button]\n[/dt_sc_one_fifth]\n[/dt_intro_text]\n\n[dt_sc_hr_invisible]\n\n[dt_intro_text type=''type4'']\n<h2>Looking to Join Now - "Just $20"</h2>\n[dt_sc_four_fifth first]\n\nQuisque tincidunt id nunc nec commodo. Nulla eu cursus libero. Vivamus porttitor vehicula sem, sed tincidunt augue euismod in. Phasellus lorem augue, vulputate vel orci id, ultricies aliquet risus. Sed cursus ipsum vitae justo scelerisque, ac viverra tellus eleifend.\n\n[/dt_sc_four_fifth]\n[dt_sc_one_fifth]\n[dt_sc_button link="#" size="medium" align="center" target="_blank"]Join Now[/dt_sc_button]\n[/dt_sc_one_fifth]\n[/dt_intro_text]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_intro_text type='''']Your content goes here…[/dt_intro_text]\n[/dt_sc_code]\n[dt_sc_one_half first]\n<h5>Available Types</h5>\n<ul>\n	<li>type1</li>\n	<li>type2</li>\n	<li>type3</li>\n	<li>type4</li>\n</ul>\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<h5>Available class</h5>\n<ul>\n	<li>with-bg</li>\n</ul>\n[/dt_sc_one_half]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Team[/dt_hr_title]\n\n[dt_sc_team limit=''4'' columns=''4'' /]\n\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_team limit="4" columns="3" role="yes" /]\n[/dt_sc_code]\n\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]ToolTip[/dt_hr_title]\n[dt_sc_one_fourth first][dt_sc_tooltip type="boxed" position="top" tooltip="Some Text" href="#" target="_blank"]ToolTip in Top[/dt_sc_tooltip] [/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_tooltip type="boxed" position="right" tooltip="Some Text" href="#" target="_blank"]ToolTip in Right[/dt_sc_tooltip][/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_tooltip type="boxed" position="bottom" tooltip="Some Text" href="#" target="_blank"]ToolTip in Bottom[/dt_sc_tooltip][/dt_sc_one_fourth]\n[dt_sc_one_fourth][dt_sc_tooltip type="boxed" position="left" tooltip="Some Text" href="#" target="_blank"]ToolTip in Left[/dt_sc_tooltip][/dt_sc_one_fourth]\n\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_tooltip type="boxed" position="top" bgcolor="#1ec3c9" textcolor="#ffffff" tooltip="Some Text" href="#" target="_blank"]ToolTip in Top[/dt_sc_tooltip]\n[/dt_sc_code]\n\n<strong>Attributes:</strong>\n<ul>\n	<li>Position - top, left, right, bottom</li>\n	<li>Type - default, boxed</li>\n</ul>\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]White Spaces[/dt_hr_title]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr_invisible]\n[/dt_sc_code]\n[dt_sc_hr_invisible_medium]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr_invisible_medium]\n[/dt_sc_code]\n[dt_sc_hr_invisible_large]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr_invisible_large]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Dividers[/dt_hr_title]\n[dt_sc_hr]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr]\n[/dt_sc_code]\n[dt_sc_hr_medium]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr_medium]\n[/dt_sc_code]\n[dt_sc_hr_large]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr_large]\n[/dt_sc_code]\n[dt_sc_hr top]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_hr top]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Services[/dt_hr_title]\n[dt_sc_one_fourth first][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico1.png'' title=''We Coach Easy'' subtitle=''Learn the best Way'']Sit voluptatem accusantium doloremque laudantium, totam rem aperiam.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico2.png'' title=''Creative Course'' subtitle=''Creative Coaching'']Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico3.png'' title=''Innovative Idea'' subtitle=''Design your Course'']Accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico4.png'' title=''Trained Facility'' subtitle=''Get Everything Right'']Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.[/dt_theme_service][/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_theme_service icon_url=''http://imageiconurl.com'' title=''Some Title'' subtitle=''Some Sub Title'']Put Your Content[/dt_theme_service]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Recent Blog[/dt_hr_title]\n[dt_blog_posts excerpt_length=''20'' limit=''2'' posts_column=''one-half-column''/]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_blog_posts show_feature_image=''true'' excerpt_length=''20'' show_meta=''true'' limit=''2'' categories=''5'' posts_column=''one-half-column''/][/dt_sc_code]\n<strong>Available Posts Column:</strong>\n<ul>\n	<li>one-column</li>\n	<li>one-half-column</li>\n</ul>\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Gallery[/dt_hr_title]\n[dt_gallery_items limit=''4'' posts_column=''one-fourth-column'' posts_design=''default'' filter=''true'' categories=''25,28''/]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_gallery_items limit=''4'' posts_column=''one-fourth-column'' posts_design=''shape-three'' filter=''true'' categories=''25,28''/][/dt_sc_code]\n[dt_sc_one_third first]\n<strong>Available Posts Column:</strong>\n<ul>\n	<li>one-half-column</li>\n	<li>one-third-column</li>\n	<li>one-fourth-column</li>\n</ul>\n[/dt_sc_one_third]\n[dt_sc_two_third]\n<strong>Available Posts Design:</strong>\n<ul>\n	<li>default</li>\n	<li>shape-one</li>\n	<li>shape-two &amp; shape-three</li>\n</ul>\n[/dt_sc_two_third]\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Contact Form[/dt_hr_title]\n[dt_contact_form /]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_contact_form to_email=''By default admin email'' success_msg=''Thanks for Contacting Us, We will call back to you soon.'' error_msg=''Sorry your message not sent, Try again Later.'' /]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Meeting Hours[/dt_hr_title]\n[dt_sc_one_half first]\n[dt_working_hours title=''Monday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Tuesday:'' text=''12 pm - 5 pm'' /]\n[dt_working_hours title=''Wednesday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Thursday:'' text=''12 pm - 5 pm'' /]\n[dt_working_hours title=''Friday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Saturday:'' text=''Holiday'' /]\n[dt_working_hours title=''Sunday:'' text=''10 am - 5 pm'' /]\n[/dt_sc_one_half]\n[dt_sc_one_half]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_working_hours title=''Monday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Tuesday:'' text=''12 pm - 5 pm'' /]\n[dt_working_hours title=''Wednesday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Thursday:'' text=''12 pm - 5 pm'' /]\n[dt_working_hours title=''Friday:'' text=''10 am - 12 pm'' /]\n[dt_working_hours title=''Saturday:'' text=''Holiday'' /]\n[dt_working_hours title=''Sunday:'' text=''10 am - 5 pm'' /]\n[/dt_sc_code]\n[/dt_sc_one_half]', 'Miscellaneous', '', 'publish', 'open', 'closed', '', 'miscellaneous', '', '', '2013-07-11 10:07:09', '2013-07-11 10:07:09', '', 4296, 'http://localhost/dt-sushi/?page_id=191', 0, 'page', '', 0),
(252, 1, '2013-07-11 12:53:38', '2013-07-11 12:53:38', '[dt_hr_title tag="h2"]Pricing Table - Option1[/dt_hr_title]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_one_fourth first]\n[dt_sc_pricing_table_item variation=''gold'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' selected]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''green'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''blue'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''pink'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[/dt_sc_pricing_table]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_one_third first]\n[dt_sc_pricing_table_item variation=''green'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' selected]\n<ul>\n	<li>Text</li>\n	<li>Text</li>\n	<li>Text</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_pricing_table_item variation=''green'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>Text</li>\n	<li>Text</li>\n	<li>Text</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_pricing_table_item variation=''green'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>Text</li>\n	<li>Text</li>\n	<li>Text</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_third]\n\n[/dt_sc_pricing_table]\n[/dt_sc_code]\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Pricing Table - Option2[/dt_hr_title]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_one_fourth first]\n[dt_sc_pricing_table_item variation=''gold'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' selected]\n[dt_pricing_round_text heading=''Full Circle'' midtitle=''2 Person'' text=''Gift your loved ones a dinner at affordable price'' /]\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''green'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n[dt_pricing_round_text heading=''Full Circle'' midtitle=''2 Person'' text=''Gift your loved ones a dinner at affordable price'' /]\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''blue'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n[dt_pricing_round_text heading=''Full Circle'' midtitle=''2 Person'' text=''Gift your loved ones a dinner at affordable price'' /]\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item variation=''pink'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n[dt_pricing_round_text heading=''Full Circle'' midtitle=''2 Person'' text=''Gift your loved ones a dinner at affordable price'' /]\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[/dt_sc_pricing_table]\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_pricing_table_item variation=''pink'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n[dt_pricing_round_text heading=''Full Circle'' midtitle=''2 Person'' text=''Gift your loved ones a dinner at affordable price'' /]\n[/dt_sc_pricing_table_item]\n[/dt_sc_pricing_table_item]\n[/dt_sc_code]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag=''h2'']Pricing Table – Option3[/dt_hr_title]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_one_fourth first]\n[dt_sc_pricing_table_item title=''Summer Special'' thumb=''http://placehold.it/300x200'' variation=''gold'' heading=''Offer'' price=''2'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' selected]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item title=''Summer Special Plus'' thumb=''http://placehold.it/300x200''  variation=''green'' heading=''Offer'' price=''9'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item title=''Summer Special Exclusive'' thumb=''http://placehold.it/300x200'' variation=''blue'' heading=''Offer'' price=''14'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_sc_pricing_table_item title=''Summer Special Ultra'' thumb=''http://placehold.it/300x200'' variation=''pink'' heading=''Offer'' price=''20'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ]\n<ul>\n	<li>3 Hard Copy Books </li>\n	<li>Attractive Video CD''s</li>\n	<li>In-plant Training</li>\n	<li>Single domain project</li>\n</ul>\n[/dt_sc_pricing_table_item]\n[/dt_sc_one_fourth]\n[/dt_sc_pricing_table]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_pricing_table type =" type1"]\n[dt_sc_pricing_table_item variation=''pink'' heading=''Offer'' price=''5'' price2=''.99'' button_text=''Join Now'' button_link=''#'' button_size=''small'' ][/dt_sc_pricing_table_item]\n\n[/dt_sc_pricing_table]\n[/dt_sc_code]', 'Pricing Table', '', 'publish', 'open', 'closed', '', 'pricing-table', '', '', '2013-07-11 12:53:38', '2013-07-11 12:53:38', '', 4296, 'http://localhost/dt-sushi/?page_id=252', 0, 'page', '', 0),
(256, 1, '2013-07-11 13:36:20', '2013-07-11 13:36:20', '[dt_hr_title tag="h2"]Heading[/dt_hr_title]\n<h1>H1 : Lorem ipsum dolor sit amet</h1>\n<h2>H2 : Lorem ipsum dolor sit amet</h2>\n<h3>H3 : Lorem ipsum dolor sit amet</h3>\n<h4>H4 : Lorem ipsum dolor sit amet</h4>\n<h5>H5 : Lorem ipsum dolor sit amet</h5>\n<h6>H6 : Lorem ipsum dolor sit amet</h6>\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Tables[/dt_hr_title]\n<table>\n<thead>\n<tr>\n<th>Header1</th>\n<th>Header2</th>\n<th>Header3</th>\n<th>Header4</th>\n<th>Header5</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Division1</td>\n<td>Division2</td>\n<td>Division3</td>\n<td>Division4</td>\n<td>Division5</td>\n</tr>\n<tr>\n<td>Division1</td>\n<td>Division2</td>\n<td>Division3</td>\n<td>Division4</td>\n<td>Division5</td>\n</tr>\n<tr>\n<td>Division1</td>\n<td>Division2</td>\n<td>Division3</td>\n<td>Division4</td>\n<td>Division5</td>\n</tr>\n<tr>\n<td>Division1</td>\n<td>Division2</td>\n<td>Division3</td>\n<td>Division4</td>\n<td>Division5</td>\n</tr>\n</tbody>\n</table>\n[dt_sc_hr_invisible]\n[dt_hr_title tag="h2"]Image Alignments[/dt_hr_title]\n<img class="alignleft size-full" alt="placehold" src="http://placehold.it/220x160/bab8b8/ffffff/&amp;text=Left%20Align" />\n\nNunc lectus turpis, interdum ac iaculis ac, rutrum id nisl. Vestibulum blandit blandit eros ac sodales. Curabitur quis vehicula eros, vitae sagittis felis. Nullam sollicitudin dui vel mi vehicula, id tempus sem fringilla. Fusce facilisis, urna in dictum tempor, augue libero sodales nisl, at cursus justo felis quis magna. Vivamus posuere vulputate rutrum. Sed quam sapien, accumsan vitae massa ac, vestibulum volutpat diam. Integer id metus est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec at dictum neque, in mattis tortor. Integer nunc urna, iaculis ullamcorper mi a, aliquet sodales augue. Praesent non vulputate nibh, ut cursus ante. Sed eu volutpat urna. Donec est tellus, tristique eu elit eget, iaculis consequat risus. Maecenas consequat posuere lobortis.\n\n<img class="alignright size-full" alt="placehold" src="http://placehold.it/220x160/bab8b8/ffffff/&amp;text=Right%20Align" />\n\nDuis eu leo tristique, consectetur dolor quis, ullamcorper massa. Duis ac massa iaculis, convallis mauris ornare, congue lectus. Sed pretium feugiat odio sed sollicitudin. Phasellus id interdum lectus, sed bibendum enim. Suspendisse ullamcorper libero ipsum, id laoreet nisi mattis in. Suspendisse gravida dolor vitae iaculis sagittis. Vestibulum congue hendrerit massa, et rhoncus enim. Vestibulum congue hendrerit massa, et rhoncus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent ut vulputate purus, in ultricies massa. Curabitur vestibulum leo vel tortor iaculis tempor. Aenean varius leo in quam accumsan, convallis adipiscing orci tincidunt.\n\n[caption id="attachment_1" align="alignleft" width="220"]<img class="size-full wp-image-1" alt="support" src="http://placehold.it/220x160/bab8b8/ffffff/&amp;text=Left%20Align" width="220" height="160" /> Left Align with Caption[/caption]\n\nNunc lectus turpis, interdum ac iaculis ac, rutrum id nisl. Vestibulum blandit blandit eros ac sodales. Curabitur quis vehicula eros, vitae sagittis felis. Nullam sollicitudin dui vel mi vehicula, id tempus sem fringilla. Fusce facilisis, urna in dictum tempor, augue libero sodales nisl, at cursus justo felis quis magna. Vivamus posuere vulputate rutrum. Sed quam sapien, accumsan vitae massa ac, vestibulum volutpat diam. Integer id metus est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec at dictum neque, in mattis tortor. Integer nunc urna, iaculis ullamcorper mi a, aliquet sodales augue. Praesent non vulputate nibh, ut cursus ante. Sed eu volutpat urna. Donec est tellus, tristique eu elit eget, iaculis consequat risus. Maecenas consequat posuere lobortis.\n\nDonec diam lorem, interdum eget tortor nec, fringilla hendrerit orci. Mauris felis sem, posuere pulvinar sodales at, aliquet interdum eros. Etiam erat nunc, sodales vel diam quis, cursus euismod odio. Cras tincidunt vulputate tincidunt. Sed eleifend a diam sit amet rhoncus. Aliquam erat volutpat. Sed hendrerit sapien mauris.\n\n[caption id="attachment_1" align="alignright" width="220"]<img class="size-full wp-image-1" alt="support" src="http://placehold.it/220x160/bab8b8/ffffff/&amp;text=Right%20Align" width="220" height="160" /> Right Align with Caption[/caption]\n\nDuis eu leo tristique, consectetur dolor quis, ullamcorper massa. Duis ac massa iaculis, convallis mauris ornare, congue lectus. Sed pretium feugiat odio sed sollicitudin. Phasellus id interdum lectus, sed bibendum enim. Suspendisse ullamcorper libero ipsum, id laoreet nisi mattis in. Suspendisse gravida dolor vitae iaculis sagittis. Vestibulum congue hendrerit massa, et rhoncus enim. Vestibulum congue hendrerit massa, et rhoncus enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent ut vulputate purus, in ultricies massa. Curabitur vestibulum leo vel tortor iaculis tempor. Aenean varius leo in quam accumsan, convallis adipiscing orci tincidunt.\n\n<!--nextpage-->\nSed eget urna ac nibh consectetur porttitor a id lorem. In a congue turpis. In hac habitasse platea dictumst. Sed facilisis, eros sed pharetra hendrerit, urna ligula sodales lectus, ut dignissim justo ante quis orci. Donec imperdiet mauris ac massa ultrices, tristique hendrerit diam eleifend. Fusce vehicula nec erat semper posuere. Nulla facilisi. Nullam nec tempus neque. Fusce ut pulvinar lectus, vitae dignissim elit. Proin est neque, interdum vitae tempor sit amet, cursus non libero.\n<!--nextpage-->', 'Typography', '', 'publish', 'open', 'closed', '', 'typography', '', '', '2013-07-11 13:36:20', '2013-07-11 13:36:20', '', 4296, 'http://localhost/dt-sushi/?page_id=256', 0, 'page', '', 0),
(1484, 1, '2013-07-13 08:07:08', '2013-07-13 02:37:08', '', 'News Two Column', '', 'publish', 'open', 'closed', '', 'news-two-column', '', '', '2013-07-13 08:07:08', '2013-07-13 02:37:08', '', 4295, 'http://localhost/dt-sushi/?page_id=1484', 0, 'page', '', 0),
(1486, 1, '2013-07-13 08:07:31', '2013-07-13 02:37:31', '', 'News Two Column with Left Sidebar', '', 'publish', 'open', 'closed', '', 'news-two-column-with-left-sidebar', '', '', '2013-07-13 08:07:31', '2013-07-13 02:37:31', '', 4295, 'http://localhost/dt-sushi/?page_id=1486', 0, 'page', '', 0),
(1488, 1, '2013-07-13 08:07:59', '2013-07-13 02:37:59', '', 'News Two Column with Right Sidebar', '', 'publish', 'open', 'closed', '', 'news-two-column-with-right-sidebar', '', '', '2013-07-13 08:07:59', '2013-07-13 02:37:59', '', 4295, 'http://localhost/dt-sushi/?page_id=1488', 0, 'page', '', 0),
(1490, 1, '2013-07-13 08:08:40', '2013-07-13 02:38:40', '', 'News One Column', '', 'publish', 'open', 'closed', '', 'news-one-column', '', '', '2013-07-13 08:08:40', '2013-07-13 02:38:40', '', 4295, 'http://localhost/dt-sushi/?page_id=1490', 0, 'page', '', 0),
(1492, 1, '2013-07-13 08:09:19', '2013-07-13 02:39:19', '', 'News One Column with Left Sidebar', '', 'publish', 'open', 'closed', '', 'news-one-column-with-left-sidebar', '', '', '2013-07-13 08:09:19', '2013-07-13 02:39:19', '', 4295, 'http://localhost/dt-sushi/?page_id=1492', 0, 'page', '', 0),
(1494, 1, '2013-07-13 08:10:00', '2013-07-13 02:40:00', '', 'News One Column with Right Sidebar', '', 'publish', 'open', 'closed', '', 'news-one-column-with-right-sidebar', '', '', '2013-07-13 08:10:00', '2013-07-13 02:40:00', '', 4295, 'http://localhost/dt-sushi/?page_id=1494', 0, 'page', '', 0),
(1765, 1, '2013-07-18 04:38:32', '2013-07-17 23:08:32', 'Cras venenatis erat ac massa ultricies, sollicitudin ullamcorper justo elementum. Donec eu molestie odio, et congue enim. Maecenas pharetra lorem eu viverra aliquam. Vivamus commodo congue tortor sed laoreet. Nunc nibh dolor, rutrum nec velit sed, dapibus vulputate felis. Duis eget diam quis leo sodales auctor ut sed ligula. Fusce ultrices iaculis velit. Nam laoreet dictum adipiscing. Duis id felis condimentum, suscipit risus sed, vehicula neque. Phasellus et blandit lectus. Ut aliquam elit vitae mi consectetur, non scelerisque tortor imperdiet. Donec tellus nibh, pulvinar in ornare et, blandit eget magna.', 'Five Tricks to Creating E-Learning', '', 'publish', 'closed', 'closed', '', 'five-tricks-to-creating-e-learning', '', '', '2013-07-18 04:38:32', '2013-07-17 23:08:32', '', 0, 'http://localhost/dt-sushi/?p=1765', 0, 'post', '', 0),
(1933, 1, '2013-07-20 11:31:51', '2013-07-20 06:01:51', 'Roin bibendum nibhsds. Nuncsdsd fermdada msit ametadasd consequat. Praes porr nulla sit amet dui lobortis, id venenatis nibh accumsan. Nam ut volutpat tortor. Quisque eu pretium mauris. Nam sit amet est at risus suscipit cursus in non elit. Aliquam suscipit ipsum at neque posuere viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce condimentum, nibh nec dapibus eleifend, quam enim interdum lacus, at euismod lacus nibh in elit. Integer mollis ullamcorper luctus. Morbi lacus leo, ullamcorper id metus non, sollicitudin fringilla justo.', 'Top 6 E-Learning Design Mistakes', '', 'publish', 'open', 'open', '', 'top-6-e-learning-design-mistakes', '', '', '2013-07-20 11:31:51', '2013-07-20 06:01:51', '', 0, 'http://localhost/dt-sushi/?p=1933', 0, 'post', '', 3),
(2382, 1, '2013-11-15 08:15:01', '2013-11-15 08:15:01', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]', 'Shop Four Column', '', 'publish', 'open', 'open', '', 'shop-four-column', '', '', '2013-11-15 08:15:01', '2013-11-15 08:15:01', '', 45, 'http://localhost/dt-sushi/?page_id=2382', 0, 'page', '', 0),
(2385, 1, '2013-11-15 08:16:52', '2013-11-15 08:16:52', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]', 'Shop Four Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'shop-four-column-with-left-sidebar', '', '', '2013-11-15 08:16:52', '2013-11-15 08:16:52', '', 45, 'http://localhost/dt-sushi/?page_id=2385', 0, 'page', '', 0),
(2387, 1, '2013-11-15 08:17:34', '2013-11-15 08:17:34', '[recent_products per_page="12" columns="4" orderby="date" order="desc"]', 'Shop Four Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'shop-four-column-with-right-sidebar', '', '', '2013-11-15 08:17:34', '2013-11-15 08:17:34', '', 45, 'http://localhost/dt-sushi/?page_id=2387', 0, 'page', '', 0),
(2389, 1, '2013-11-15 08:18:42', '2013-11-15 08:18:42', '[recent_products per_page="9" columns="3" orderby="date" order="desc"]', 'Shop Three Column', '', 'publish', 'open', 'open', '', 'shop-three-column', '', '', '2013-11-15 08:18:42', '2013-11-15 08:18:42', '', 45, 'http://localhost/dt-sushi/?page_id=2389', 0, 'page', '', 0),
(2391, 1, '2013-11-15 08:21:22', '2013-11-15 08:21:22', '[recent_products per_page="9" columns="3" orderby="date" order="desc"]', 'Shop Three Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'shop-three-column-with-left-sideber', '', '', '2013-11-15 08:21:22', '2013-11-15 08:21:22', '', 45, 'http://localhost/dt-sushi/?page_id=2391', 0, 'page', '', 0),
(2393, 1, '2013-11-15 08:22:02', '2013-11-15 08:22:02', '[recent_products per_page="9" columns="3" orderby="date" order="desc"]', 'Shop Three Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'shop-three-column-with-right-sidebar', '', '', '2013-11-15 08:22:02', '2013-11-15 08:22:02', '', 45, 'http://localhost/dt-sushi/?page_id=2393', 0, 'page', '', 0),
(2395, 1, '2013-11-15 08:22:48', '2013-11-15 08:22:48', '[recent_products per_page="6" columns="2" orderby="date" order="desc"]', 'Shop Two Column', '', 'publish', 'closed', 'closed', '', 'shop-two-column', '', '', '2013-11-15 08:22:48', '2013-11-15 08:22:48', '', 45, 'http://localhost/dt-sushi/?page_id=2395', 0, 'page', '', 0),
(2397, 1, '2013-11-15 08:23:42', '2013-11-15 08:23:42', '[recent_products per_page="6" columns="2" orderby="date" order="desc"]', 'Shop Two Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'shop-two-column-with-left-sidebar', '', '', '2013-11-15 08:23:42', '2013-11-15 08:23:42', '', 45, 'http://localhost/dt-sushi/?page_id=2397', 0, 'page', '', 0),
(2399, 1, '2013-11-15 08:24:17', '2013-11-15 08:24:17', '[recent_products per_page="6" columns="2" orderby="date" order="desc"]', 'Shop Two Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'shop-two-column-with-right-sidebar', '', '', '2013-11-15 08:24:17', '2013-11-15 08:24:17', '', 45, 'http://localhost/dt-sushi/?page_id=2399', 0, 'page', '', 0),
(2645, 1, '2013-12-28 11:08:06', '2013-12-28 05:38:06', 'Curabitur cursus adipiscing dignissim. Integer sed ultricies ipsum. Cras sollicitudin metus est, id blandit nulla bibendum ac. Vivamus fermentum hendrerit interdum. Nunc velit metus, faucibus id erat ac, semper cursus quam. Integer scelerisque nibh nec tellus porttitor, sed lacinia purus sagittis. Curabitur et venenatis arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eget risus consequat, gravida mauris non, aliquet magna. Aliquam erat volutpat.', 'CRM Integration', '', 'publish', 'open', 'closed', '', 'crm-integration', '', '', '2013-12-28 11:08:06', '2013-12-28 05:38:06', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2645', 0, 'dt_galleries', '', 0),
(2647, 1, '2013-12-28 11:45:29', '2013-12-28 06:15:29', 'Sed vel felis commodo, aliquam ipsum eget, mattis lacus. Integer faucibus orci at odio faucibus, ac tincidunt risus accumsan. Mauris auctor nec lacus vitae rhoncus. Donec congue ante quis fermentum blandit. Sed consectetur viverra ipsum nec dignissim. Aliquam erat volutpat.', 'Training all Over', '', 'publish', 'open', 'closed', '', 'training-all-over', '', '', '2013-12-28 11:45:29', '2013-12-28 06:15:29', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2647', 0, 'dt_galleries', '', 0),
(2648, 1, '2013-12-28 11:46:26', '2013-12-28 06:16:26', 'Nunc tortor est, laoreet id tempor tincidunt, scelerisque et tortor. Maecenas sodales vitae est at gravida. Etiam aliquam lectus et cursus suscipit. Ut dui risus, lacinia eu magna sit amet, suscipit luctus neque. Praesent aliquet convallis massa, vel aliquet orci elementum nec. Sed vel felis commodo, aliquam ipsum eget, mattis lacus.', 'Reporting Tools', '', 'publish', 'open', 'closed', '', 'reporting-tools', '', '', '2013-12-28 11:46:26', '2013-12-28 06:16:26', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2648', 0, 'dt_galleries', '', 0),
(2649, 1, '2013-12-28 11:47:15', '2013-12-28 06:17:15', 'Maecenas sodales vitae est at gravida. Etiam aliquam lectus et cursus suscipit. Ut dui risus, lacinia eu magna sit amet, suscipit luctus neque. Praesent aliquet convallis massa, vel aliquet orci elementum nec. Sed vel felis commodo, aliquam ipsum eget, mattis lacus. Integer faucibus orci at odio faucibus, ac tincidunt risus accumsan. Mauris auctor nec lacus vitae rhoncus.', 'Social Learning', '', 'publish', 'open', 'closed', '', 'social-learning', '', '', '2013-12-28 11:47:15', '2013-12-28 06:17:15', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2649', 0, 'dt_galleries', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2650, 1, '2013-12-28 11:48:03', '2013-12-28 06:18:03', 'Nunc semper pretium enim, eu iaculis leo hendrerit id. Phasellus sit amet mi accumsan, aliquam nisl eget, porttitor nisi. Aenean iaculis eget lacus non posuere. Etiam nec nisl ut risus ullamcorper sollicitudin. Fusce dapibus egestas nibh eu semper. Sed bibendum urna at odio vulputate, eu tristique turpis sollicitudin. Duis eget est rhoncus, tristique massa at, dapibus lacus.', 'Face to Face Training', '', 'publish', 'open', 'closed', '', 'face-to-face-training', '', '', '2013-12-28 11:48:03', '2013-12-28 06:18:03', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2650', 0, 'dt_galleries', '', 0),
(2651, 1, '2013-12-28 11:49:18', '2013-12-28 06:19:18', 'Aenean congue nibh tortor, et ultricies ligula blandit at. Nam quis arcu eu orci vestibulum dictum in non est. Nullam eu lacinia mi. Etiam dapibus eleifend vestibulum. Maecenas egestas lobortis porttitor. Nunc semper pretium enim, eu iaculis leo hendrerit id. Phasellus sit amet mi accumsan, aliquam nisl eget, porttitor nisi. Aenean iaculis eget lacus non posuere. Etiam nec nisl ut risus ullamcorper sollicitudin.', 'Content Management', '', 'publish', 'open', 'closed', '', 'content-management', '', '', '2013-12-28 11:49:18', '2013-12-28 06:19:18', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2651', 0, 'dt_galleries', '', 0),
(2652, 1, '2013-12-28 11:51:41', '2013-12-28 06:21:41', 'Curabitur ullamcorper odio ipsum, eget dictum lorem dapibus et. Aenean semper lacus dui, non mollis mauris posuere ac. In porttitor, neque ut faucibus rhoncus, magna tortor fringilla mauris, et faucibus diam ipsum volutpat quam. Aenean a urna luctus, semper enim et, blandit diam. Vivamus non laoreet erat.', 'Learning Plans', '', 'publish', 'open', 'closed', '', 'learning-plans', '', '', '2013-12-28 11:51:41', '2013-12-28 06:21:41', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2652', 0, 'dt_galleries', '', 0),
(2653, 1, '2013-12-28 11:51:16', '2013-12-28 06:21:16', 'Phasellus faucibus, ligula at accumsan luctus, quam erat interdum magna, in iaculis nibh dolor vel ante. Mauris egestas metus sed viverra vehicula. Suspendisse at pharetra mauris. Cras eu odio consectetur, scelerisque nunc quis, sollicitudin eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Team Management', '', 'publish', 'open', 'closed', '', 'team-management', '', '', '2013-12-28 11:51:16', '2013-12-28 06:21:16', '', 0, 'http://wedesignthemes.com/themes/dummy-sushi/?post_type=dt_galleries&amp;p=2653', 0, 'dt_galleries', '', 0),
(2656, 1, '2013-12-28 12:15:45', '2013-12-28 12:15:45', '', 'Gallery Four Column', '', 'publish', 'open', 'open', '', 'gallery-four-column', '', '', '2013-12-28 12:15:45', '2013-12-28 12:15:45', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2656', 0, 'page', '', 0),
(2658, 1, '2013-12-28 12:16:27', '2013-12-28 12:16:27', '', 'Gallery Four Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'gallery-four-column-with-left-sidebar', '', '', '2013-12-28 12:16:27', '2013-12-28 12:16:27', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2658', 0, 'page', '', 0),
(2660, 1, '2013-12-28 12:16:59', '2013-12-28 12:16:59', '', 'Gallery Four Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'gallery-four-column-with-right-sidebar', '', '', '2013-12-28 12:16:59', '2013-12-28 12:16:59', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2660', 0, 'page', '', 0),
(2662, 1, '2013-12-28 12:17:38', '2013-12-28 12:17:38', '', 'Gallery Three Column', '', 'publish', 'open', 'open', '', 'gallery-three-column', '', '', '2013-12-28 12:17:38', '2013-12-28 12:17:38', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2662', 0, 'page', '', 0),
(2664, 1, '2013-12-28 12:18:14', '2013-12-28 12:18:14', '', 'Gallery Three Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'gallery-three-column-with-left-sidebar', '', '', '2013-12-28 12:18:14', '2013-12-28 12:18:14', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2664', 0, 'page', '', 0),
(2666, 1, '2013-12-28 12:18:55', '2013-12-28 12:18:55', '', 'Gallery Three Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'gallery-three-column-with-right-sidebar', '', '', '2013-12-28 12:18:55', '2013-12-28 12:18:55', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2666', 0, 'page', '', 0),
(2668, 1, '2013-12-28 12:19:43', '2013-12-28 12:19:43', '', 'Gallery Two Column', '', 'publish', 'open', 'open', '', 'gallery-two-column', '', '', '2013-12-28 12:19:43', '2013-12-28 12:19:43', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2668', 0, 'page', '', 0),
(2670, 1, '2013-12-28 12:20:17', '2013-12-28 12:20:17', '', 'Gallery Two Column with Left Sidebar', '', 'publish', 'open', 'open', '', 'gallery-two-column-with-left-sidebar', '', '', '2013-12-28 12:20:17', '2013-12-28 12:20:17', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2670', 0, 'page', '', 0),
(2672, 1, '2013-12-28 12:20:50', '2013-12-28 12:20:50', '', 'Gallery Two Column with Right Sidebar', '', 'publish', 'open', 'open', '', 'gallery-two-column-with-right-sidebar', '', '', '2013-12-28 12:20:50', '2013-12-28 12:20:50', '', 4298, 'http://wedesignthemes.com/themes/dummy-sushi/?page_id=2672', 0, 'page', '', 0),
(2716, 1, '2013-12-28 07:23:23', '2013-12-28 01:53:23', 'Vestibulum nec mollis diam, a rutrum metus. In nunc felis, consequat ac felis sed, adipiscing fermentum massa. Vestibulum fermentum tortor sed imperdiet pharetra. Praesent blandit ultrices felis sit amet auctor. Maecenas pellentesque, lectus in commodo volutpat, sapien magna euismod dolor, ut iaculis dolor sem at massa.', 'Higher Education', '', 'publish', 'open', 'closed', '', 'higher-education', '', '', '2013-12-28 07:23:23', '2013-12-28 01:53:23', '', 0, 'http://localhost/dt-sushi/?post_type=dt_galleries&amp;p=2716', 0, 'dt_galleries', '', 0),
(2727, 1, '2013-07-21 11:19:17', '2013-07-21 05:49:17', 'Nam faucibus imperdiet lacus, vitae dictum leo elementum non. Curabitur sed condimentum velit. Nunc tempor velit at purus mollis venenatis. In hendrerit gravida urna ac congue. Sed fermentum a ipsum non ultricies. Sed quis porttitor nulla, ut dignissim eros. Suspendisse ultricies mauris in arcu commodo, sagittis convallis ante pharetra. Phasellus pharetra odio lorem, ac adipiscing eros ultricies ac. Vivamus ut dui luctus, vestibulum lectus nec, malesuada ligula. Pellentesque tempus, nisi eget accumsan euismod, nisl urna gravida augue, vel pulvinar enim est sed magna.\n<!--nextpage-->\nPhasellus pharetra odio lorem, ac adipiscing eros ultricies ac. Vivamus ut dui luctus, vestibulum lectus nec, malesuada ligula. Pellentesque tempus, nisi eget accumsan euismod, nisl urna gravida augue, vel pulvinar enim est sed magna.', 'Corporate Training Myths', '', 'publish', 'open', 'open', '', 'corporate-training-myths', '', '', '2013-07-21 11:19:17', '2013-07-21 05:49:17', '', 0, 'http://localhost/dt-sushi/?p=19', 0, 'post', '', 0),
(2728, 1, '2013-07-20 11:32:58', '2013-07-20 06:02:58', 'Roin a bibendum nibh. Nunc fermentum sit amet mi nec consequat. Praesent porttitor nulla sit amet dui sembre ka lobortis. Can this will get through yes it does. It was popularised in the 1960s , publishing software like Aldus PageMaker including versions of Lorem Ipsum.. Integer cursus eros eu ullamcorper faucibus.\n<h4>Training Time</h4>\n[dt_sc_two_third first]\n\n[dt_sc_fancy_ul style="rounded-arrow" variation="grey"]\n<ul>\n	<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\n	<li>Morbi vel ante et orci vulputate malesuada ut eu mi.</li>\n	<li>Nam mollis purus sed felis mattis semper.</li>\n	<li>Proin nec massa quis enim blandit placerat sed non nisi.</li>\n</ul>\n[/dt_sc_fancy_ul]\n\n[/dt_sc_two_third]\n\n[dt_sc_one_third]\n\n<img class="aligncenter size-full wp-image-2955" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/07/blog-img.gif" alt="Sun" width="136" height="111" />\n\n[/dt_sc_one_third]\n<span style="line-height: 1.5em;">[dt_sc_blockquote align="center" cite="John"]At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.[/dt_sc_blockquote]</span>\n\nNam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.', 'The Beginner’s Design Toolkit', '', 'publish', 'open', 'open', '', 'the-beginners-design-toolkit', '', '', '2013-07-20 11:32:58', '2013-07-20 06:02:58', '', 0, 'http://localhost/dt-sushi/?p=24', 0, 'post', '', 6),
(2729, 1, '2013-07-20 11:35:30', '2013-07-20 06:05:30', 'Cras venenatis erat ac massa ultricies, sollici tudin ullamc orper justo elementum. Donec eu molestie odio, et congue enim. Maecenas pharetra lorem eu viverra aliquam. Vivamus commodo congue tortor sed laoreet. Nunc nibh dolor, rutrum nec velit sed, dapibus vulputate felis. Duis eget diam quis leo sodales auctor ut sed ligula. Fusce ultrices iaculis velit. Nam laoreet dictum adipiscing. Duis id felis condimentum, suscipit risus sed, vehicula neque. Phasellus et blandit lectus. Ut aliquam elit vitae mi consectetur, non scelerisque tortor imperdiet. Donec tellus nibh, pulvinar in ornare et, blandit eget magna.\n\nCheck it our themeforest portfolio, <a title="DesignThemes Portfolio" href="http://themeforest.net/user/designthemes/portfolio/" target="_blank">DesignThemes</a>', 'Five Training Roles of the CEO', '', 'publish', 'open', 'open', '', 'five-training-roles-of-the-ceo', '', '', '2013-07-20 11:35:30', '2013-07-20 06:05:30', '', 0, 'http://localhost/dt-sushi/?p=27', 0, 'post', '', 0),
(2730, 1, '2013-07-08 12:20:33', '2013-07-08 06:50:33', 'Curabitur ultrices posuere mattis. Nam ullamcorper, diam sit amet euismod pellentesque, eros risus rhoncus libero, in vestibulum nisl ligula eget velit. Morbi malesuada tempor volutpat. Nam malesuada nec purus sed tristique. Phasellus in eleifend lorem. Cras dui mauris, bibendum non lorem ut, semper ornare lorem. Duis ut eros ipsum. Fusce enim ipsum, rutrum ac orci eu, dapibus blandit enim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n\nPraesent lacinia congue rhoncus. Nulla nec leo adipiscing, dictum enim id, ultricies leo. Curabitur euismod quam sed tellus dictum, nec ornare eros euismod. Donec mollis laoreet urna, id accumsan eros cursus vitae. Proin ipsum libero, molestie in scelerisque nec, fermentum non orci. Praesent adipiscing urna a justo pellentesque vehicula. Etiam eleifend felis ut volutpat dictum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc congue consequat leo a consequat. Nulla fermentum mollis ante in vulputate. Aenean egestas dictum ligula et consectetur. Aliquam erat volutpat.', 'Valuable Corporate Training', '', 'publish', 'open', 'open', '', 'valuable-corporate-training', '', '', '2013-07-08 12:20:33', '2013-07-08 06:50:33', '', 0, 'http://localhost/dt-sushi/?p=86', 0, 'post', '', 2),
(2774, 1, '2014-01-07 07:09:14', '2014-01-07 07:09:14', '[res_map address="iamdesigning, Coimbatore, Tamil Nadu" description="iamdesigning, Coimbatore, Tamil Nadu" directionstext="(directions to our address)" icon="green" color="classic" pancontrol="no" scalecontrol="no" typecontrol="no" streetcontrol="no" zoom="14" zoomcontrol="no" draggable="yes" scrollwheel="no" width="100%" height="480px" maptype="roadmap" popup="yes" center="" refresh="no"]\n\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" backgroundposition="left top"]\n[dt_sc_hr_invisible]\n[dt_sc_two_third first]\n[dt_hr_title tag="h2"]Send a Message[/dt_hr_title]\n[contact-form-7 id="2773" title="Send a Message"]\n[/dt_sc_two_third]\n\n[dt_sc_one_third]\n[dt_hr_title tag="h2"]Find Us[/dt_hr_title]\n[dt_address title=''Address'']106, East Street, London, UK[/dt_address]\n[dt_phone title=''Phone'' no=''030 8437 502451'' /]\n[dt_email title=''Mail'' id=''enquiries@gmail.com'' /]\n[dt_website title=''Website'' url=''http://www.wedesignthemes.com'' /]\n[dt_social /]\n[dt_margin value=''20'' /]\n[dt_hr_title tag="h2"]Our Services[/dt_hr_title]\n[dt_sc_accordion_group]\n[dt_sc_toggle_framed title="Course Management"]\nNunc eu pellentesque tellus, vitae dignissim mi. Vivamus dignissim scelerisque massa, non feugiat dolor blandit nec. Sed lorem turpis.\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Leadership Management"]\nEtiam fermentum vestibulum elit. Cras facilisis metus non mauris pretium, egestas cursus nisl adipiscing. Quisque luctus lorem ut nisl mollis, vel volutpat urna lacinia.\n[/dt_sc_toggle_framed]\n[dt_sc_toggle_framed title="Business Management"]\nDuis feugiat erat nec lacus feugiat, eu ultrices risus rhoncus. Mauris sit amet augue non morbi auctor diam lectus, eget pharetra enim gravida ac.\n[/dt_sc_toggle_framed]\n[/dt_sc_accordion_group]\n\n[/dt_sc_one_third]\n[/dt_sc_fullwidth_section]', 'Contact Form 7', '', 'publish', 'open', 'open', '', 'contact-form-7', '', '', '2014-01-07 07:09:14', '2014-01-07 07:09:14', '', 4297, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2774', 0, 'page', '', 0),
(2777, 1, '2014-01-07 12:11:56', '2014-01-07 06:41:56', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Fully Responsive Design', '', 'publish', 'open', 'closed', '', 'fully-responsive-design', '', '', '2014-01-07 12:11:56', '2014-01-07 06:41:56', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2777', 0, 'page', '', 0),
(2779, 1, '2014-01-07 12:16:50', '2014-01-07 06:46:50', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Multi News Page Options', '', 'publish', 'open', 'closed', '', 'multi-news-page-options', '', '', '2014-01-07 12:16:50', '2014-01-07 06:46:50', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2779', 1, 'page', '', 0),
(2783, 1, '2014-01-07 12:16:19', '2014-01-07 06:46:19', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Multi Gallery Page Options', '', 'publish', 'open', 'closed', '', 'multi-gallery-page-options', '', '', '2014-01-07 12:16:19', '2014-01-07 06:46:19', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2783', 2, 'page', '', 0),
(2785, 1, '2014-01-07 12:18:22', '2014-01-07 06:48:22', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Multi Shop Page Options', '', 'publish', 'open', 'closed', '', 'multi-shop-page-options', '', '', '2014-01-07 12:18:22', '2014-01-07 06:48:22', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2785', 3, 'page', '', 0),
(2789, 1, '2014-01-07 12:28:01', '2014-01-07 06:58:01', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', '3 Types of Headers', '', 'publish', 'open', 'closed', '', '3-types-of-headers', '', '', '2014-01-07 12:28:01', '2014-01-07 06:58:01', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2789', 4, 'page', '', 0),
(2791, 1, '2014-01-07 12:29:22', '2014-01-07 06:59:22', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Tons of Shortcodes', '', 'publish', 'open', 'closed', '', 'tons-of-shortcodes', '', '', '2014-01-07 12:29:22', '2014-01-07 06:59:22', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2791', 6, 'page', '', 0),
(2793, 1, '2014-01-07 12:30:29', '2014-01-07 07:00:29', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Unlimited Google Fonts', '', 'publish', 'open', 'closed', '', 'unlimited-google-fonts', '', '', '2014-01-07 12:30:29', '2014-01-07 07:00:29', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2793', 7, 'page', '', 0),
(2826, 1, '2014-01-18 09:57:20', '2014-01-18 09:57:20', '', 'Forums', '', 'publish', 'open', 'closed', '', 'forums', '', '', '2014-01-18 09:57:20', '2014-01-18 09:57:20', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=2826', 0, 'page', '', 0),
(3084, 1, '2014-01-29 07:59:21', '2014-01-29 07:59:21', '[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat"]\n[dt_sc_hr_invisible_large]\n[dt_sc_one_half first]\n<h2>WHY WE ARE BEST</h2>\nNulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae. Digital drawing has become an increasingly popular trend as the price of tools involved decreases and the uses of digital art increases. And if you’re a digital artist who would like to know how to draw for comics, then this course is for you!\n[/dt_sc_one_half]\n\n[dt_sc_one_half]<img class="alignnone size-full wp-image-4514" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/tab-img.gif" alt="about-img" />\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Team[/dt_hr_title]\n\n[dt_sc_team /]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n<h2>We are the best online course professionals</h2>\n[dt_sc_hr_invisible]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle]\n[/dt_sc_accordion_group]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n<h2>Our Course Strength</h2>\n[dt_sc_hr_invisible]\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Placement Achievement[/dt_sc_progressbar]\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Skill Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Personal Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible_medium]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section backgroundimage="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/testimonial-bg.jpg" parallax="no"]\n[dt_sc_hr_invisible_medium]\n\n[dt_hr_title tag="h2"]Our Testimonials[/dt_hr_title]\n[dt_sc_one_half first]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible_medium]\n[/dt_sc_fullwidth_section]\n[dt_margin value="30" /]\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" class="abt-client"]\n\n[dt_sc_one_fourth first] <img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client1.jpg" alt="client1" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client2.jpg" alt="client2" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client3.jpg" alt="client3" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client4.jpg" alt="client4" width="190" height="112" />[/dt_sc_one_fourth]\n[/dt_sc_fullwidth_section]', 'Header Type1', '', 'publish', 'open', 'closed', '', 'header-type1', '', '', '2014-01-29 07:59:21', '2014-01-29 07:59:21', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=3084', 0, 'page', '', 0),
(3087, 1, '2014-01-29 08:00:47', '2014-01-29 08:00:47', '[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat"]\n[dt_sc_hr_invisible_large]\n[dt_sc_one_half first]\n<h2>WHY WE ARE BEST</h2>\nNulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae. Digital drawing has become an increasingly popular trend as the price of tools involved decreases and the uses of digital art increases. And if you’re a digital artist who would like to know how to draw for comics, then this course is for you!\n[/dt_sc_one_half]\n\n[dt_sc_one_half]<img class="alignnone size-full wp-image-4514" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/tab-img.gif" alt="about-img" width="478" height="278" />\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Team[/dt_hr_title]\n\n[dt_sc_team /]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n<h2>We are the best online course professionals</h2>\n[dt_sc_hr_invisible]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle]\n[/dt_sc_accordion_group]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n<h2>Our Course Strength</h2>\n[dt_sc_hr_invisible]\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Placement Achievement[/dt_sc_progressbar]\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Skill Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Personal Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible_medium]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section backgroundimage="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/testimonial-bg.jpg" parallax="no"]\n[dt_sc_hr_invisible_medium]\n\n[dt_hr_title tag="h2"]Our Testimonials[/dt_hr_title]\n[dt_sc_one_half first]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible_medium]\n[/dt_sc_fullwidth_section]\n[dt_margin value="30" /]\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" class="abt-client"]\n\n[dt_sc_one_fourth first] <img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client1.jpg" alt="client1" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client2.jpg" alt="client2" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client3.jpg" alt="client3" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client4.jpg" alt="client4" width="190" height="112" />[/dt_sc_one_fourth]\n[/dt_sc_fullwidth_section]', 'Header Type2', '', 'publish', 'open', 'closed', '', 'header-type2', '', '', '2014-01-29 08:00:47', '2014-01-29 08:00:47', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=3087', 0, 'page', '', 0),
(3089, 1, '2014-01-29 08:01:17', '2014-01-29 08:01:17', '[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat"]\n[dt_sc_hr_invisible_large]\n[dt_sc_one_half first]\n<h2>WHY WE ARE BEST</h2>\nNulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae. Digital drawing has become an increasingly popular trend as the price of tools involved decreases and the uses of digital art increases. And if you’re a digital artist who would like to know how to draw for comics, then this course is for you!\n[/dt_sc_one_half]\n\n[dt_sc_one_half]<img class="alignnone size-full wp-image-4514" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/tab-img.gif" alt="about-img" width="478" height="278" />\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Team[/dt_hr_title]\n\n[dt_sc_team /]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n<h2>We are the best online course professionals</h2>\n[dt_sc_hr_invisible]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle]\n[/dt_sc_accordion_group]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n<h2>Our Course Strength</h2>\n[dt_sc_hr_invisible]\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Placement Achievement[/dt_sc_progressbar]\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Skill Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Personal Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible_medium]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section backgroundimage="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/testimonial-bg.jpg" parallax="no"]\n[dt_sc_hr_invisible_medium]\n\n[dt_hr_title tag="h2"]Our Testimonials[/dt_hr_title]\n[dt_sc_one_half first]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible_medium]\n[/dt_sc_fullwidth_section]\n[dt_margin value="30" /]\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" class="abt-client"]\n\n[dt_sc_one_fourth first] <img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client1.jpg" alt="client1" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client2.jpg" alt="client2" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client3.jpg" alt="client3" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client4.jpg" alt="client4" width="190" height="112" />[/dt_sc_one_fourth]\n[/dt_sc_fullwidth_section]', 'Header Type3', '', 'publish', 'open', 'closed', '', 'header-type3', '', '', '2014-01-29 08:01:17', '2014-01-29 08:01:17', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=3089', 0, 'page', '', 0),
(3149, 1, '2013-07-08 12:11:38', '2013-07-08 12:11:38', 'Nam male suada augue eget odio conse, vel ferme sem porta. Donec luctus magna in nulla lobor, eget facil libero venena. Aenean auctor, nulla eu egestas ornare, eros mi faucibus turpis, eu venenatis nibh sapien at libero. Mauris vel mauris eros. Curabitur in est sem. In at ipsum leo. Cras dignissim iaculis commodo. Aliquam at condimentum eros. Donec varius porttitor enim, nec aliquam nulla scelerisque vitae. Duis consectetur, diam bibendum accumsan congue, nulla mauris sagittis erat, ultrices sodales justo sapien iaculis libero. Proin fermentum ligula ante, vitae ultrices elit iaculis ut.\n\nMauris laoreet sapien sed magna aliquet dictum. Nunc in magna lacus. Duis luctus ornare consectetur. Vivamus sit amet congue tellus. In eget eleifend augue. Mauris quis tempor odio, eget viverra eros. Praesent risus mi, blandit ullamcorper ornare sit amet, mattis sit amet nunc.', 'Video: Vimeo', '', 'publish', 'open', 'open', '', 'video-vimeo', '', '', '2013-07-08 12:11:38', '2013-07-08 12:11:38', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?p=3149', 0, 'post', '', 0),
(3151, 1, '2013-07-08 12:00:33', '2013-07-08 12:00:33', 'Fusce massa justo, feugiat et dignissim in, convallis sit amet urna. Aliquam placerat tempor elit, in auctor sem. Nunc eget magna lorem. Sed ut pharetra nisl, nec iaculis dui. Ut sit amet ipsum eget lectus egestas condimentum. Aenean metus ipsum, accumsan sed dui porttitor, posuere adipiscing metus. Aenean et viverra turpis. Fusce congue sapien vel orci ultrices sodales vitae ultricies enim. \n\nVivamus facilisis lacus augue. Fusce eget metus porttitor sapien tristique luctus. Duis quis odio et purus laoreet malesuada. Proin id est blandit, tincidunt erat sed, venenatis turpis. Nulla fermentum orci eget ullamcorper lobortis. Aliquam luctus suscipit convallis.', 'Video: YouTube', '', 'publish', 'open', 'open', '', 'video-youtube', '', '', '2013-07-08 12:00:33', '2013-07-08 12:00:33', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?p=3151', 0, 'post', '', 0),
(3153, 1, '2013-07-08 11:50:57', '2013-07-08 11:50:57', 'Suspen nec massa ipsum. Pelle tempus condi mentum nunc nec eleif. Ut venena tempor enim a bland. Integer sollici neque sit amet ligula posuere faucibus. Sed ac mattis sem. Nulla sed metus in lectus laoreet vulputate. Duis iaculis lobortis urna, a congue purus eleifend sed. Donec non lacus sem. Cras eu dapibus dui. Donec posuere rutrum velit, eu commodo justo aliquam ac. Nulla sagittis velit id elit dapibus porta. Phasellus mollis, risus at aliquet elementum, dolor purus interdum justo, ut ultrices massa tortor ut libero.\n\nUt lobortis risus eu risus tempus, nec dictum neque aliquet. Sed rhoncus diam at nunc viverra placerat. Cras tempor rhoncus mauris, id ornare nisi consectetur sit amet. Mauris ut justo a enim euismod vehicula in a dolor.', 'Video: Self Hosted', '', 'publish', 'open', 'open', '', 'video-self-hosted', '', '', '2013-07-08 11:50:57', '2013-07-08 11:50:57', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?p=3153', 0, 'post', '', 0),
(3155, 1, '2013-07-08 11:40:53', '2013-07-08 06:10:53', 'Duis tempor pulvinar erat, quis imperdiet nisl gravida vel. Nunc elementum enim id magna sodales, non convallis nibh laoreet. Phasellus sed dolor porttitor leo venenatis porttitor. Aenean elementum lacus tempor, convallis dui eget, tincidunt diam. Donec sagittis accumsan est nec interdum. Praesent pretium arcu eget nunc mollis pretium. Sed urna mauris, porttitor lobortis pretium eu, viverra ac est.\n\nNam fermentum dignissim bibendum. Maecenas sapien elit, commodo ultrices dictum tincidunt, eleifend porttitor est. Aliquam ornare placerat cursus. Cras quis nisi et tellus ornare gravida ut a erat. Fusce porta purus eget ligula laoreet hendrerit. Vivamus vel nibh ut ipsum tempus pulvinar. Aenean sollicitudin leo sit amet purus consequat fringilla ut vitae ante. Suspendisse bibendum elit ut massa sagittis pretium. Nulla dignissim nulla sed dolor interdum dignissim.\n\n', 'Audio: SoundCloud', '', 'publish', 'open', 'open', '', 'audio-soundcloud', '', '', '2013-07-08 11:40:53', '2013-07-08 06:10:53', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?p=3155', 0, 'post', '', 0),
(3157, 1, '2013-07-08 11:30:47', '2013-07-08 11:30:47', 'Sed iaculis nisl at libero aliquet, ut ultricies neque luctus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras posuere aliquam venenatis. Curabitur posuere aliquam tellus, non pulvinar nulla sodales eu. Nam orci felis, elementum id dignissim ut, tincidunt ac tellus. Phasellus non sem sollicitudin, eleifend nisi vel, imperdiet neque. Quisque porta lacinia augue ut dignissim. Suspendisse nec elit sit amet orci suscipit pharetra eget eu felis. Sed id dui sed neque vulputate sodales. \n\nAenean mollis dui quis erat convallis, vel semper ante dignissim. Proin vitae mi adipiscing, congue eros ut, tempor urna. Mauris id imperdiet dolor, vitae tincidunt odio. Aenean eget mi dignissim, blandit erat nec, consequat erat. Cras et leo sollicitudin, pulvinar urna quis, egestas odio. Vivamus lorem lectus, tristique id auctor et, mollis fringilla neque. Ut condimentum augue in augue congue commodo.', 'Audio: Self Hosted', '', 'publish', 'open', 'open', '', 'audio-self-hosted', '', '', '2013-07-08 11:30:47', '2013-07-08 11:30:47', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?p=3157', 0, 'post', '', 0),
(3592, 1, '2014-02-27 10:01:00', '2014-02-27 10:01:00', '[dt_sc_one_third first]\n[dt_sc_icon_box type =" type1" fontawesome_icon=''fa-pagelines'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type1" fontawesome_icon=''fa-sitemap'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type1" fontawesome_icon=''fa-trophy'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n\n[dt_sc_clear]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_third first]\n[dt_sc_icon_box type =" type2" fontawesome_icon=''fa-pagelines'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type2" fontawesome_icon=''fa-sitemap'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type2" fontawesome_icon=''fa-trophy'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n\n[dt_sc_clear]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_third first]\n[dt_sc_icon_box type =" type3" fontawesome_icon=''fa-pagelines'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type3" fontawesome_icon=''fa-sitemap'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type3" fontawesome_icon=''fa-trophy'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n\n[dt_sc_clear]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_third first]\n[dt_sc_icon_box type =" type4" fontawesome_icon=''fa-pagelines'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type4" fontawesome_icon=''fa-sitemap'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type4" fontawesome_icon=''fa-trophy'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[dt_sc_button link="#" size="small" target="_blank"]Know More[/dt_sc_button]\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n\n[dt_sc_clear]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_third first]\n[dt_sc_icon_box type =" type5" fontawesome_icon=''fa-pagelines'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type5" fontawesome_icon=''fa-sitemap'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n[dt_sc_one_third]\n[dt_sc_icon_box type =" type5" fontawesome_icon=''fa-trophy'' title=''Renovation and Rebuilding'' link=''#'' ]\n\nNunc at pretium est curabitur commodo leac est venenatis egestas sed aliquet auguevelit.\n\n[/dt_sc_icon_box]\n[/dt_sc_one_third]\n\n[dt_sc_hr_invisible]\n[dt_sc_clear]\n<strong>Shortcode:</strong>\n\n[dt_sc_code]\n[dt_sc_icon_box type ="" fontawesome_icon='''' title='''' link=''#'' ]Your content goes here... [/dt_sc_icon_box]\n[/dt_sc_code]\n[dt_sc_hr_medium]\n<h5>Available types</h5>\n<ul>\n	<li>type1</li>\n	<li>type2</li>\n	<li>type3</li>\n	<li>type4</li>\n	<li>type5</li>\n</ul>\n[dt_sc_clear]\n\n[dt_sc_hr_invisible]', 'Service Boxes', '', 'publish', 'open', 'open', '', 'service-boxes', '', '', '2014-02-27 10:01:00', '2014-02-27 10:01:00', '', 4296, 'http://wedesignthemes.com/themes/dt-guru/?page_id=3592', 0, 'page', '', 0),
(4012, 1, '2014-01-07 12:17:26', '2014-01-07 06:47:26', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Valid HTML5 and CSS3', '', 'publish', 'open', 'closed', '', 'valid-html5-and-css3', '', '', '2014-01-07 12:17:26', '2014-01-07 06:47:26', '', 4294, 'http://wedesignthemes.com/themes/dt-guru/?page_id=4012', 5, 'page', '', 0),
(4277, 1, '2014-04-15 16:59:39', '2014-04-15 11:29:39', 'Etiam eu faucibus elit. Phasellus porttitor, nibh non euismod eleifend, tortor diam scelerisque orci, ut elementum lorem tortor non quam. Donec non condimentum enim. Aenean auctor urna at dolor feugiat volutpat. Aenean vel semper nibh. Nunc eget velit eu nulla rhoncus iaculis non a purus. Phasellus posuere fringilla pharetra. Donec rutrum lacinia convallis. Phasellus ornare libero eget nunc cursus, at pretium odio faucibus. Nulla facilisi. Ut aliquet neque dictum tellus interdum, nec faucibus nisl pharetra.\n\nEtiam venenatis dui eget erat tincidunt consequat. Aenean nec scelerisque erat. Etiam in massa non tortor facilisis molestie. Nunc in nunc eget sapien commodo volutpat. Aenean accumsan vel ipsum eget semper. Vestibulum nulla sapien, scelerisque in mi eu, dapibus placerat metus. Etiam et risus sed justo convallis iaculis non sed urna. Vestibulum ac rutrum nunc. Praesent tincidunt velit eu iaculis accumsan. Nullam tempor eleifend risus ac rhoncus. Nam odio erat, mattis in interdum eu, pharetra id nunc. Mauris ac condimentum nisl, nec porttitor elit. Aliquam posuere tincidunt mauris et iaculis.', 'James Catwin', '', 'publish', 'open', 'open', '', 'james-catwin', '', '', '2014-04-15 16:59:39', '2014-04-15 11:29:39', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?post_type=dt_teachers&amp;p=4277', 0, 'dt_teachers', '', 0),
(4278, 1, '2014-04-15 17:00:48', '2014-04-15 11:30:48', 'Nulla pretium, enim nec ornare varius, erat ipsum sollicitudin nisi, at tincidunt orci mi id nisi. Nam venenatis iaculis velit, sed sagittis lectus tempor vitae. Donec dapibus aliquam ante, ut molestie augue feugiat eget. Nulla vitae nulla tincidunt, pellentesque elit eu, euismod purus. Nam eget interdum metus. Pellentesque sed diam adipiscing, condimentum massa id, placerat justo. In faucibus nibh tellus, nec euismod libero ultrices vitae. Etiam tincidunt tellus nibh, in tincidunt quam tempor eget. Donec feugiat felis non justo viverra, a pellentesque erat condimentum. Nam ultrices nunc ac laoreet suscipit.\n\nMaecenas adipiscing aliquam condimentum. Nullam sed lacus dapibus neque lacinia accumsan et et nunc. Curabitur commodo justo a nisi dapibus, vitae accumsan neque pellentesque. Duis vel leo sapien. Phasellus nec aliquet erat, at malesuada orci. Fusce quis faucibus lectus. Proin erat risus, semper id tristique eu, ultrices a lacus.', 'Jenny Sheen', '', 'publish', 'open', 'open', '', 'jenny-sheen', '', '', '2014-04-15 17:00:48', '2014-04-15 11:30:48', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?post_type=dt_teachers&amp;p=4278', 0, 'dt_teachers', '', 0),
(4279, 1, '2014-04-15 17:01:54', '2014-04-15 11:31:54', 'Sed sit amet tortor condimentum, euismod velit non, tristique ligula. Vivamus tempor egestas sem, a egestas magna hendrerit hendrerit. Quisque ac fermentum nibh, nec mollis lacus. Donec pellentesque convallis ligula vel interdum. Nam consequat dolor eget tortor fringilla, ac lacinia neque aliquam. Phasellus pharetra diam non velit pretium lobortis. Suspendisse id metus fringilla lacus placerat tincidunt. Quisque sit amet felis euismod, pulvinar nulla at, luctus diam. Praesent nec bibendum lorem.\n\nMaecenas adipiscing aliquam condimentum. Nullam sed lacus dapibus neque lacinia accumsan et et nunc. Curabitur commodo justo a nisi dapibus, vitae accumsan neque pellentesque. Duis vel leo sapien. Phasellus nec aliquet erat, at malesuada orci. Fusce quis faucibus lectus. Proin erat risus, semper id tristique eu, ultrices a lacus.', 'Damie Glendell', '', 'publish', 'open', 'open', '', 'damie-glendell', '', '', '2014-04-15 17:01:54', '2014-04-15 11:31:54', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?post_type=dt_teachers&amp;p=4279', 0, 'dt_teachers', '', 0),
(4280, 1, '2014-04-15 17:03:59', '2014-04-15 11:33:59', 'Nulla pretium, enim nec ornare varius, erat ipsum sollicitudin nisi, at tincidunt orci mi id nisi. Nam venenatis iaculis velit, sed sagittis lectus tempor vitae. Donec dapibus aliquam ante, ut molestie augue feugiat eget. Nulla vitae nulla tincidunt, pellentesque elit eu, euismod purus. Nam eget interdum metus. Pellentesque sed diam adipiscing, condimentum massa id, placerat justo. In faucibus nibh tellus, nec euismod libero ultrices vitae. Etiam tincidunt tellus nibh, in tincidunt quam tempor eget. Donec feugiat felis non justo viverra, a pellentesque erat condimentum. Nam ultrices nunc ac laoreet suscipit.\n\nEtiam eu faucibus elit. Phasellus porttitor, nibh non euismod eleifend, tortor diam scelerisque orci, ut elementum lorem tortor non quam. Donec non condimentum enim. Aenean auctor urna at dolor feugiat volutpat. Aenean vel semper nibh. Nunc eget velit eu nulla rhoncus iaculis non a purus. Phasellus posuere fringilla pharetra. Donec rutrum lacinia convallis. Phasellus ornare libero eget nunc cursus, at pretium odio faucibus. Nulla facilisi. Ut aliquet neque dictum tellus interdum, nec faucibus nisl pharetra.', 'Mickey Rorey', '', 'publish', 'open', 'open', '', 'mickey-rorey', '', '', '2014-04-15 17:03:59', '2014-04-15 11:33:59', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?post_type=dt_teachers&amp;p=4280', 0, 'dt_teachers', '', 0),
(4281, 1, '2016-04-09 10:34:34', '2016-04-09 10:34:34', '', 'Level 2 - 1', '', 'publish', 'closed', 'closed', '', 'level-2-1', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/level-2-1/', 42, 'nav_menu_item', '', 0),
(4282, 1, '2016-04-09 10:34:35', '2016-04-09 10:34:35', '', 'Level 2 - 2', '', 'publish', 'closed', 'closed', '', 'level-2-2', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/level-2-2/', 43, 'nav_menu_item', '', 0),
(4283, 1, '2016-04-09 10:34:36', '2016-04-09 10:34:36', '', 'Level 3 - 1', '', 'publish', 'closed', 'closed', '', 'level-3-1', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/level-3-1/', 44, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4284, 1, '2016-04-09 10:34:36', '2016-04-09 10:34:36', '', 'Level 3 - 2', '', 'publish', 'closed', 'closed', '', 'level-3-2', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/level-3-2/', 45, 'nav_menu_item', '', 0),
(4289, 1, '2016-04-09 10:34:40', '2016-04-09 10:34:40', '', '404 - Not Found', '', 'publish', 'closed', 'closed', '', '404-not-found', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 0, 'http://localhost/education/2016/04/09/404-not-found/', 18, 'nav_menu_item', '', 0),
(4290, 1, '2016-04-09 10:34:41', '2016-04-09 10:34:41', '', 'This is Multi-level', '', 'publish', 'closed', 'closed', '', 'this-is-multi-level', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/this-is-multi-level/', 41, 'nav_menu_item', '', 0),
(4291, 1, '2016-04-09 10:34:42', '2016-04-09 10:34:42', '', 'Fullwidth Image', '', 'publish', 'closed', 'closed', '', 'fullwidth-image', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 0, 'http://localhost/education/2016/04/09/fullwidth-image/', 15, 'nav_menu_item', '', 0),
(4292, 1, '2013-12-31 06:59:44', '2013-12-31 01:29:44', '[dt_sc_fullwidth_section backgroundcolor="#f9f9f9" parallax="no" class="bottom-bg"]\n[dt_newsletter title=''Subscribe to Newsletter'']Sit voluptatem accusantium doloremque laudantium, totam rem aperiam.[/dt_newsletter]\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" backgroundposition="left top"]\n[dt_sc_hr_invisible]\n[dt_sc_one_fourth first][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico1.png'' title=''We Coach Easy'' subtitle=''Learn the best Way'']Sit voluptatem accusantium doloremque laudantium, totam rem aperiam.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico2.png'' title=''Creative Course'' subtitle=''Creative Coaching'']Doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico3.png'' title=''Innovative Idea'' subtitle=''Design your Course'']Accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_one_fourth][dt_theme_service icon_url=''http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/service-ico4.png'' title=''Trained Facility'' subtitle=''Get Everything Right'']Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.[/dt_theme_service][/dt_sc_one_fourth]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Team[/dt_hr_title]\n\n[dt_sc_team /]\n\n[dt_sc_hr_invisible_medium]\n\n[/dt_sc_fullwidth_section]\n[dt_sc_fullwidth_section backgroundcolor="#355C7D" parallax="no"]\n[dt_sc_hr_invisible]\n[dt_sc_one_fourth first]\n[dt_number_count icon=''fa-group'' value=''3000'' title=''Learners Educated'' /]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_number_count icon=''fa-trophy'' value=''250'' title=''Categories Listed'' /]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_number_count icon=''fa-flag'' value=''75'' title=''Languages Available'' /]\n[/dt_sc_one_fourth]\n[dt_sc_one_fourth]\n[dt_number_count icon=''fa-book'' value=''1530'' title=''Courses Available'' /]\n[/dt_sc_one_fourth]\n[dt_sc_hr_invisible]\n[/dt_sc_fullwidth_section]\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" backgroundposition="left top"]\n\n[dt_sc_hr_invisible_medium]\n\n[dt_hr_title tag=''h2'']Our Featured Courses[/dt_hr_title]\n\n[dt_featured_courses course_type=''recent'' carousel=''true''/]\n\n[dt_sc_hr_invisible_medium]\n\n[dt_hr_title tag=''h2'']Upcoming Events[/dt_hr_title]\n\n[dt_events_list excerpt_length=''35'' feature_image=''small-thumb'' limit=''4'' carousel=''true''/]\n\n[dt_sc_hr_invisible]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section backgroundcolor="#ffffff" backgroundimage="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/paralax-bg.jpg" parallax="yes" backgroundrepeat="repeat" backgroundposition="left top"]\n\n[dt_sc_hr_invisible]\n<h2 style="text-align: center;">OUR BLOG</h2>\n[dt_margin value="25" /]\n\n[dt_blog_posts posts_column=''one-half-column'' limit=''2'' excerpt_length=''20'']\n\n[dt_sc_hr_invisible]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" backgroundposition="left top"]\n\n[dt_sc_hr_invisible_medium]\n\n[dt_sc_tabs_horizontal]\n\n[dt_sc_tab title="Responsiveness"]\n\n<img class="alignright size-full wp-image-4752" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/tab-img.gif" alt="tab-img" width="460" height="310" />\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Roin a bibendum nibh. Nunc fermentum sit amet mi nec consequat.\n\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.\n\n[/dt_sc_tab]\n[dt_sc_tab title="Certificates"]\n\nAliquam euismod feugiat est, congue elementum justo condimentum sit amet. Nullam vitae risus ut velit condimentum egestas vitae eget enim. Vivamus cursus, sem sed tristique posuere, libero tellus dictum nisl, nec rhoncus odio odio et orci. Ut placerat aliquam elit, id egestas sem. Sed tristique eu libero et malesuada. Pellentesque non pharetra dui. Aliquam vel augue eu augue ornare ullamcorper.\n\n[/dt_sc_tab]\n[dt_sc_tab title="Graduates"]\n[dt_sc_fancy_ul style="book"]\n<ul>\n	<li>Vivamus cursus, sem sed tristique posuere, libero tellus dictum nisl, nec rhoncus odio odio et orc</li>\n	<li>Ut placerat aliquam elit, id egestas sem. Sed tristique eu libero et malesuada Pellentesque non.</li>\n	<li>Fusce sed lorem at orci pretium viverra ut sit amet nunc. Aliquam euismod feugiat est</li>\n</ul>\n[/dt_sc_fancy_ul]\n\n[/dt_sc_tab]\n[dt_sc_tab title="Security Features"]\n\nNunc euismod nibh sit amet justo porta, at blandit metus bibendum. Nunc pharetra justo sed nulla imperdiet, quis adipiscing turpis bibendum. Nulla venenatis vehicula augue. Praesent vulputate ipsum vel consectetur tincidunt. Aliquam egestas, velit malesuada sagittis iaculis, tortor erat vestibulum velit, eu malesuada metus lorem a metus.\n\nUt suscipit, lorem quis bibendum placerat, sem arcu rutrum arcu, non consequat dolor ligula quis urna. Ut lectus nisi, commodo id aliquam ac, posuere in lacus. Integer a nisl sapien.\n\n[/dt_sc_tab]\n[/dt_sc_tabs_horizontal]\n[dt_sc_hr_invisible]\n[dt_intro_text type=''type1'']\n<h4>The Best Courses like Elsewhere. Come get trained. Guaranteed Placements.</h4>\n<h5>You''ll get what you came for!</h5>\n[dt_sc_button link=''http://wedesignthemes.com/themes/dt-guru/courses-overview/'' size=''small'']Read More[/dt_sc_button]\n[/dt_intro_text]\n[/dt_sc_fullwidth_section]', 'Home', '', 'publish', 'open', 'closed', '', 'home', '', '', '2013-12-31 06:59:44', '2013-12-31 01:29:44', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=8', 0, 'page', '', 0),
(4293, 1, '2013-12-31 07:00:20', '2013-12-31 07:00:20', '[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat"]\n[dt_sc_hr_invisible_large]\n[dt_sc_one_half first]\n<h2>WHY WE ARE BEST</h2>\nNulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae. Digital drawing has become an increasingly popular trend as the price of tools involved decreases and the uses of digital art increases. And if you’re a digital artist who would like to know how to draw for comics, then this course is for you!\n[/dt_sc_one_half]\n\n[dt_sc_one_half]<img class="alignnone size-full wp-image-4514" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/tab-img.gif" alt="about-img" width="478" height="278" />\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible]\n\n[dt_hr_title tag="h2"]Our Team[/dt_hr_title]\n\n[dt_sc_team /]\n\n[dt_sc_hr_invisible]\n\n[dt_sc_one_half first]\n<h2>We are the best online course professionals</h2>\n[dt_sc_hr_invisible]\n[dt_sc_accordion_group]\n[dt_sc_toggle title="What is Lorem Ipsum?"]\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi hendrerit elit turpis, a porttitor tellus sollicitudin at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Where does it come from?"]\n\nSed facilisis lectus id imperdiet faucibus. Vestibulum aliquam sollicitudin sem, sed accumsan sapien ultricies et. Quisque porta, dui id volutpat tempor, neque ligula consequat quam, in lobortis diam magna nec eros.\n\n[/dt_sc_toggle]\n[dt_sc_toggle title="Why do we use it?"]\n\nEtiam at nisi id quam dictum hendrerit a sed sem. Duis eget dui nisi. Sed rutrum urna id nulla varius bibendum. Cras et est in mi condimentum bibendum vitae at nisi. Vivamus temp leo, eget fermentum elit faucibus non.\n\n[/dt_sc_toggle]\n[/dt_sc_accordion_group]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n<h2>Our Course Strength</h2>\n[dt_sc_hr_invisible]\n[dt_sc_progressbar value=''85'' type=''progress-striped-active''  color=''#9c59b6'' textcolor=''''] Placement Achievement[/dt_sc_progressbar]\n[dt_sc_progressbar value=''75'' type=''progress-striped'' color=''#3498DB'' textcolor=''''] Skill Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''65'' type=''progress-striped-active'' color=''#9c59b6'' textcolor=''''] Personal Development[/dt_sc_progressbar]\n[dt_sc_progressbar value=''80'' type=''progress-striped'' color=''#1ABC9C'' textcolor=''''] Outdoor Communication[/dt_sc_progressbar]\n[dt_sc_progressbar value=''70'' type=''standard'' color=''#F39D12'' textcolor=''''] Indoor Participation[/dt_sc_progressbar]\n[/dt_sc_one_half]\n[dt_sc_hr_invisible_medium]\n\n[/dt_sc_fullwidth_section]\n\n[dt_sc_fullwidth_section backgroundimage="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2014/05/testimonial-bg.jpg" parallax="no"]\n[dt_sc_hr_invisible_medium]\n<h2 style="text-align: center;">OUR TESTIMONIALS</h2>\n[dt_margin value="25" /]\n\n[dt_sc_one_half first]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_one_half]\n[dt_sc_testimonial name="Jamie White" role="Aspire Institute" image="http://placehold.it/85x85"]Consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. totam rem aperiam, eaque ipsa quae ab illo inventore adventuri jam veritatis et quasi architecto beatae.[/dt_sc_testimonial]\n[/dt_sc_one_half]\n\n[dt_sc_hr_invisible_medium]\n[/dt_sc_fullwidth_section]\n\n[dt_margin value="30" /]\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" class="abt-client"]\n\n[dt_sc_one_fourth first] <img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client1.jpg" alt="client1" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client2.jpg" alt="client2" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client3.jpg" alt="client3" width="190" height="112" />[/dt_sc_one_fourth]\n[dt_sc_one_fourth]<img class="alignnone size-full wp-image-4585" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/client4.jpg" alt="client4" width="190" height="112" />[/dt_sc_one_fourth]\n[/dt_sc_fullwidth_section]', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2013-12-31 07:00:20', '2013-12-31 07:00:20', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=14', 0, 'page', '', 0),
(4294, 1, '2013-12-31 07:00:34', '2013-12-31 07:00:34', '<img class="alignnone size-full wp-image-4754" src="http://wedesignthemes.com/themes/dummy-guru/wp-content/uploads/2013/12/Featured.gif" alt="Featured" width="620" height="510" />', 'Features', '', 'publish', 'open', 'closed', '', 'features', '', '', '2013-12-31 07:00:34', '2013-12-31 07:00:34', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=16', 0, 'page', '', 0),
(4295, 1, '2013-12-31 07:00:46', '2013-12-31 01:30:46', '', 'News', '', 'publish', 'open', 'closed', '', 'news', '', '', '2013-12-31 07:00:46', '2013-12-31 01:30:46', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=18', 0, 'page', '', 0),
(4296, 1, '2013-12-31 07:01:00', '2013-12-31 07:01:00', '', 'Shortcodes', '', 'publish', 'open', 'open', '', 'shortcodes', '', '', '2013-12-31 07:01:00', '2013-12-31 07:01:00', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=20', 0, 'page', '', 0),
(4297, 1, '2013-12-31 07:01:12', '2013-12-31 07:01:12', '[res_map address="iamdesigning, Coimbatore, Tamil Nadu | Marudhamalai Road, Pappanaicken Pudur, Coimbatore, Tamil Nadu 641041, India | Vadavalli Thondamuthur Road, Booluvampatti, Tamil Nadu 641007, India | 1st Street West, Ragavendra Garden, Veerakeralam, Coimbatore, Tamil Nadu 641007, India" description="Iamdesigning | INet Technologies | Skill Developer | Maples Technologies" directionstext="(directions to our address)" icon="green | magenta | purple | blue" color="classic" pancontrol="no" scalecontrol="no" typecontrol="no" streetcontrol="no" zoom="14" zoomcontrol="no" draggable="yes" scrollwheel="no" width="100%" height="480px" maptype="roadmap" popup="yes" center="" refresh="no"]\n\n[dt_sc_fullwidth_section parallax="no" backgroundrepeat="no-repeat" backgroundposition="left top"]\n[dt_sc_hr_invisible]\n[dt_sc_two_third first]\n[dt_hr_title tag="h2"]Send a Message[/dt_hr_title]\n[dt_contact_form /]\n[/dt_sc_two_third]\n\n[dt_sc_one_third]\n[dt_hr_title tag="h2"]Find Us[/dt_hr_title]\n[dt_address title=''Address'']106, East Street, London, UK[/dt_address]\n[dt_phone title=''Phone'' no=''030 8437 502451'' /]\n[dt_email title=''Mail'' id=''enquiries@gmail.com'' /]\n[dt_website title=''Website'' url=''http://www.wedesignthemes.com'' /]\n[dt_social /]\n[/dt_sc_one_third]\n[/dt_sc_fullwidth_section]\n', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2013-12-31 07:01:12', '2013-12-31 07:01:12', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=22', 0, 'page', '', 0),
(4298, 1, '2013-12-31 07:02:17', '2013-12-31 07:02:17', '', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2013-12-31 07:02:17', '2013-12-31 07:02:17', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=24', 0, 'page', '', 0),
(4299, 1, '2014-04-16 11:55:07', '2014-04-16 06:25:07', 'When connecting the server using your ftp details, the ftp seems to be empty without and files. Please ask your server people to give access for the files. Please check the screenshot for reference. When connecting the server using your ftp details, the ftp seems to be empty without and files. Please ask your server people to give access for the files. Please check the screenshot for reference.', 'One Page', '', 'publish', 'open', 'closed', '', 'one-page', '', '', '2014-04-16 11:55:07', '2014-04-16 06:25:07', '', 0, 'http://wedesignthemes.com/themes/dt-guru/?page_id=4293', 0, 'page', '', 0),
(4780, 1, '2014-10-07 06:36:45', '2014-10-07 06:36:45', '', 'Test', '', 'publish', 'open', 'open', '', 'test', '', '', '2014-10-07 06:36:45', '2014-10-07 06:36:45', '', 0, 'http://wedesignthemes.com/themes/dummy-guru/?page_id=4780', 0, 'page', '', 0),
(4781, 1, '2016-04-09 10:36:23', '2016-04-09 10:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '4781', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/4781/', 62, 'nav_menu_item', '', 0),
(4782, 1, '2016-04-09 10:36:27', '2016-04-09 10:36:27', ' ', '', '', 'publish', 'closed', 'closed', '', '4782', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/4782/', 49, 'nav_menu_item', '', 0),
(4783, 1, '2016-04-09 10:36:28', '2016-04-09 10:36:28', ' ', '', '', 'publish', 'closed', 'closed', '', '4783', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 0, 'http://localhost/education/2016/04/09/4783/', 17, 'nav_menu_item', '', 0),
(4784, 1, '2016-04-09 10:36:31', '2016-04-09 10:36:31', ' ', '', '', 'publish', 'closed', 'closed', '', '4784', '', '', '2016-04-09 10:54:03', '2016-04-09 10:54:03', '', 0, 'http://localhost/education/2016/04/09/4784/', 1, 'nav_menu_item', '', 0),
(4786, 1, '2016-04-09 10:36:37', '2016-04-09 10:36:37', ' ', '', '', 'publish', 'closed', 'closed', '', '4786', '', '', '2016-04-09 10:50:08', '2016-04-09 10:50:08', '', 0, 'http://localhost/education/2016/04/09/4786/', 2, 'nav_menu_item', '', 0),
(4787, 1, '2016-04-09 10:36:38', '2016-04-09 10:36:38', ' ', '', '', 'publish', 'closed', 'closed', '', '4787', '', '', '2016-04-09 10:50:08', '2016-04-09 10:50:08', '', 0, 'http://localhost/education/2016/04/09/4787/', 3, 'nav_menu_item', '', 0),
(4788, 1, '2016-04-09 10:36:41', '2016-04-09 10:36:41', ' ', '', '', 'publish', 'closed', 'closed', '', '4788', '', '', '2016-04-09 10:50:08', '2016-04-09 10:50:08', '', 0, 'http://localhost/education/2016/04/09/4788/', 1, 'nav_menu_item', '', 0),
(4789, 1, '2016-04-09 10:36:44', '2016-04-09 10:36:44', ' ', '', '', 'publish', 'closed', 'closed', '', '4789', '', '', '2016-04-09 10:54:03', '2016-04-09 10:54:03', '', 0, 'http://localhost/education/2016/04/09/4789/', 2, 'nav_menu_item', '', 0),
(4790, 1, '2016-04-09 10:36:46', '2016-04-09 10:36:46', ' ', '', '', 'publish', 'closed', 'closed', '', '4790', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4790/', 21, 'nav_menu_item', '', 0),
(4791, 1, '2016-04-09 10:36:48', '2016-04-09 10:36:48', ' ', '', '', 'publish', 'closed', 'closed', '', '4791', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4791/', 22, 'nav_menu_item', '', 0),
(4792, 1, '2016-04-09 10:36:52', '2016-04-09 10:36:52', ' ', '', '', 'publish', 'closed', 'closed', '', '4792', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4792/', 23, 'nav_menu_item', '', 0),
(4793, 1, '2016-04-09 10:36:54', '2016-04-09 10:36:54', ' ', '', '', 'publish', 'closed', 'closed', '', '4793', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4793/', 31, 'nav_menu_item', '', 0),
(4794, 1, '2016-04-09 10:36:56', '2016-04-09 10:36:56', ' ', '', '', 'publish', 'closed', 'closed', '', '4794', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4794/', 25, 'nav_menu_item', '', 0),
(4795, 1, '2016-04-09 10:36:58', '2016-04-09 10:36:58', ' ', '', '', 'publish', 'closed', 'closed', '', '4795', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4795/', 27, 'nav_menu_item', '', 0),
(4796, 1, '2016-04-09 10:37:02', '2016-04-09 10:37:02', ' ', '', '', 'publish', 'closed', 'closed', '', '4796', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4796/', 28, 'nav_menu_item', '', 0),
(4797, 1, '2016-04-09 10:37:02', '2016-04-09 10:37:02', ' ', '', '', 'publish', 'closed', 'closed', '', '4797', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4797/', 29, 'nav_menu_item', '', 0),
(4798, 1, '2016-04-09 10:37:03', '2016-04-09 10:37:03', ' ', '', '', 'publish', 'closed', 'closed', '', '4798', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4798/', 30, 'nav_menu_item', '', 0),
(4799, 1, '2016-04-09 10:37:04', '2016-04-09 10:37:04', ' ', '', '', 'publish', 'closed', 'closed', '', '4799', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4799/', 20, 'nav_menu_item', '', 0),
(4800, 1, '2016-04-09 10:37:05', '2016-04-09 10:37:05', ' ', '', '', 'publish', 'closed', 'closed', '', '4800', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4800/', 26, 'nav_menu_item', '', 0),
(4801, 1, '2016-04-09 10:37:06', '2016-04-09 10:37:06', '', 'Shortcodes', '', 'publish', 'closed', 'closed', '', 'shortcodes', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/shortcodes/', 19, 'nav_menu_item', '', 0),
(4802, 1, '2016-04-09 10:37:08', '2016-04-09 10:37:08', '', 'IV Column', '', 'publish', 'closed', 'closed', '', 'iv-column', '', '', '2016-04-09 10:54:03', '2016-04-09 10:54:03', '', 45, 'http://localhost/education/2016/04/09/iv-column/', 3, 'nav_menu_item', '', 0),
(4803, 1, '2016-04-09 10:37:09', '2016-04-09 10:37:09', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-left-sidebar/', 5, 'nav_menu_item', '', 0),
(4804, 1, '2016-04-09 10:37:10', '2016-04-09 10:37:10', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-right-sidebar/', 6, 'nav_menu_item', '', 0),
(4805, 1, '2016-04-09 10:37:10', '2016-04-09 10:37:10', '', 'III Column', '', 'publish', 'closed', 'closed', '', 'iii-column', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/iii-column/', 7, 'nav_menu_item', '', 0),
(4806, 1, '2016-04-09 10:37:11', '2016-04-09 10:37:11', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-2', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-left-sidebar-2/', 9, 'nav_menu_item', '', 0),
(4807, 1, '2016-04-09 10:37:12', '2016-04-09 10:37:12', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-2', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-right-sidebar-2/', 10, 'nav_menu_item', '', 0),
(4808, 1, '2016-04-09 10:37:12', '2016-04-09 10:37:12', '', 'II Column', '', 'publish', 'closed', 'closed', '', 'ii-column', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/ii-column/', 11, 'nav_menu_item', '', 0),
(4809, 1, '2016-04-09 10:37:13', '2016-04-09 10:37:13', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-3', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-left-sidebar-3/', 13, 'nav_menu_item', '', 0),
(4810, 1, '2016-04-09 10:37:14', '2016-04-09 10:37:14', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-3', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/with-right-sidebar-3/', 14, 'nav_menu_item', '', 0),
(4811, 1, '2016-04-09 10:37:14', '2016-04-09 10:37:14', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar', '', '', '2016-04-09 10:54:03', '2016-04-09 10:54:03', '', 45, 'http://localhost/education/2016/04/09/without-sidebar/', 4, 'nav_menu_item', '', 0),
(4812, 1, '2016-04-09 10:37:15', '2016-04-09 10:37:15', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-2', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/without-sidebar-2/', 8, 'nav_menu_item', '', 0),
(4813, 1, '2016-04-09 10:37:16', '2016-04-09 10:37:16', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-3', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 45, 'http://localhost/education/2016/04/09/without-sidebar-3/', 12, 'nav_menu_item', '', 0),
(4817, 1, '2016-04-09 10:37:19', '2016-04-09 10:37:19', '', 'III Column', '', 'publish', 'closed', 'closed', '', 'iii-column-2', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/iii-column-2/', 67, 'nav_menu_item', '', 0),
(4818, 1, '2016-04-09 10:37:20', '2016-04-09 10:37:20', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-5', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/with-left-sidebar-5/', 69, 'nav_menu_item', '', 0),
(4819, 1, '2016-04-09 10:37:21', '2016-04-09 10:37:21', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-5', '', '', '2016-04-09 10:54:07', '2016-04-09 10:54:07', '', 4298, 'http://localhost/education/2016/04/09/with-right-sidebar-5/', 70, 'nav_menu_item', '', 0),
(4821, 1, '2016-04-09 10:37:23', '2016-04-09 10:37:23', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-5', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/without-sidebar-5/', 68, 'nav_menu_item', '', 0),
(4822, 1, '2016-04-09 10:37:24', '2016-04-09 10:37:24', '', 'II Column', '', 'publish', 'closed', 'closed', '', 'ii-column-2', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/ii-column-2/', 63, 'nav_menu_item', '', 0),
(4823, 1, '2016-04-09 10:37:25', '2016-04-09 10:37:25', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-6', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/with-left-sidebar-6/', 65, 'nav_menu_item', '', 0),
(4824, 1, '2016-04-09 10:37:26', '2016-04-09 10:37:26', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-6', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/with-right-sidebar-6/', 66, 'nav_menu_item', '', 0),
(4825, 1, '2016-04-09 10:37:27', '2016-04-09 10:37:27', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-6', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4298, 'http://localhost/education/2016/04/09/without-sidebar-6/', 64, 'nav_menu_item', '', 0),
(4826, 1, '2016-04-09 10:37:28', '2016-04-09 10:37:28', '', 'I Column', '', 'publish', 'closed', 'closed', '', 'i-column', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/i-column/', 50, 'nav_menu_item', '', 0),
(4827, 1, '2016-04-09 10:37:30', '2016-04-09 10:37:30', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-7', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/with-left-sidebar-7/', 52, 'nav_menu_item', '', 0),
(4828, 1, '2016-04-09 10:37:31', '2016-04-09 10:37:31', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-7', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/with-right-sidebar-7/', 53, 'nav_menu_item', '', 0),
(4829, 1, '2016-04-09 10:37:32', '2016-04-09 10:37:32', '', 'II Column', '', 'publish', 'closed', 'closed', '', 'ii-column-3', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/ii-column-3/', 54, 'nav_menu_item', '', 0),
(4830, 1, '2016-04-09 10:37:33', '2016-04-09 10:37:33', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-8', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/with-left-sidebar-8/', 56, 'nav_menu_item', '', 0),
(4831, 1, '2016-04-09 10:37:34', '2016-04-09 10:37:34', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-8', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/with-right-sidebar-8/', 57, 'nav_menu_item', '', 0),
(4832, 1, '2016-04-09 10:37:35', '2016-04-09 10:37:35', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-7', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/without-sidebar-7/', 51, 'nav_menu_item', '', 0),
(4833, 1, '2016-04-09 10:37:36', '2016-04-09 10:37:36', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-8', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 4295, 'http://localhost/education/2016/04/09/without-sidebar-8/', 55, 'nav_menu_item', '', 0),
(4836, 1, '2016-04-09 10:37:39', '2016-04-09 10:37:39', ' ', '', '', 'publish', 'closed', 'closed', '', '4836', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/4836/', 33, 'nav_menu_item', '', 0),
(4837, 1, '2016-04-09 10:37:40', '2016-04-09 10:37:40', ' ', '', '', 'publish', 'closed', 'closed', '', '4837', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/4837/', 37, 'nav_menu_item', '', 0),
(4838, 1, '2016-04-09 10:37:41', '2016-04-09 10:37:41', '', 'Multi News Options', '', 'publish', 'closed', 'closed', '', 'multi-news-options', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/multi-news-options/', 38, 'nav_menu_item', '', 0),
(4839, 1, '2016-04-09 10:37:42', '2016-04-09 10:37:42', '', 'Multi Gallery Options', '', 'publish', 'closed', 'closed', '', 'multi-gallery-options', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/multi-gallery-options/', 39, 'nav_menu_item', '', 0),
(4840, 1, '2016-04-09 10:37:43', '2016-04-09 10:37:43', '', 'Multi Shop Options', '', 'publish', 'closed', 'closed', '', 'multi-shop-options', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/multi-shop-options/', 46, 'nav_menu_item', '', 0),
(4841, 1, '2016-04-09 10:37:44', '2016-04-09 10:37:44', ' ', '', '', 'publish', 'closed', 'closed', '', '4841', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/4841/', 47, 'nav_menu_item', '', 0),
(4842, 1, '2016-04-09 10:37:45', '2016-04-09 10:37:45', ' ', '', '', 'publish', 'closed', 'closed', '', '4842', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/4842/', 48, 'nav_menu_item', '', 0),
(4843, 1, '2016-04-09 10:37:45', '2016-04-09 10:37:45', ' ', '', '', 'publish', 'closed', 'closed', '', '4843', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/4843/', 36, 'nav_menu_item', '', 0),
(4844, 1, '2016-04-09 10:37:47', '2016-04-09 10:37:47', ' ', '', '', 'publish', 'closed', 'closed', '', '4844', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/4844/', 35, 'nav_menu_item', '', 0),
(4845, 1, '2016-04-09 10:37:48', '2016-04-09 10:37:48', ' ', '', '', 'publish', 'closed', 'closed', '', '4845', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 0, 'http://localhost/education/2016/04/09/4845/', 34, 'nav_menu_item', '', 0),
(4846, 1, '2016-04-09 10:37:49', '2016-04-09 10:37:49', '', 'Without Sidebar', '', 'publish', 'closed', 'closed', '', 'without-sidebar-9', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/without-sidebar-9/', 59, 'nav_menu_item', '', 0),
(4847, 1, '2016-04-09 10:37:50', '2016-04-09 10:37:50', '', 'With Left Sidebar', '', 'publish', 'closed', 'closed', '', 'with-left-sidebar-9', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/with-left-sidebar-9/', 60, 'nav_menu_item', '', 0),
(4848, 1, '2016-04-09 10:37:51', '2016-04-09 10:37:51', '', 'With Right Sidebar', '', 'publish', 'closed', 'closed', '', 'with-right-sidebar-9', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/with-right-sidebar-9/', 61, 'nav_menu_item', '', 0),
(4849, 1, '2016-04-09 10:37:52', '2016-04-09 10:37:52', '', 'News Details', '', 'publish', 'closed', 'closed', '', 'news-details', '', '', '2016-04-09 10:54:06', '2016-04-09 10:54:06', '', 0, 'http://localhost/education/2016/04/09/news-details/', 58, 'nav_menu_item', '', 0),
(4850, 1, '2016-04-09 10:37:53', '2016-04-09 10:37:53', ' ', '', '', 'publish', 'closed', 'closed', '', '4850', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4296, 'http://localhost/education/2016/04/09/4850/', 24, 'nav_menu_item', '', 0),
(4851, 1, '2016-04-09 10:37:55', '2016-04-09 10:37:55', ' ', '', '', 'publish', 'closed', 'closed', '', '4851', '', '', '2016-04-09 10:54:05', '2016-04-09 10:54:05', '', 4294, 'http://localhost/education/2016/04/09/4851/', 40, 'nav_menu_item', '', 0),
(4852, 1, '2016-04-09 10:37:56', '2016-04-09 10:37:56', '', 'Features', '', 'publish', 'closed', 'closed', '', 'features', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 4294, 'http://localhost/education/2016/04/09/features/', 32, 'nav_menu_item', '', 0),
(4853, 1, '2016-04-09 10:37:58', '2016-04-09 10:37:58', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2016-04-09 10:54:04', '2016-04-09 10:54:04', '', 0, 'http://localhost/education/2016/04/09/pages/', 16, 'nav_menu_item', '', 0),
(4854, 1, '2016-04-09 10:37:58', '2016-04-09 10:37:58', ' ', '', '', 'publish', 'closed', 'closed', '', '4854', '', '', '2016-04-09 10:50:30', '2016-04-09 10:50:30', '', 0, 'http://localhost/education/2016/04/09/4854/', 1, 'nav_menu_item', '', 0),
(4855, 1, '2016-04-09 10:38:00', '2016-04-09 10:38:00', ' ', '', '', 'publish', 'closed', 'closed', '', '4855', '', '', '2016-04-09 10:50:30', '2016-04-09 10:50:30', '', 0, 'http://localhost/education/2016/04/09/4855/', 2, 'nav_menu_item', '', 0),
(4856, 1, '2016-04-09 10:38:01', '2016-04-09 10:38:01', ' ', '', '', 'publish', 'closed', 'closed', '', '4856', '', '', '2016-04-09 10:50:30', '2016-04-09 10:50:30', '', 0, 'http://localhost/education/2016/04/09/4856/', 3, 'nav_menu_item', '', 0),
(4857, 1, '2016-04-09 10:38:01', '2016-04-09 10:38:01', ' ', '', '', 'publish', 'closed', 'closed', '', '4857', '', '', '2016-04-09 10:50:30', '2016-04-09 10:50:30', '', 0, 'http://localhost/education/2016/04/09/4857/', 4, 'nav_menu_item', '', 0),
(4858, 1, '2016-04-09 10:38:02', '2016-04-09 10:38:02', ' ', '', '', 'publish', 'closed', 'closed', '', '4858', '', '', '2016-04-09 10:50:30', '2016-04-09 10:50:30', '', 0, 'http://localhost/education/2016/04/09/4858/', 5, 'nav_menu_item', '', 0),
(4859, 1, '2016-04-09 10:38:03', '2016-04-09 10:38:03', ' ', '', '', 'publish', 'closed', 'closed', '', '4859', '', '', '2016-04-09 10:38:03', '2016-04-09 10:38:03', '', 0, 'http://localhost/education/2016/04/09/4859/', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_ratings`
--

CREATE TABLE `wp_ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_postid` int(11) NOT NULL,
  `rating_posttitle` text NOT NULL,
  `rating_rating` int(2) NOT NULL,
  `rating_timestamp` varchar(15) NOT NULL,
  `rating_ip` varchar(40) NOT NULL,
  `rating_host` varchar(200) NOT NULL,
  `rating_username` varchar(50) NOT NULL,
  `rating_userid` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_css`
--

CREATE TABLE `wp_revslider_css` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `hover` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_css`
--

INSERT INTO `wp_revslider_css` (`id`, `handle`, `settings`, `hover`, `params`) VALUES
(1, '.tp-caption.medium_grey', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","padding":"2px 4px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#888","white-space":"nowrap"}'),
(2, '.tp-caption.small_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"14px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(3, '.tp-caption.medium_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"20px","line-height":"20px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(4, '.tp-caption.large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"40px","line-height":"40px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(5, '.tp-caption.very_large_text', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"0px 2px 5px rgba(0, 0, 0, 0.5)","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","letter-spacing":"-2px"}'),
(6, '.tp-caption.very_big_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#000"}'),
(7, '.tp-caption.very_big_black', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"700","font-size":"60px","line-height":"60px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap","padding":"0px 4px","padding-top":"1px","background-color":"#fff"}'),
(8, '.tp-caption.modern_medium_fat', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(9, '.tp-caption.modern_medium_fat_white', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(10, '.tp-caption.modern_medium_light', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"24px","line-height":"20px","font-family":"\\"Open Sans\\", sans-serif","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(11, '.tp-caption.modern_big_bluebg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"800","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#4e5b6c","letter-spacing":"0"}'),
(12, '.tp-caption.modern_big_redbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"36px","font-family":"\\"Open Sans\\", sans-serif","padding":"3px 10px","padding-top":"1px","margin":"0px","border-width":"0px","border-style":"none","background-color":"#de543e","letter-spacing":"0"}'),
(13, '.tp-caption.modern_small_text_dark', NULL, NULL, '{"position":"absolute","color":"#555","text-shadow":"none","font-size":"14px","line-height":"22px","font-family":"Arial","margin":"0px","border-width":"0px","border-style":"none","white-space":"nowrap"}'),
(14, '.tp-caption.boxshadow', NULL, NULL, '{"-moz-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","-webkit-box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)","box-shadow":"0px 0px 20px rgba(0, 0, 0, 0.5)"}'),
(15, '.tp-caption.black', NULL, NULL, '{"color":"#000","text-shadow":"none"}'),
(16, '.tp-caption.noshadow', NULL, NULL, '{"text-shadow":"none"}'),
(17, '.tp-caption.thinheadline_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"30px","line-height":"30px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(18, '.tp-caption.thintext_dark', NULL, NULL, '{"position":"absolute","color":"rgba(0,0,0,0.85)","text-shadow":"none","font-weight":"300","font-size":"16px","line-height":"26px","font-family":"\\"Open Sans\\"","background-color":"transparent"}'),
(19, '.tp-caption.largeblackbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#000","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(20, '.tp-caption.largepinkbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#db4360","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(21, '.tp-caption.largewhitebg', NULL, NULL, '{"position":"absolute","color":"#000","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#fff","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(22, '.tp-caption.largegreenbg', NULL, NULL, '{"position":"absolute","color":"#fff","text-shadow":"none","font-weight":"300","font-size":"50px","line-height":"70px","font-family":"\\"Open Sans\\"","background-color":"#67ae73","padding":"0px 20px","-webkit-border-radius":"0px","-moz-border-radius":"0px","border-radius":"0px"}'),
(23, '.tp-caption.excerpt', NULL, NULL, '{"font-size":"36px","line-height":"36px","font-weight":"700","font-family":"Arial","color":"#ffffff","text-decoration":"none","background-color":"rgba(0, 0, 0, 1)","text-shadow":"none","margin":"0px","letter-spacing":"-1.5px","padding":"1px 4px 0px 4px","width":"150px","white-space":"normal !important","height":"auto","border-width":"0px","border-color":"rgb(255, 255, 255)","border-style":"none"}'),
(24, '.tp-caption.large_bold_grey', NULL, NULL, '{"font-size":"60px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","text-shadow":"none","margin":"0px","padding":"1px 4px 0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(25, '.tp-caption.medium_thin_grey', NULL, NULL, '{"font-size":"34px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(102, 102, 102)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(26, '.tp-caption.small_thin_grey', NULL, NULL, '{"font-size":"18px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(117, 117, 117)","text-decoration":"none","background-color":"transparent","padding":"1px 4px 0px","text-shadow":"none","margin":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(27, '.tp-caption.lightgrey_divider', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(235, 235, 235, 1)","width":"370px","height":"3px","background-position":"initial initial","background-repeat":"initial initial","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(28, '.tp-caption.large_bold_darkblue', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(29, '.tp-caption.medium_bg_darkblue', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(52, 73, 94)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(30, '.tp-caption.medium_bold_red', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(31, '.tp-caption.medium_light_red', NULL, NULL, '{"font-size":"21px","line-height":"26px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(227, 58, 12)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(32, '.tp-caption.medium_bg_red', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(227, 58, 12)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(33, '.tp-caption.medium_bold_orange', NULL, NULL, '{"font-size":"24px","line-height":"30px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(243, 156, 18)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(34, '.tp-caption.medium_bg_orange', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(243, 156, 18)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(35, '.tp-caption.grassfloor', NULL, NULL, '{"text-decoration":"none","background-color":"rgba(160, 179, 151, 1)","width":"4000px","height":"150px","border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(36, '.tp-caption.large_bold_white', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(37, '.tp-caption.medium_light_white', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(38, '.tp-caption.mediumlarge_light_white', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(39, '.tp-caption.mediumlarge_light_white_center', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"#ffffff","text-decoration":"none","background-color":"transparent","padding":"0px 0px 0px 0px","text-align":"center","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(40, '.tp-caption.medium_bg_asbestos', NULL, NULL, '{"font-size":"20px","line-height":"20px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(127, 140, 141)","padding":"10px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(41, '.tp-caption.medium_light_black', NULL, NULL, '{"font-size":"30px","line-height":"36px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(42, '.tp-caption.large_bold_black', NULL, NULL, '{"font-size":"58px","line-height":"60px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"transparent","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(43, '.tp-caption.mediumlarge_light_darkblue', NULL, NULL, '{"font-size":"34px","line-height":"40px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(52, 73, 94)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(44, '.tp-caption.small_light_white', NULL, NULL, '{"font-size":"17px","line-height":"28px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"transparent","padding":"0px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(45, '.tp-caption.roundedimage', NULL, NULL, '{"border-width":"0px","border-color":"rgb(34, 34, 34)","border-style":"none"}'),
(46, '.tp-caption.large_bg_black', NULL, NULL, '{"font-size":"40px","line-height":"40px","font-weight":"800","font-family":"\\"Open Sans\\"","color":"rgb(255, 255, 255)","text-decoration":"none","background-color":"rgb(0, 0, 0)","padding":"10px 20px 15px","border-width":"0px","border-color":"rgb(255, 214, 88)","border-style":"none"}'),
(47, '.tp-caption.mediumwhitebg', NULL, NULL, '{"font-size":"30px","line-height":"30px","font-weight":"300","font-family":"\\"Open Sans\\"","color":"rgb(0, 0, 0)","text-decoration":"none","background-color":"rgb(255, 255, 255)","padding":"5px 15px 10px","text-shadow":"none","border-width":"0px","border-color":"rgb(0, 0, 0)","border-style":"none"}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_layer_animations`
--

CREATE TABLE `wp_revslider_layer_animations` (
  `id` int(9) NOT NULL,
  `handle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_settings`
--

CREATE TABLE `wp_revslider_settings` (
  `id` int(9) NOT NULL,
  `general` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_revslider_settings`
--

INSERT INTO `wp_revslider_settings` (`id`, `general`, `params`) VALUES
(1, 'a:0:{}', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_sliders`
--

CREATE TABLE `wp_revslider_sliders` (
  `id` int(9) NOT NULL,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` tinytext COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_slides`
--

CREATE TABLE `wp_revslider_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `slide_order` int(11) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_revslider_static_slides`
--

CREATE TABLE `wp_revslider_static_slides` (
  `id` int(9) NOT NULL,
  `slider_id` int(9) NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `layers` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'activity-comment', 'activity-comment', 0),
(7, 'activity-comment-author', 'activity-comment-author', 0),
(8, 'activity-at-message', 'activity-at-message', 0),
(9, 'groups-at-message', 'groups-at-message', 0),
(10, 'core-user-registration', 'core-user-registration', 0),
(11, 'core-user-registration-with-blog', 'core-user-registration-with-blog', 0),
(12, 'friends-request', 'friends-request', 0),
(13, 'friends-request-accepted', 'friends-request-accepted', 0),
(14, 'groups-details-updated', 'groups-details-updated', 0),
(15, 'groups-invitation', 'groups-invitation', 0),
(16, 'groups-member-promoted', 'groups-member-promoted', 0),
(17, 'groups-membership-request', 'groups-membership-request', 0),
(18, 'messages-unread', 'messages-unread', 0),
(19, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(20, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(21, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0),
(22, 'Corporate', 'corporate', 0),
(23, 'Design', 'design', 0),
(24, 'Learning', 'learning', 0),
(25, 'Tools', 'tools', 0),
(26, 'Training', 'training', 0),
(27, 'art', 'art', 0),
(28, 'tips', 'tips', 0),
(29, 'Adventure', 'adventure', 0),
(30, 'Corporate', 'corporate-2', 0),
(31, 'Materials', 'materials', 0),
(32, 'Structure', 'structure', 0),
(33, 'Tools', 'tools', 0),
(34, 'Uncategorized', 'uncategorized', 0),
(35, 'Header Menu', 'header-menu', 0),
(36, 'Secondary Menu', 'secondary-menu', 0),
(37, 'One Page Menu', 'one-page-menu', 0),
(38, 'Another Menu', 'another-menu', 0),
(39, 'Status', 'post-format-status', 0),
(40, 'Image', 'post-format-image', 0),
(41, 'Quote', 'post-format-quote', 0),
(42, 'Link', 'post-format-link', 0),
(43, 'Gallery', 'post-format-gallery', 0),
(44, 'Video', 'post-format-video', 0),
(45, 'Audio', 'post-format-audio', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 6, 0),
(8, 7, 0),
(9, 8, 0),
(10, 9, 0),
(11, 10, 0),
(12, 11, 0),
(13, 12, 0),
(14, 6, 0),
(15, 13, 0),
(16, 7, 0),
(17, 8, 0),
(18, 14, 0),
(19, 9, 0),
(20, 15, 0),
(21, 10, 0),
(22, 16, 0),
(23, 11, 0),
(24, 12, 0),
(25, 17, 0),
(26, 13, 0),
(27, 18, 0),
(28, 14, 0),
(29, 19, 0),
(30, 15, 0),
(31, 16, 0),
(32, 20, 0),
(33, 17, 0),
(34, 21, 0),
(35, 18, 0),
(36, 19, 0),
(37, 20, 0),
(38, 21, 0),
(1765, 26, 0),
(1765, 39, 0),
(1933, 22, 0),
(2645, 33, 0),
(2647, 29, 0),
(2648, 30, 0),
(2649, 33, 0),
(2650, 30, 0),
(2651, 31, 0),
(2652, 32, 0),
(2653, 30, 0),
(2716, 29, 0),
(2727, 24, 0),
(2727, 40, 0),
(2728, 26, 0),
(2728, 41, 0),
(2729, 23, 0),
(2729, 42, 0),
(2730, 22, 0),
(2730, 43, 0),
(3149, 26, 0),
(3149, 44, 0),
(3151, 25, 0),
(3151, 44, 0),
(3153, 23, 0),
(3153, 44, 0),
(3155, 23, 0),
(3155, 45, 0),
(3157, 24, 0),
(3157, 45, 0),
(4281, 35, 0),
(4282, 35, 0),
(4283, 35, 0),
(4284, 35, 0),
(4289, 35, 0),
(4290, 35, 0),
(4291, 35, 0),
(4781, 35, 0),
(4782, 35, 0),
(4783, 35, 0),
(4784, 35, 0),
(4786, 36, 0),
(4787, 36, 0),
(4788, 36, 0),
(4789, 35, 0),
(4790, 35, 0),
(4791, 35, 0),
(4792, 35, 0),
(4793, 35, 0),
(4794, 35, 0),
(4795, 35, 0),
(4796, 35, 0),
(4797, 35, 0),
(4798, 35, 0),
(4799, 35, 0),
(4800, 35, 0),
(4801, 35, 0),
(4802, 35, 0),
(4803, 35, 0),
(4804, 35, 0),
(4805, 35, 0),
(4806, 35, 0),
(4807, 35, 0),
(4808, 35, 0),
(4809, 35, 0),
(4810, 35, 0),
(4811, 35, 0),
(4812, 35, 0),
(4813, 35, 0),
(4817, 35, 0),
(4818, 35, 0),
(4819, 35, 0),
(4821, 35, 0),
(4822, 35, 0),
(4823, 35, 0),
(4824, 35, 0),
(4825, 35, 0),
(4826, 35, 0),
(4827, 35, 0),
(4828, 35, 0),
(4829, 35, 0),
(4830, 35, 0),
(4831, 35, 0),
(4832, 35, 0),
(4833, 35, 0),
(4836, 35, 0),
(4837, 35, 0),
(4838, 35, 0),
(4839, 35, 0),
(4840, 35, 0),
(4841, 35, 0),
(4842, 35, 0),
(4843, 35, 0),
(4844, 35, 0),
(4845, 35, 0),
(4846, 35, 0),
(4847, 35, 0),
(4848, 35, 0),
(4849, 35, 0),
(4850, 35, 0),
(4851, 35, 0),
(4852, 35, 0),
(4853, 35, 0),
(4854, 38, 0),
(4855, 38, 0),
(4856, 38, 0),
(4857, 38, 0),
(4858, 38, 0),
(4859, 37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 2),
(7, 7, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 2),
(8, 8, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 2),
(9, 9, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 2),
(10, 10, 'bp-email-type', 'Recipient has registered for an account.', 0, 2),
(11, 11, 'bp-email-type', 'Recipient has registered for an account and site.', 0, 2),
(12, 12, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 2),
(13, 13, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 2),
(14, 14, 'bp-email-type', 'A group''s details were updated.', 0, 2),
(15, 15, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 2),
(16, 16, 'bp-email-type', 'Recipient''s status within a group has changed.', 0, 2),
(17, 17, 'bp-email-type', 'A member has requested permission to join a group.', 0, 2),
(18, 18, 'bp-email-type', 'Recipient has received a private message.', 0, 2),
(19, 19, 'bp-email-type', 'Recipient has changed their email address.', 0, 2),
(20, 20, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 2),
(21, 21, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 2),
(22, 22, 'category', '', 0, 2),
(23, 23, 'category', '', 0, 3),
(24, 24, 'category', '', 0, 2),
(25, 25, 'category', '', 0, 1),
(26, 26, 'category', '', 0, 3),
(27, 27, 'post_tag', '', 0, 0),
(28, 28, 'post_tag', '', 0, 0),
(29, 29, 'gallery_entries', '', 0, 2),
(30, 30, 'gallery_entries', '', 0, 3),
(31, 31, 'gallery_entries', '', 0, 1),
(32, 32, 'gallery_entries', '', 0, 1),
(33, 33, 'gallery_entries', '', 0, 2),
(34, 34, 'gallery_entries', '', 0, 0),
(35, 35, 'nav_menu', '', 0, 70),
(36, 36, 'nav_menu', '', 0, 3),
(37, 37, 'nav_menu', '', 0, 1),
(38, 38, 'nav_menu', '', 0, 5),
(39, 39, 'post_format', '', 0, 1),
(40, 40, 'post_format', '', 0, 1),
(41, 41, 'post_format', '', 0, 1),
(42, 42, 'post_format', '', 0, 1),
(43, 43, 'post_format', '', 0, 1),
(44, 44, 'post_format', '', 0, 3),
(45, 45, 'post_format', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'gstladmin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"285aa54bc29313f7ae84375a0796052d26420fe5c5f5db5089ae877c963aab1f";a:4:{s:10:"expiration";i:1460363513;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36";s:5:"login";i:1460190713;}}'),
(15, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(16, 1, 'wp_user-settings-time', '1460190716'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(19, 1, 'last_activity', '2016-04-09 10:49:49'),
(20, 1, 'nav_menu_recently_edited', '35'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:15:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:23:"add-buddypress-nav-menu";i:2;s:19:"add-post-type-forum";i:3;s:21:"add-post-type-product";i:4;s:26:"add-post-type-dt_galleries";i:5;s:25:"add-post-type-dt_teachers";i:6;s:24:"add-post-type-wcs3_class";i:7;s:29:"add-post-type-wcs3_instructor";i:8;s:27:"add-post-type-wcs3_location";i:9;s:26:"add-post-type-tribe_events";i:10;s:12:"add-post_tag";i:11;s:15:"add-post_format";i:12;s:15:"add-product_cat";i:13;s:15:"add-product_tag";i:14;s:19:"add-gallery_entries";}'),
(23, 1, 'tribe_setDefaultNavMenuBoxes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gstladmin', '$P$BuAOiTqtQC.qVhzQKBcDALC.pU9avx/', 'gstladmin', 'ashraful@gstlbd.com', '', '2016-04-09 08:31:39', '', 0, 'gstladmin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wcs3_schedule`
--

CREATE TABLE `wp_wcs3_schedule` (
  `id` int(11) UNSIGNED NOT NULL,
  `class_id` int(20) UNSIGNED NOT NULL,
  `instructor_id` int(20) UNSIGNED NOT NULL,
  `location_id` int(20) UNSIGNED NOT NULL,
  `weekday` int(3) UNSIGNED NOT NULL,
  `start_hour` time NOT NULL,
  `end_hour` time NOT NULL,
  `timezone` varchar(255) NOT NULL DEFAULT 'UTC',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Indexes for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Indexes for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Indexes for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Indexes for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

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
-- Indexes for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_ratings`
--
ALTER TABLE `wp_ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

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
  ADD KEY `user_nicename` (`user_nicename`);

--
-- Indexes for table `wp_wcs3_schedule`
--
ALTER TABLE `wp_wcs3_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `woocommerce_term_id` (`woocommerce_term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_layerslider`
--
ALTER TABLE `wp_layerslider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2538;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4860;
--
-- AUTO_INCREMENT for table `wp_ratings`
--
ALTER TABLE `wp_ratings`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_css`
--
ALTER TABLE `wp_revslider_css`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `wp_revslider_layer_animations`
--
ALTER TABLE `wp_revslider_layer_animations`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_settings`
--
ALTER TABLE `wp_revslider_settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_revslider_sliders`
--
ALTER TABLE `wp_revslider_sliders`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_slides`
--
ALTER TABLE `wp_revslider_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_revslider_static_slides`
--
ALTER TABLE `wp_revslider_static_slides`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wcs3_schedule`
--
ALTER TABLE `wp_wcs3_schedule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
